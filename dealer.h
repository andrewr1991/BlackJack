/*
 * Dealer will act as the controller
 */

#ifndef DEALER_H
#define DEALER_H 2017
#include <iostream>
#include <string>
#include <vector>
#include <cstdlib>
#include "card.h"
#include "player.h"

using namespace std;

class Dealer {
  public:
    void createDeck();
    void shuffleDeck();
    void hitPlayer();
    void hitDealer();
    void createPlayer();
    void deal();
    int dealerPlay();
    int dealerScore();
    int playerScore();
    string playerDeck_toString();
    string playerScore_toString();
    string dealerDeck_toString();
    string dealerScore_toString();

  private:
    Player player;
    vector<Card> deck;
    vector<Card> dealerHand;
};
#endif
