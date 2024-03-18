//B - Reversals
switch(attack){
	case AT_NSPECIAL:
	case AT_FSPECIAL:
	case AT_DSPECIAL:
	case AT_USPECIAL:
		trigger_b_reverse();
		break;
}



// per-attack logic
if (attack == AT_JAB && window == 6 && window_timer > 0 && attack_pressed){
    window = 1;
    window_timer = 0;
    attack_end();
}
switch(attack){
	
	// give your moves some "pop" by spawning dust during them!
	
	case AT_JAB:
		was_parried = false; // easy method for single-hit jabs
	case AT_FTILT:
	case AT_DTILT:
		if window == 1 && window_timer == phone_window_end{ // WARN: Possible repetition during hitpause. Consider using window_time_is(frame) https://rivalslib.com/assistant/function_library/attacks/window_time_is.html
			array_push(phone_dust_query, [x, y, "dash", spr_dir]);
		}
		break;
	case AT_UTILT:
		if window == 1 && window_timer == phone_window_end{ // WARN: Possible repetition during hitpause. Consider using window_time_is(frame) https://rivalslib.com/assistant/function_library/attacks/window_time_is.html
			array_push(phone_dust_query, [x, y, "dash", spr_dir]);
			array_push(phone_dust_query, [x, y, "dash", -spr_dir]);
		}
		break;
	case AT_FSTRONG:
		if window == 2 && window_timer == phone_window_end{ // WARN: Possible repetition during hitpause. Consider using window_time_is(frame) https://rivalslib.com/assistant/function_library/attacks/window_time_is.html
			array_push(phone_dust_query, [x, y, "dash_start", spr_dir]);
		}
		break;
	case AT_USTRONG:
		if window == 2 && window_timer == phone_window_end{ // WARN: Possible repetition during hitpause. Consider using window_time_is(frame) https://rivalslib.com/assistant/function_library/attacks/window_time_is.html
			array_push(phone_dust_query, [x, y, "dash_start", spr_dir]);
			array_push(phone_dust_query, [x, y, "dash_start", -spr_dir]);
		}
		break;


	
	
	case AT_FSPECIAL:
		can_move = false;
		can_fast_fall = false;
		switch(window){
			case 1:
				break;
			case 2:
				// weird handler in case we're upside down
				spr_dir = sign(knife_x - x);
			case 3:
			case 4:
				hsp = 0;
				vsp = 0;

				var knife_dir = point_direction(x, y, knife_x, knife_y);
				spr_angle = knife_dir + (180 * real(spr_dir < 0));
				break;
			case 5:
				hsp = 0;
				vsp = 0;

				if window_timer > get_window_value(AT_FSPECIAL, 4, AG_WINDOW_LENGTH) - 1 {
					window++;
					window_timer = 0;
					knife_travel_time = 0;
				}
				
				var knife_dir = point_direction(x, y, knife_x, knife_y);
				spr_angle = knife_dir + (180 * real(spr_dir < 0));
				break;
			case 6:
				fall_through = true;

				var knife_dir = point_direction(x, y, knife_x, knife_y);
				var knife_dist = point_distance(x, y, knife_x, knife_y);

				if knife_dist <= fspecial_travel_speed || knife_travel_time > fspecial_travel_time_max {
					// We're at the knife, let's get outta here!

					if instance_exists(knife_obj) {
						knife_obj.destroyed = true;
					}
					destroy_hitboxes();
					attack_end();
					set_state(PS_IDLE_AIR);
					hsp = fspecial_end_hsp * spr_dir;
					vsp = fspecial_end_vsp;
					old_hsp = hsp;
					old_vsp = vsp;
					break;

				}

				if window_timer = 3 { // WARN: Possible repetition during hitpause. Consider using window_time_is(frame) https://rivalslib.com/assistant/function_library/attacks/window_time_is.html
					window_timer = 0;
				}
				hsp = lengthdir_x(fspecial_travel_speed, knife_dir);
				vsp = lengthdir_y(fspecial_travel_speed, knife_dir);
				
				spr_angle = knife_dir + (180 * real(spr_dir < 0));
				knife_travel_time++;
				break;
		}
		break;

	
/*
	case AT_USPECIAL:
		can_move = false;
		can_fast_fall = false;
		can_wall_jump = true;
		fall_through = true;
		switch(window){
			case 1: // startup
				hsp = 0;
				vsp = 0;
				if window_timer == phone_window_end{ // WARN: Possible repetition during hitpause. Consider using window_time_is(frame) https://rivalslib.com/assistant/function_library/attacks/window_time_is.html
					vsp = -5;
				}
				break;
			case 2: // flight
				if (!joy_pad_idle){
					hsp += lengthdir_x(1, joy_dir);
					vsp += lengthdir_y(1, joy_dir);
				} else {
					hsp *= .6;
					vsp *= .6;
				}
				var fly_dir = point_direction(0,0,hsp,vsp);
				var fly_dist = point_distance(0,0,hsp,vsp);
				var max_speed = 10; // 12
				if (fly_dist > max_speed){
					hsp = lengthdir_x(max_speed, fly_dir);
					vsp = lengthdir_y(max_speed, fly_dir);
				}
				break;
			case 3: // atk startup
			case 4: // atk active
			case 5: // endlag
				hsp = 0;
				vsp = 0;
				break;
		}
		break;
	*/
	
	
	case AT_DSPECIAL:
	if window == 1 {
        vsp = min(vsp, 2)
	}
		if (!hitpause && !was_parried && has_hit){
			can_jump = true;
		}
		can_fast_fall = false;
		can_move = false;

		if window == 3 && window_timer == 1 && lantern_charge >= lantern_charge_max {
			install_timer = install_timer_max;
		    lantern_charge = 0;
		    lantern_level = 1;

			sound_play(asset_get("sfx_absa_cloud_pop"), false, false, 1, 0.8)
			sound_play(asset_get("sfx_burnconsume"), false, false, 1, 0.6)
			sound_play(asset_get("sfx_burnconsume"), false, false, 1, 1.4)


			// ------ SET YOUR INSTALL STATS HERE ------
			leave_ground_max    = 6;		// 4    -  8
			max_jump_hsp        = 6;		// 4    -  8
			air_max_speed       = 5;  		// 3    -  7
			jump_change         = 3;		// 3
			air_accel           = 0.5;		// 0.2  -  0.4
			prat_fall_accel     = 0.85;		// 0.25 -  1.5
			air_friction        = 0.02;		// 0.02 -  0.07
			max_fall            = 9;		// 6    -  11
			fast_fall           = 14;		// 11   -  16
			gravity_speed       = 0.1;		// 0.3  -  0.6
			hitstun_grav        = 0.5;		// 0.45 -  0.53
			
			// Jumps
			jump_start_time     = 5;		// 5                this stat is automatically decreased by 1 after init.gml (dan moment), so its "real value" is 4. if you change this during a match, 4 is the value you should reset it to
			jump_speed          = 5;		// 7.6  -  12       okay, zetter's is actually 10.99 but... come on
			short_hop_speed     = 3;		// 4    -  7.4
			djump_speed         = -6;		// 6    -  12       absa's is -1 because of her floaty djump
			djump_accel         = -0.7;		// -1.4 -  0        absa's is -1.4, all other chars are 0. only works if the   djump_accel_end_time   variable is also set. floaty djumps should be adjusted by feel based on your char's gravity
			djump_accel_end_time= 20;		//                  the amount of time that   djump_accel   is applied for
			max_djumps          = 1;		// 0    -  3        the 0 is elliana because she has hover instead
			walljump_hsp        = 7;		// 4    -  7
			walljump_vsp        = 8;		// 7    -  10
			land_time           = 4;		// 4    -  6
			prat_land_time      = 10;		// 3    -  24       zetterburn's is 3, but that's ONLY because his uspecial is so slow. safer up b (or other move) = longer pratland time to compensate
			can_wall_cling      = true;

		}
		break;
	
	case AT_NSPECIAL:

        vsp = min(vsp, .5)
	
		if window == 2 && window_timer == 1 && !hitpause && !nspecial_lantern_active {
			nspecial_lantern_active = true
			// create lantern
			nspecial_current_lantern = instance_create(x + nspecial_lantern_spawn_x * spr_dir, y + nspecial_lantern_spawn_y, "obj_article1")

			var angle = 0
			if up_down {
				angle = nspecial_angle_maximum
			} else if down_down {
				angle = nspecial_angle_minimum
			}

			nspecial_current_lantern.hsp = lengthdir_x(nspecial_lantern_velocity, angle) * spr_dir
			nspecial_current_lantern.vsp = lengthdir_y(nspecial_lantern_velocity, angle)

			nspecial_current_lantern.throw_angle = angle

			nspecial_current_lantern.decel = nspecial_lantern_decel
		}
		break;
	
	
	case AT_TAUNT:
		/*
		if window_timer == 1{
			clear_button_buffer(PC_SHIELD_PRESSED);
		}
		if shield_pressed && window == 1 && window_timer < 16{
			attack_end();
			set_attack(AT_TAUNT_2);
		*/
		break;
	
	
	
	case AT_TAUNT_2:
		if taunt_down == true{	
			if (window_timer == window_end) set_window(-1); 
		}
		else set_state(PS_IDLE);
		break;
}

// lantern recall
if (window_timer == 1 && window == 1 && !hitpause) {
	var is_lantern_attack = false
	for (i=0; i<array_length_1d(lantern_attacks); i++) {
		if lantern_attacks[i] == attack {
			is_lantern_attack = true
		}
	}
	if (is_lantern_attack && nspecial_instant_recall) || attack == AT_NSPECIAL {
		if nspecial_lantern_active {
			nspecial_current_lantern.recall = true
		}
	}
}

//extra sound effects
switch(attack){
	case AT_DSTRONG:
		if window == 2 && window_timer == 5 && !hitpause{
			sound_play(asset_get("sfx_zetter_fireball_fire"));
			sound_play(asset_get("sfx_shovel_hit_med2"));
		}
	break;
	case AT_DSPECIAL:
		if window == 2 && window_timer == 1 && !hitpause{
			sound_play(asset_get("sfx_zetter_fireball_fire"));
		}
	break;
	case AT_TAUNT:
		if window == 1 && window_timer == 1 && !hitpause{
			sound_play(asset_get("sfx_zetter_fireball_fire"), false, false, 1, .7);
		}
		if window == 1 && window_timer == 27 && !hitpause{
			sound_play(asset_get("sfx_forsburn_cape_swipe"), false, false, 1, .7);
		}
	break;
	case AT_TAUNT_2:
		if window == 1 && window_timer == 27 && !hitpause{
			sound_play(asset_get("sfx_swipe_medium1"));
		}
	break;

}




#define spawn_base_dust // written by supersonic
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
if newdust == noone return noone;
newdust.dust_fx = dfx; //set the fx id
if dfg != -1 newdust.fg_sprite = dfg; //set the foreground sprite
newdust.dust_color = dust_color; //set the dust color
if dir != 0 newdust.spr_dir = dir; //set the spr_dir
newdust.draw_angle = dfa;
return newdust;

#define set_window(window_num)
{
    if (window_num == 0) window ++;
    else if (window_num == -1) window = window;
    else window = window_num;
    window_timer = 0;

	//we need this so if we put an "illegal" value it will not crash the game
	window_num = window;

	//speed resetting - horizontally
	switch (get_window_value(attack, window_num, AG_WINDOW_HSPEED_TYPE))
	{
		case 0: hsp += get_window_value(attack, window_num, AG_WINDOW_HSPEED) * spr_dir; break; //adds speed
		case 1: case 2: hsp = get_window_value(attack, window_num, AG_WINDOW_HSPEED) * spr_dir; break; //sets speed for the first frame/the entire window
	}

	//speed resetting - vertically
	switch (get_window_value(attack, window_num, AG_WINDOW_VSPEED_TYPE))
	{
		case 0: vsp += get_window_value(attack, window_num, AG_WINDOW_VSPEED); break; //adds speed
		case 1: case 2: vsp = get_window_value(attack, window_num, AG_WINDOW_VSPEED); break; //sets speed for the first frame/the entire window
	}
}

// #region vvv LIBRARY DEFINES AND MACROS vvv
// DANGER File below this point will be overwritten! Generated defines and macros below.
// Write NO-INJECT in a comment above this area to disable injection.
#define window_time_is(frame) // Version 0
    // Returns if the current window_timer matches the frame AND the attack is not in hitpause
    return window_timer == frame and !hitpause
// DANGER: Write your code ABOVE the LIBRARY DEFINES AND MACROS header or it will be overwritten!
// #endregion