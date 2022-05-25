// MunoPhone Touch code - don't touch
// should be at TOP of file

if (enable_munophone) {
	muno_event_type = 1;
	user_event(14);

	if phone_cheats[CHEAT_FLY] && !shield_down vsp = -1;
	
	//rainbow_color = phone_cheats[cheat_skittles] ? make_color_hsv(get_gameplay_time() % 256 + 1, 100, 100) : make_color_rgb(
	rainbow_activate = phone_cheats[cheat_skittles];
	if (rainbow_activate) {
		rainbow_color = make_color_hsv((get_gameplay_time() % 128) * 2, 255, 255);
		set_character_color_slot(2, color_get_red(rainbow_color), color_get_green(rainbow_color), color_get_blue(rainbow_color));
	}
	/*
	rainbow_color
	    = rainbow_activate ? make_color_hsv((get_gameplay_time() % 128) * 2, 255, 255)
	                       : make_color_rgb(get_color_profile_slot_r(get_player_color(player), 0),
											get_color_profile_slot_g(get_player_color(player), 0),
											get_color_profile_slot_b(get_player_color(player), 0));
	set_character_color_slot(2, color_get_red(rainbow_color), color_get_green(rainbow_color), color_get_blue(rainbow_color))
	*/
	
	max_djumps = phone_cheats[cheat_more_djumps];
	
	if (spr_dir == 0) spr_dir = 1;
	spr_dir = phone_cheats[cheat_widebert] * sign(spr_dir);
	
	if phone_cheats[cheat_recoil] with pHitBox if player_id == other can_hit_self = 1;
}
// End of Muno code

if phone_cheats[cheat_perma_final_smash] fs_charge = 200;
// End of Final Smash additional code

infinite_energy = phone_cheats[cheat_unlimited_power];

// Play rocket sound while hovering
if (((attack == AT_USPECIAL) && (window < 3))
    && ((state == PS_ATTACK_AIR) || (state == PS_ATTACK_GROUND)))
{
	if (window == 1) && (window_timer == 1) {
		current_rocket_sound = sound_play(rocket_sound, true, noone, 1, 0.8);
	}
} else {
	sound_stop(current_rocket_sound);
}
/*
if ((attack == AT_USPECIAL)
    && ((state == PS_ATTACK_AIR)
    	|| (state == PS_ATTACK_GROUND)))
{
	if (window == 1) && (window_timer == 1) {
		rocketing = true;
	}
} else {
	if (rocketing) {
		rocketing = false;
	}
}
if (rocketing) {
	if (rocket_sound_timer == 0) {
		sound_play(rocket_sound, false, noone, 1, 0.8);
	}
	rocket_sound_timer++;
	rocket_sound_timer %= rocket_sound_timer_max;
} else {
	rocket_sound_timer = 0;
}
*/


// Give something back on wall jump
if (state == PS_WALL_JUMP) {
	if (!previously_wall_jumping) {
		
		// Stop playing certain sounds on walljump
		sound_stop(current_effect_sound);
		sound_stop(current_rocket_sound);

		/*
		if (booster_rush_charges < max_booster_rush_charges) {
			booster_rush_charges++;
		}
		*/
		//fuel_recovery_active = !uspecial_rework;
		if (energy_floor) && (rocket_fuel < pity_fuel_amount) {
			rocket_fuel = pity_fuel_amount;
		}
		/*if (!uspecial_rework) {
			if (pity_available) {
				rocket_fuel += pity_fuel_amount;
				pity_available = false;
			}
		}*/
		rocket_fuel = (rocket_fuel > max_rocket_fuel) ? max_rocket_fuel : rocket_fuel;
		/*
		if (rocket_fuel < max_rocket_fuel) {
			rocket_fuel += max_rocket_fuel;
			rocket_fuel = (rocket_fuel > max_rocket_fuel) ? max_rocket_fuel : rocket_fuel

			//rocket_fuel += (max_rocket_fuel / 2);
			//if (rocket_fuel > max_rocket_fuel) {
			//	rocket_fuel = max_rocket_fuel;
			//}
		}
		*/
	}
	previously_wall_jumping = true;
} else {
	previously_wall_jumping = false;
}
// Replenish charges on contact with the ground
if (!free) {
	//booster_rush_charges = max_booster_rush_charges;
	//rocket_fuel = max_rocket_fuel;
	fuel_recovery_active = true;
	if (energy_floor) && (rocket_fuel < pity_fuel_amount) {
		rocket_fuel = pity_fuel_amount;
	}
	//pity_available = true;
}
if (fuel_recovery_active) {
	if (free) {
		rocket_fuel += airborne_fuel_recovery_rate;
	} else {
		rocket_fuel += grounded_fuel_recovery_rate;
	}
}
rocket_fuel = (rocket_fuel > max_rocket_fuel) ? max_rocket_fuel : rocket_fuel;

// Play cue(s) if fuel crossed the fspecial threshold
if ((rocket_fuel_prev < booster_rush_cost)
	&& (rocket_fuel >= booster_rush_cost))
{
	white_flash_timer = white_flash_duration;
	//current_recharge_twinkle = spawn_hit_fx(x, y, recharge_twinkle);
	if (crouching) {
		spawn_hit_fx(x + (spr_dir * 10), y + 20, recharge_twinkle);
	} else {
		spawn_hit_fx(x + (spr_dir * 6), y - 6, recharge_twinkle);
	}
	//current_recharge_twinkle.follow_id = current_recharge_twinkle.player_id;
	sound_play(asset_get("sfx_boss_shine"), false, noone, 0.8, 1.3);
}
/*if (instance_exists(current_recharge_twinkle)) {
	print(string(variable_instance_get_names(current_recharge_twinkle)));
	if (crouching) {
		current_recharge_twinkle.x = x + (spr_dir * 10);
		current_recharge_twinkle.y = y + 20;
	} else {
		current_recharge_twinkle.x = x + (spr_dir * 6);
		current_recharge_twinkle.y = y - 6;
	}
}*/

// Update tracking
rocket_fuel_prev = rocket_fuel;

// Prevent usage of moves with no charges
/*
if (booster_rush_charges <= 0){
	move_cooldown[AT_FSPECIAL] = 2;
}
*/
/*if (!uspecial_rework) {
	if (rocket_fuel <= 0) {
		move_cooldown[AT_USPECIAL] = 2;
	}
}*/
if (rocket_fuel < booster_rush_cost) {
	move_cooldown[AT_FSPECIAL] = 2;
}

// Release anyone we may have grabbed if we detect them respawning
with (asset_get("oPlayer")) {
	if ((state == PS_SPAWN) && (RETROBLAST_HOLDER_ID == other.id)) {
        RETROBLAST_HOLDER_ID = noone;
    }
}

// Add ability to move while crouched
crouching_prev = crouching;
if (state == PS_CROUCH) {
	crouching = true;
	off_edge = false;
	
	// play transforming sound if this is the beginning
	if (crouching && !crouching_prev && (crouch_time == 0)) {
		sound_play(transform_down_sound);
	}
	
	// Play the engine idling sound throughout
	if (engine_idle_time == 0) {
		sound_play(engine_idling_sound);
	}
	engine_idle_time++;
	engine_idle_time %= engine_idle_time_max;
	
	// Track if we've done the minimum amount of crouching for a standing-up sound
	if (crouch_time < crouch_time_max) {
		crouch_time++;
		if (crouch_time >= crouch_time_max) {
			driving = true;
		}
	}
	// Detect if we're standing up, play sound again
	if (!down_down) {
		if (crouch_time >= crouch_time_max) {
			sound_play(transform_up_sound);
		}
		crouch_time = 0;
		driving = false;
	}
	
	if (left_down) {
		spr_dir = -1;
		hsp -= crawl_accel;
		// apply more oomph when slower
		if (abs(hsp) < crawl_speed) {
			hsp -= (crawl_speed - abs(hsp)) * 0.05;
		} else {
			hsp *= (1 + gradual_crawl_accel);
		}
	} else if (right_down) {
		spr_dir = 1;
		hsp += crawl_accel;
		// apply more oomph when slower
		if (abs(hsp) < crawl_speed) {
			hsp += (crawl_speed - abs(hsp)) * 0.05;
		} else {
			hsp *= (1 + gradual_crawl_accel);
		}
	}
	
	// Add dust puffs
	if (abs(hsp) > (crawl_speed * .25)) {
		if (driving_dust_timer == 0) {
			spawn_base_dust(x - (spr_dir * 16), y, "dash");
		}
		driving_dust_timer++;
		driving_dust_timer %= driving_dust_timer_max;
	} else {
		driving_dust_timer = 0;
	}
} else if (((attack == AT_DTILT) || (attack == AT_DSPECIAL) || (attack == AT_DSTRONG)) && ((state == PS_ATTACK_GROUND) || (state == PS_ATTACK_AIR))) {
	// Play the engine idling sound throughout
	if (engine_idle_time == 0) {
		sound_play(engine_idling_sound);
	}
	engine_idle_time++;
	engine_idle_time %= engine_idle_time_max;
	
	// Track if we've done the minimum amount of crouching for a standing-up sound
	crouching = true;
	crouch_time = crouch_time_max;
	driving = true;
/*} else if (((attack == AT_DSPECIAL) || (attack == AT_DSTRONG)) && (state == PS_ATTACK_GROUND)) {
	crouching = true;
	crouch_time = crouch_time_max;
	driving = true;
	engine_idle_time = 0;*/
} else {
	crouching = false;
	crouch_time = 0;
	driving = false;
	sound_stop(engine_idling_sound);
	engine_idle_time = 0;
}

if ((attack == AT_DSPECIAL)
	&& ((state == PS_ATTACK_AIR) || (state == PS_ATTACK_GROUND)))
{
	// Audio/visual play one frame later, set everything this frame
	//if ((window == 3) && (window_timer == (get_window_value(attack, window, AG_WINDOW_LENGTH) - 1)))
	if ((window == 4) && (window_timer == 0)) {
		// Reached full charge
		armor_available = true;
		// Play sound
		sound_play(asset_get("sfx_frog_fspecial_charge_gained_2"));
		// Display visual
		spawn_hit_fx(x, y, dspecial_twinkle);
	}
}

/*
if (state == PS_CROUCH) {
	crouch_cycles++;
	print_debug("Crouching for " + string(crouch_cycles) + " cycles.");
} else {
	crouch_cycles = 0;
}
*/

/*
// Add dust puffs
if (state == PS_CROUCH) {
	if (state_timer < 10) {
		spawn_base_dust(x - (spr_dir * 10), y, "dash");
	}
} else
*/

// If opposite direction pressed during dashturn, start over facing the other way
if (state == PS_DASH_TURN) {
	if (attack_down) {
		state = PS_ATTACK_GROUND;
		state_timer = 0;
		attack = AT_DATTACK;
		window = 1;
		window_timer = 0;
	} else {
		if ((spr_dir > 0) && (left_down)) {
			spr_dir *= -1;
			state_timer = 0;
		} else if ((spr_dir < 0) && (right_down)) {
			spr_dir *= -1;
			state_timer = 0;
		}
	}
}

// Make blast hit effects animate on top of payers
with (hit_fx_obj) {
	if ((player == other.player)
		&& (hit_fx == other.blast_hit_effect))
	{
		depth = -10;
	}
}

// Manage potential afterimages
//afterimage_countdown_prev = afterimage_countdown;
if (afterimage_countdown > 0) {
	afterimage_countdown--;
	
	// Add new image to the end
	ds_list_add(afterimages, {sprite_index:sprite_index, image_index:image_index, x:x, y:y, spr_dir:spr_dir});
	
	if (ds_list_size(afterimages) >= num_afterimages_max) {
		// Oldest element is at index 0
		ds_list_delete(afterimages, 0);
	}
} else if (ds_list_size(afterimages) > 0) {
	ds_list_clear(afterimages);
}

if (driving) {
	go_through = true;
}

// Uncomment to allow riding on the car
/*
// Make a platform to stand on if needed
//print_debug("driving: " + string(driving) + ", driving_prev: " + string(driving_prev));
if (driving && !driving_prev) {
	car_roof = instance_create(x, y - 34, "obj_article_platform");
	car_roof.owner = self;
	car_roof.spr_dir = spr_dir;
}
// Updates while driving
if (driving) {
	//car_roof.vsp = vsp;
	//if ((x != car_roof.x) && (sign(x - car_roof.x) == sign(hsp))) {
	if (x != car_roof.x) {
		car_roof.hsp = x - car_roof.x;
		//if () {
		//} else {
			//car_roof.hsp = hsp;
		//}
	} else {
		car_roof.hsp = 0;
	}
	car_roof.spr_dir = spr_dir;
}
// Desroy the platform if needed
if (!driving && driving_prev) {
    instance_destroy(car_roof);
}
*/
driving_prev = driving;

/*
if (ds_list_size(afterimages) >= num_afterimages_max) {
	// Oldest element is at index 0
	ds_list_delete(afterimages, 0);
}
if (ds_list_size(afterimages) < num_afterimages_max) {
	// New elements are added at the end
	var current_afterimage = (afterimage_countdown > 0)
						   ? {sprite_index:sprite_index, image_index:image_index, x:x, y:y, spr_dir:spr_dir}
						   : {sprite_index:asset_get("empty_sprite"), image_index:image_index, x:x, y:y, spr_dir:spr_dir};
	ds_list_add(afterimages, current_afterimage)
}

if (afterimage_countdown > 0) {
	afterimage_countdown--;
}
*/

// Titanium Ally
if (titanium_ally) {
	with (oPlayer) {
		if (smash_charging
			&& (soft_armor <= other.titanium_armor_value)
			&& (get_player_team(player) == get_player_team(other.player)))
		{
			soft_armor = other.titanium_armor_value;
		}
	}
}

// Compatibility

// Kirby Copy Ability
// Initial swallow
if swallowed {
	
	swallowed = 0; // don't touch this line please im begging you
	
	var copy_spr = sprite_get("kirby_copy_ability");
	var copy_hrt = sprite_get("kirby_copy_ability_hurt");
	var copy_icn = sprite_get("kirby_ability_hud");
	var blast_sound = sound_get("laser_blast2");
	// add more to transfer other sprites, or sfx
	
	with enemykirby{
		newicon = copy_icn;
		muno_last_swallowed = other.id;
		
		// edit the below just like a regular attack script
		
		set_attack_value(AT_EXTRA_3, AG_CATEGORY, 2);
		set_attack_value(AT_EXTRA_3, AG_SPRITE, copy_spr);
		set_attack_value(AT_EXTRA_3, AG_AIR_SPRITE, copy_spr);
		set_attack_value(AT_EXTRA_3, AG_NUM_WINDOWS, 1);
		set_attack_value(AT_EXTRA_3, AG_HAS_LANDING_LAG, 3);
		set_attack_value(AT_EXTRA_3, AG_HURTBOX_SPRITE, copy_hrt);
		set_attack_value(AT_EXTRA_3, AG_HURTBOX_AIR_SPRITE, copy_hrt);
		
		set_window_value(AT_EXTRA_3, 1, AG_WINDOW_LENGTH, 4);
		set_window_value(AT_EXTRA_3, 1, AG_WINDOW_ANIM_FRAMES, 0);
		set_window_value(AT_EXTRA_3, 1, AG_WINDOW_ANIM_FRAME_START, 0);
		
		
		set_num_hitboxes(AT_EXTRA_3, 0);
		
		set_attack_value(AT_EXTRA_3, AG_CATEGORY, 2);
		set_attack_value(AT_EXTRA_3, AG_SPRITE, copy_spr);
		set_attack_value(AT_EXTRA_3, AG_NUM_WINDOWS, 7);
		set_attack_value(AT_EXTRA_3, AG_HAS_LANDING_LAG, 3);
		set_attack_value(AT_EXTRA_3, AG_HURTBOX_SPRITE, copy_hrt);
		
		// Windup
		set_window_value(AT_EXTRA_3, 1, AG_WINDOW_LENGTH, 4);
		set_window_value(AT_EXTRA_3, 1, AG_WINDOW_ANIM_FRAMES, 0);
		set_window_value(AT_EXTRA_3, 1, AG_WINDOW_ANIM_FRAME_START, 0);

		// Charge
		set_window_value(AT_EXTRA_3, 2, AG_WINDOW_LENGTH, 4);
		set_window_value(AT_EXTRA_3, 2, AG_WINDOW_ANIM_FRAMES, 0);
		set_window_value(AT_EXTRA_3, 2, AG_WINDOW_ANIM_FRAME_START, 2);

		var cycles_per_frame = 5;
		var fstrong_num_angles = 1;
	    // Hold
	    set_window_value(AT_EXTRA_3, 3, AG_WINDOW_LENGTH, 4);
	    set_window_value(AT_EXTRA_3, 3, AG_WINDOW_ANIM_FRAMES, 0);
	    set_window_value(AT_EXTRA_3, 3, AG_WINDOW_ANIM_FRAME_START, 3);
	    set_window_value(AT_EXTRA_3, 3, AG_WINDOW_HSPEED, 0);
	    set_window_value(AT_EXTRA_3, 3, AG_WINDOW_VSPEED, 0);
	    set_window_value(AT_EXTRA_3, 3, AG_WINDOW_HSPEED_TYPE, 1);
	    set_window_value(AT_EXTRA_3, 3, AG_WINDOW_VSPEED_TYPE, 2);
	
	    // Pre-fire glow
	    set_window_value(AT_EXTRA_3, 4, AG_WINDOW_LENGTH, 4);
	    set_window_value(AT_EXTRA_3, 4, AG_WINDOW_ANIM_FRAMES, 0);
	    set_window_value(AT_EXTRA_3, 4, AG_WINDOW_ANIM_FRAME_START, 4);
	    set_window_value(AT_EXTRA_3, 4, AG_WINDOW_HSPEED, 0);
	    set_window_value(AT_EXTRA_3, 4, AG_WINDOW_HSPEED, 0);
	    set_window_value(AT_EXTRA_3, 4, AG_WINDOW_HSPEED_TYPE, 1);
	    set_window_value(AT_EXTRA_3, 4, AG_WINDOW_VSPEED_TYPE, 2);
	    set_window_value(AT_EXTRA_3, 4, AG_WINDOW_HAS_SFX, 1);
	    set_window_value(AT_EXTRA_3, 4, AG_WINDOW_SFX, blast_sound);
	    set_window_value(AT_EXTRA_3, 4, AG_WINDOW_SFX_FRAME, 3);
	    
	    // Fire
	    //set_window_value(AT_EXTRA_3, 5, AG_WINDOW_TYPE, 7);
	    set_window_value(AT_EXTRA_3, 5, AG_WINDOW_LENGTH, cycles_per_frame * 4);
	    set_window_value(AT_EXTRA_3, 5, AG_WINDOW_ANIM_FRAMES, 4);
	    set_window_value(AT_EXTRA_3, 5, AG_WINDOW_ANIM_FRAME_START, 5);
	    set_window_value(AT_EXTRA_3, 5, AG_WINDOW_HAS_CUSTOM_FRICTION, 1);
	    set_window_value(AT_EXTRA_3, 5, AG_WINDOW_CUSTOM_GROUND_FRICTION, 0.3);
		set_window_value(AT_EXTRA_3, 5, AG_WINDOW_HSPEED, -7.5);
		set_window_value(AT_EXTRA_3, 5, AG_WINDOW_VSPEED, -3);
		set_window_value(AT_EXTRA_3, 5, AG_WINDOW_HSPEED_TYPE, 2);
		set_window_value(AT_EXTRA_3, 5, AG_WINDOW_VSPEED_TYPE, 2);
	    
	    // Pause to reflect
	    set_window_value(AT_EXTRA_3, 6, AG_WINDOW_LENGTH, 10);
	    set_window_value(AT_EXTRA_3, 6, AG_WINDOW_HAS_WHIFFLAG, 1);
	    set_window_value(AT_EXTRA_3, 6, AG_WINDOW_ANIM_FRAMES, 2);
	    set_window_value(AT_EXTRA_3, 6, AG_WINDOW_ANIM_FRAME_START, 9);

		// Return to your original position
		set_window_value(AT_EXTRA_3, 7, AG_WINDOW_LENGTH, 4);
		set_window_value(AT_EXTRA_3, 7, AG_WINDOW_HAS_WHIFFLAG, 1);
		set_window_value(AT_EXTRA_3, 7, AG_WINDOW_ANIM_FRAMES, 0);
		set_window_value(AT_EXTRA_3, 7, AG_WINDOW_ANIM_FRAME_START, 11);


		set_num_hitboxes(AT_EXTRA_3, 2);

	    // Base
	    set_hitbox_value(AT_EXTRA_3, 1, HG_HITBOX_TYPE, 1);
	    set_hitbox_value(AT_EXTRA_3, 1, HG_WINDOW, 5);
	    set_hitbox_value(AT_EXTRA_3, 1, HG_LIFETIME, cycles_per_frame * 4);
	    set_hitbox_value(AT_EXTRA_3, 1, HG_WIDTH, 52);
	    set_hitbox_value(AT_EXTRA_3, 1, HG_HEIGHT, 52);
	    set_hitbox_value(AT_EXTRA_3, 1, HG_PRIORITY, 1);
	    set_hitbox_value(AT_EXTRA_3, 1, HG_VISUAL_EFFECT_X_OFFSET, -12);
	    set_hitbox_value(AT_EXTRA_3, 1, HG_VISUAL_EFFECT_Y_OFFSET, 20);
	    //set_hitbox_value(AT_EXTRA_3, 1, HG_VISUAL_EFFECT, blast_hit_effect);
	    set_hitbox_value(AT_EXTRA_3, 1, HG_HIT_SFX, asset_get("sfx_clairen_hit_med"));
	    
	    // Tip
	    set_hitbox_value(AT_EXTRA_3, 2, HG_HITBOX_TYPE, 1);
	    set_hitbox_value(AT_EXTRA_3, 2, HG_WINDOW, 5);
	    set_hitbox_value(AT_EXTRA_3, 2, HG_LIFETIME, cycles_per_frame * 2);
	    set_hitbox_value(AT_EXTRA_3, 2, HG_WIDTH, 40);
	    set_hitbox_value(AT_EXTRA_3, 2, HG_HEIGHT, 40);
	    set_hitbox_value(AT_EXTRA_3, 2, HG_PRIORITY, 1);
	    set_hitbox_value(AT_EXTRA_3, 2, HG_VISUAL_EFFECT_X_OFFSET, -12);
	    set_hitbox_value(AT_EXTRA_3, 2, HG_VISUAL_EFFECT_Y_OFFSET, 20);
	    //set_hitbox_value(AT_EXTRA_3, 2, HG_VISUAL_EFFECT, blast_hit_effect);
	    set_hitbox_value(AT_EXTRA_3, 2, HG_HIT_SFX, asset_get("sfx_clairen_hit_med"));

		// Set damage/knockback angles
		// Neutral
		for (var i = 1; i <= 2; i++) {
		    set_hitbox_value(AT_EXTRA_3, i, HG_DAMAGE, 13);
		    set_hitbox_value(AT_EXTRA_3, i, HG_ANGLE, 55);
		    set_hitbox_value(AT_EXTRA_3, i, HG_BASE_KNOCKBACK, 7.5); // 7
		    set_hitbox_value(AT_EXTRA_3, i, HG_KNOCKBACK_SCALING, 1.1); // 0.9
		    set_hitbox_value(AT_EXTRA_3, i, HG_BASE_HITPAUSE, 7.5); // 7
		    set_hitbox_value(AT_EXTRA_3, i, HG_HITPAUSE_SCALING, 1.1); // 0.9
		}

		// Make the hitbox placement self-adjust with angle
		// Fulcrum offset from player's current position
		var fulcrum_x = 0;
		var fulcrum_y = 0;
		// offset from fulcrum to base hitbox
		var fulcrum_offset_x = 27;
		var fulcrum_offset_y = -22;
		var distance_to_base = point_distance(0, 0, fulcrum_offset_x, fulcrum_offset_y);
		var aim_angle = 0;

	    // Relative position from fulcrum to base hitbox
	    var angle_to_base = aim_angle + point_direction(0, 0, fulcrum_offset_x, fulcrum_offset_y);
	    
	    var base_hitbox_x = fulcrum_x + lengthdir_x(distance_to_base, angle_to_base);
	    var base_hitbox_y = fulcrum_y + lengthdir_y(distance_to_base, angle_to_base);
	
	    // Distance between hitbox centers
	    var hb_origin_distance = 40;
	    var hb_origin_angle = aim_angle;
	    // Relative position from fulcrum to tip hitbox
	    var tip_hitbox_x = base_hitbox_x + lengthdir_x(hb_origin_distance, hb_origin_angle);
	    var tip_hitbox_y = base_hitbox_y + lengthdir_y(hb_origin_distance, hb_origin_angle);
	
	    set_hitbox_value(AT_EXTRA_3, 1, HG_HITBOX_X, base_hitbox_x);
	    set_hitbox_value(AT_EXTRA_3, 1, HG_HITBOX_Y, base_hitbox_y);
	    set_hitbox_value(AT_EXTRA_3, 2, HG_HITBOX_X, tip_hitbox_x);
	    set_hitbox_value(AT_EXTRA_3, 2, HG_HITBOX_Y, tip_hitbox_y);
	}
}

// Update code
with oPlayer if "muno_last_swallowed" in self && muno_last_swallowed == other && (state == PS_ATTACK_AIR || state == PS_ATTACK_GROUND) && attack == AT_EXTRA_3{
	// you can treat this like an attack_update.gml for when kirby is using your character's ability
	
	// this system avoids conflicts between 2 swallowed chars IF they both use the munophone system for copy abilities.
}


//print_debug("Player state: " + string(state) + ", prev state: " + string(prev_state));
//print_debug("Number of charges: " + string(booster_rush_charges));
//print_debug("Fuel: " + string(rocket_fuel));
//print_debug("driving: " + string(driving) + ", driving_prev: " + string(driving_prev));
//print_debug("state: " + get_state_name(state) + ", attack: " + string(attack) + ", window: " + string(window) + ", window_timer: " + string(window_timer));// + "state_prev: " + string(state_prev));
//print_debug("afterimage countdown: " + string(afterimage_countdown) + "prev: " + string(afterimage_countdown_prev));

// Function to spawn built-in dust effects, courtesy of SupersonicNK
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