
switch(my_hitboxID.attack){
    
    case AT_FAIR:
        sound_play(sound_get("strike5"))
        break;

    case AT_DTILT:
        if(my_hitboxID.hbox_num == 1){
            sound_play(sound_get("strike1"))
        }else{
            sound_play(sound_get("strike2"))
        }
        break;
    
    case AT_UTILT:
        sound_play(sound_get("strike2"))
        break;
  
    case AT_USTRONG:
        sound_play(sound_get("strike5"))
        break;
    
    case AT_DSTRONG:
        sound_play(sound_get("strike5"))
        break;
    
    case AT_NAIR:
        if my_hitboxID.hbox_num == 1 {
            sound_play(sound_get("strike1"))
        } else {
            sound_play(sound_get("strike2"))
        }
        break;
    
    case AT_BAIR:
        sound_play(sound_get("strike1"))
        break;
    
    case AT_DAIR:
        sound_play(sound_get("strike5"))
        break;
    
    case AT_NSPECIAL:
        if(my_hitboxID.hbox_num == 1){
            sound_play(sound_get("strike2"));
        }else{
            sound_play(sound_get("strike5"));
            sound_play(asset_get("sfx_ring_crowd"))
        }
        break;

    case AT_FSPECIAL:
        my_hitboxID.hitpause_timer = hit_player_obj.hitstop - 1;
        break;
    
    case AT_FSPECIAL_2:
        ring_out.hitstop = hit_player_obj.hitstop - 1;
        break;
    
    case AT_TAUNT:
        my_hitboxID.spr_dir *= -1;
        my_hitboxID.hsp = 4 * spr_dir;
        my_hitboxID.vsp = -6;
        my_hitboxID.grav = 0.4;
        my_hitboxID.air_friction = 0.04;
        break;
}

//alpha dspec hit sfx
if(ring_equipped == 0 && my_hitboxID.type == 1){
    sound_play(asset_get("sfx_blow_heavy1"), 0, noone, .7, 0.7);
    sound_play(asset_get("sfx_ori_energyhit_light"), 0, noone, 1.0, 0.9);
}