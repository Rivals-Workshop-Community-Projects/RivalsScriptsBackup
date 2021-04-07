if (my_hitboxID.attack == AT_DSPECIAL){
    if (my_hitboxID.hbox_num == 1){
        with (obj_article1){
            if (player_id == other.id){
                if (place_meeting(x, y, other.my_hitboxID)){
                    should_destroy_hitbox = true;
                    hsp = hsp*-.5;
                    //other.katamari_size += other.my_hitboxID.damage;
                    if (abs(hsp) < 2 && vsp < -2){
                        vsp = vsp*-.5;
                    }
                }
            }
        }
    }
    else if (my_hitboxID.hbox_num == 2){
        if (my_hitboxID.damage == 15){
            sound_play ( sound_get ("bat") );
        }
    }
}

if (my_hitboxID.attack == AT_NSPECIAL){ //rune
    sound_play(asset_get("sfx_fish_collect"));
    eightball_cooldown = 120;
}