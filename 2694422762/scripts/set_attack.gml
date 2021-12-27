if (attack == AT_FSPECIAL && free)
    attack = AT_FSPECIAL_AIR;
  
blackjack_max_timer = -1;
if (attack == AT_DSPECIAL) {
    blackjack_meter_stored = blackjack_meter;
    if (blackjack_cooling_timer > 0) {
        window = 1
        blackjack_max_timer = 0;
    }
    else {
        if (blackjack_meter >= 0 && blackjack_meter < 3) {
            window = 1
            blackjack_max_timer = 0;
        }
        if (blackjack_meter >= 3 && blackjack_meter < 6) {
            window = 4
            blackjack_max_timer = 0;
        }
        if (blackjack_meter >= 6 && blackjack_meter < 9) {
            window = 7
            blackjack_max_timer = -1;
        }
        if (blackjack_meter >= 9 && blackjack_meter < 12) {
            window = 10
            blackjack_max_timer = -2;
        }
        if (blackjack_meter >= 12 && blackjack_meter < 15) {
            window = 13
            blackjack_max_timer = -2;
        }
        if (blackjack_meter >= 15 && blackjack_meter < 18) {
            window = 16
            blackjack_max_timer = -2;
        }
        if (blackjack_meter >= 18 && blackjack_meter < 21) {
            window = 19
            blackjack_max_timer = -2;
        }
        if (blackjack_meter >= 21) {
            window = 22
            blackjack_max_timer = 0;
        }
    }
}

if (attack == AT_TAUNT && down_down) {
    attack = AT_TAUNT_2;
    game_message = "";
}