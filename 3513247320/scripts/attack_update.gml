var window_end_time = get_window_value(attack, window, AG_WINDOW_LENGTH);
rush_coil_interaction = "INTERRUPT";

//B - Reversals
if (attack == AT_NSPECIAL || attack == AT_FSPECIAL || attack == AT_DSPECIAL || attack == AT_USPECIAL){
	trigger_b_reverse();
}

switch attack{
	case AT_JAB:
		if window % 3 == 1 && window_timer == window_end_time && !hitpause spawn_base_dust(x - (20 * spr_dir), y, "dash");
	break;
	case AT_DTILT:
		if window == 1 && window_timer == attack_window_end PlayVoiceClip("sfx", "dashstart", 0.2, true, false);
		if window == 2 && window_timer % 4 == 0 && !hitpause{
			spawn_base_dust(x - (20 * spr_dir), y, "dash");
			if has_rune("B") && attack_down && window_timer == 8{
				window_timer -= 4;
				with pHitBox if orig_player_id == other && attack == other.attack hitbox_timer -= 4;
				hsp = clamp(abs(hsp), get_window_value(attack, window, AG_WINDOW_HSPEED) * 2/3, 99) * spr_dir;
				if state_timer % 48 < 4 attack_end();
			}
		}
		if window >= 2 hsp *= 0.95;
		// if free{
		// 	attack_end();
		// 	destroy_hitboxes();
		// 	fixed_set_state(free? PS_IDLE_AIR:PS_IDLE);
		// 	var min_cancel = 4;
		// 	var max_cancel = 10;
		// 	hsp = clamp(abs(hsp), min_cancel, max_cancel) * spr_dir;
		// 	vsp = -2;
		// }
	break;
	// case AT_FTILT:
	// 	if has_hit && (window > 2 || (window == 2 && state_timer >= (attack == AT_FTILT? 15:4))) && !hitpause &&
	// 	((attack_pressed && up_down && !down_down) ||
	// 	right_strong_pressed || left_strong_pressed || down_strong_pressed || up_strong_pressed ||
	// 	special_pressed || taunt_pressed || shield_pressed || jump_pressed || left_stick_pressed || right_stick_pressed){
	// 		move_cooldown[AT_JAB] = 2;
	// 		move_cooldown[AT_FTILT] = 2;
	// 		move_cooldown[AT_DTILT] = 2;
	// 		iasa_script();
	// 	}
	// break;
	case AT_UTILT:
		if window > 1 hsp = clamp(hsp, -2, 2);
		if has_rune("G") && (window < 2 || (window == 2 && window_timer == 1)) invincible = true;
		else invincible = false;
		can_fast_fall = false;
		if window == 1 && window_timer == window_end_time && !hitpause spawn_base_dust(x, y, "jump");
		// if window < 4 can_move = false;
		if window == 3{
			set_attack_value(AT_UTILT, AG_CATEGORY, 1);
			if has_hit can_wall_jump = true;
		}
	break;
	case AT_DATTACK:
		// if window == 1 && window_timer == window_end_time && !hitpause{
		// 	reset_hitbox_value(AT_DATTACK, 2, HG_WIDTH);
		// 	reset_hitbox_value(AT_DATTACK, 2, HG_HEIGHT);
		// 	reset_hitbox_value(AT_DATTACK, 3, HG_WIDTH);
		// 	reset_hitbox_value(AT_DATTACK, 3, HG_HEIGHT);
		// 	spawn_base_dust(x - (20 * spr_dir), y, "dash_start", -spr_dir);
		// }
		// if window_timer % 3 == 0 && !hitpause && ((window == 2 && window_timer >= 4) || (window == 3 && window_timer < 8)) create_hitbox(attack, 2, x, y);
		// if (window == 2 || window == 3) && window_timer % 7 == 1 && !hitpause sound_play(asset_get("sfx_ori_stomp_spin"));
		// if has_hit_player{
		// 	set_hitbox_value(AT_DATTACK, 2, HG_WIDTH, 90);
		// 	set_hitbox_value(AT_DATTACK, 2, HG_HEIGHT, 70);
		// 	set_hitbox_value(AT_DATTACK, 3, HG_WIDTH, 80);
		// 	set_hitbox_value(AT_DATTACK, 3, HG_HEIGHT, 60);
		// }
	break;
	case AT_FSTRONG:
		if window == 1 && window_timer == window_end_time - 1 && !hitpause {
			var lvl = 1 + (((strong_charge - 1) / 3) / 10) * (has_rune("D")? 1.5:1);
			if(lvl == 1.5 || lvl == 2.5){
				spawn_hit_fx(x + 25 * spr_dir, y - 35, HFX_ORI_ORANGE_SMALL);
				sound_play(asset_get("sfx_absa_orb_hit"));
			}
		}
		if window == 2 && window_timer == window_end_time && !hitpause{
			var lvl = clamp(round(1 + ((strong_charge / 3) / 10) * (has_rune("D")? 1.5:1)), 1, 3);
			var hbox = create_hitbox(attack, lvl, x + (40 * spr_dir), y - 30);
			hbox.strong_charge = strong_charge;
			sound_play(sound_get("dashstop"), false, noone, 0.5);
			sound_play(sound_get("fstrong" + string(lvl)));
			sound_stop(fstrong_sfx);
			shake_camera(3 + round(strong_charge / 20), 5);
			strong_charge = 0;
		}
	break;
	case AT_DSTRONG:
		var minimum_hsp = 1.5;
		var steer = 0.25;
		if abs(hsp) < minimum_hsp && right_down - left_down != 0 hsp = clamp(hsp + (steer * (right_down - left_down)), -minimum_hsp, minimum_hsp);
		else hsp *= 0.925;
		can_move = false;
		can_fast_fall = false;
		switch window{
			case 1:
				if window_timer == 6 && !hitpause{
					vsp = -6 + (-3 * up_down);
					sound_play(asset_get("sfx_kragg_rock_pull"));
					spawn_base_dust(x, y, "jump");
				}
				vsp = min(vsp * 0.95, 5);
				grav = 0.1;
				if vsp > 0 vsp *= 0.6;
				if state_timer >= 30 vsp = 0;
			break;
			case 2:
				if window_timer == window_end_time {
					vsp = 20;
					sound_play(asset_get("sfx_swipe_heavy2"));
					//rush_coil_interaction = "PERSIST";
				}
			break;
			case 3:
				if !hitpause vsp = 20;
				can_walljump = true;
				//rush_coil_interaction = "PERSIST";
				if free && window_timer > (has_rune("H")? 7:15) iasa_script();
				if !free && !hitpause {
					destroy_hitboxes();
					shake_camera(5, 6);
					sound_play(asset_get("sfx_kragg_rock_pillar"));
					spawn_base_dust(x, y, "land");
					set_window(4);
					create_hitbox(attack, 2, x, y);
				}
			break;
		}
	break;
	case AT_USTRONG:
		// if ((window == 2 && window_timer >= 4) || (window == 3 && window_timer < 15)) && window_timer % 3 == 0 && !hitpause create_hitbox(attack, 2, x, y);
		if window == 2 || window == 3 hud_offset = 60;
		if window == 2 && window_timer == window_end_time && !hitpause {
			sound_play(sound_get("ustrong"), false, false, .9, 1);
		}
		if (window == 3) && window_timer % 5 == 1 && !hitpause sound_play(asset_get("sfx_absa_singlezap1"), false, false, 0.5, 1);
		if window == 3 && window_timer == 12 && !hitpause sound_play(asset_get("sfx_absa_singlezap2"), false, false, 0.5, 1);
	break;
	case AT_NAIR:
		// if window == 1 && window_timer == window_end_time && !hitpause{
		// 	reset_hitbox_value(AT_NAIR, 1, HG_WIDTH);
		// 	reset_hitbox_value(AT_NAIR, 1, HG_HEIGHT);
		// 	reset_hitbox_value(AT_NAIR, 2, HG_WIDTH);
		// 	reset_hitbox_value(AT_NAIR, 2, HG_HEIGHT);
		// }
		// if (window == 2 || (window == 3 && window_timer < 4)) && window_timer % 3 == 0 && !hitpause create_hitbox(attack, 1, x, y);
		// if (window == 2 || window == 3) && window_timer % 7 == 1 && !hitpause sound_play(asset_get("sfx_ori_stomp_spin"));
		// if window == 3 && window_timer == window_end_time && !hitpause sound_play(asset_get("mfx_star"));
		// if has_hit_player{
		// 	set_hitbox_value(AT_NAIR, 1, HG_WIDTH, 90);
		// 	set_hitbox_value(AT_NAIR, 1, HG_HEIGHT, 70);
		// 	set_hitbox_value(AT_NAIR, 2, HG_WIDTH, 90);
		// 	set_hitbox_value(AT_NAIR, 2, HG_HEIGHT, 90);
		// }
		// set_window_value(attack, 4, AG_WINDOW_VSPEED_TYPE, attack_down? 2:0);
  //      set_window_value(attack, 4, AG_WINDOW_VSPEED, attack_down? -4:0);
	break;
	case AT_UAIR:
		if has_rune("F"){
			set_hitbox_value(attack, 1, HG_WINDOW, 99);
			set_hitbox_value(attack, 1, HG_PROJECTILE_HSPEED, 7.5);
			set_hitbox_value(attack, 1, HG_PROJECTILE_AIR_FRICTION, 0.5);
			set_hitbox_value(attack, 1, HG_PROJECTILE_VSPEED, 0);
			set_hitbox_value(attack, 1, HG_PROJECTILE_GRAVITY, -0.25);
			if window == 1 && window_timer == window_end_time{
				create_hitbox(attack, 1, round(x + (get_hitbox_value(attack, 1, HG_HITBOX_X) * spr_dir) + hsp), round(y + get_hitbox_value(attack, 1, HG_HITBOX_Y) + vsp));
				spr_dir *= -1;
				create_hitbox(attack, 1, round(x + (get_hitbox_value(attack, 1, HG_HITBOX_X) * spr_dir) + hsp), round(y + get_hitbox_value(attack, 1, HG_HITBOX_Y) + vsp));
				spr_dir *= -1;
			}
		}
	case AT_DAIR:
		// set_window_value(attack, 2, AG_WINDOW_VSPEED_TYPE, attack_down? 2:0);
  //      set_window_value(attack, 2, AG_WINDOW_VSPEED, attack_down? -4:0);
	break;
	case AT_NSPECIAL: case AT_NSPECIAL_2:
		// if window_timer == window_end_time && (attack == AT_NSPECIAL || special_pressed || special_down){
		// 	has_rock = true;
		// 	nspec_lemon_timer = 1;
		// 	nspec_lemon_buffer_timer = nspec_lemon_buffer_interval;
		// 	attack_end();
		// 	destroy_hitboxes();
		// 	fixed_set_state(free? PS_IDLE_AIR:PS_IDLE);
		// 	attack = AT_NSPECIAL;
		// }
	break;
	case AT_FSPECIAL:
	can_move = (window < 3 || window > 5);
		switch window{
			case 1:
			set_window_value(attack, 4, AG_WINDOW_TYPE, 9);
			set_window_value(attack, 5, AG_WINDOW_TYPE, 9);
			reset_window_value(attack, 4, AG_WINDOW_HSPEED);
			vsp = min(vsp, 6);
			break;
			case 2:
				vsp = min(vsp, 6);
				fspec_charge++;
				if window_timer % 8 == 1 sound_play(asset_get("sfx_ell_drill_loop"), false, noone, .5 , 1 + (fspec_charge / 100));
				if window_timer == window_end_time && special_down window_timer = 0;
				else if !special_down || fspec_charge >= 90 {
					window = 3;
					window_timer = 0;
				} 
				
				if fspec_charge == fspec_charge_mid || fspec_charge == fspec_charge_max {
					sound_play(asset_get("sfx_frog_fspecial_charge_gained_2"), false, noone, 1 , 1 + (fspec_charge / 100));
					spawn_hit_fx(x + (36 * spr_dir), y - 48, 301);
					set_window_value(attack, 4, AG_WINDOW_HSPEED, fspec_charge < fspec_charge_max ? 12 : 14);
				}
				if fspec_charge >= fspec_charge_mid && fspec_charge % 8 == 0 && fspec_charge < fspec_charge_max spawn_hit_fx(x - (36 * spr_dir), y - 48, 14);
				else if fspec_charge >= fspec_charge_max && fspec_charge % 8 == 0 spawn_hit_fx(x - (36 * spr_dir), y - 48, 109);
			break;
			case 3:
			fspec_loops = floor(2 + fspec_charge/20);
				if window_timer == window_end_time{
					if(!hitpause) create_hitbox(AT_FSPECIAL, (1 + (fspec_charge >= fspec_charge_mid) + (fspec_charge >= fspec_charge_max)), x, y);
					// window = fspec_charge >= fspec_charge_max? 6:(fspec_charge >= fspec_charge_mid? 5:4);
					// window_timer = 0;
				}
			break;
			case 4:
			reset_window_value(AT_FSPECIAL, 6, AG_WINDOW_CUSTOM_AIR_FRICTION);
			fspec_wall_timer = 0;
			if has_hit fspec_loops = min(fspec_loops, 3);
			if(fspec_loops && window_timer == window_end_time) fspec_loops--;
			if fspec_loops set_window_value(attack, window, AG_WINDOW_TYPE, 9);
			else set_window_value(attack, window, AG_WINDOW_TYPE, 1);
			if(!hitpause && collision_line(x, y - 40, x + 72 * spr_dir, y - 40, asset_get("par_block"), true, true)){
				var _xx = x + 72 * spr_dir;
				var _yy = y - 40;
				while(position_meeting(_xx, _yy, asset_get("par_block"))){
					_xx -= spr_dir;
				}
				x = _xx - 71 * spr_dir;
				window = 5;
				destroy_hitboxes();
				sound_play(asset_get("sfx_kragg_spike"));
				spawn_hit_fx(x + 72 * spr_dir, y - 40, HFX_KRA_ROCK_SMALL);
			} else if(spr_dir == 1 && x + 100 + hsp > get_stage_data(SD_RIGHT_BLASTZONE_X) || spr_dir == -1 && x - 100 + hsp < get_stage_data(SD_LEFT_BLASTZONE_X)) && !instance_exists(oTestPlayer) {
				window = 6;
				window_timer = 0;
				destroy_hitboxes();
				hsp = clamp(hsp, -10, 10);
			} else if(!free && jump_pressed && !has_hit && !was_parried){
				window = 7;
				window_timer = 0;
				destroy_hitboxes();
				fspec_jump_flip = (right_down && spr_dir == -1 || left_down && spr_dir == 1);
				hsp *= fspec_jc_hsp_mult;
				old_hsp *= fspec_jc_hsp_mult;
			}
			if(window == 4){
				if (place_meeting(x + hsp + 2 * spr_dir, y, asset_get("par_block")) && free) {
                    for (var i = 1; i < 38; i++){
                        if (!place_meeting(x + hsp + 2 * spr_dir, y- i ,asset_get("par_block"))) {
                            y -= i;
                            if(hsp == 0){
                            	hsp = 10 * spr_dir;
                            }
                            break;
                        }
                    }
                }
			}
			if(window == 4 && !hitpause && fspec_loops && window_timer%4 == 0) create_hitbox(AT_FSPECIAL, (1 + (fspec_charge >= fspec_charge_mid) + (fspec_charge >= fspec_charge_max)), x, y);
			break;
			case 5:
			set_window_value(AT_FSPECIAL, 6, AG_WINDOW_CUSTOM_AIR_FRICTION, .15); // lets megaman drift after hitting a wall to wall jump
			fspec_wall_timer++;
			if fspec_wall_timer % 10 == 1 {
				spawn_base_dust(x + 72 * spr_dir, y - 40, "land", 0, 90 + 180 * (spr_dir == -1));
				sound_play(asset_get("sfx_kragg_roll_end"));
			}
			if fspec_wall_timer <= fspec_wall_timer_max set_window_value(attack, window, AG_WINDOW_TYPE, 9);
			else set_window_value(attack, window, AG_WINDOW_TYPE, 1);
			if(!hitpause && !collision_line(x, y - 40, x + 72 * spr_dir, y - 40, asset_get("par_block"), true, true)){
				window = 4;
				destroy_hitboxes();
			}
			if(window == 5 && !hitpause && fspec_wall_timer <= fspec_wall_timer_max && window_timer%4 == 0) create_hitbox(AT_FSPECIAL, (4 + (fspec_charge >= fspec_charge_mid) + (fspec_charge >= fspec_charge_max)), x, y);
			break;
			case 7:
			hsp = clamp(hsp, -fspec_jc_hsp_mult * get_window_value(AT_FSPECIAL, 4, AG_WINDOW_HSPEED), fspec_jc_hsp_mult * get_window_value(AT_FSPECIAL, 4, AG_WINDOW_HSPEED))
			can_move = window_timer < 5;
			if(window_timer == 5 && !hitpause){
				vsp = jump_down ? -jump_speed : -short_hop_speed;
				if fspec_jump_flip spr_dir *= -1;
				spawn_base_dust(x + 30 * spr_dir, y, "dash_start");
				sound_play(sound_get("jump"), false, noone, .2);
			}
			if(window_timer >= 16) iasa_script();
			if(window_timer > 5 && !free) set_state(PS_LAND);
			case 6:
			destroy_hitboxes();
			break;
			// case 5:
			// 	if window_timer % 3 == 0 && !hitpause fspec_hitbox = create_hitbox(AT_FSPECIAL, window_timer < window_end_time - 4? 2:3, x, y);
			// break;
			// case 6:
			// 	for (var f = 0; f < array_length(fspec_grab); f++;){
			// 		fspec_grab[f].hitpause = 2;
			// 		fspec_grab[f].x = lerp(fspec_grab[f].x, x + ((128 + ((f - array_length(fspec_grab)) * 32)) * spr_dir), 0.5);
			// 		fspec_grab[f].y = lerp(fspec_grab[f].y, y + -24, 0.5);
			// 	}
			// 	var correction = 15;
			// 	var spread = 30;
			// 	var interval = 3;
			// 	if window_timer % interval == 0 && !hitpause{
			// 		var smoke = spawn_hit_fx(x, y - (char_height / 2), HFX_GEN_DIR);
			// 		smoke.hit_angle = 180 - (correction * spr_dir) - (spread / 2) + point_direction(x, y, x + (hsp * spr_dir), y + vsp) + random_func_2(get_gameplay_time() % 200, spread, true);
			// 	}
			// 	if window_timer == 1 && !hitpause fspec_hitbox = create_hitbox(AT_FSPECIAL, 4, x, y);
			// 	else if window_timer % 4 == 1 && !hitpause for (var h = 0; h < array_length(fspec_hitbox.can_hit); h++;) fspec_hitbox.can_hit[h] = true;
			// 	else if window_timer == get_window_value(attack, window, AG_WINDOW_LENGTH) && array_length(fspec_grab){
			// 		instance_destroy(fspec_hitbox);
			// 		fspec_explosion = create_hitbox(AT_FSPECIAL, 5, x, y);
			// 		for (var f = 0; f < array_length(fspec_grab); f++;){
			// 			fspec_grab[f].hitpause = 0;
			// 		}
			// 		fspec_grab = [];
					
			// 		set_attack_value(attack, AG_CATEGORY, 2);
			// 		window = 9;
			// 		window_timer = 0;
			// 		hsp = -8 * spr_dir;
			// 		vsp = -7;
			// 	}
			// break;
		}
		
		if window == 3 && window_timer == window_end_time {
			fspec_sfx_timer = 8;
			sound_play(asset_get("sfx_ell_drill_stab"), false, noone, 1, 1 - (fspec_charge/1000));
			sound_play(asset_get("sfx_ell_drill_loop"), false, noone, 1, 1 - (fspec_charge/1000));
			var hfx = spawn_hit_fx(x, y - 12, HFX_ZET_FIRE_DIR);
			hfx.spr_dir = 1;
			hfx.hit_angle = 180 * (spr_dir == 1);
		}
		if(window == 4 || window == 5){
			fspec_sfx_timer--;
			if window == 4 && !hitpause && (fspec_sfx_timer == 4 || !fspec_sfx_timer) {
				var hfx = spawn_hit_fx(x, y - 12, HFX_ZET_FIRE_DIR);
				hfx.spr_dir = 1;
				hfx.hit_angle = 180 * (spr_dir == 1);
			}
			if(!hitpause && ((window == 4 && fspec_loops) || (fspec_wall_timer <= fspec_wall_timer_max))){
				if !fspec_sfx_timer {
					fspec_sfx_timer = 8;
					sound_play(asset_get("sfx_ell_drill_loop"), false, noone, 1, 1 - (fspec_charge/1000));
				}
			}
		}
		
		// if window <= 3{
		// 	if free vsp = clamp(vsp, -3, 3);
		// 	fspec_grounded = !free;
		// 	set_window_value(AT_FSPECIAL, 4, AG_WINDOW_VSPEED, free? -2 * (up_down - down_down):0); 
		// 	set_window_value(AT_FSPECIAL, 5, AG_WINDOW_VSPEED, free? -4 * (up_down - down_down):0); 
		// 	set_window_value(AT_FSPECIAL, 6, AG_WINDOW_VSPEED, free? -6 * (up_down - down_down):0); 
		// }
		
		// if (place_meeting(x + 48, y - 16, asset_get("par_block")) || x < get_stage_data(SD_LEFT_BLASTZONE_X) + 200 || x > get_stage_data(SD_RIGHT_BLASTZONE_X) - 200) && window > 3{
		// 	attack_end();
		// 	destroy_hitboxes();
		// 	if instance_exists(fspec_hitbox) instance_destroy(fspec_hitbox);
		// 	set_attack_value(attack, AG_CATEGORY, 2);
		// 	window = 9;
		// 	window_timer = 0;
		// 	hsp = -8 * spr_dir;
		// 	vsp = -7;
		// }
		
		/*if free && fspec_grounded && window > 3 && window <= 6{
			attack_end();
			destroy_hitboxes();
			if instance_exists(fspec_hitbox) instance_destroy(fspec_hitbox);
			fixed_set_state(free? PS_IDLE_AIR:PS_IDLE);
			var min_cancel = 4;
			if abs(hsp) < min_cancel hsp = min_cancel * spr_dir;
			vsp = -2;
		}*/
		
		if free move_cooldown[AT_FSPECIAL] = 99999;
		
		can_fast_fall = false;
	break;
	case AT_DSPECIAL:
		switch window{
			case 1:
			can_fast_fall = false;
			break;
			case 2: 
			can_fast_fall = true;
				var grab_rock = false;
				var _x = get_hitbox_value(AT_DSPECIAL, 1, HG_HITBOX_X);
				var _y = get_hitbox_value(AT_DSPECIAL, 1, HG_HITBOX_Y);
				var _w = get_hitbox_value(AT_DSPECIAL, 1, HG_WIDTH) + 20;
				var _h = get_hitbox_value(AT_DSPECIAL, 1, HG_HEIGHT) + 30;
				if(instance_exists(dspec_rock)) with(dspec_rock){
					var _X = other.x + _x * other.spr_dir;
					var _Y = other.y + _y - 5;
					var prev_mask = mask_index;
					mask_index = sprite_get("a_rock_hurt");
					grab_rock = collision_ellipse(_X - _w/2, _Y - _h/2, _X + _w/2, _Y + _h/2, self, true, false);
					mask_index = prev_mask;
				}
				if window_timer == window_end_time && !has_hit && !hitstop && ((dspec_started_grounded && !instance_exists(dspec_rock)) || grab_rock){
					sound_play(asset_get("sfx_kragg_rock_pull"));
					if !instance_exists(dspec_rock) dspec_rock = instance_create(x, y, "obj_article_solid");
					dspec_rock.sprite_index = asset_get("empty_sprite");
					dspec_rock.mask_index = asset_get("empty_sprite");
					my_grab_id = dspec_rock;
					has_rock = true;
					set_window(4);
				}
			break;
			case 3:
				if window_timer == window_end_time{
					attack_end();
					destroy_hitboxes();
					fixed_set_state(free? PS_IDLE_AIR:PS_IDLE);
				}
			break;
			case 4:
				destroy_hitboxes();
				if window_timer == window_end_time{
					my_grab_id.x = x + (40 * spr_dir);
					if instance_exists(dspec_rock) if my_grab_id == dspec_rock {
						dspec_rock.sprite_index = sprite_get("a_rock");
						with(dspec_rock) {
							for (var h = 0; h < array_length(attack_hits); h++;) attack_hits[h] = true;
							launcher = other.player;
						}
					}
				}
			break;
		}
	break;
	case AT_DSPECIAL_2:
		if(window == 1) can_fast_fall = false;
		else can_fast_fall = true;
		if(window == 1) dspec_grab_timer++;
		if window == 1 && window_timer == window_end_time{
			var rock = false;
			if instance_exists(dspec_rock) if my_grab_id == dspec_rock rock = true;
			
			if(instance_exists(my_grab_id) && dspec_throw_angle != 90){
				my_grab_id.x = x + 30 * spr_dir;
				my_grab_id.y = y - 10 * !rock;
			}
			
			if(my_grab_id != dspec_rock){
				var hfx = spawn_hit_fx(x, y, 303);
				hfx.spr_dir = 1;
				hfx.dspec_throw_angle = dspec_throw_angle;
				switch(dspec_throw_angle){
					case 30:
					hfx.x = x + 45 * spr_dir;
					hfx.y = y - 55;
					hfx.hit_angle = 90 - 45 * spr_dir;
					break;
					case 90:
					hfx.y = y - 100;
					hfx.hit_angle = 90;
					break;
					case 270:
					hfx.x = x + 30 * spr_dir;
					hfx.hit_angle = 270;
					break;
				}
			}
					
			if rock{
				if spr_dir == -1 dspec_throw_angle += angle_difference(180 - dspec_throw_angle, dspec_throw_angle);
				
				my_grab_id.hsp = lengthdir_x(dspec_throw_strength, dspec_throw_angle);
				my_grab_id.vsp = lengthdir_y(dspec_throw_strength, dspec_throw_angle);
				my_grab_id.x += my_grab_id.hsp + (16 * spr_dir);
				my_grab_id.y += my_grab_id.vsp + -16;
			}
			else{
				var dspec_hitstun_mult = 1;
				var dspec_kb_mult = 0;
				switch(dspec_throw_angle){
					case 30:
					dspec_throw_angle = 55;
					dspec_throw_strength = 9;
					dspec_hitstun_mult = 1;
					dspec_kb_mult = .3;
					break;
					case 90:
					dspec_throw_strength = 10;
					dspec_hitstun_mult = 1;
					dspec_kb_mult = .2;
					break;
					case 270:
					dspec_throw_strength = 5;
					dspec_hitstun_mult = 1 - (.3 * free);
					dspec_kb_mult = .2;
					break;
				}
				
				set_hitbox_value(AT_DSPECIAL_2, 1, HG_HITBOX_TYPE, 1);
				set_hitbox_value(AT_DSPECIAL_2, 1, HG_HITBOX_X, abs(round(my_grab_id.x - x)));
				set_hitbox_value(AT_DSPECIAL_2, 1, HG_HITBOX_Y, round(my_grab_id.y - y + (my_grab_id.char_height / -2)));
				set_hitbox_value(AT_DSPECIAL_2, 1, HG_BASE_KNOCKBACK, dspec_throw_strength);
				set_hitbox_value(AT_DSPECIAL_2, 1, HG_KNOCKBACK_SCALING, dspec_kb_mult);
				set_hitbox_value(AT_DSPECIAL_2, 1, HG_ANGLE, dspec_throw_angle);
				set_hitbox_value(AT_DSPECIAL_2, 1, HG_HITSTUN_MULTIPLIER, dspec_hitstun_mult);
				set_hitbox_value(AT_DSPECIAL_2, 1, HG_BASE_HITPAUSE, 6);
				set_hitbox_value(AT_DSPECIAL_2, 1, HG_HITPAUSE_SCALING, .1);
				set_hitbox_value(AT_DSPECIAL_2, 1, HG_DAMAGE, 6);
				
				var dthrow = create_hitbox(AT_DSPECIAL_2, 1, round(my_grab_id.x), round(my_grab_id.y + (my_grab_id.char_height / 2)));
				for (var h = 0; h < array_length(dthrow.can_hit); h++;) dthrow.can_hit[h] = (h == my_grab_id.player);
				
				reset_hitbox_value(AT_DSPECIAL_2, 1, HG_HITBOX_TYPE);
				reset_hitbox_value(AT_DSPECIAL_2, 1, HG_HITBOX_X);
				reset_hitbox_value(AT_DSPECIAL_2, 1, HG_HITBOX_Y);
				reset_hitbox_value(AT_DSPECIAL_2, 1, HG_BASE_KNOCKBACK);
				reset_hitbox_value(AT_DSPECIAL_2, 1, HG_KNOCKBACK_SCALING);
				reset_hitbox_value(AT_DSPECIAL_2, 1, HG_ANGLE);
				reset_hitbox_value(AT_DSPECIAL_2, 1, HG_HITSTUN_MULTIPLIER);
				reset_hitbox_value(AT_DSPECIAL_2, 1, HG_BASE_HITPAUSE);
				reset_hitbox_value(AT_DSPECIAL_2, 1, HG_HITPAUSE_SCALING);
				reset_hitbox_value(AT_DSPECIAL_2, 1, HG_DAMAGE);
				
				my_grab_id.invincible = false;
				my_grab_id.invince_time = 0;
			}
			my_grab_id = noone;
			has_rock = false;
		}
	break;
	case AT_USPECIAL:
		can_move = false;
		can_fast_fall = false;
		
		if instance_exists(uspec_rush) if uspec_rush.article_state != "DESPAWN"{
			uspec_rush.article_state = "DESPAWN";
			uspec_rush.mask_index = asset_get("empty_sprite");
			uspec_rush.image_index = uspec_rush.num == 1? 19:2;
			sound_play(sound_get("rush_vanish"));
		}
		if shield_pressed || shield_down uspec_shield_pressed = true;
		if window_timer == window_end_time {
			// var dist = 50;
			// while place_meeting(x + dist, y, asset_get("par_block")) x--;
			// while place_meeting(x - dist, y, asset_get("par_block")) x++;
			var jet = false;
			switch (get_synced_var(player) - arbitrary_sync_number) {
				default: //hold special
					if special_down jet = true;
				break;
				case 1: //double tap special
					if special_pressed {
						jet = true;
						clear_button_buffer(PC_SPECIAL_PRESSED);
					}
				break;
				case 2: //press shield
					if uspec_shield_pressed {
						jet = true;
						clear_button_buffer(PC_SHIELD_PRESSED);
					}
				break;
			}
			if !can_use_jet jet = false;
			
			uspec_rush = instance_create(x, y + (jet? -32:0), jet? "obj_article_platform":"obj_article1");
			uspec_rush.spr_dir = spr_dir;
			
			uspec_uses++;
			
			if jet {
				spawn_hit_fx(x, y - 16, HFX_CLA_PLASMA_PLUS);
				spawn_hit_fx(x, y - 16, HFX_CLA_PLASMA_X);
				sound_play(sound_get("rush_jet"));
			}
			else spawn_hit_fx(x, y - 4, HFX_CLA_SHINE);
			move_cooldown[AT_USPECIAL] = 9999;
			y += jet? -32:0;
			if !jet{
				if !free{
					uspec_rush.free = false;
					free = true;
				}
				fixed_set_state(free? PS_IDLE_AIR:PS_IDLE);
			}
			else{
				uspec_rush.hsp = uspec_steer * spr_dir;
				fixed_set_attack(AT_USPECIAL_2);
			}
		}
	break;
	case AT_USPECIAL_2:
		can_use_jet = false;
		if instance_exists(uspec_rush) if special_down && !uspec_rush.rush_pause && uspec_rush.article_state != "DESPAWN" && place_meeting(x, y + 2, uspec_rush){
			uspec_rush.article_timer = 0;
			window_timer--;
			
			var rush_hover = true;
			with uspec_rush if place_meeting(x, y + 12, asset_get("par_block")) rush_hover = false;
			
			uspec_rush.hsp = has_rune("O")? (right_down - left_down) * uspec_steer:uspec_steer * uspec_rush.spr_dir;
			uspec_rush.vsp = (down_down - up_down) * uspec_steer;
			if !rush_hover && uspec_rush.vsp > 0 uspec_rush.vsp = 0;
			move_cooldown[AT_USPECIAL] = 9999;
		}
	break;
	case AT_TAUNT:
		if window == 2 && !taunt_down && state_timer >= 30 set_window(3);
	break;
}

if(attack == AT_UAIR || attack == AT_DAIR){
	set_window_value(attack, 2, AG_WINDOW_VSPEED_TYPE, (vsp < -4 ? 0 : 2));
	set_window_value(attack, 2, AG_WINDOW_VSPEED, (vsp < -4 ? 0 : -4));
}

#define set_window(_new_window)
window = _new_window;
window_timer = 0;

#define spawn_base_dust
//(x, y, name, ?dir, ?angle, ?window, ?window_timer)

var dlen;
var dfx;
var dfg;
var dust_color = 0;
var x = argument[0], y = argument[1], name = argument[2];
var dir = argument_count > 3 ? argument[3] : 0;
var angle = argument_count > 4 ? argument[4] : 0;
var win = argument_count > 5 ? argument[5] : -10;
var win_time = argument_count > 6 ? argument[6] : 0;

if(!hitpause && (win > 0 && win == window && win_time == window_timer || win == -10)){
	switch (name) {
		default: 
		case "dash_start":dlen = 21; dfx = 3; dfg = 2626; break;
		case "dash": dlen = 16; dfx = 4; dfg = 2656; break;
		case "jump": dlen = 12; dfx = 11; dfg = 2646; break;
		case "doublejump": 
		case "djump": dlen = 21; dfx = 2; dfg = 2624; break;
		case "walk": dlen = 12; dfx = 5; dfg = 2628; break;
		case "land": dlen = 24; dfx = 0; dfg = 2620; break;
		case "n_wavedash": dlen = 24; dfx = 0; dfg = 2620; dust_color = 1; break;
		case "wavedash": dlen = 16; dfx = 4; dfg = 2656; dust_color = 1; break;
		case "dattack": dlen = 22; dfx = 12; dfg = 0; break;
		case "b_bounce_bg": dlen = 10; dfx = 7; dfg = 0; break;
		case "b_bounce_fg": dlen = 14; dfx = 8; dfg = 0; break;
		case "s_bounce_bg": dlen = 18; dfx = 7; dfg = 0; break;
		case "s_bounce_fg": dlen = 19; dfx = 8; dfg = 0; break;
		case "doublejump_small": 
		case "djump_small": dlen = 21; dfx = 16; dfg = 0; break;
	}
	var newdust = spawn_dust_fx(x, y, asset_get("empty_sprite"), dlen);
	newdust.x = floor(x);newdust.y = floor(y);
	newdust.dust_fx = dfx;
	if (dfg != -1) newdust.fg_sprite = dfg;

	newdust.dust_color = dust_color;

	if (dir != 0) newdust.spr_dir = dir;
	else newdust.spr_dir = spr_dir;

	newdust.draw_angle = angle;
	return newdust;
}
#define fixed_set_state(state)
{
	set_state(state);
	hurtboxID.sprite_index = free? air_hurtbox_spr:hurtbox_spr;
}
#define fixed_set_attack(attack)
{
	set_attack(attack);
	if free && get_attack_value(attack, AG_HURTBOX_AIR_SPRITE) hurtboxID.sprite_index = get_attack_value(attack, AG_HURTBOX_AIR_SPRITE);
	else hurtboxID.sprite_index = get_attack_value(attack, AG_HURTBOX_SPRITE);
}
#define PlayVoiceClip
var varName = argument[0], sfxName = argument[1];
var volume = argument_count > 2 ? argument[2] : 1;
var stopprev = argument_count > 3 ? argument[3] : true;
var pitch = argument_count > 4 ? argument[4] : true;
var noHitpause = argument_count > 5 ? argument[5] : true;
if((!hitpause && noHitpause || !noHitpause)){
	if(stopprev)sound_stop(variable_instance_get(self,varName));
	variable_instance_set(self,varName,sound_play(sound_get(is_array(sfxName)?sfxName[random_func(1, array_length(sfxName), true)]:sfxName)));
	sound_volume(variable_instance_get(self,varName), volume, 0);if(pitch)sound_pitch(variable_instance_get(self,varName),("voicepitch" in self)?voicepitch:1);
}
