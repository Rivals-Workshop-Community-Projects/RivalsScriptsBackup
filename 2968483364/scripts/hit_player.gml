switch(my_hitboxID.attack){
    
    case AT_UTILT:
        if(my_hitboxID.hbox_num == 2){
            sound_play(asset_get("sfx_hod_charged_uspecial_hit"));
            sound_play(asset_get("sfx_ell_strong_attack_explosion"), false, noone, 0.5, 1.2);
        }
        break;
    
    case AT_NAIR:
        sound_play(asset_get("sfx_zetter_upb_hit"), false, noone, 0.9, 0.9);
        break;
    
    case AT_FAIR:
        sound_play(asset_get("sfx_zetter_upb_hit"), false, noone, 0.9, 0.9);
        sound_play(asset_get("sfx_blow_heavy2"), false, noone, 0.6, 1.0);
        break;
    
    case AT_BAIR:
        sound_play(asset_get("sfx_zetter_upb_hit"), false, noone, 1.0, 1.1);
        //sound_play(asset_get("sfx_burnend"), false, noone, 1.0, 1.0);
        break;
    
    case AT_DAIR:
        sound_play(asset_get("sfx_zetter_upb_hit"), false, noone, 0.8, 1.05);
        break;
    
    case AT_FSTRONG:
        sound_play(asset_get("sfx_ori_energyhit_heavy"), false, noone, 0.3, 0.9);
        sound_play(asset_get("sfx_blow_heavy2"));
        sound_play(asset_get("sfx_burnconsume"), false, noone, 0.3, 1.0);
        break;
    
    case AT_USTRONG:
        if(my_hitboxID.hbox_num == 3){
            sound_play(asset_get("sfx_hod_charged_uspecial_hit"));
            sound_play(asset_get("sfx_ori_energyhit_heavy"), false, noone, 0.3, 0.9);
            
        }else{
            sound_play(asset_get("sfx_zetter_upb_hit"), false, noone, 1, 1);
        }
        break;
    
    case AT_NSPECIAL:
        if(my_hitboxID.hbox_num == 1){
            pipebomb.state = 2;
            pipebomb.state_timer = 0;
        }else{
            sound_play(asset_get("sfx_hod_charged_uspecial_hit"));
            pipebomb.hitstop = 8;
        }
        break;
    
    case AT_DSPECIAL:
        if(my_hitboxID.hbox_num == 9){
            sound_play(asset_get("sfx_hod_charged_uspecial_hit"));
            sound_play(asset_get("sfx_burnconsume"), false, noone, 1.0, 1.0);
            sound_play(asset_get("sfx_ori_energyhit_heavy"), false, noone, 0.3, 0.9);
            sound_play(asset_get("sfx_blow_heavy2"));
        }else{
            sound_play(asset_get("sfx_blow_weak2"));
        }
        break;
    
}

if(blue && my_hitboxID.type == 1){
    sound_play(sound_get("sfx_burn"), 0, noone, 0.7, 0.7);
    sound_play(asset_get("sfx_ori_energyhit_light"), 0, noone, 1.0, 0.9);
}