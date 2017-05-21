# Makefile for Blackjack
CXXFLAGS += --std=c++11

all: main

debug: CXXFLAGS += -g
debug: main

rebuild: clean main

main: blackjack.o card.o dealer.o player.o controller.o view.o
		$(CXX) $(CXXFLAGS) blackjack.o card.o dealer.o player.o controller.o view.o
blackjack.o: blackjack.cpp dealer.h player.h controller.h view.h
		$(CXX) $(CXXFLAGS) -c blackjack.cpp
card.o: card.cpp card.h
		$(CXX) $(CXXFLAGS) -c card.cpp
dealer.o: dealer.cpp dealer.h card.h
		$(CXX) $(CXXFLAGS) -c dealer.cpp
player.o: player.cpp player.h card.h
		$(CXX) $(CXXFLAGS) -c player.cpp
controller.o: controller.cpp controller.h card.h dealer.h player.h
		$(CXX) $(CXXFLAGS) -c controller.cpp		
view.o: view.cpp view.h
		$(CXX) $(CXXFLAGS) -c view.cpp

clean:
	-rm -f *.o *~ a.out
