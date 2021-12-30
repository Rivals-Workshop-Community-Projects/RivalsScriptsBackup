// Muno code
user_event(14);

rainbow_color = phone_cheats[cheat_skittles] ? make_color_hsv(get_gameplay_time() % 256 + 1, 100, 100) : make_color_rgb(
	get_color_profile_slot_r(get_player_color(player), 0),
	get_color_profile_slot_g(get_player_color(player), 0),
	get_color_profile_slot_b(get_player_color(player), 0),
	);
set_character_color_slot(0, color_get_red(rainbow_color), color_get_green(rainbow_color), color_get_blue(rainbow_color))



max_djumps = phone_cheats[cheat_more_djumps];

if (spr_dir == 0) spr_dir = 1;
spr_dir = phone_cheats[cheat_widebert] * sign(spr_dir);

if phone_cheats[cheat_recoil] with pHitBox if player_id == other can_hit_self = 1;
// End of Muno code


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
		fuel_recovery_active = true;
		rocket_fuel += pity_fuel_amount;
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
}
if (fuel_recovery_active) {
	if (free) {
		rocket_fuel += airborne_fuel_recovery_rate;
	} else {
		rocket_fuel += grounded_fuel_recovery_rate;
	}
}
rocket_fuel = (rocket_fuel > max_rocket_fuel) ? max_rocket_fuel : rocket_fuel;

// Prevent usage of moves with no charges
/*
if (booster_rush_charges <= 0){
	move_cooldown[AT_FSPECIAL] = 2;
}
*/
if (rocket_fuel <= 0) {
	move_cooldown[AT_USPECIAL] = 2;
}
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
			hsp *= 1.005;
		}
	} else if (right_down) {
		spr_dir = 1;
		hsp += crawl_accel;
		// apply more oomph when slower
		if (abs(hsp) < crawl_speed) {
			hsp += (crawl_speed - abs(hsp)) * 0.05;
		} else {
			hsp *= 1.005;
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
} else if (((attack == AT_DTILT) || (attack == AT_DSPECIAL) || (attack == AT_DSTRONG)) && (state == PS_ATTACK_GROUND)) {
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

//print_debug("Player state: " + string(state) + ", prev state: " + string(prev_state));
//print_debug("Number of charges: " + string(booster_rush_charges));
//print_debug("Fuel: " + string(rocket_fuel));
//print_debug("driving: " + string(driving) + ", driving_prev: " + string(driving_prev));
print_debug("state: " + get_state_name(state));// + "state_prev: " + string(state_prev));

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