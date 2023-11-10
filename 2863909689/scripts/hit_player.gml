last_hit_player = hit_player_obj;

if (my_hitboxID.attack == AT_FAIR){
    if (my_hitboxID.hbox_num == 2){
        sound_play(sound_get("explosion"));
    }
}

if (my_hitboxID.attack == AT_UTILT){
    sound_play(sound_get("mc_hit"));
}

if (my_hitboxID.attack == AT_DATTACK && my_hitboxID.hbox_num != 3){
    grabbed = hit_player_obj;
}

if (my_hitboxID.attack == AT_FSTRONG){
    sound_play(sound_get("mc_hit"));
}

if (my_hitboxID.attack == AT_USTRONG && my_hitboxID.hbox_num == 1){
    last_hit_atk = my_hitboxID.attack;
    hit_player_obj.should_make_shockwave = false;
    enter_ustrong_command_grab = true;
    grabbed = hit_player_obj;
    old_vsp = 0;
    old_hsp = 0;
}

if (my_hitboxID.attack == AT_USTRONG && my_hitboxID.hbox_num == 2){
    grabbed = hit_player_obj;
    old_vsp = -10;
    old_hsp = 2*spr_dir;
}

if (my_hitboxID.attack == AT_USTRONG && my_hitboxID.hbox_num == 3){
    grabbed = hit_player_obj;
    old_vsp = hit_player_obj.old_vsp/1.1;
    old_hsp = hit_player_obj.old_hsp;
}

if (my_hitboxID.attack == AT_DSTRONG){
    sound_play(sound_get("mc_hit"));
}

if (my_hitboxID.kb_scale > 0){
    if (in_alarm_range){
        if (my_hitboxID.attack != AT_DSPECIAL && my_hitboxID.attack != AT_NSPECIAL){
            if (my_hitboxID.attack != AT_USTRONG){
                if (my_hitboxID.attack != AT_FSPECIAL){
                    if (my_hitboxID.attack != AT_USPECIAL){
                        if (alarm_obj != -4 && hit_player_obj.state == PS_HITSTUN){
                            with (alarm_obj){
                                if (player_id == other.id){
                                    if (state == 0){
                                        state = 1;
                                    	state_timer = 0;
                                    	player_hit = other.hit_player_obj;
                                    	player_who_hit = other.player;
                                    	other.alarm_obj = -4;
                                    }
                                }
                            }
                        }
                    }
                }
            }
        }
    }
}

if (my_hitboxID.attack == AT_NSPECIAL){
    sound_play(sound_get("bat"));
}

if (my_hitboxID.attack == AT_FSPECIAL && my_hitboxID.hbox_num == 1){
    //spawn_hit_fx( x + 5*spr_dir, y - 20, 301 );
    sound_stop(asset_get("sfx_ori_stomp_spin"));
    sound_play(sound_get("tool_break"));
    sound_play(sound_get("jump_big"));
    hit_player_obj.should_make_shockwave = false;
    enter_fspecial_command_grab = true;
    grabbed = hit_player_obj;
}

if (my_hitboxID.attack == AT_FSPECIAL && my_hitboxID.hbox_num == 2){
    sound_play(sound_get("explosion"));
}

//fspecial on-hit cooldown
if (my_hitboxID.attack == AT_FSPECIAL && my_hitboxID.hbox_num > 2){
    move_cooldown[AT_FSPECIAL] = fspec_hit_cooldown;
}

if (my_hitboxID.attack == AT_USPECIAL && my_hitboxID.hbox_num == 1){
    grabbed = hit_player_obj;
    
    if (!uspecial_refreshed_djumps){
        djumps = 0;
        uspecial_refreshed_djumps = true;
    }
}

if (my_hitboxID.attack == AT_USPECIAL && my_hitboxID.hbox_num == 2){
    hit_player_obj.y -= 40;
}

if (my_hitboxID.attack == AT_USPECIAL && my_hitboxID.hbox_num == 4){
    old_vsp = hit_player_obj.old_vsp/1.1;
    old_hsp = hit_player_obj.old_hsp;
}