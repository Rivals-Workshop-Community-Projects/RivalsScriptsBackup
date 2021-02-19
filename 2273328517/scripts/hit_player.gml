//hit_player - called when one of your hitboxes hits a player

if (my_hitboxID.attack == AT_DSTRONG && my_hitboxID.hbox_num == 1) {
    dstrong_hit = true;
}

if my_hitboxID.attack == AT_DSTRONG || my_hitboxID.attack == AT_USTRONG || my_hitboxID.attack == AT_FSTRONG {
    sound_play(sound_get("tv_hit"));
}