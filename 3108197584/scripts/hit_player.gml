if has_rune("O") rune_cancel = 1;
hit_player_obj.frozen = 0;

//can_special = 1;

switch my_hitboxID.attack{
    case AT_JAB:
    sound_play(asset_get("sfx_blow_heavy1"), 0, noone, .7, .9);
    sound_play(asset_get("sfx_hod_charged_uspecial_hit"), 0, noone, .6, 1.5);
    break;
    
    case AT_TAUNT:
    sound_play(asset_get("sfx_blow_heavy1"), 0, noone, .7, 1.2);
    break;
    
    case AT_DTILT:
    sound_play(asset_get("sfx_blow_heavy1"), 0, noone, .7, .9);
    break;
    
    case AT_UTILT:
    if my_hitboxID.hbox_num == 1{
        var dir = point_direction(hit_player_obj.x, hit_player_obj.y - hit_player_obj.char_height/2, x + 38*spr_dir, y - 120);
        hit_player_obj.old_hsp = lengthdir_x(8, dir);
        hit_player_obj.old_vsp = lengthdir_y(10, dir);
    }
    if my_hitboxID.hbox_num == 2 hit_player_obj.old_hsp = lengthdir_x(3, dir);
    case AT_FTILT:
    sound_play(asset_get("sfx_blow_heavy1"), 0, noone, .8, .9);
    break;
    
    
    case AT_DATTACK:
    sound_play(asset_get("sfx_shovel_hit" + (my_hitboxID.hbox_num-1? "med1": "heavy1")), 0, noone, 1, .9);
    sound_play(asset_get("sfx_hod_charged_uspecial_hit"), 0, noone, .7, 1);
    break;
    
    case AT_USPECIAL_2:
    case AT_FSTRONG:
    case AT_USTRONG:
    case AT_DSTRONG:
    case AT_DSPECIAL:
    case AT_UAIR:
    case AT_DAIR:
    sound_play(asset_get("sfx_springgo"), 0, noone, 1, 1.1);
    sound_play(asset_get("sfx_blow_heavy1"), 0, noone, .8, .9);
    sound_play(asset_get("sfx_burnapplied"), 0, noone, 1, 1);
    
    if (my_hitboxID.attack == AT_USTRONG && my_hitboxID.hbox_num == 2) || (my_hitboxID.attack == AT_FSTRONG && my_hitboxID.hbox_num%2 == 1) || (my_hitboxID.attack == AT_DSTRONG && my_hitboxID.hbox_num%2) || (my_hitboxID.attack == AT_USPECIAL_2 && my_hitboxID.hbox_num = 1) || (my_hitboxID.attack == AT_DAIR && my_hitboxID.hbox_num >= 3){
        sound_play(asset_get("sfx_ori_energyhit_medium"), 0, noone, 1, 1);
        sound_play(asset_get("sfx_hod_charged_uspecial_hit"), 0, noone, 1, 1);
    }
    break;
    
    case AT_NAIR:
    array_push(pseudo_grab, hit_player_obj);
    if attack_down old_vsp = -2;
    if (my_hitboxID.hbox_num == 1 || float_sfx == noone) && attack_down float_sfx = sound_play(sound_get("sfx_sniper_float"), 0, noone, .4, 1);
    sound_play(asset_get("sfx_blow_heavy1"), 0, noone, .6, 1.2 - .1*my_hitboxID.hbox_num);
    break;
    
    case AT_FAIR:
    array_push(pseudo_grab, hit_player_obj);
    sound_play(asset_get("sfx_hod_charged_uspecial_hit"), 0, noone, .6, 1.5);
    if attack_down || (spr_dir? right_stick_down: left_stick_down) || strong_down old_vsp = -3;
    break;
    
    case AT_DAIR:
    if my_hitboxID.hbox_num <= 2 hit_player_obj.x = x + 20*spr_dir;
    break;
    
    case AT_BAIR:
    if my_hitboxID.hbox_num = 1 sound_play(asset_get("sfx_blow_heavy1"), 0, noone, .6, 1.1);
    break;
    
    case AT_FSPECIAL:
    case AT_FSPECIAL_AIR:
    var e = spawn_hit_fx(my_hitboxID.x, my_hitboxID.y, snipe_hit);
    e.depth = depth-2;
    var hpos = hit_player_obj.hurtboxID;
    if my_hitboxID.y == clamp(my_hitboxID.y, hpos.bbox_top, hpos.bbox_top + (hpos.bbox_bottom - hpos.bbox_top)*.1){
        set_player_damage(hit_player_obj.player, get_player_damage(hit_player_obj.player)+2);
        sound_play(asset_get("sfx_abyss_hex_hit"), 0, noone, 1);
    }
    
    sound_play(asset_get("sfx_blow_heavy1"), 0, noone, .8, .9);
    sound_play(asset_get("sfx_hod_charged_uspecial_hit"), 0, noone, .6, 1.5);
    break;
    
    case AT_USPECIAL:
    sound_play(asset_get("sfx_blow_heavy1"), 0, noone, .8, .9);
    sound_play(asset_get("sfx_ori_energyhit_medium"), 0, noone, .7, 1);
    sound_play(asset_get("sfx_hod_charged_uspecial_hit"), 0, noone, .7, 1);
    break;
    
    case AT_NSPECIAL:
    sound_play(asset_get("sfx_ori_energyhit_medium"), 0, noone, .6, .8);
    if hit_player_obj != self && hit_player_obj.targeted[player-1] && hit_player_obj.targeted[player-1] != 239 hit_player_obj.targeted[@player-1] = max(hit_player_obj.targeted[player-1] - 90, 0);
    if has_rune("N") && hit_player_obj != self && get_player_damage(hit_player_obj.player) >= 64{
        hit_player_obj.hitstop = 60;
        hit_player_obj.frozen = 60;
    }
    break;
}