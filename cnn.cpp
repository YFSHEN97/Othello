#include <fdeep/fdeep.hpp>
#include "agent.h"
#include "position.h"

using namespace std;


CNNComputerAgent::CNNComputerAgent(Color c, fdeep::model& model) :
    Agent(c), model(model) {}


int CNNComputerAgent::policy(Position& pos)
{
    // check if there is any legal move
    Bitboard all_moves = pos.generate_moves(side);
    if (!all_moves) return -1;

    // get board information and run model forward pass
    Bitboard black_out = (side == BLACK) ? (pos.get_blackBB()) : (pos.get_whiteBB());
    Bitboard white_out = (side == BLACK) ? (pos.get_whiteBB()) : (pos.get_blackBB());
    fdeep::tensor T(fdeep::tensor_shape(8, 8, 2), 0);
    for (int i = 0; i < 8; i++) {
        for (int j = 0; j < 8; j++) {
            int index = i * 8 + j; // rank of the bit
            T.set(fdeep::tensor_pos(7-i, j, 0), (black_out >> index) & 0x1);
            T.set(fdeep::tensor_pos(7-i, j, 1), (white_out >> index) & 0x1);
        }
    }
    auto result = model.predict({T}); // returns vector of fdeep::internal::tensor
    auto outvec = result[0].to_vector();

    // cull the output vector by the legal moves
    for (int i = 0; i < 27; i++) outvec[i] *= ((all_moves >> i) & 0x1);
    for (int i = 27; i < 33; i++) outvec[i] *= ((all_moves >> (i + 2)) & 0x1);
    for (int i = 33; i < 60; i++) outvec[i] *= ((all_moves >> (i + 4)) & 0x1);

    // output best move by finding index for argmax and remapping to board
    float max = -1;
    int move = -1;
    for (int i = 0; i < outvec.size(); i++) {
        if (outvec[i] > max) {
            max = outvec[i];
            move = i;
        }
    }
    if (move >= 33) move += 4;
    else if (move < 33 && move >= 27) move += 2;
    if (((1ULL << move) & all_moves) == 0) {
        cout << "impossible move!!" << endl;
        exit(1);
    }

    return move;

    // ofstream bb;
    // bb.open("bb.temp");
    // bb << to_string(black_out) << endl;
    // bb << to_string(white_out) << endl;
    // bb << to_string(all_moves) << endl;
    // bb.close();

    // // invoke Keras python script
    // system("python3 move_predictor/predict_cpp.py > move.temp");

    // // read result
    // ifstream mm("move.temp");
    // string line;
    // getline(mm, line);
    // int move = stoi(line);

    // // clean up
    // system("rm -f bb.temp move.temp");
    // return move;
}
