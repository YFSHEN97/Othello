# calls:
CC         = clang++
CFLAGS     = -c -Wall -Wno-deprecated-register -std=c++14 -O3 -march=native
LDFLAGS    = 
EXECUTABLE = othello

SOURCES    = othello.cpp position.cpp bitboard.cpp agent.cpp mcts.cpp cnn.cpp
OBJECTS    = $(SOURCES:.cpp=.o)


# make -j is all you need to compile the main program "othello"
all: $(SOURCES) $(EXECUTABLE)
	
$(EXECUTABLE): $(OBJECTS) 
	$(CC) $(OBJECTS) $(LDFLAGS) -o $@

.cpp.o:
	$(CC) $(CFLAGS) $< -o $@

clean:
	rm -f *.o $(EXECUTABLE) parser mcts_v_edax

# special instructions for compiling the parser program
parser: parser.o position.o bitboard.o
	$(CC) -o $@ parser.o position.o bitboard.o $(LDFLAGS)

# special instructions for compiling mcts_v_edax
mcts_v_edax: mcts_v_edax.o position.o bitboard.o agent.o mcts.o
	$(CC) -o $@ mcts_v_edax.o position.o bitboard.o agent.o mcts.o $(LDFLAGS)
	mv mcts_v_edax ./Edax
