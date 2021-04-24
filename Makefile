# calls:
CC         = clang++
CFLAGS     = -c -Wall -Wno-deprecated-register -std=c++11 -O3
LDFLAGS    = 
EXECUTABLE = othello

SOURCES    = othello.cpp position.cpp bitboard.cpp agent.cpp mcts.cpp
OBJECTS    = $(SOURCES:.cpp=.o)


all: $(SOURCES) $(EXECUTABLE)
	
$(EXECUTABLE): $(OBJECTS) 
	$(CC) $(OBJECTS) $(LDFLAGS) -o $@

.cpp.o:
	$(CC) $(CFLAGS) $< -o $@

clean:
	rm -f *.o $(EXECUTABLE) parser

# special instructions for compiling the parser program
parser: parser.o position.o bitboard.o
	$(CC) -o $@ parser.o position.o bitboard.o $(LDFLAGS)
