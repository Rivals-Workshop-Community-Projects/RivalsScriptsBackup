switch(my_hitboxID.attack){
    
    case AT_FTILT:
        if(my_hitboxID.hbox_num == 2){
        sound_play(sound_get("sfx_magichit_medium1"), false, noone, 0.70, 0.99);
        }
        break;

    case AT_DTILT:
        sound_play(sound_get("sfx_magichit_medium1"), false, noone, 0.80, 1);
        break;
    
    case AT_FAIR:
        sound_play(sound_get("sfx_magichit_medium1"), false, noone, 1.1, 1.0);
        break;
        
    case AT_DAIR:
        sound_play(sound_get("sfx_magichit_heavy1"), false, noone, 0.70, 1);
        break;
    
    case AT_FSTRONG:
    case AT_DSTRONG:
        if(my_hitboxID.hbox_num == 1){
            sound_play(asset_get("sfx_ori_energyhit_heavy"), false, noone, 0.3, 1.05);
        }else if(my_hitboxID.hbox_num == 2){
            sound_play(asset_get("sfx_ori_energyhit_medium"), false, noone, 0.45, 0.95);
        }
    
    case AT_USTRONG:
        if(my_hitboxID.hbox_num == 1){
            sound_play(asset_get("sfx_ori_energyhit_heavy"), false, noone, 0.65, 1.0);
        }
        break;
    case AT_FSPECIAL:
        if(my_hitboxID.hbox_num == 3){
            if(fspec_finalhit != noone) fspec_finalhit.pause = 10;
            sound_play(asset_get("sfx_ori_energyhit_heavy"), false, noone, 0.45, 0.9);
        }else{
            hit_player_obj.should_make_shockwave = false;
        }
}

if(my_hitboxID.attack == AT_DSPECIAL /*&& my_hitboxID.type == 2*/){
    last_hit_dspec = true;
}else if(my_hitboxID.kb_scale > 0 || (my_hitboxID.attack == AT_JAB && my_hitboxID.hbox_num == 1)){
    last_hit_dspec = false;
}