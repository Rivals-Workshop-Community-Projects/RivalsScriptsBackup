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

//sound layering stuff
if (my_hitboxID.attack == AT_UAIR) {
    sound_play(asset_get("sfx_blow_weak1"));
}
if my_hitboxID.attack == AT_UTILT && my_hitboxID.hbox_num == 1 {
    sound_play(asset_get("sfx_shovel_hit_med2"),false,noone,0.8,0.9);
    sound_play(asset_get("sfx_blow_medium2"),false,noone,1,1);
}
if my_hitboxID.attack == AT_FTILT && my_hitboxID.hbox_num == 1 {
    sound_play(asset_get("sfx_shovel_hit_med2"),false,noone,0.75,0.8);
    //sound_play(asset_get("sfx_blow_medium2"),false,noone,1,1);
}
if my_hitboxID.attack == AT_JAB && my_hitboxID.hbox_num == 1 {
    sound_play(asset_get("sfx_shovel_hit_light1"),false,noone,0.75,0.9);
}
if my_hitboxID.attack == AT_DATTACK {
    sound_play(asset_get("sfx_shovel_hit_med2"),false,noone,0.6,0.8);
}
if my_hitboxID.attack == AT_FAIR && my_hitboxID.hbox_num == 1 {
    sound_play(asset_get("sfx_shovel_hit_heavy1"),false,noone,0.5,1);
}
if my_hitboxID.attack == AT_FAIR && my_hitboxID.hbox_num == 2 {
    sound_play(asset_get("sfx_shovel_hit_heavy2"),false,noone,0.8,1);
}
if my_hitboxID.attack == AT_NAIR {
    sound_play(asset_get("sfx_clairen_hit_med"),false,noone,0.8,1);
}
if my_hitboxID.attack == AT_FSPECIAL {
    sound_play(asset_get("sfx_shovel_hit_light1"),false,-4,0.6,1.04);
}

if my_hitboxID.attack == AT_USTRONG {
    switch my_hitboxID.hbox_num {
        case 2:
        case 1: sound_play(asset_get("sfx_clairen_hit_strong")); break;
        case 3: sound_play(asset_get("sfx_clairen_hit_med")); break;
    }
}
if my_hitboxID.attack == AT_FSTRONG sound_play(asset_get("sfx_blow_heavy2"));