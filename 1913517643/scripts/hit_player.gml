//CALLED WHEN PLAYER IS HIT

if (my_hitboxID.attack == AT_FSPECIAL && my_hitboxID.hbox_num == 1 && hit_player_obj.super_armor == false){
    sound_play(asset_get("sfx_blow_heavy1"));
    grabbed_id = hit_player_obj;
    with(asset_get("obj_article3")){
        if (player_id == other.id){
            /*
            switch(get_player_color(player)){
    
                case 13: //Beach
                    sprite_index = sprite_get("bodyguardthrow_beach");
                    break;
                case 14:
                default:
                    sprite_index = sprite_get("bodyguardthrow");
                    break;
     
            }*/
            sprite_index = sprite_get("bodyguardthrow");
            grabbed = true;
            state = 1;
            state_timer = 0;
            
            }
            
        }
    
}

if (my_hitboxID.attack == AT_DATTACK){
    
    if (my_hitboxID.hbox_num == (1||2||6)){
        sound_play(asset_get("sfx_blow_weak1"));
    } else {
        sound_play(asset_get("sfx_blow_weak2"));
    }
}