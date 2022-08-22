if (my_hitboxID.attack == AT_FSPECIAL && my_hitboxID.hbox_num == 1){
    sound_play(sound_get("bat"));
}

if (my_hitboxID.attack == AT_USPECIAL || my_hitboxID.attack == AT_USTRONG){
    grabbed = hit_player_obj;
}