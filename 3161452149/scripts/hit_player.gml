switch my_hitboxID.attack{
    case AT_FTILT:
    case AT_DTILT:
    case AT_UTILT:
    case AT_JAB:
    case AT_DATTACK:
    case AT_NAIR:
    case AT_FAIR:
    case AT_BAIR:
    case AT_TAUNT_2:
    sound_play(asset_get("sfx_burnapplied"), 0, noone, .4, 1.1);
    sound_play(asset_get("sfx_ori_energyhit_medium"), 0, noone, .3, 1);
    break;
    
    case AT_USTRONG:
    if my_hitboxID.hbox_num = 1 break;
    sound_play(asset_get("sfx_burnapplied"), 0, noone, .4, 1.1);
    sound_play(asset_get("sfx_ori_energyhit_medium"), 0, noone, 1, 1);
    sound_play(asset_get("sfx_hod_charged_uspecial_hit"), 0, noone, 1, 1);
    break;
    
    case AT_FSTRONG:
    case AT_DSTRONG:
    sound_play(asset_get("sfx_ori_energyhit_medium"), 0, noone, 1, 1);
    sound_play(asset_get("sfx_hod_charged_uspecial_hit"), 0, noone, 1, 1);
    break;
    
    case AT_DAIR:
    if my_hitboxID.hbox_num < 7{
        sound_play(asset_get("sfx_burnapplied"), 0, noone, .4, 1.1);
        sound_play(asset_get("sfx_ori_energyhit_medium"), 0, noone, .3, 1);
    }else{
        sound_play(asset_get("sfx_ori_energyhit_medium"), 0, noone, 1, 1);
        sound_play(asset_get("sfx_hod_charged_uspecial_hit"), 0, noone, 1, 1);
    }
    break;
    
    case AT_USPECIAL:
    if my_hitboxID.hbox_num < 5{
        sound_play(asset_get("sfx_burnapplied"), 0, noone, .4, 1.1);
        sound_play(asset_get("sfx_ori_energyhit_medium"), 0, noone, .3, 1);
    }else{
        sound_play(asset_get("sfx_ori_energyhit_medium"), 0, noone, 1, 1);
        sound_play(asset_get("sfx_hod_charged_uspecial_hit"), 0, noone, 1, 1);
    }
    break;
    
    case AT_DSPECIAL:
    venus.hitstop = clamp(my_hitboxID.hitpause + .05*my_hitboxID.hitpause_growth*(get_player_damage(hit_player_obj.player) - my_hitboxID.damage), 0, 20);
    venus.hitstop = floor(venus.hitstop);
    sound_play(asset_get("sfx_orca_bite"));
    sound_play(asset_get("sfx_bite"));
    break;
}