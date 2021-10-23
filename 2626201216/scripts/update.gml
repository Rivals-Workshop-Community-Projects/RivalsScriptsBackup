user_event(14);





rainbow_color = phone_cheats[cheat_skittles] ? make_color_hsv(get_gameplay_time() % 256 + 1, 100, 100) : make_color_rgb(
	get_color_profile_slot_r(get_player_color(player), 0),
	get_color_profile_slot_g(get_player_color(player), 0),
	get_color_profile_slot_b(get_player_color(player), 0),
	);
set_character_color_slot(0, color_get_red(rainbow_color), color_get_green(rainbow_color), color_get_blue(rainbow_color));



max_djumps = phone_cheats[cheat_more_djumps];

if (spr_dir == 0) spr_dir = 1;
spr_dir = phone_cheats[cheat_widebert] * sign(spr_dir);

if phone_cheats[cheat_recoil] with pHitBox if player_id == other can_hit_self = 1;

//syncing animations for puddle

if (puddle_anim_timer < 5)
{
puddle_anim_timer++;
}
else
{
	article_image_index++;
	with (obj_article3)
	{
		if (player_id = other.id && state != 8 && state != 2)
		{
			image_index = other.article_image_index;
		}
	}
	puddle_anim_timer = 0;
}

if (( state = PS_WALK || state == PS_DASH || state == PS_WAVELAND || state == PS_DASH_START || state == PS_DASH_STOP || state == PS_DASH_TURN ) && 69 = 420)
{
	if ((get_gameplay_time() mod 2) == 0)
	{

		temp_id = instance_create(x -10 * spr_dir, y, "obj_article2");
		temp_id.self_id =  temp_id;
	}
}

if (state = PS_JUMPSQUAT && spark = 0 && state_timer = 0)
{
	temp_id = instance_create(x -30 * spr_dir, y-20, "obj_article2");
	temp_id.self_id =  temp_id;
	temp_id = instance_create(x +30 * spr_dir, y-20, "obj_article2");
	temp_id.self_id =  temp_id;
}

//slip_id[1] = player_id;
//slip_id

//Handling Pratfall Debt

if (pratfall_debt)
{
	                was_parried = true;
                set_state(PS_IDLE_AIR);
                set_state(PS_PRATFALL);
                parry_lag = 30;
				pratfall_debt = 0;
}


//Making everyone slip. lol!

with(oPlayer)
{
	collision_instance = instance_place(x, y, obj_article3);

	if (collision_instance != noone && (hsp > - 7 && hsp < 7))
	{
		if (collision_instance.player_id = other.id && id != collision_instance.player_id )
		{
			if ("one_time_slip" in self)
			{
				dash_speed      = 10;
				walk_speed      = 10;		// 3    -  4.5
				walk_accel      = 3;		// 0.2  -  0.5
				ground_friction = -1.5;		// 0.3  -  1

			}
			else
			{
			old_dash_speed =      dash_speed;
			old_walk_speed =      walk_speed;    
			old_walk_accel = 	  walk_accel;     
			old_ground_friction = ground_friction;

			one_time_slip = 1; 
			}
		}
	}
	else if ("one_time_slip" in self)
	{
		dash_speed      = old_dash_speed;
		walk_speed      = old_walk_speed;  
		walk_accel      = old_walk_accel;   
		ground_friction	= old_ground_friction; 
	}
}

if (taunt_timer > 0)
{
	taunt_active = 1;
	taunt_timer += -1;

	if (  (taunt_timer mod 2) == 0 )
	{
		taunt_image_index++;
	}
}
else
{
	taunt_active = 0;
	taunt_image_index = 0;
}

//SPARK CODE

if (spark)
{

	attack = AT_EXTRA_1;

	hitbox_timer++;

    if (hitbox_timer > 9)
    {
        create_hitbox( AT_FSPECIAL, 2, x, y);
        hitbox_timer = 0;
    }

	if (state = PS_JUMPSQUAT)
	{
		spark = 0;
	}

	if (unteleported && is_attacking() == false)
	{
		if (free)
		{
		//y+= -52;
		}
		//x+= 60 * spr_dir;
		unteleported = 0;
		char_height = 80;
		free = 1;
	}
	if (!free)
	{
		collided = instance_place(x, y, obj_article3);

		if (collided != noone)
		{
			if (collided.player_id = id)
			{
				water_collided = collided;
			}
			else
			{
				water_collided = noone;
			}
		}
		else
		{
			water_collided = noone;
		}
		

		banana = instance_place(x,y,obj_article1);
			if (banana != noone && banana.player_id = id && banana.article_type = 1)
			{
				
				spark = 0;
				banana.hsp += 5 * spr_dir;
				banana.vsp += -15;

				hsp += -15 * spr_dir;
				vsp += -5;
				sound_play(sound_get("fall06"));
				banana = noone;
				
			}
		

		if (water_collided = noone)
		{
		spark = 0;
		pratfall_debt = 1;
		}
	}

	if (water_collided != noone && !free && spark = 1)
	{
		hsp = 10 * spr_dir;

		front_collided = instance_place(x + 10 * spr_dir, y, obj_article3);

		if (front_collided != noone)
		{
			if (front_collided.player_id = id)
			{
				front_water_collided = front_collided;
			}
			else
			{
				front_water_collided = noone;
			}
		}
		else
		{
			front_water_collided = noone;
		}

		if (front_water_collided = noone)
		{
			vsp += -10;
			hsp = 4 * spr_dir;
			sound_play(asset_get("sfx_jumpground"));
			
			spark = 0;
		}
	}
}


if (!spark && attack != AT_USPECIAL)
{
	// Air movement
	char_height = 80;
	air_max_speed       = 4.5;  		// 3    -  7
	air_accel           = 0.3;		// 0.2  -  0.4
	air_friction        = 0.05;		// 0.02 -  0.07
	max_fall            = 10;		// 6    -  11
	fast_fall           = 14;		// 11   -  16
	gravity_speed       = 0.4;		// 0.3  -  0.6

	
	visible = true;
	max_djumps          = 1;		// 0    -  3        the 0 is elliana because she has hover instead


}

if (spark)
{
	
	char_height = 80;
	air_max_speed       = 7;  		// 3    -  7
	air_accel           = 0.4;		// 0.2  -  0.4
	air_friction        = 0.02;		// 0.02 -  0.07
	max_fall            = 10;		// 6    -  11
	fast_fall           = 14;		// 11   -  16
	gravity_speed       = 0.6;		// 0.3  -  0.6

	can_jump = 0;
	can_attack = 0;
	can_strong = 0;
	can_ustrong = 0;
	can_special = 0;
	can_shield = 0;
	can_wall_jump = 0;
	max_djumps          = 0;		// 0    -  3        the 0 is elliana because she has hover instead


	for (var i = 0; i <= 49; i++) {
    move_cooldown[i] = 10;
	}
}


//COMEDIC FX

if (state == PS_PARRY)
{
	

	if (parry_timer = 0)
	{
		temp_fx = spawn_hit_fx(x,y+40,noclip);
		temp_fx.spr_dir = 1;
		sound_play(sound_get("glitch3"));
	}

	if (parry_timer = 13)
	{
		temp_fx = spawn_hit_fx(x,y+40,noclip);
		temp_fx.spr_dir = 1;
		sound_play(sound_get("glitch3"));
	}

	parry_timer++;
}
else
{
			parry_timer = 0;
}

if (state == PS_AIR_DODGE && spark = 1)
{
	

	if (airdodge_timer = 0)
	{
		sound_play(sound_get("shock4"));
	}

	airdodge_timer++;
}
else
{
	airdodge_timer = 0;
}

if (state == PS_ROLL_FORWARD || state == PS_ROLL_BACKWARD || state == PS_TECH_BACKWARD || state == PS_TECH_FORWARD )
{
	

	if (roll_timer = 0)
	{
		temp_fx = spawn_hit_fx(x,y-20,load);
		temp_fx.spr_dir = 1;
		sound_play(sound_get("glitch2"));
	}

	temp_fx.x = x;

	roll_timer++;
}
else
{
	roll_timer = 0;
}

//comedic walk

/*if (state = PS_WALK && cloned = 0)
{
	copy = instance_create(x, y, "oPlayer");
	cloned = 1;
}

if (copy != noone)
{
	with (copy)
	{
		death_timer++;
		hsp = 3 * other.spr_dir;
		sprite_index = sprite_get("trans1");
		image_index += 0.5;

		if (death_timer > 30)
		{
			
			other.copy = noone;
			other.cloned = 0;
			big_chungus = 1;
		}
	}
}*/

if (rechecking)
{
	rechecking_timer++;

	if (rechecking_timer > 3)
	{
		rechecking = 0;
		rechecking_timer = 0;
	}
}

//rechecking = 1;

#define is_attacking()

if ((state = PS_ATTACK_AIR || state = PS_ATTACK_GROUND))
{
	return true;
}
else
{
	return false;
}
