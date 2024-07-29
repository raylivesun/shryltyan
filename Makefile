CXX = g++
CXXFLAGS = -Wall -Werror -Wextra -pedantic -std=c++17 -g mainc.pp
LDFLAGS =  main.cpp

SRC = 
OBJ = $(SRC:.cc=.o)
EXEC = shryltyan

all: $(EXEC)

$(EXEC): $(OBJ)
	$(CXX) $(LDFLAGS) -o $@ $(OBJ) $(LBLIBS)

clean:
	rm -rf $(OBJ) $(EXEC)