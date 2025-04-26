//update

is_attacking = (state == PS_ATTACK_GROUND || state == PS_ATTACK_AIR);

/*
//Image Mask
if(get_gameplay_time() > 100){
    if(!start_predraw){
    start_predraw = true;
    }
}
*/

hud_anim_timer++;

//intro
if (state == PS_SPAWN){
	if (state_timer == 60){
		sound_play(sound_get("intro_teleport"));
    	sound_play(sound_get("step"), false, noone, 0.8, 1.25);
		spawn_base_dust(x, y, "land", -spr_dir);
	} if (state_timer <= (11/0.2) + 44){
		draw_indicator = false;
	}
}

if (quota_level < 8){
	switch (curr_melee){
		case 0:
			passive_weight = (quota_level >= 6? 21 : 42);
		break;
		case 1:
			passive_weight = (quota_level >= 6? 12 : 24);
		break;
		case 2:
			passive_weight = (quota_level >= 6? 7 : 14);
		break;
	}
}

if (quota_level < 17){
	quota_next = quota_reqs[quota_level - 1];
} else {
	quota_next = 9999;
}

if (state == PS_RESPAWN || respawn_taunt > 0){
	respawn_timer++;
} else {
	respawn_timer = 0;
}

if (jeb_collected){
	jeb_cooldown = 240;
	jeb_collected_timer++;
		if (jeb_collected_timer == 90){
			quota_current += pending_quota;
			pending_quota = 0;
			if (quota_current >= quota_next){
				is_ranking_up = true;

			}
				jeb_collected_timer = 0;
				jeb_collected = false;
		}
	}

if (jeb_cooldown > 0 && !jeb_collected){
	jeb_cooldown--;
}

//leveling up

if (is_ranking_up){
	rank_timer++;
	for (i = 0; i < array_length(quota_reqs); i++){
		if (quota_current >= quota_reqs[quota_level - 1]){
			quota_current -= quota_reqs[quota_level - 1];
			quota_level++;
		}
	}
	if (rank_timer == 1){
		rank_perks();
		sound_play(sound_get("quota_rankup"));
	}
	if (rank_timer > 0 && rank_timer < 61 && rank_timer % 6 == 0){
		if (rank_number_flicker){
			rank_number_flicker = false
		} else {
			rank_number_flicker = true;
		}
	}
	if (rank_timer == 80){
		if (random_func(0, 100, true) <= 2){
			sound_play(sound_get("vo_quota_rare" + string(random_func(0, 5, true) + 1 ) ), false, noone, 0.7, 1);
		} else {
			sound_play(sound_get("vo_quota_common" + string(random_func(0, 5, true) + 1 ) ), false, noone, 0.9, 1);
		}
		is_ranking_up = false;
		rank_timer = 0;
	}
}

//hud stuff
if (hud_anim_timer % 3 == 0){
	hud_scrap_box_index += 1;
}

if (hud_scrap_box_index > 1 + (has_scrap*4)){
	hud_scrap_box_index = 0 + (has_scrap*4);
}

//weight movement calculation

if (get_gameplay_time() == 1) || (is_ranking_up && rank_timer == 1){
	calculate_weight();
}

//crouchwalk
if (state == PS_CROUCH){
    var crouchdir = right_down - left_down;
    if (!hitpause && crouchdir != 0 && state_timer > 4){
    	crouch_walking = true;
    	crouch_walk_timer += 1;
        hsp = crouch_walk_speed*crouchdir;
        off_edge = false;
    } else {
    	crouch_walking = false;
    	crouch_walk_timer = 0;
    }
}

//parry
if (state == PS_PARRY && !turret_parry){
	hud_offset = 38 - (rabbit_suit*22);
	if (window == 1){
		parry_doors_closed = true;
		parry_dooropen_sfx = false;
	}
	if (state_timer == 0){
		sound_play(sound_get("parry_doorclose"));
		sound_play(sound_get("parry_pushbutton"));
	}
	if (state_timer == 13){
		sound_play(sound_get("parry_dooropen"));
		parry_dooropen_sfx = true
	}
	if (state_timer == 16 && !hitpause && parry_doors_closed){
		parry_doors_closed = false;
		var parry_door = spawn_hit_fx(x, y, parry_dooropen);
		parry_door.depth = depth;
	}
}

if (state == PS_RESPAWN || respawn_taunt) && (respawn_timer == 96) && (visible){
       var respawn_door = spawn_hit_fx(x, y, parry_dooropen);
       respawn_door.depth = depth+1;
       sound_play(sound_get("parry_dooropen"));
}

with (hit_fx_obj) if (player_id == other){
	vfx_stuff();
}


if (is_attacking) && (parry_doors_closed && state_timer >= 0){
	spawn_hit_fx(x, y, parry_dooropen);
	if (!parry_dooropen_sfx){
		sound_play(sound_get("parry_dooropen"));
	}
	parry_doors_closed = false;
}

//dstrong
if ( !instance_exists(ladder_obj) ) && (!is_attacking || attack != AT_DSTRONG)  {
	has_ladder = true;
}

//fspec 1

//cook for too long
if (flashbang_detonate_timer >= flashbang_detonate_max){
	invince_time = 0;
	initial_invince = false;
	sound_play(sound_get("fspec_explode"));
    spawn_hit_fx(x, y - char_height/2, 262);
	create_hitbox(AT_FSPECIAL, 2, x, y - char_height/2);
	flashbang_detonate_timer = 0;
}

with (pHitBox) if ("player_id" in self && player_id == other){
		hitbox_stuff();
	}

with (oPlayer) {
	if	(state == PS_RESPAWN && hit_by_jeb && state_timer == 0){
		other.pending_quota += 5;
		hit_by_jeb = false;
	}
	if (state_cat != SC_HITSTUN && state != PS_RESPAWN && hit_by_jeb){
		hit_by_jeb = false;
	}
	if (id != other.id && zapped_timer > 0 && zapped_visual){
		zapped_timer--;
		if (zapped_timer % 2 == 0){
			if (zapped_pos == 4){
				zapped_pos = -4
			} else {
				zapped_pos = 4;
			}
		}
		if (zapped_timer <= 0 || last_attack != AT_FSPECIAL_2){
			zapped_visual = false;
			zapped_timer = 0;
			zapped_pos = 0;
		}
	}
	if (stepped_on_whoopee) && (state == PS_WAVELAND) && state_timer = 0{
		stepped_on_whoopee = false;
	}
	if (got_masked && masked_id == other.id){
		masked_timer++;
		masked_index += 0.35;
		if (masked_index >= 7){
			masked_index = 5;
		}
		if (state != PS_ATTACK_AIR && state != PS_ATTACK_GROUND && !hurtboxID.dodging && state != PS_TECH_GROUND
			&& state != PS_TECH_BACKWARD && state != PS_TECH_FORWARD && state != PS_WALL_TECH){
			mask_position = hurtboxID.bbox_top + 12;
			mask_pos_difference = y - (hurtboxID.bbox_top + 12);
		} else {
			mask_position = round(y - (mask_pos_difference));
		}
		if (masked_timer == 1){
			masked_sound = sound_play(other.mask_active_sfx, false, noone, 0.8, 1);
		}
		if (masked_timer % 60 == 0 && masked_timer != 0 && masked_timer != 360){
			take_damage(player, -1, 1);
		}
		if (masked_timer == 270){
			sound_play(other.mask_puke_sfx, false, noone, 0.8, 1);
		}
		if (masked_timer >= 270 && masked_timer % 6 == 0){
			with (other){
				var blood_spread = random_func(0, 12, true);
				var blood_part = spawn_hit_fx((other.x - 10*other.spr_dir) + (blood_spread*other.spr_dir), other.mask_position - 4, mask_blood_part);
				blood_part.vsp = 1;
				blood_part.depth = depth - 2;
				blood_part.spr_dir = other.spr_dir;
			}
		}
		if (masked_timer == 360){
			sound_play(other.mask_explode_sfx);
			with (other) {
				var mask_explode = spawn_hit_fx(other.x + 6*other.spr_dir, other.mask_position, mask_explode_vfx);
				mask_explode.depth = depth - 2;
				var mask_hitbox = create_hitbox(AT_DSPECIAL_2, 6, other.x + 6*other.spr_dir, other.mask_position);
				mask_hitbox.can_hit_self = true;
			}
			got_masked = false;
			masked_timer = 0;
			masked_index = 0;
			mask_type = -1;
			mask_position = 0;
		}
		if (perfect_dodged || state == PS_RESPAWN || state == PS_DEAD){
			sound_stop(masked_sound);
			sound_stop(masked_sound_puke);
			if (state != PS_RESPAWN || state != PS_DEAD) && (visible){
				sound_play(other.mask_explode_sfx);
					with (other) {
						var mask_explode = spawn_hit_fx(other.x + 6*other.spr_dir, other.mask_position, mask_explode_vfx);
						mask_explode.depth = depth - 2;
				}
			}
			got_masked = false;
			masked_timer = 0;
			masked_index = 0;
			mask_type = -1;
			mask_position = 0;
		}
	}
	if (id != other.id){
		oplayer_stuff();
		oplayer_cruiser_lockout();
	}
}

//uspec 1
if (!free && jetpack_fuel < jetpack_fuel_max && !is_using_jetpack) {
	fuel_should_refill = true;
} if (jetpack_fuel > jetpack_fuel_max){
	jetpack_fuel = jetpack_fuel_max;
} if (jetpack_fuel <= 0){
	jetpack_fuel = 0;
	move_cooldown[AT_USPECIAL] = 5;
}

if (jetpack_fuel <= jetpack_fuel_max/3){
	if (!jetpack_fuel_low){
		jetpack_fuel_low = true;
		if (jetpack_fuel != 0){
		jetpack_warning_sfx = sound_play(sound_get("uspec1_warning"));
		}
	}
} else {
	jetpack_fuel_low = false;
}

if (visible){
	if (jetpack_fuel < jetpack_fuel_max){
		if (uspec_gauge_fade < 30){
			uspec_gauge_fade++;
		}
	} else {
		if (uspec_gauge_fade > 0){
			uspec_gauge_fade--;
		}
	}
}

if (!is_attacking || attack != AT_USPECIAL){
	is_using_jetpack = false;
}

// tap jump protection
if state == PS_DOUBLE_JUMP {
    dj_state_timer = state_timer;
    is_double_jump = true;
}
else {
    is_double_jump = false;
    dj_state_timer = 0;
}

if (jetpack_dir > 360){
	jetpack_dir = 0;
} if (jetpack_dir < 0){
	jetpack_dir = 360;
}

if (cant_use_jetpack){
	move_cooldown[AT_USPECIAL] = 2;
	if (jetpack_fuel == jetpack_fuel_max){
		sound_play(sound_get("gauge_full"), false, noone, 0.8, 1);
		white_flash_timer = 12;
	}
} if (!free){
	jetpack_used_walljump = false;
	anti_thrust_stall = 0;
} if (jetpack_fuel >= jetpack_fuel_max){
	cant_use_jetpack = false;
}

if (fuel_should_refill && jetpack_fuel < jetpack_fuel_max){
	jetpack_fuel += 8;
}

if (state == PS_WALL_JUMP){
	jetpack_fuel = jetpack_fuel_max;
	if (cant_use_jetpack){
		cant_use_jetpack = false;
		sound_play(sound_get("gauge_full"), false, noone, 0.8, 1);
		white_flash_timer = 12;
	}
	jetpack_used_walljump = true;
	anti_thrust_stall = 0;
}

//uspec2

/*
if (prev_state == PS_ATTACK_AIR || prev_state == PS_ATTACK_GROUND) && (state != PS_RESPAWN && state != PS_PRATFALL && state != PS_PRATLAND)
&& (state_timer == 0){
	if (state == PS_WALL_JUMP){
		var cruiser = spawn_hit_fx(x + 1*spr_dir, y - 48, vfx_cruiser);
		if (state != PS_WALL_JUMP){
			cruiser.spr_dir = spr_dir;
		} else {
			cruiser.spr_dir = -spr_dir;
		}
		cruiser.hsp = -4*spr_dir;
		cruiser.vsp = -6;
		cruiser.grav = 0.5;
	}
}*/

if (!is_attacking){
	sound_stop(jetpack_sfx);
	sound_stop(cruiser_rev_sound);
	sound_stop(honk_start);
	sound_stop(honk_sound);
	sound_stop(beam_sound);
    sound_stop(cruiser_engine_sound);
    cruiser_sounds_playing = false;
	honk_timer = 0;
	uspec2_honking = false;
	honk_loop = false;
	/*
	if (!has_scrap){
		current_scrap = noone;
	}*/
}

//dspec

if (has_scrap){
	if (scrap_found_timer < scrap_found_timer_max){
		scrap_found_timer++;
	}
}

if (scrap_visual){
	scrap_visual_timer++;
	if (scrap_visual_timer <= 10){
		scrap_visual_x = x;
		scrap_visual_y = y;
		scrap_visual_zoom_outer = ease_sineIn(15, 2, scrap_visual_timer, 10);
		scrap_visual_zoom_inner = ease_sineIn(60, 2, scrap_visual_timer, 10);
		scrap_visual_alpha = ease_sineIn(0, 1, scrap_visual_timer, 10);
		scrap_box_upper = ease_quartOut(0, ceil(string_width(string(prev_scrap.name))/50), scrap_visual_timer, 10);
		scrap_box_lower = ease_cubeOut(0, 2, scrap_visual_timer, 10);
	}
	if (scrap_visual_timer >= 50){
		scrap_visual_alpha = ease_sineIn(1, 0, scrap_visual_timer-50, 10);
	}
	if (scrap_visual_timer > 10 && scrap_visual_timer < 50 && scrap_visual_timer != 49) && (state_cat == SC_HITSTUN){
		scrap_visual_timer = 49;
	}
	if (scrap_visual_timer >= 60 || state == PS_RESPAWN || state == PS_DEAD){
		scrap_visual = false;
		scrap_visual_timer = 0;
	}
}

if (scanned_creature){
	creature_timer++;
	if (creature_timer >= 292){
		creature_alpha -= 0.1;
	}
	if (creature_index < 4){
		creature_index += 0.5;
	}
	if (creature_timer % 100 == 0 && creature_timer != 0){
		creature_index = random_func(0, 3, true) + 5;
	} else if (creature_timer % 101 == 0 && creature_timer != 0){
		creature_index = 4;
	}
	if (creature_timer >= 300){
		creature_timer = 0;
		scanned_creature = false;
	}
}

if (using_terminal){
	terminal_limits();
	if (terminal_ui_index < 6){
		terminal_ui_index++;
	}
	draw_indicator = false;
}

if (!is_attacking || attack != AT_NSPECIAL){
	if (using_terminal){
		sound_play(sound_get("terminal_exit"));
		using_terminal = false;
	}
}

if (!using_terminal) && (terminal_ui_index > 0){
	terminal_ui_index--;
}

//zdropping
if (has_scrap){
	zdrop_hsp = hsp;
	zdrop_vsp = vsp;
}

if (has_scrap && shield_pressed && !has_airdodge && joy_pad_idle){
	set_state(PS_AIR_DODGE);
}

//rabbit suit
if (rabbit_suit){
	set_victory_portrait( sprite_get( "portrait_rabbit" ));
	set_victory_sidebar(sprite_get("result_small_rabbit"));
	set_ui_element(UI_OFFSCREEN, sprite_get("offscreen_rabbit"));
	set_ui_element(UI_HUD_ICON, sprite_get("hud_rabbit"));
	set_ui_element(UI_HUDHURT_ICON, sprite_get("hudhurt_rabbit"));
    if (state == PS_FIRST_JUMP && state_timer == 1){
        sound_play(sound_get("bunny_hop"), false, noone, 0.7, 1);
    }
    if (state == PS_DOUBLE_JUMP && state_timer == 1){
        sound_play(sound_get("bunny_hop"), false, noone, 0.7, 1.3);
    }
} else {
	set_victory_portrait( get_char_info(player, INFO_PORTRAIT));
	set_victory_sidebar(get_char_info(player, INFO_SIDEBAR));
	set_ui_element(UI_OFFSCREEN, get_char_info(player, INFO_OFFSCREEN));
	set_ui_element(UI_HUD_ICON, get_char_info(player, INFO_HUD));
	set_ui_element(UI_HUDHURT_ICON, get_char_info(player, INFO_HUDHURT));
}

#define calculate_weight()

	weight_value = passive_weight + item_weight;
	dash_speed = lerp(7, 4, weight_value/weight_max);
	initial_dash_speed = lerp(7.5, 4.5, weight_value/weight_max);
	wave_land_adj = lerp(1.4, 1, weight_value/weight_max);
	air_max_speed = lerp(4.5, 3, weight_value/weight_max);
	gravity_speed = lerp(0.5, 0.65, weight_value/weight_max);
	leave_ground_max = round(lerp(6.5, 3, weight_value/weight_max)*2) / 2;
	max_jump_hsp = round(lerp(6.5, 3, weight_value/weight_max)*2) / 2;

#define hitbox_stuff()

if (damage > 0){
	if (player_id.quota_level >= 6 && player_id.quota_level < 9){
		if (hitbox_timer == 0){
			damage = ceil(damage*1.2);
		}
	} if (player_id.quota_level >= 9) {
		if (hitbox_timer == 0){
			damage = ceil(damage*1.5);
		}
	}
}

if (kb_scale > 0){
	if (player_id.quota_level >= 7 && player_id.quota_level < 9){
		if (hitbox_timer == 0){
			kb_scale = kb_scale*1.1;
			//print("kb scaling: " + string(kb_scale));
		}
	} if (player_id.quota_level >= 9) {
		if (hitbox_timer == 0){
			kb_scale = kb_scale*1.25;
			//print("kb scaling: " + string(kb_scale));
		}
	}
}

    if (attack == AT_FSPECIAL_2 && hbox_num <= 4){
		with (oPlayer) if (place_meeting(x, y, other) && id != other.player_id && !initial_invince){
			with (other.player_id) if (!zapgun_scan_success){
				destroy_hitboxes();
				window = 4;
				window_timer = 0;
				zapgun_scan_success = true;
				sound_play(sound_get("fspec2_detect"), false, noone, 0.7, 1);
			}
		}
	}

if (attack == AT_DSPECIAL && hbox_num == 1){
	with (oPlayer) if (place_meeting(x, y, other) && id != other.player_id){
		if (!has_reticle){
			if (!hurtboxID.dodging && state != PS_RESPAWN && state != PS_DEAD && !initial_invince){
				has_reticle = true;
				with (other.player_id) scanned_player_value = true;
				other.player_id.reticle_id = other.player_id;
			}
		}
		if (!is_new_creature){
			if (!hurtboxID.dodging && state != PS_RESPAWN && state != PS_DEAD && !initial_invince){
			with (other.player_id) sound_play(sound_get("creature_notif"));
			is_new_creature = true;
			other.player_id.creature_x = x;
			other.player_id.creature_y = y;
			other.player_id.scanned_creature = true;
			other.player_id.player_scanned = id;
			}
		}
	}
}

#define oplayer_stuff()

if (flashbang_visual_timer > 0){
	flashbang_visual_timer--;
}

if (id != other.reticle_id && has_reticle){
	reticle_timer++;
	if (reticle_timer <= 20){
		reticle_zoom_outer = ease_sineIn(15, 2, reticle_timer, 20);
		reticle_zoom_inner = ease_sineIn(60, 2, reticle_timer, 20);
		reticle_alpha = ease_sineIn(0, 1, reticle_timer, 20);
		reticle_box_upper = ease_quartOut(0, ceil(string_width(string(reticle_name))/50), reticle_timer, 20);
		reticle_box_lower = ease_cubeOut(0, ceil(string_width(string(reticle_name))/50), reticle_timer, 20);
	}
	if (reticle_timer >= 280){
		reticle_alpha = ease_sineIn(1, 0, reticle_timer-280, 20);
		//reticle_box_upper = ease_quartOut(2, 0, reticle_timer-280, 20);
		//reticle_box_lower = ease_cubeOut(2, 0, reticle_timer-280, 20);
	}
	if (reticle_timer >= 300 || state == PS_RESPAWN || state == PS_DEAD){
		reticle_timer = 0;
		reticle_zoom_outer = 0;
		reticle_zoom_inner = 0;
		reticle_alpha = 0;
		reticle_box_upper = 0;
		reticle_box_lower = 0;
		has_reticle = false;
	}
}

#define vfx_stuff()

	for (i = 0; i < array_length(other.vfx_cruiser_debris); i++){
			if (hit_fx == other.vfx_cruiser_debris[i]){
				if (step_timer != 0){
					draw_angle += 5*spr_dir;
				}
        	depth = player_id.depth;
        	grav = 0.5;
        	if (y > room_height+16) step_timer = 299;
		}
	}
	if ( hit_fx == other.dspecial_linger){
		depth = other.depth;
	}
	if (hit_fx == other.vfx_cruiser_eject){
		if (step_timer % 4 == 0 && step_timer < 17 && step_timer != 0){
			start_frame++;
		}
		if (step_timer == 20){
			vsp = -4;
		}
		if (step_timer >= 20){
			image_length = 1;
			grav = 0.5;
				if (step_timer != 0){
					draw_angle += 5*spr_dir;
				}
		}
		if (y > room_height+32) step_timer = 300;
	}
	if (hit_fx == other.vfx_cruiser){
		if (step_timer != 0){
				draw_angle += 5*spr_dir;
		}
	if (y > room_height+32) step_timer = 300;
	}
	if (hit_fx == other.vfx_explosion){
		depth = player_id.depth-5;
	}
	if (hit_fx == other.bair_shot_linger || hit_fx == other.bair_smoke_linger || hit_fx == other.bair_gun_dropped
	|| hit_fx == other.zapgun_small || hit_fx == other.zapgun_big || hit_fx == other.fspec2_scan_linger || hit_fx == other.fspec2_zap_linger
	|| hit_fx == other.fspec2_drop_gun){
		depth = other.depth-1;
		if (hit_fx == other.bair_gun_dropped && step_timer % 3 == 0 && step_timer != 0){
			draw_angle += -90*spr_dir;
			if (y > room_height+16) step_timer = 299;
		}
		if (hit_fx == other.fspec2_drop_gun && step_timer % 3 == 0){
			draw_angle += 90*spr_dir;
			if (y > room_height+16) step_timer = 299;
		}
	}
	if (hit_fx == other.flashbang_pin || hit_fx == other.flashbang_cork ){
		if (step_timer % 2 == 0 && step_timer != 0){
		draw_angle += -90*spr_dir;
		if (y > room_height+16) step_timer = 299;
		}
	}
	for (i = 0; i < array_length(other.vfx_drop_melee); i++){
			if (hit_fx == other.vfx_drop_melee[i]){
				if (step_timer % 4 == 0 && step_timer != 0){
					draw_angle -= 90*spr_dir;
				}
        	depth = player_id.depth-1;
        	grav = 0.6;
        	if (y > room_height+16) step_timer = 299;
		}
	}

#define terminal_limits()

	if (terminal_slot_buffer > 0){
		terminal_slot_buffer--;
	}
    if (terminal_slot > 2){
    	terminal_slot = 0;
    }
    if (terminal_slot < 0){
    	terminal_slot = 2;
    }
    if (terminal_melee_index > 2){
    	terminal_melee_index = 0;
    }
    if (terminal_melee_index < 0){
    	terminal_melee_index = 2;
    }
    if (terminal_fspec_index > 1){
    	terminal_fspec_index = 0;
    }
    if (terminal_fspec_index < 0){
    	terminal_fspec_index = 1;
    }
    if (terminal_uspec_index > 1){
    	terminal_uspec_index = 0;
    }
    if (terminal_uspec_index < 0){
    	terminal_uspec_index = 1;
    }
    
#define rank_perks

if (quota_level == 7){
	set_hitbox_value(AT_FSPECIAL, 1, HG_PROJECTILE_IS_TRANSCENDENT, true);
	set_window_value(AT_USPECIAL, 2, AG_WINDOW_VSPEED, -10);
}

if (quota_level == 8){
	passive_weight = 0;
	set_hitbox_value(AT_FSPECIAL_2, 23, HG_EXTRA_HITPAUSE, 72);
}

if (quota_level >= 9){
	take_damage(player, -1, -(quota_level*5 - 30));
}

#define oplayer_cruiser_lockout

if (self != other){
	if (cruiser_lockout == 0 && other.hit_player_obj = self){
		with (other) if (is_attacking && attack == AT_USPECIAL_2 && window == 2) attack_end();
	}
	if (cruiser_lockout > 0){
		cruiser_lockout--;
	}
}

// spawn_base_dust made by Supersonic
#define spawn_base_dust
/// spawn_base_dust(x, y, name, dir = 0)
///spawn_base_dust(x, y, name, ?dir)
//This function spawns base cast dusts. Names can be found below.
var dlen; //dust_length value
var dfx; //dust_fx value
var dfg; //fg_sprite value
var dfa = 0; //draw_angle value
var dust_color = 0;
var x = argument[0], y = argument[1], name = argument[2];
var dir = argument_count > 3 ? argument[3] : 0;

switch (name) {
    default: 
    case "dash_start":dlen = 21; dfx = 3; dfg = 2626; break;
    case "dash": dlen = 16; dfx = 4; dfg = 2656; break;
    case "jump": dlen = 12; dfx = 11; dfg = 2646; break;
    case "doublejump": 
    case "djump": dlen = 21; dfx = 2; dfg = 2624; break;
    case "walk": dlen = 12; dfx = 5; dfg = 2628; break;
    case "land": dlen = 24; dfx = 0; dfg = 2620; break;
    case "walljump": dlen = 24; dfx = 0; dfg = 2629; dfa = dir != 0 ? -90*dir : -90*spr_dir; break;
    case "n_wavedash": dlen = 24; dfx = 0; dfg = 2620; dust_color = 1; break;
    case "wavedash": dlen = 16; dfx = 4; dfg = 2656; dust_color = 1; break;
}
var newdust = spawn_dust_fx(x,y,asset_get("empty_sprite"),dlen);
newdust.dust_fx = dfx; //set the fx id
if dfg != -1 newdust.fg_sprite = dfg; //set the foreground sprite
newdust.dust_color = dust_color; //set the dust color
if dir != 0 newdust.spr_dir = dir; //set the spr_dir
newdust.draw_angle = dfa;
return newdust;

