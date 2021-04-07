if (my_hitboxID.attack == AT_FTILT){
    sound_play(sound_get("amongus_card_denied"));
}

if (my_hitboxID.attack == AT_FSTRONG && my_hitboxID.hbox_num == 2){
    sound_play(asset_get("mfx_star"));
}

if (my_hitboxID.attack == AT_NSPECIAL && my_hitboxID.hbox_num == 3){
    sound_play(sound_get("bat"));
    sound_play(sound_get("amongus_kill"));
}

if (my_hitboxID.attack == AT_FSTRONG){
    sound_play(sound_get("amongus_kill"));
}