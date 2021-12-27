card_charge = 0;
if (instance_exists(lucy_card_id)) {
    lucy_card_id.state = 4;
    lucy_card_id.state_timer = 0;
    lucy_card_id.window = 1;
    lucy_card_id.window_timer = 0;
}
blackjack_meter = 0;