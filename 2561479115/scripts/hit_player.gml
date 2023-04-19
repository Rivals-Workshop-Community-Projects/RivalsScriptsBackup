/*if ((my_hitboxID.attack == AT_FSPECIAL && my_hitboxID.hbox_num == 1) 
|| (my_hitboxID.attack == AT_JAB && my_hitboxID.hbox_num == 2)) 
&& !was_parried {
    if id == hit_player_obj.roke_mark_id || 
    hit_player_obj.roke_mark_id == noone || 
    get_player_team(hit_player_obj.roke_mark_id.player) == get_player_team(player) {
        if hit_player_obj.roke_mark < marks_max hit_player_obj.roke_mark++;
        hit_player_obj.roke_mark_id = id;
    } else {
        hit_player_obj.roke_mark--;
        if hit_player_obj.roke_mark <= 0 {
            hit_player_obj.roke_mark++;
            hit_player_obj.roke_mark_id = id;
        }
    }
    
}
*/
var remove_from_grab = true

if ((my_hitboxID.attack == AT_FSPECIAL && my_hitboxID.hbox_num == 1) 
|| (my_hitboxID.attack == AT_JAB && my_hitboxID.hbox_num == 2)) 
&& !was_parried && !hit_player_obj.clone {
    hit_player_obj.roke_mark_destroytimer = roke_mark_destroytime;
    hit_player_obj.roke_lastmark = id;
    if hit_player_obj.roke_mark < marks_max {
        hit_player_obj.roke_mark++;
        ds_list_insert(hit_player_obj.roke_mark_id,0,id);
        ds_list_insert(hit_player_obj.roke_mark_anim,0,[0,0]);
    }
}



if (my_hitboxID.type == 2 && my_hitboxID.hits_tag == 2) {
    
    has_hit = true;
    has_hit_player = true;
    hitpause = true;
    old_vsp = vsp;
    old_hsp = hsp;
    hitstop_full = my_hitboxID.hitpause + get_player_damage(hit_player_obj.player) * get_hitbox_value(my_hitboxID.attack, my_hitboxID.hbox_num, HG_HITPAUSE_SCALING) * 0.05;
    hitstop = hitstop_full;
    
    hitpause = true;
    hit_player_obj.hitstop_full = hitstop_full;
    hit_player_obj.hitstop = hit_player_obj.hitstop_full;
}

if my_hitboxID.attack == AT_USPECIAL && !attack_charged
    && ds_list_size(hit_player_obj.roke_mark_id) > 0 
    && ds_list_find_index(hit_player_obj.roke_mark_id,id) != -1 {
    attack_charged = true;
    white_flash_timer = 20;
    sound_play(asset_get("sfx_diamond_small_collect"));
    hit_player_obj.roke_mark = 0;
    ds_list_clear(hit_player_obj.roke_mark_id);
    ds_list_clear(hit_player_obj.roke_mark_anim);
    hit_player_obj.roke_mark_destroytimer = 0;
}

switch (my_hitboxID.attack) {
    case AT_JAB: if my_hitboxID.hbox_num == 1 sound_play(asset_get("sfx_shovel_hit_light1"),false,noone,0.75,0.9); break;
    case AT_DATTACK: sound_play(asset_get("sfx_shovel_hit_med2"),false,noone,0.6,0.8); break;
    case AT_UTILT: 
        sound_play(asset_get("sfx_shovel_hit_med2"),false,noone,0.8,0.9);
        sound_play(asset_get("sfx_blow_medium2"),false,noone,1,1);
    break;
    case AT_FTILT: if my_hitboxID.hbox_num == 1 sound_play(asset_get("sfx_shovel_hit_med2"),false,noone,0.75,0.8); break;

    case AT_UAIR: sound_play(asset_get("sfx_blow_weak1")); break;
    case AT_FAIR: 
        if my_hitboxID.hbox_num == 1 sound_play(asset_get("sfx_shovel_hit_heavy1"),false,noone,0.5,1); 
    break;
    case AT_NAIR: sound_play(asset_get("sfx_clairen_hit_med"),false,noone,0.8,1); break;
    case AT_FSPECIAL: sound_play(asset_get("sfx_shovel_hit_light1"),false,-4,0.6,1.04); break;
    case AT_USTRONG:
        switch my_hitboxID.hbox_num {
            case 2:
            case 1: sound_play(asset_get("sfx_clairen_hit_strong")); break;
            case 3: sound_play(asset_get("sfx_clairen_hit_med")); break;
        }
    break;
    case AT_FSTRONG: sound_play(asset_get("sfx_blow_heavy2")); break;
    case AT_DSTRONG: 
        switch my_hitboxID.hbox_num {
            case 3:
            case 4:
                if ds_list_find_index(roke_dstrong_targets, hit_player_obj) != -1 {
                    //print("r")
                    ds_list_remove(roke_dstrong_targets, hit_player_obj)
                }
            break;
            default:
                if ds_list_find_index(roke_dstrong_targets, hit_player_obj) == -1  {
                    //print("a")
                    ds_list_add(roke_dstrong_targets, hit_player_obj);
                }
                remove_from_grab = false;
            break;
        }
    break;
}
if remove_from_grab {
    if ds_list_find_index(roke_dstrong_targets, hit_player_obj) != -1 {
        ds_list_remove(roke_dstrong_targets, hit_player_obj)
    }
}

if my_hitboxID.attack == AT_NSPECIAL && my_hitboxID.hbox_num == 1 {
    instance_destroy(my_hitboxID)
    exit;
}

