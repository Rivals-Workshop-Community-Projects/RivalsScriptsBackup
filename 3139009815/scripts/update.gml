// MunoPhone Touch code - don't touch
// should be at TOP of file
muno_event_type = 1;
user_event(14);

is_attacking = (state == PS_ATTACK_GROUND || state == PS_ATTACK_AIR); //attack check - becomes true if the state is PS_ATTACK_GROUND or PS_ATTACK_AIR
is_dodging = (hurtboxID.dodging); //dodge check - becomes true if the character is invincible when dodging/teching
game_time = get_gameplay_time(); //get_gameplay_time() is a timer that counts up every frame of the match
hbox_view = get_match_setting(SET_HITBOX_VIS); //keeps track if hitbox view is on or off

if (is_attacking){
    window_end = floor(get_window_value(attack, window, AG_WINDOW_LENGTH) * ((get_window_value(attack, window, AG_WINDOW_HAS_WHIFFLAG) && !has_hit) ? 1.5 : 1));
    window_last = get_attack_value(attack, AG_NUM_WINDOWS);
    window_cancel_time = get_window_value(attack, window, AG_WINDOW_CANCEL_FRAME);

    //window_end - takes the last frame of the window (includes whifflag)
    //window_last - checks the last window in the attack
    //window_cancel_time - if the window has a cancel frame to attack/special, this variable can detect the frame it can happen
}



if phone_cheats[CHEAT_LANTERN]{
	lantern_charge = lantern_charge_max;
}

if phone_cheats[CHEAT_PHANTOM]{
	install_timer_max = 99999;
}else{
	install_timer_max = install_timer_max_old;
}


if lantern_charge <= 30{
	lantern_level = 1;
}else if lantern_charge < 90{
	lantern_level = 2;
}else if lantern_charge == 90{
	lantern_level = 3;
}

//these two guys draw the neat trail on the lantern
if (nspecial_lantern_active == false) spawn_hit_fx(lantern_x, lantern_y+4, vfx_soul_trail);
if (nspecial_lantern_active == true)spawn_hit_fx(nspecial_current_lantern.x, nspecial_current_lantern.y+4, vfx_soul_trail);
	
if lantern_charge > lantern_charge_max{
	lantern_charge = lantern_charge_max;
}


if knife_hit { // ONLY when the knife has hit a wall, hit_player.gml handles normal hits
	if attack == AT_FSPECIAL && (has_wall_hooked != 2) { // handle knife exceptions
        has_wall_hooked = 2
		window = 5;
		window_timer = 0;
	}
    knife_hit = false;
}

if (state_timer == 0 && state == PS_PARRY) {
    if nspecial_lantern_active {
        nspecial_current_lantern.recall = true
    }
}

// INSTALL
init_shader();

if install_timer > 0 {

    //if !hitpause {

    // read from current history
    var phantom_pos = install_phantom_history_positions[install_phantom_history_pointer];
    if phantom_pos != -1 {
        install_phantom_x = phantom_pos[0];
        install_phantom_y = phantom_pos[1];
    }
    var phantom_spr_data = install_phantom_history_sprites[install_phantom_history_pointer];
    if phantom_spr_data != -1 {
        install_phantom_sprite = phantom_spr_data[0];
        install_phantom_frame = phantom_spr_data[1];
        install_phantom_spr_dir = phantom_spr_data[2];
        install_phantom_rotation = phantom_spr_data[3];
        install_phantom_alpha = phantom_spr_data[4];
    } else {
        install_phantom_sprite = -1
    }

    // hitbox creation
    var phantom_hitboxes = install_phantom_history_hitboxes[install_phantom_history_pointer];
    if !hitpause && phantom_hitboxes != -1 {
        for (i=0; i < array_length_1d(phantom_hitboxes); i++) {
            var hitbox_data = phantom_hitboxes[i]
            var phantom_hitbox = create_hitbox(hitbox_data[0], hitbox_data[1], install_phantom_x, install_phantom_y);
            with (phantom_hitbox) {
                orig_x_pos = x_pos;
                orig_y_pos = y_pos;
                x_pos = orig_x_pos + (other.install_phantom_x - other.x);
                y_pos = orig_y_pos + (other.install_phantom_y - other.y);

                am_phantom_hitbox = true;
                hbox_group += 5;
            }
        }
    }

    // handling existing phantom hitboxes
    with (pHitBox) {
        if variable_instance_exists(self, "am_phantom_hitbox") {
            if am_phantom_hitbox {
                x_pos = orig_x_pos + (other.install_phantom_x - other.x);
                y_pos = orig_y_pos + (other.install_phantom_y - other.y);
            }
        }
    }

    // hitpause exception to prevent attacks stacking
    if !hitpause {

        // write to current history
        install_phantom_history_positions[install_phantom_history_pointer] = [
            x,
            y
        ];
        var phantom_alpha = 0;
        var attack_forbidden = false;
        for (i=0; i < array_length_1d(install_forbidden_attacks); i++) {
            if (install_forbidden_attacks[i] == attack) {
                attack_forbidden = true;
                break;
            }
        }
        if !attack_forbidden && (prev_state == PS_ATTACK_GROUND || prev_state == PS_ATTACK_AIR) {
            phantom_alpha = max(install_phantom_fade_time - state_timer, 0) / install_phantom_fade_time;
        }
        if !attack_forbidden && (state == PS_ATTACK_GROUND || state == PS_ATTACK_AIR) {
            phantom_alpha = 1;
        }
        install_phantom_history_sprites[install_phantom_history_pointer] = [
            sprite_index,
            image_index,
            spr_dir,
            spr_angle,
            phantom_alpha
        ];

        var hitbox_data_frame = []

        with (pHitBox) {

            var attack_forbidden = false;

            // forbid specific attacks
            for (i=0; i < array_length_1d(other.install_forbidden_attacks); i++) {
                if (other.install_forbidden_attacks[i] == attack) {
                    attack_forbidden = true;
                    break;
                }
            }

            // if the hitbox is ABSOLUTELY mine
            if !player_id.hitpause && player_id == other && hitbox_timer < 1 && !attack_forbidden && !variable_instance_exists(self, "am_phantom_hitbox") && !variable_instance_exists(self, "am_phantom_queued") {
                if type == 1 {
                    array_insert(hitbox_data_frame, array_length_1d(hitbox_data_frame), [
                        attack,
                        hbox_num
                    ]);
                }
                am_phantom_queued = true;
            }
        }

        if array_length_1d(hitbox_data_frame) != 0 {
            install_phantom_history_hitboxes[install_phantom_history_pointer] = hitbox_data_frame;
        } else {
            install_phantom_history_hitboxes[install_phantom_history_pointer] = -1;
        }

        // move pointer forward
        install_phantom_history_pointer = (install_phantom_history_pointer + 1) % install_phantom_delay;

    }

    //}

    // do the rest
    install_timer -= 1
    if install_timer <= 0 {

        // ------ RESET YOUR STATS HERE ------
		leave_ground_max    = 6;		// 4    -  8
		max_jump_hsp        = 6;		// 4    -  8
		air_max_speed       = 5;  		// 3    -  7
		jump_change         = 3;		// 3
		air_accel           = 0.5;		// 0.2  -  0.4
		prat_fall_accel     = 0.85;		// 0.25 -  1.5
		air_friction        = 0.02;		// 0.02 -  0.07
		max_fall            = 9;		// 6    -  11
		fast_fall           = 14;		// 11   -  16
		gravity_speed       = 0.4;		// 0.3  -  0.6
		hitstun_grav        = 0.5;		// 0.45 -  0.53
		
		// Jumps
		jump_start_time     = 5;		// 5                this stat is automatically decreased by 1 after init.gml (dan moment), so its "real value" is 4. if you change this during a match, 4 is the value you should reset it to
		jump_speed          = 11;		// 7.6  -  12       okay, zetter's is actually 10.99 but... come on
		short_hop_speed     = 6;		// 4    -  7.4
		djump_speed         = 8;		// 6    -  12       absa's is -1 because of her floaty djump
		djump_accel         = 0;		// -1.4 -  0        absa's is -1.4, all other chars are 0. only works if the   djump_accel_end_time   variable is also set. floaty djumps should be adjusted by feel based on your char's gravity
		djump_accel_end_time= 0;		//                  the amount of time that   djump_accel   is applied for
		max_djumps          = 1;		// 0    -  3        the 0 is elliana because she has hover instead
		walljump_hsp        = 7;		// 4    -  7
		walljump_vsp        = 8;		// 7    -  10
		land_time           = 4;		// 4    -  6
		prat_land_time      = 10;		// 3    -  24       zetterburn's is 3, but that's ONLY because his uspecial is so slow. safer up b (or other move) = longer pratland time to compensate
		can_wall_cling      = true;

        install_phantom_history_positions = array_create(install_phantom_delay, -1);
        install_phantom_history_hitboxes = array_create(install_phantom_delay, -1);
        install_phantom_history_sprites = array_create(install_phantom_delay, -1);
        sound_play(asset_get("sfx_abyss_despawn"), false, false, 0.8, 0.7)
    }
} else {
    install_phantom_history_pointer = 0;
}

install_background_anim_timer = (install_background_anim_timer+1)%install_background_anim_max;
if dspecial_stun_timer > 0 {
    dspecial_stun_timer--;
    with dspecial_stun_target {
        if free && state != PS_DEAD {
            state = PS_HITSTUN;
            hitstun = 60;
            hitstun_full = 60;
            white_flash_timer = 10;
        } else {
            if !(other.dspecial_stun_timer >= other.dspecial_stun_timer_max - 10) {
                hitstop = 60;
                hitstun = 60;
                white_flash_timer = 30;
                hsp = 0;
                vsp = 0;
                old_hsp = 0;
                old_vsp = 0;
                sound_play(asset_get("sfx_abyss_despawn"), false, false, 2, 0.9)
                sound_play(asset_get("sfx_abyss_spawn"), false, false, 2, 1.1)
                other.dspecial_stun_timer = 0;
            }
        }
    }
}
switch (get_player_color(player)){
	case 4://grey
	install_phantom_skin_index = 2;
	break;
	
	case 6://PPD
	install_phantom_skin_index = 5;
	break;
	
	case 7://Celia
	install_phantom_skin_index = 6;
	break;
	
	case 9://Rosso
	install_phantom_skin_index = 7;
	break;
	
	case 12://Mako
	install_phantom_skin_index = 6;
	break;
	
	case 13://Silverjack
	install_phantom_skin_index = 0;
	break;
	
	case 15://Lux
	install_phantom_skin_index = 5;
	break;
	
	case 17://Tanya
	install_phantom_skin_index = 7;
	break;
	
	case 20://cool alt 1
	install_phantom_skin_index = 0;
	break;
	
	case 21://cool alt 2
	install_phantom_skin_index = 0;
	break;
	
	case 26://Genesis
	install_phantom_skin_index = 6;
	install_background_sprite = sprite_get("tv_static");
	break;
	default:
	install_phantom_skin_index = 4;
	install_afterimage_skin_index = 4;
}


if !free {
  has_wall_hooked = 0
  nspecial_lantern_has_hooked = false
}

// restrictions on lantern moves
if nspecial_lantern_active && nspecial_restrict_attacks {
    for (i=0; i < array_length_1d(lantern_attacks); i++) {
        var att = lantern_attacks[i]
        move_cooldown[att] = 2
    }
}

if attack == AT_NSPECIAL{
	
	can_fastfall = false;
}

// soul stuff, this is jank
if soul_trail_temp_length > 0 {
    for (i=0; i < soul_trail_temp_length - 1; i++) {
        soul_trail_temp_x[i] = soul_trail_temp_x[i + 1]
        soul_trail_temp_y[i] = soul_trail_temp_y[i + 1]
    }
    soul_trail_temp_length--
}

/*
with oPlayer {
    if hit_dspecial = true {
        if !free {
            hit_dspecial = false;
            hitpause = true;
            hitstop_full = 10;
            hitstop = 10;
        }
        if state_cat != SC_HITSTUN || last_player != other || last_attack != attack this is for {
            hit_dspecial = false;
        }
    }
}
*/