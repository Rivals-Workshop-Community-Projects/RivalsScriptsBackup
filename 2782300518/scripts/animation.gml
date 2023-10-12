if (motorbike == true) //Change all the sprites used if Carol is on the bike
{
	tsprite_index=-1;
	bsprite_index=-1;
	switch (state)
	{
		case PS_IDLE:
		case PS_SPAWN:
		case PS_RESPAWN:
			sprite_index=sprite_get("idle2");
			image_index=state_timer * idle_anim_speed;
		break;
		case PS_IDLE_AIR:
			sprite_index=sprite_get("bike_idle_air");
		break;
		case PS_CROUCH:
			sprite_index=sprite_get("crouch2");
			image_index=state_timer * crouch_anim_speed;
		break;
		case PS_JUMPSQUAT:
			sprite_index=sprite_get("land2");
			image_index=state_timer;
		break;		
		case PS_FIRST_JUMP:
			sprite_index=sprite_get("bike_idle_air");
			image_index=state_timer;
		break;
		case PS_DOUBLE_JUMP:
			sprite_index=sprite_get("doublejump2");
			image_index=state_timer;
		break;
		case PS_WALL_JUMP:
		case PS_WALL_TECH:
			sprite_index=sprite_get("walljump2");
			image_index=state_timer* walk_anim_speed;
		break;
		case PS_LAND:
		case PS_PRATLAND:
			sprite_index=sprite_get("land2");
		break;
		case PS_LANDING_LAG:
			var last_landing_lag = get_attack_value(attack, AG_LANDING_LAG);
			sprite_index=sprite_get("landinglag2");
			image_index = lerp(0, image_number, state_timer/last_landing_lag); //landing lag
			break;
		case PS_WALK:
			sprite_index=sprite_get("walk2");
			image_index=state_timer * walk_anim_speed;
		break;
		case PS_WALK_TURN:
			sprite_index=sprite_get("walkturn2");
			image_index=state_timer * walk_anim_speed;
		break;
		case PS_DASH_START:
			sprite_index=sprite_get("dashstart2");
			image_index=state_timer * dash_anim_speed;
		break;	
		case PS_DASH:
			sprite_index=sprite_get("dash2");
			image_index=state_timer * dash_anim_speed;
		break;
		case PS_DASH_STOP:
			sprite_index=sprite_get("dashstop2");
			image_index=state_timer * dash_anim_speed;
		break;
		case PS_DASH_TURN:
			sprite_index=sprite_get("dashturn2");
			himage_index=state_timer * dash_anim_speed;
		break;
		case PS_WAVELAND:
			sprite_index=sprite_get("waveland2");
			image_index=state_timer/3;
		break;
		case PS_AIR_DODGE:
			sprite_index=sprite_get("airdodge2");
			image_index=state_timer/3;
		break;
		case PS_PARRY_START:
			sprite_index=sprite_get("parry2");
			image_index=0;
		break;
		case PS_PARRY:
			sprite_index=sprite_get("parry2");
			switch (window)
			{
				case 1:
					if (window_timer < 3)
					{
						image_index=1;
					}
					else if (window_timer > 5)
					{
						image_index=3;
					}
					else 
					{
						image_index=2;
					}
				break;
				case 2:
					if (window_timer < 7)
					{
						image_index=4;
					}
					else if (window_timer > 13)
					{
						image_index=6;
					}
					else 
					{
						image_index=5;
					}
				break;
			}
		break;
		case PS_ROLL_BACKWARD:
		case PS_TECH_BACKWARD:
			sprite_index=sprite_get("roll_backward2");
			if (image_index < 3)
			{
				image_index = 0;
			}
			else
			{
				image_index=state_timer/3;
			}
		break;
		case PS_ROLL_FORWARD:
		case PS_TECH_FORWARD:
			sprite_index=sprite_get("roll_forward2");
			if (image_index < 3)
			{
				image_index = 0;
			}
			else
			{
				image_index=state_timer/3;
			}
		break;
		case PS_TECH_GROUND:
			sprite_index=sprite_get("tech2");
			image_index=state_timer/3;
		break;		
		case PS_HITSTUN:
		case PS_HITSTUN_LAND:
		case PS_BURIED:
		case PS_FLASHED:
		case PS_WRAPPED:
		case PS_FROZEN:
		case PS_DEAD:
			switch (hurt_img)
			{
				case 0:
					sprite_index=sprite_get("bighurt_bike");
				break;
				case 1:
					sprite_index=sprite_get("hurt_bike");
				break;
				case 2:
					sprite_index=sprite_get("downhurt_bike");
				break;
				case 3:
					sprite_index=sprite_get("bouncehurt_bike");
				break;
				case 4:
					sprite_index=sprite_get("uphurt_bike");
				break;
				case 5:
					if (!free)
					{
						sprite_index=sprite_get("hurtground_bike");					
					}
				break;
			}
			image_index=state_timer;
		break;
		case PS_TUMBLE:
			sprite_index=sprite_get("tumble_bike");
			image_index=state_timer * 0.25;
		break;		
		case PS_PRATFALL:
			sprite_index=sprite_get("pratfall2");
			image_index=state_timer * pratfall_anim_speed;
		break;
		case PS_ATTACK_GROUND:
		case PS_ATTACK_AIR:
			switch (attack)
			{
				case AT_FSTRONG_2:
					if (window == 2 && window_time_is(5))
					{
						image_index = 4 + (strong_charge/ 2) % 2;
					}
					if (window == 2 && image_index == 6)
					{
						image_index = 4;
					}
				break;
			}
		break;
	}
	if ("crystalized_damage_remaining" in self && crystalized_damage_remaining != 0 || state == PS_CRYSTALIZED)
	{
	    sprite_index = sprite_get("hurt_bike_crystalised");
    	small_sprites = 1;
	}
	else small_sprites = 0;
}
else
{
	switch (state)
	{
		case PS_ATTACK_AIR:
			switch (attack)
			{
				case AT_EXTRA_2:
					hurtboxID.sprite_index = sprite_get("pounce_hurt")
				break;
				default:
				break;
			}
		break;
		//The following code is a template for being buried, flashed or Crystalized off the bike, the code was originally developed by DynamicLemons will change it later
		case PS_PRATLAND:
			var timer_to_index_math = state_timer / (extended_parry_lag ? clamp(parry_distance * 8.8, 60, 110) : parry_lag);
			if (extended_parry_lag || was_parried) image_index = lerp(0, image_number, timer_to_index_math); //parrystun
			else image_index = lerp(0, image_number, state_timer/prat_land_time); //pratland
		break;
		case PS_BURIED:
		case PS_FLASHED:
			sprite_index=(sprite_get("hurt"));
		break;
		default:
		break;
	}
	if ("crystalized_damage_remaining" in self && crystalized_damage_remaining != 0 || state == PS_CRYSTALIZED)
	{
	    sprite_index = sprite_get("hurt_crystalised");
    	small_sprites = 1;
	}
	else small_sprites = 0;
}

if (is_attacking)
{
	switch (attack)
	{
		case AT_FSPECIAL:
		case AT_FSPECIAL_AIR:
			if (window == 5 && bikeWarp)
			{
				sprite_index = sprite_get("bike_store_spin")
				image_index = window_timer/2;
			}
		break;
	}
}

#define window_time_is(frame) // Version 0
    // Returns if the current window_timer matches the frame AND the attack is not in hitpause
    return window_timer == frame and !hitpause
// DANGER: Write your code ABOVE the LIBRARY DEFINES AND MACROS header or it will be overwritten!
// #endregion