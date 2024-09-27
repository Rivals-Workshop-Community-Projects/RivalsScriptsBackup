//	B - Reversals
switch(attack){
	case AT_NSPECIAL:
	case AT_FSPECIAL:
	case AT_DSPECIAL:
	case AT_USPECIAL:
		trigger_b_reverse();
		break;
}

//=============================================================================================

if (attack == AT_UTILT)
{	
	if (window == 3 && window_timer == phone_window_end && !free && !hitpause)
	{
		set_state(PS_LANDING_LAG);
	}
}

if (attack == AT_DATTACK)
{
	can_fast_fall	= false;
	can_wall_jump 	= true;
	
	if (window == 1 && window_timer == phone_window_end && !hitpause)
	{
		sound_play(sound_get("sfx_rayman_dash_spin"), false, noone, 0.45);		
	}
	
	if (window == 2)
	{
		if (!hitpause)
		{
			if (window_timer < 5 && !has_hit)
			{
				can_jump = true;
				
				if (can_jump)
				{
					hsp *= 0.98;
				}
			}			
			
			if (window_timer < phone_window_end && free)
			{
				vsp *= -0.98;
			}		
		}		
	}
}

if (attack == AT_FSTRONG)
{
	if (window == 1 && window_timer == 1 && !hitpause)
	{
		sound_play(sound_get("sfx_rayman_windup"), false, noone, 0.45);		
	}

	if (window == 3 && !hitpause)
	{
		if (window_timer == phone_window_end)
		{
			sound_play(sound_get("sfx_rayman_fist_throw"), false, noone, 0.90);	
		}	
		
		with (self)
		{
			sound_stop(sound_get("sfx_rayman_windup"));	
			sound_stop(sound_get("sfx_rayman_winduploop"));	
		}
	}
}

if (attack == AT_USTRONG)
{
	if (window == 1 && window_timer == 1 && !hitpause)
	{
		sound_play(sound_get("sfx_rayman_windup"), false, noone, 0.45);		
	}

	if (window == 3 && !hitpause)
	{
		if (window_timer == phone_window_end)
		{
			sound_play(sound_get("sfx_rayman_fist_throw"), false, noone, 0.90);	
		}	
		
		with (self)
		{
			sound_stop(sound_get("sfx_rayman_windup"));	
			sound_stop(sound_get("sfx_rayman_winduploop"));	
		}
	}
}

if (attack == AT_DSTRONG)
{
	if (window == 2 && window_timer == phone_window_end && !hitpause)
	{
		sound_play(sound_get("sfx_rayman_fist_throw"), false, noone, 0.90);	
		
		if (!has_hit_player)
		{
			sound_play(asset_get("sfx_land_heavy"), false, noone, 0.50);	
			sound_play(asset_get("sfx_blow_heavy1"), false, noone, 0.65);		
		}
	}
}

if (attack == AT_NSPECIAL)
{
	can_move 		= false;
	can_fast_fall 	= false;
	can_wall_jump	= true;

	if (window == 1 && !hitpause)
	{
		if (window_timer == 2)
		{
			sound_play(sound_get("sfx_raygun_start"), false, noone, 0.85);	
		}

		if (window_timer == phone_window_end)
		{
			sound_play(sound_get("sfx_raygun_fire"), false, noone, 0.75);	
		}
	}
	
	if (window == 4) 
	{	
		move_cooldown[AT_NSPECIAL] 	= 40;
	}
}

if (attack == AT_FSPECIAL)
{    	
	//	Set the hand's positions
	hand_x 					= 24 * spr_dir;
	hand_y 					= 37;	
	
	can_move 				= false;
	can_fast_fall 			= false;
	can_wall_jump			= true;

	if (window == 1 && !hitpause)
	{
		//	Allow turning and adjusting angles
		if (joy_pad_idle) 
		{
			joy_dir = spr_dir == 1 ? 0 : 180;
		}
		
		//	Resets all around
		if (window_timer == 1)
		{
			grapple_fist 	= noone;
			grapple_grab 	= noone;
			grapple_obj 	= false;
		}
		
		//	Minor Air Stall
		if (window_timer < phone_window_end && free && !hitpause)
		{
			vsp 			= -1.5;
		}
		
		//	Grapple City
		if (window_timer == phone_window_end - 1)
		{
			var joy_angle_x 			= spr_dir * dcos(joy_dir);
			var joy_angle_y 			= dsin(joy_dir);
			joy_angle 					= round(clamp(darctan2(joy_angle_y, joy_angle_x), -90, 90));
			
			//	Correcting the joy angle limits
			joy_angle 					= joy_angle > 75 ? 75 : joy_angle;
			joy_angle 					= joy_angle < -75 ? -75 : joy_angle;			

			if (!free && joy_angle < -15) 
			{
				//	correct angle on the ground
				joy_angle 				= -15;
			}

			//	Absolute angle
			var final_joy_angle 		= spr_dir == -1 ? -joy_angle : joy_angle;
			
			//	Creation of Grappling Fist			
			grapple_fist 				= instance_create(x + hand_x, y - hand_y, "obj_article1");
			grapple_fist.depth			= depth - 2;
			
			grapple_fist.hsp 			= spr_dir ? grapple_speed : -grapple_speed;

			grapple_fist.proj_angle 	= final_joy_angle;

			grapple_fist.hsp 			= round(grapple_speed * dcos(final_joy_angle) * spr_dir);
			grapple_fist.vsp 			= round(grapple_speed * dsin(final_joy_angle) * -spr_dir);			
		}
	}

	if (window == 2 && !hitpause)
	{
		if (grapple_grab != noone)
		{
    		window 						= 3;
			window_timer 				= 0;
			
			grapple_fist_pos_x 			= grapple_grab.x;
    		grapple_fist_pos_y 			= grapple_grab.y - 10 - grapple_grab.char_height / 2;
			
			grapple_grab.hitstop 		= 13;
			grapple_grab.hitstun 		= 13;
    		grapple_grab.state 			= PS_HITSTUN;			
		}
		
		if (grapple_obj)
		{
			window 						= 3;
			window_timer 				= 0;
		}
	}
	
	if (window == 3 && !hitpause) 
	{		
		if (grapple_grab != noone)
		{ 
			if (window_timer < 3)
			{
				var pull_speed 			= 13.5;
				var pull_angle 			= point_direction(x + hand_x, y - hand_y, grapple_fist_pos_x, grapple_fist_pos_y);		

				//	Rayman pulling himself towards the Enemy
				hsp 					= round(pull_speed * dcos(pull_angle));	
				vsp 					= round(-12 * dsin(pull_angle)); 	
			}
		}
		
		if (grapple_obj)
		{ 
			if (window_timer < 3)
			{				
				//	Rayman pulling himself across the stage
				hsp 					= 12 * spr_dir;	
				vsp 					= -5.5;
			}
		}
		
		if (grapple_grab != noone || grapple_obj)
		{ 			
			fall_through = true;
			
			if (window_timer > 3)
			{
				if (vsp > 5) 
				{
					vsp = 5;
				}	
			}
		}
	}
	
	//	Easy there, Mr Eggplant...
	if (window == 3 || window == 4 && window_timer < phone_window_end - 1 && !hitpause)
	{
		if (grapple_grab != noone || grapple_obj)
		{ 
			if (!free)
			{
				if (left_down || right_down || up_down || down_down) && 
				(jump_down || attack_down || special_down || up_strong_pressed || down_strong_pressed)
				{
					iasa_script();		//	Combo Allower
					
					hsp *= 0.78;		//	Speed Cap

					move_cooldown[AT_FSPECIAL] 	= 65;

					//	Remove any funny jank
					if (instance_exists(grapple_fist))
					{
						spawn_hit_fx(grapple_fist.x, grapple_fist.y, 310);
						sound_play(asset_get("sfx_forsburn_disappear"), false, noone, 0.75);
						
						instance_destroy(grapple_fist);
					}
				}
			}
			
			if (free)
			{
				if (attack_down || special_down || strong_down || jump_down)
				{
					iasa_script();
					
					hsp *= 0.98;

					move_cooldown[AT_FSPECIAL] 	= 65;

					if (instance_exists(grapple_fist))
					{
						spawn_hit_fx(grapple_fist.x, grapple_fist.y, 310);
						sound_play(asset_get("sfx_forsburn_disappear"), false, noone, 0.75);
						
						instance_destroy(grapple_fist);
					}
				}
			}
			
			//	Rayman bumps into his target, apply speed cap bumpers
			with (oPlayer) 
			{            
				if (player != other.player && place_meeting(x, y, other))
				{					
					if (other.vsp > 1) 
					{
						other.vsp = 1;
					}
					
					if (other.hsp > 2) 
					{
						other.hsp *= 0.78;
					}
					
					else if (other.hsp < -2) 
					{
						other.hsp *= 0.78;
					}
				}
			}
		}
	}
}

if (attack == AT_USPECIAL)
{
	var throttle_max 	= 55; 
	
	can_fast_fall 		= false;
	can_wall_jump		= true;

	if (window == 1)
	{		
		throttle_timer = 0;
		
		if (window_timer == 1 && !hitpause)
		{
			//	Prevent from falling any further near bottom blastzone
			if (vsp > 0 && y > get_stage_data(SD_BOTTOM_BLASTZONE) - 20) 
			{
				vsp = 0;
			}
		}

		if (window_timer == 2 && !hitpause)
		{
			sound_play(asset_get("sfx_charge_blade_ready"), false, noone, 1);
		}
		
		if (window_timer < phone_window_end && !hitpause)
		{
			if (free)
			{
				vsp = clamp(vsp, 0.5, 1);
			}
		}
		
		if (window_timer == phone_window_end && !hitpause)
		{
			vsp = -4.5;
		}
	}

	if (window == 2 && !hitpause)
	{
		throttle_timer += 1;
		
		hsp *= 0.98;
		vsp -= 0.0005;

		attack_end();
		
		if (throttle_timer > throttle_max)
		{
			window 			= 3;
			window_timer 	= 0;

			destroy_hitboxes();

			with (self)
			{
				sound_play(sound_get("sfx_rayman_throttle_expire"));
				sound_stop(sound_get("sfx_rayman_throttle_click"));
			}
		}

		if (get_gameplay_time() mod 12 == 0)
		{
			sound_play(sound_get("sfx_rayman_throttle_click"), false, noone, 0.80);
		}
	}
}

if (attack == AT_DSPECIAL)
{
	var pg_x 		= 34;
	var pg_y 		= 36;

	can_move 		= false;
	can_fast_fall 	= false;
	can_wall_jump	= false;

	if (window == 1 && !hitpause)
	{
		if (window_timer == 1)
		{
			reset_num_hitboxes(AT_DSPECIAL);
		}
		
		if (window_timer == 8)
		{
			spawn_hit_fx(x + 20 * spr_dir, y - 100, 310);
			
			sound_play(sound_get("sfx_raygun_start"), false, noone, 0.50, 0.75);
			sound_play(asset_get("sfx_charge_blade_ready"), false, noone, 0.50, 0.75);
		}

		//	Spawn the P.Guard if airborne
		if (free)
		{			
			if (window_timer == phone_window_end - 1)
			{
				set_num_hitboxes(AT_DSPECIAL, 0);
				
				sound_play(asset_get("sfx_bubblepop"), false, noone, 0.95, 0.75);
				
				if (!instance_exists(plunger_guard))
				{
					plunger_guard 		= instance_create(x + 32 * spr_dir, y + 7, "obj_article2");
					plunger_guard.hsp 	= 0;
					plunger_guard.state = 4;
				}
			}
		}

		//	For the Ground Spawn
		if (!free)
		{
			if (window_timer == phone_window_end)
			{
				sound_play(asset_get("sfx_bubblepop"), false, noone, 0.95, 0.75);
				sound_play(asset_get("sfx_blow_heavy1"), false, noone, 0.50, 0.75);
				sound_play(asset_get("sfx_shovel_hit_heavy2"), false, noone, 0.50, 0.75);	
			}
		}
	}

	if (window == 2 && !hitpause)
	{
		//	Spawn the P.Guard if grounded
		if (!free)
		{			
			if (window_timer == phone_window_end - 1 && !was_parried)
			{
				if (!instance_exists(plunger_guard))
				{
					plunger_guard 	= instance_create(x + pg_x * spr_dir, y - pg_y, "obj_article2");
				}
			}
		}
	}
}

//=============================================================================================
//	Taunts

if (attack == AT_TAUNT)
{
	if (window == 3 && !hitpause)
	{
		with (self)
		{
			sound_stop(sound_get("sfx_rayman_taunt1-1"));	
			sound_stop(sound_get("sfx_rayman_taunt1-2"));	
			sound_stop(sound_get("sfx_rayman_taunt1-3"));	
			sound_stop(sound_get("sfx_rayman_taunt1-4"));	
			sound_stop(sound_get("sfx_rayman_taunt1-5"));	
			sound_stop(sound_get("sfx_rayman_taunt1-6"));	
		}
	}
	
	if (window == 4 && window_timer == phone_window_end && !hitpause)
	{
		var wooyeah 		= spawn_hit_fx(x+3*spr_dir, y-40, 301);
		wooyeah.depth 		= depth-2;

		sound_play(asset_get("sfx_coin_collect"), false, noone, 0.85);	

		var sfx_raytaunts 	= random_func(0, 6, true);
		switch(sfx_raytaunts) 
		{
			case 0:
				sound_play(sound_get("sfx_rayman_taunt1-1"), false, noone, 1.15);
			break;

			case 1:
				sound_play(sound_get("sfx_rayman_taunt1-2"), false, noone, 1.15);
			break;

			case 2:
				sound_play(sound_get("sfx_rayman_taunt1-3"), false, noone, 1.15);
			break;

			case 3:
				sound_play(sound_get("sfx_rayman_taunt1-4"), false, noone, 1.15);
			break;

			case 4:
				sound_play(sound_get("sfx_rayman_taunt1-5"), false, noone, 1.15);
			break;

			case 5:
				sound_play(sound_get("sfx_rayman_taunt1-6"), false, noone, 1.15);
			break;
		}		
	}
	
	if (window == 5 && !hitpause)
	{		
		if (taunt_down && window_timer == phone_window_end) 
		{
			window 				= 5;
			window_timer 		= 0;
		}
		
		with (self)
		{
			sound_stop(sound_get("sfx_rayman_windup"));	
			sound_stop(sound_get("sfx_rayman_winduploop"));	
		}
	}
}

if (attack == AT_TAUNT_2)
{
	if (window == 1 && window_timer == phone_window_end && !hitpause)
	{
		var sfx_raygrim = random_func(0, 2, true);
		switch(sfx_raygrim) 
		{
			case 0:
				set_window_value(AT_TAUNT_2, 1, AG_WINDOW_SFX, sound_get("sfx_rayman_taunt2-1"));
			break;

			case 1:
				set_window_value(AT_TAUNT_2, 1, AG_WINDOW_SFX, sound_get("sfx_rayman_taunt2-2"));
			break;
		}		
	}
}

if (attack == AT_EXTRA_1)
{
	if (window == 2)
	{
		if (attack_pressed) or (special_pressed) 
		{
			window 			= 3;
			window_timer 	= 0;				
		}
	}
}


//=============================================================================================

//	Welcome to the Finest Dust in Rayman's Arsenal...

switch(attack){
	
	// give your moves some "pop" by spawning dust during them!
	// WARN: Possible repetition during hitpause. Consider using window_time_is(frame) https://rivalslib.com/assistant/function_library/attacks/window_time_is.html
	
	case AT_FTILT:
		if window == 1 && window_timer == phone_window_end{ 
			array_push(phone_dust_query, [x, y, "dash", spr_dir]);
		}
		break;
		
	case AT_UTILT:
		if window == 1 && window_timer == phone_window_end{ 
			array_push(phone_dust_query, [x, y, "dash", spr_dir]);
			array_push(phone_dust_query, [x, y, "dash", -spr_dir]);
		}
		break;
		
	case AT_FSTRONG:
		if window == 3 && window_timer == phone_window_end{ 
			array_push(phone_dust_query, [x-32*spr_dir, y, "dash_start", spr_dir]);
		}
		break;
		
	case AT_USTRONG:
		if window == 3 && window_timer == phone_window_end{ 
			array_push(phone_dust_query, [x, y, "dash_start", spr_dir]);
			array_push(phone_dust_query, [x, y, "dash_start", -spr_dir]);
		}
		break;		
}

//=============================================================================================

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

// #region vvv LIBRARY DEFINES AND MACROS vvv
// DANGER File below this point will be overwritten! Generated defines and macros below.
// Write NO-INJECT in a comment above this area to disable injection.
#define window_time_is(frame) // Version 0
    // Returns if the current window_timer matches the frame AND the attack is not in hitpause
    return window_timer == frame and !hitpause
// DANGER: Write your code ABOVE the LIBRARY DEFINES AND MACROS header or it will be overwritten!
// #endregion