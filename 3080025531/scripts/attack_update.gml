//B - Reversals
if (attack == AT_NSPECIAL || attack == AT_FSPECIAL || attack == AT_DSPECIAL || attack == AT_USPECIAL){
    trigger_b_reverse();
}

switch (attack) {
    // NORMALS
    case AT_JAB:
        //if (window == 1 && window_timer == 2) {
        //    spell_change_anim = true;
        //}
        if (window == 6 && window_timer > 6 && (special_pressed || special_down)) {
            attack_end();
            attack = AT_EXTRA_1;
            window = 1;
            window_timer = 0;
        }
        break;
    case AT_FTILT:
        switch (window) {
            case 1:
                ftilt_grab = false;
                break;
            case 2:
                grab_check(8, -48, false);
                if (window_timer == get_window_value(attack, window, AG_WINDOW_LENGTH) && ftilt_grab) {
                    window = 4;
                    window_timer = 0;
                }
                break;
            case 4:
                grab_check(-16, -36, false);
                if (window_timer == get_window_value(attack, window, AG_WINDOW_LENGTH)) {
                    window = 5;
                    window_timer = 0;
                }
                break;
            case 5:
                grab_check(-48, 0, false);
                grab_end(AT_FTILT, 3, 1, true);
                if (window_timer == get_window_value(attack, window, AG_WINDOW_LENGTH)) {
                    window = 6;
                    window_timer = 0;
                }
                break;
            case 6:
                if (window_timer == get_window_value(attack, window, AG_WINDOW_LENGTH)) {
                    spr_dir = -spr_dir;
                }
                break;
        }
        break;
    case AT_USTRONG:
        can_move = false;
    case AT_FAIR:
        switch (window) {
            case 1:
                fair_grab = false;
                break;
            case 2:
                grab_check(32, -32, false);
                if (window_timer == get_window_value(attack, window, AG_WINDOW_LENGTH) && fair_grab) {
                    attack_end();
                    attack = AT_FTHROW;
                    window = 1;
                    window_timer = 0;
                }
                break;
        }
        break;
    case AT_FTHROW:
        switch (window) {
            case 1:
                vsp = lerp(vsp, 0, 0.3);
                hsp = lerp(hsp, 0, 0.3);
                grab_check(-32, -32, false);
                break;
            case 2:
                can_move = false;
                grab_check(0, 0, false);
                vsp += 0.5;
                if (!free) {
                    window = 3;
                    window_timer = 0;
                }
                break;
            case 3:
                can_move = false;
                grab_check(0, 0, false);
                grab_end(AT_FTHROW, 1, 1, true);
                if (window_timer == get_window_value(attack, window, AG_WINDOW_LENGTH)) {
                    window = 4;
                    window_timer = 0;
                    hsp = -4 * spr_dir;
                    vsp = -10;
                }
                break;
        }
        break;
    // STRONGS
    case AT_DSTRONG:
        switch(window) {
            case 3:
                grab_check(-50, -12, false);
                break;
            case 4:
                grab_check(0, -20, false);
                break;
            case 5:
                grab_check(70, -6, false);
                grab_end(AT_DSTRONG, 3, 1, true);
                break;
        }
        break;
    //SPECIALS
    //case AT_DSPECIAL:
    //    if (move_cooldown[AT_DSPECIAL] == 0) {
    //        if (active_spell == 2) active_spell = 0;
    //        else active_spell++;
    //        spell_change_anim = true;
    //    }
    //    break;
    case AT_DSPECIAL:
       if window == 1 {
            sound_play(asset_get("mfx_chat_received"));
        }
        break
    case AT_USPECIAL:
        move_cooldown[AT_USPECIAL] = 900;
        can_move = true;
        can_fast_fall = false;
        //if (window == 1 && window_timer == 4) voice_check();
        //voice_check(1, false);
        //voice_check(4, false);
        if (window == 5 && state_timer > 55) {
            can_shield = true;
            can_jump = true;
        }
        break;
        if window == 7 || 8 {
            can_move = false;
        }
        break
    
    case AT_FSPECIAL:
        //voice_check(1, false);
        if (window == 1) {
            fspecial_loops = 0;
        }
        if (window == 3 && !hitpause) {
            if (window_timer == 1) {
                if (fspecial_loops > 0) sound_play(sfx_swinglight2, false, noone, 0.8, (1 + (random_func(1, -4, 4) / 10)))
            }
            if (window_timer == get_window_value(attack, window, AG_WINDOW_LENGTH)) {
                if (special_down && !exhausted) {
                    window = 3;
                    window_timer = 0;
                    fspecial_loops++;
                    stamina -= fspecial_gro_cost;
                }
            }
        }
        if ((window == 2 || window == 3) && !hitpause) {
            reflect_check();
        }
        break;
    case AT_FSPECIAL_AIR:
        //voice_check(1, false);
        can_move = false;
        can_fast_fall = false;
        if (window == 1) {
            vsp = lerp(vsp, 0, 0.3);
            hsp = lerp(hsp, 0, 0.3);
            //if (down_down) print("goin down");
        }
        if ((window == 2 || window == 3 || window == 4) && !hitpause) {
            if (window == 2) hsp =  10* spr_dir;
            if (window == 3 || window == 4) {
                if (abs(hsp) < 3) hsp = 1 * spr_dir;
                else hsp -= 0.3 * spr_dir;
            } 
            if (down_down) {
                //spr_angle -= 15;
                vsp += 0.15;
                //hsp -= 0.5 * spr_dir
            }
            else if (up_down) {
                //spr_angle -= 15;
                vsp -= 0.15;
                //hsp -= 0.5 * spr_dir
            }

            if (window_timer == get_window_value(attack, 3, AG_WINDOW_LENGTH)) {
                if (special_down && !exhausted && !hitpause) {
                    window = 3;
                    window_timer = 0;
                    fspecial_loops++;
                    stamina -= fspecial_air_cost;
                }
            }

            //vsp = 0;
            if (!free) {
                sound_play(asset_get("sfx_gus_land"));
                attack = AT_FSPECIAL;
                window = 2;
                window_timer = 0;
            }
        }
        if ((window == 2 || window == 3) && !hitpause) {
            reflect_check();
        }
        if (window >= 2) {
            can_wall_jump = true;
        }
        break;
    case AT_TAUNT:
        if (dust_mode = false) {
            if (down_down){
                dust_mode = true;
                //sound_play(vc_dust_dust);
            } 
        }
        if (dust_mode) {
            if (window == 2 && window_timer == 1) {
                sound_play(vc_dust_dust2);
            }
        }
        break;
    case AT_NSPECIAL_2:
		can_move = false;
        if (window == 3 && window_timer == 1) {
            spawn_hit_fx(x + 52 * spr_dir, y - 46, fx_sonic).depth = depth - 1;
    	    move_cooldown[AT_NSPECIAL_2] = 30;
        }
		break;
}

voice_check();

#define reflect_check()
with pHitBox {
    //if (player == other.player && type == 2) {
    //    var refl = place_meeting(x + hsp, y + vsp, other.hurtboxID);
    //    
    //}

    if (player != other.player && type == 2 && !plasma_safe && !was_parried) {
        var refl = place_meeting(x + hsp, y + vsp, other.hurtboxID);
        if (refl) {
            was_parried = true;
            sound_play(asset_get("sfx_ell_dspecial_explosion_1"));
            //print("here")
            //spawn_hit_fx(refl.x - refl.width * spr_dir * 2, refl.y, 14 );
            if (variable_instance_exists(refl, "damage")) {
                print("here!")
                damage *= 1.4;
                print(other.player);
                //refl.player = other.player;
                can_hit_self = true;
                can_hit[other.player] = false;
                owner = other;
                spr_dir = -spr_dir;
                if (other.attack == AT_FSPECIAL) {
                    hsp = -hsp;
                    vsp = -vsp;
                }
                else {
                    hsp = -hsp;
                    vsp = other.vsp;
                    proj_angle = darctan2(-vsp, hsp);
                }
                if (length < 25) length = 50;
                else length *= 2;
            }
        }
    }
}

#define voice_check()
var pref_time = get_window_value(attack, window, AG_WINDOW_LENGTH) - 2
if ((voiced || dust_mode) && !hitpause) {
    switch(attack) {
        case AT_USPECIAL:
            if (window == 1 && window_timer == pref_time) {
                if (!dust_mode) {
                    var rand = random_func(5, 2, true);
                    if (rand == 0) sound_play(vc_dust_uspecial1);
                    else sound_play(vc_dust_uspecial2);
                }
                else sound_play(vc_dust_dust);;
            }
            if (window == 4 && window_timer == pref_time) {
                if (!dust_mode) sound_play(vc_dust_attack4);
                else sound_play(vc_dust_dust);
            }
            
            break;
        case AT_FSPECIAL:
            if (window == 1 && window_timer == pref_time) {
                if (!dust_mode) sound_play(vc_dust_fspecial1);
                else sound_play(vc_dust_dust);
            }
            break;
        case AT_FSPECIAL_AIR:
            if (window == 1 && window_timer == pref_time) {
                if (!dust_mode) sound_play(vc_dust_fspecial2);
                else sound_play(vc_dust_dust);
            }
            break;
        case AT_FSTRONG:
            if (window == 2 && window_timer == pref_time) {
                if (!dust_mode) sound_play(vc_dust_fstrong);
                else sound_play(vc_dust_dust);
            }
            break;
        case AT_DSTRONG:
            if (window == 2 && window_timer == pref_time) {
                if (!dust_mode) sound_play(vc_dust_dstrong);
                else sound_play(vc_dust_dust);
            }
            break;
        case AT_USTRONG:
            if (window == 2 && window_timer == pref_time) {
                if (!dust_mode) sound_play(vc_dust_ustrong);
                else sound_play(vc_dust_dust);
            }
            break;
        //case AT_TAUNT:
        //    if (window == 1 && window_timer == pref_time) sound_play(vc_dust_edge);
        //    break;
        case AT_DAIR:
        case AT_FAIR:
        case AT_UAIR:
        case AT_BAIR:
        case AT_FTILT:
        case AT_UTILT:
            if (window == 1 && window_timer == pref_time) {
                var rand = random_func(5, 8, true);
                if (rand == 0) {
                    if (!dust_mode) sound_play(vc_dust_attack1);
                    else sound_play(vc_dust_dust);
                }
                if (rand == 1) {
                    if (!dust_mode) sound_play(vc_dust_attack2);
                    else sound_play(vc_dust_dust);
                }
                if (rand == 2) {
                    if (!dust_mode) sound_play(vc_dust_attack1);
                    else sound_play(vc_dust_dust);
                }
                if (rand == 3) {
                    if (!dust_mode) sound_play(vc_dust_attack2);
                    else sound_play(vc_dust_dust);
                }
            }
    }
}

#define grab_check(x_pos, y_pos, off_edge_flag)
if (grabbed_id != noone) {
	off_edge = off_edge_flag;
	grabbed_id.ungrab = 0;
	grabbed_id.spr_dir = -spr_dir;
	grabbed_id.depth = depth - 0.1;
	grabbed_id.x = x + x_pos * spr_dir;
	grabbed_id.y = y + y_pos;
}

#define grab_end(attack_tag, attack_hbox, attack_timer, attack_end_flag)
if (window_timer == attack_timer && !hitpause && !hitstop) {
	grabbed_id.state = PS_PRATFALL;
	grabbed_id.ungrab = 0;
	var beeg_hitbox = create_hitbox(attack_tag, attack_hbox, x, y);
	grabbed_id = noone;
	if (attack_end_flag) attack_end();
}