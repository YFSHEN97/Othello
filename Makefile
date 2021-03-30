# calls:
CC         = clang++
CFLAGS     = -c -Wall -Wno-deprecated-register -std=c++11 -O3
LDFLAGS    = 
EXECUTABLE = main

SOURCES    = main.cpp position.cpp bitboard.cpp agent.cpp mcts.cpp
OBJECTS    = $(SOURCES:.cpp=.o)

# make the "main" program by default
all: $(SOURCES) $(EXECUTABLE)
	
$(EXECUTABLE): $(OBJECTS) 
	$(CC) $(OBJECTS) $(LDFLAGS) -o $@

.cpp.o:
	$(CC) $(CFLAGS) $< -o $@

clean:
	rm -f *.o $(EXECUTABLE)
