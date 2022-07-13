//got-parried

with obj_article1 {
    if player_id == other.id {
        die = true;
    }
}

if my_hitboxID.attack == AT_JAB || (my_hitboxID.attack == AT_EXTRA_1 && my_hitboxID.hbox_num == 1) {
    parry_lag = 0;
}