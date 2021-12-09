if (attack == AT_EXTRA_2){
    if(hbox_num == 1){
        if(has_hit_player){
                sound_play(sound_get("ufo_explode"));
            create_hitbox(AT_EXTRA_2, 2, x, y);
        }
    }
}

if (attack == AT_EXTRA_2){
    if(hbox_num == 1){
        if(has_hit_player){
            create_hitbox(AT_EXTRA_2, 3, x, y);
        }
    }
}