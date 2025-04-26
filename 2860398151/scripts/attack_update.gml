//	B - Reversals
switch(attack)
{
	case AT_NSPECIAL:
	case AT_FSPECIAL:
	case AT_DSPECIAL:
	case AT_USPECIAL:
		trigger_b_reverse();
		break;
}

//======================================================================================================================

if (attack == AT_DTILT && !hitpause)
{
	can_fast_fall = false;
	
	if (window == 1)
	{
		hsp = 1.2 * spr_dir * window_timer;
		
		if (window_timer == 1)
		{
			reset_attack_value(AT_DTILT, AG_NUM_WINDOWS);
			set_attack_value(AT_DTILT, AG_OFF_LEDGE, 0);
		}
    }
	
	if (window == 2)
	{
		if (energy_meter > 9)
		{
			if (attack_pressed && !free)
			{
				set_attack_value(AT_DTILT, AG_NUM_WINDOWS, 7);
				set_attack_value(AT_DTILT, AG_OFF_LEDGE, 1);
				
				window 			= 4;
				window_timer 	= 0;
			}
		}
		
		if (energy_meter < 10)
		{
			if (attack_pressed && !free)
			{
				attack = AT_EXTRA_3;
				hurtboxID.sprite_index = get_attack_value(attack, AG_HURTBOX_SPRITE);
				
				window 			= 1;
				window_timer 	= 0;
			}
		}
    }
	
	if (window == 4)
	{
		if (window_timer == 1)
		{
			energy_meter -= 10;
		}
	}
	
	if (window == 5)
	{
		if (window_timer == 1)
		{
			vsp = -3.5;
		}
	}
}

if (attack == AT_DATTACK && !hitpause)
{	
	//	This is the part where mr or mrs projectile go flipside
	if (window == 2 && window_timer > 2)
    {
		with (pHitBox)
		{    
			if (player != other.player && type == 2) 
			{  
				if (place_meeting(x+58*spr_dir, y, other)) 
				{				
					//	Check which Article has been detected
					reflect_check = noone;
					if (reflect_check == noone){reflect_check = instance_place(x,y,obj_article1);}
					if (reflect_check == noone){reflect_check = instance_place(x,y,obj_article2);}
					if (reflect_check == noone){reflect_check = instance_place(x,y,obj_article3);}
					if (reflect_check == noone){reflect_check = instance_place(x,y,obj_article_platform);}
					if (reflect_check == noone){reflect_check = instance_place(x,y,obj_article_solid);}	
						
					//	Reflect Logic for Player
					other.invincible 		= 1;
					other.invince_time 		= 4;
					other.sfx_time 			= 1;
					spawn_hit_fx(x+0*spr_dir, y, 303);					

					//	Reflect Logic for speed and flip
					hsp 					*= -1.25;
					vsp 					*= -1;
					spr_dir 				*= -1;
								
					//	Reflect Logic for dmg, kb control etc etc
					damage 					*= 1.25;
					kb_value 				*= 1.25;
					hitbox_timer 			= 0;					
								
					can_hit_self 			= true;						
					can_hit[other.player] 	= false;
						
					//	Reflect Logic for Articles
					if (reflect_check != noone)
					{
						if (reflect_check.player == player)
						{
							reflect_check.hsp 		*= -1;	
							reflect_check.spr_dir 	= other.spr_dir;;
							reflect_check 			= noone;
						}
					}
				}			
			}
		}
		
		//	Sound Effect for Reflect Success
		if (sfx_time == 1)
		{
			sound_play(sound_get("sfx_reflect_success"));
			sfx_time = 0;
		}
	}
}

if (attack == AT_FSTRONG && !hitpause)
{
	if (window == 3 && window_timer == 5)
	{
		if (!has_hit)
		{
			sound_play(asset_get("sfx_ell_strong_attack_explosion"), false, noone, 0.90);
		}
	}
}

if (attack == AT_USTRONG && !hitpause)
{
	if (window == 3)
	{
		sound_stop(sound_get("Aura Chargin"));	
		sound_stop(asset_get("sfx_upbcharge"));	
	}
}

if (attack == AT_DSTRONG && !hitpause)
{	
	if (window == 1)
	{
		dstrong_charge = (strong_charge / 18);
		dstrong_charge = dstrong_charge * -1.05;
	}
	if (window == 2)
	{
		sound_stop(sound_get("Aura Chargin"));	

		if (window_timer == 1)
		{
			set_window_value(AT_DSTRONG, 3, AG_WINDOW_VSPEED, -8.5 + dstrong_charge);
		}
	}
	
	if (window == 4)
	{
		dstrong_charge = 0;
		vsp = vsp + 0.125;
		
		set_window_value(AT_DSTRONG, 3, AG_WINDOW_VSPEED, -8.5);
		
		if (!free)
		{
			set_state(PS_LANDING_LAG);
		}
	}
}

if (attack == AT_UAIR && !hitpause)
{
	if (has_hit_player)
	{
		set_attack_value(AT_UAIR, AG_LANDING_LAG, 6);
	}

	else if (!has_hit_player)
	{
		set_attack_value(AT_UAIR, AG_LANDING_LAG, 7);
	}
}

if (attack == AT_DAIR && !hitpause)
{	
	can_wall_jump = true;
	can_fast_fall = false;
	
	if (window == 1)
	{
		dairdj = djumps;
		
		if (has_airdodge == true)
		{
			dairad = 1;
		} 
		
		else if (has_airdodge == false)
		{
			dairad = 0;
		}

		if (window_timer == 12)
		{
			sound_play(asset_get("sfx_swipe_medium1"), false, noone, 0.80);
			sound_play(asset_get("sfx_swipe_medium2"), false, noone, 0.80);
		}
	}
	
	if (window == 3)
	{
		can_jump 			= true;
		can_shield 			= true;
		
		if (!free)
		{
			window 			= 4;
			window_timer 	= 0;
			
			sound_play(asset_get("sfx_land_heavy"));
			sound_play(asset_get("sfx_blow_heavy1"), false, noone, 0.40);

			array_push(phone_dust_query, [x, y, "land", spr_dir]);
		}
	}
	
	if (window == 4)
	{
		destroy_hitboxes();
		
		if (window_timer == 1)
		{
			vsp = clamp(vsp, -100, 4);
			hsp = clamp(hsp, -2, 2);
		}
	}
	
	if (window == 5)
	{
		can_jump 	= true;
		can_attack 	= true;
		can_special = true;
	
		//	Double jump or not
		if (dairdj == 0)
		{
			djumps = 0;
		} 
		
		else 
		{
			djumps = 1;
		}
		
		if (dairad == 1)
		{
			has_airdodge = true;
		} 
		
		else if (dairad == 0)
		{
			has_airdodge = false;
		}
	}	
}

//======================================================================================================================

if (attack == AT_NSPECIAL && !hitpause)
{	
	can_fast_fall = false;
	
	if (window == 1)
	{			
		if (energy_meter > 9 && window_timer < 2) 
		{
			if (special_down && !free)
			{			
				attack = AT_NSPECIAL_2;
				hurtboxID.sprite_index = get_attack_value(attack, AG_HURTBOX_SPRITE);
				
				window 			= 1;
				window_timer 	= 0;
			}
		}
		
		if (special_pressed)
		{			
			attack = AT_NSPECIAL;
			hurtboxID.sprite_index = get_attack_value(attack, AG_HURTBOX_SPRITE);
		}
	}
	
	if (window == 2 && window_timer == 1)
	{
		energy_meter -= 5;
	}
		
	if (window == 3)
	{		
		move_cooldown[AT_NSPECIAL] 	= 25;
	}
}

if (attack == AT_NSPECIAL_AIR && !hitpause)
{	
	can_fast_fall = false;
	
	if (window == 1)
	{		
		vsp = clamp(vsp, -1.5, -1.5);
		
		if (energy_meter < 4)
		{
			attack = AT_EXTRA_3;
			hurtboxID.sprite_index = get_attack_value(attack, AG_HURTBOX_SPRITE);
			
			window 			= 1;
			window_timer 	= 0;
		}
		
		if (energy_meter > 9) 
		{
			if (special_down && window_timer < 2)
			{
				attack = AT_NSPECIAL_2;
				hurtboxID.sprite_index = get_attack_value(attack, AG_HURTBOX_SPRITE);
				
				window 			= 1;
				window_timer 	= 0;
			}
		}
		
		if (energy_meter > 4) 
		{
			if (special_pressed)
			{
				attack = AT_NSPECIAL_AIR;
				hurtboxID.sprite_index = get_attack_value(attack, AG_HURTBOX_SPRITE);
			}
		}
	}
	
	if (window == 2 && window_timer == 1)
	{
		energy_meter -= 5;
	}
	
	if (window == 3)
	{		
		move_cooldown[AT_NSPECIAL_AIR] 	= 25;
	}
}

if (attack == AT_NSPECIAL_2 && !hitpause)
{	
	can_fast_fall = false;
	
	if (free && window > 0 && window < 4)
	{
		vsp = clamp(vsp, -2, 3);
		
		if (left_down)
		hsp = clamp(hsp, -1, -0.5);
		
		if (right_down)
		hsp = clamp(hsp, 1, 1.5);
	}
	
	if (window == 2)
	{
		if (window_timer == 1)
		{
			energy_meter -= 10;
		}
	
		if (window_timer == 8)
		{
			sound_play(sound_get("sfx_auracharged"));
		}
	}
	
	if (window == 3 && window_timer == 9)
	{
		sound_play(sound_get("sfx_auracharged"));
	}
}

if (attack == AT_FSPECIAL && !hitpause)
{	
	can_move 		= false;
	can_wall_jump 	= true;
	can_fast_fall 	= false;
	
	if (window == 1)
	{		
		if (energy_meter > 24)
		{		
			if (special_down && window_timer < 2)
			{
				attack = AT_FSPECIAL_2;
				hurtboxID.sprite_index = get_attack_value(attack, AG_HURTBOX_SPRITE);
				
				window 			= 1;
				window_timer 	= 0;
			}
		}
		
		if (special_pressed)
		{
			attack = AT_FSPECIAL;
			hurtboxID.sprite_index = get_attack_value(attack, AG_HURTBOX_SPRITE);
		}

		if (!hitpause && !direction_flipper) 
		{
			if (joy_pad_idle == false) 
			{   
				if (joy_dir >= 344 || joy_dir <= 16) 
				{
					spr_dir = 1;
				}			
				
				else if (joy_dir >= 164 && joy_dir <= 196) 
				{
					spr_dir = -1;
				} 
			}
		}		
	}
	
	if (window == 2 && window_timer == 1)
	{
		energy_meter -= 10;
	}
		
	if (window == 3)
	{		
		if (!free)
		{
			set_state(PS_LANDING_LAG);
		}
		
		move_cooldown[AT_FSPECIAL] 	= 25;
	}
}

if (attack == AT_FSPECIAL_2 && !hitpause)
{	
	can_move 		= false;
	can_wall_jump 	= false;
	can_fast_fall 	= false;
	fall_through 	= true;
	
	//	For the funny angles
	var fire_ang;
	
	//	To Pratfall or not
	if (free) 
	{
		set_window_value(AT_FSPECIAL_2, 3, AG_WINDOW_TYPE, 7);
	} 
	
	else 
	{
		set_window_value(AT_FSPECIAL_2, 3, AG_WINDOW_TYPE, 1);
    }
	
	if (window == 1)
	{
		vsp = clamp(vsp, -3, -3);
		
		//	Reset Zone
		if (window_timer == 1)
		{
			sprite_change_offset("fspecial2", 208, 102);
			
			reset_hitbox_value(AT_FSPECIAL_2, 1, HG_HITBOX_Y);
			reset_hitbox_value(AT_FSPECIAL_2, 1, HG_HITBOX_Y);
		}
	}
	
	if (window > 1 && window < 3)
	{
        //	This is where Kodiak crashes into a wall but in style
		if (place_meeting(x+10*spr_dir, y-30, asset_get("par_block")))
		{
            sprite_change_offset("fspecial2", 208, 102);
			
			hsp 			= 0;
			vsp 			= 0;
			
			destroy_hitboxes();
			
			set_state(PS_ATTACK_AIR);
			set_attack(AT_EXTRA_2);
			
			window 			= 1;
			window_timer 	= 0;
           
            spawn_hit_fx(x + 20*spr_dir, y - 30, 305);
            sound_play(asset_get("sfx_blow_medium3"), false, noone, 1, 0.9 + random_func(1, 3, true)/20);
        }
    }
    
	//	Welcome to comedy central
    if (window == 2)
	{				
		if (window_timer == 1)  
		{      
			sprite_change_offset("fspecial2", 208, 68);
			
			set_hitbox_value(AT_FSPECIAL_2, 1, HG_HITBOX_Y, -5);
			set_hitbox_value(AT_FSPECIAL_2, 2, HG_HITBOX_Y, -5);
			
			energy_meter -= 25;
			
			if (spr_dir == -1)
			{
				fire_ang = 180;
			}
			
			else if (spr_dir == 1)
			{
				fire_ang = 0;
			}
			
			if (joy_pad_idle == false) 
			{
				fire_ang = joy_dir;
			}
			
			set_window_value(AT_FSPECIAL_2, 2, AG_WINDOW_HSPEED, (16 * cos(degtorad(fire_ang))) * spr_dir);
			set_window_value(AT_FSPECIAL_2, 2, AG_WINDOW_VSPEED, (-12 * sin(degtorad(fire_ang))));
			
			if (spr_dir == -1)
			{
				spr_angle = fire_ang - 180;
			}
			
			else if (spr_dir == 1)
			{
				spr_angle = fire_ang - 0;
			}
		}
		
		if (window_timer > 13)  
		{      
			sprite_change_offset("fspecial2", 208, 86);
		}
		
		if (window_timer > 1) 
		{
			if (!free)
			{
				hsp = 0;
				set_state(PS_PRATLAND);
				
				sprite_change_offset("fspecial2", 208, 102);
			}			
		}
	}
	
	//	Clean up
	if (window == 3)
	{
		if (!free)
		{
			hsp = 0;
			set_state(PS_PRATLAND);
		}	
		
		spr_angle = 0;
		
		sprite_change_offset("fspecial2", 208, 102);
		
		can_wall_jump 	= true;
	}
}

//	Wall Smack
if (attack == AT_EXTRA_2 && !hitpause)
{	
	can_move 		= false;
	can_wall_jump 	= false;
	can_fast_fall 	= false;
	can_jump 		= false;
	
	hsp 			= 0;
	vsp 			= 0;
	
	spr_angle 		= 90 * spr_dir;
	
	sprite_change_offset("fspecial2_landing", 34, 64);
	
	sound_stop(sound_get("sfx_auracharged"));
	sound_stop(sound_get("Side Special held"));
	
	if (window == 1 || window == 2)
	{
		can_jump 	= true;
		can_move 	= true;
	}
	
	if (window == 3)
	{
		spr_angle 	= 0 * spr_dir;
		sprite_change_offset("fspecial2_landing", 64, 84);
	}
}

if (attack == AT_USPECIAL && !hitpause)
{	
	can_move 		= false;
	can_wall_jump 	= true;
	can_fast_fall 	= false;
	
	if (window == 1)
	{
		hsp = 0;
		vsp = 0;
		
		if (window_timer == 1)
		{
			reset_window_value(AT_USPECIAL, 4, AG_WINDOW_TYPE);
		}
		
		if (energy_meter > 49) 
		{
			if (special_down && window_timer < 2)
			{
				attack = AT_USPECIAL_2;
				hurtboxID.sprite_index = get_attack_value(attack, AG_HURTBOX_SPRITE);
				
				window 			= 1;
				window_timer 	= 0;
			}
		}
		
		if (special_pressed)
		{
			attack = AT_USPECIAL;
			hurtboxID.sprite_index = get_attack_value(attack, AG_HURTBOX_SPRITE);
		}
	}
	
	if (window == 2)
	{
		if (window_timer == 1)
		{
			energy_meter -= 25;
		}	

		if (window_timer == 4)
		{
			vsp = -16.5;
		}		
	}

	if (window == 3 && window_timer > 2)
	{
		can_move = true;
	}
	
	if (window == 4)
	{
		can_move = true;
		
		move_cooldown[AT_USPECIAL] = 9999;
	}	
}

if (attack == AT_USPECIAL_2 && !hitpause)
{	
	can_move 		= true;
	can_wall_jump 	= true;
	can_fast_fall 	= false;
	
	if (window == 1)
	{
		hsp = 0;
		vsp = 0;
		
		can_move 	= false;
	}
	
	if (window == 2)
	{
		if (window_timer == 1)
		{
			energy_meter -= 50;
		}
		
		if (window_timer == 4)
		{
			vsp = -13;
		}
	}
	
	if (window == 3)
	{		
		if (window_timer == 2)
		{
			var bear = random_func(0, 3, true);		
			switch(bear) 
			{
				case 0:
				sound_play(sound_get("Alt Special Bear 1"), false, noone, 2);
				break;
				
				case 1:
				sound_play(sound_get("Alt Special Bear 2"), false, noone, 2);
				break;
					
				case 2:
				sound_play(sound_get("Alt Special Bear 3"), false, noone, 2);
				break;		
			}	
		}
	}
	
	if (window == 4)
	{
		vsp = clamp(vsp, -5, -5);		
	}
}

if (attack == AT_DSPECIAL && !hitpause)
{	
	can_move 		= false;
	can_wall_jump 	= true;
	can_fast_fall 	= false;
	
	if (free) 
	{
		set_window_value(AT_DSPECIAL, 4, AG_WINDOW_TYPE, 7);
	} 
	
	else 
	{
		set_window_value(AT_DSPECIAL, 4, AG_WINDOW_TYPE, 1);
    }
	
	if (free && window > 4 && window < 11)
	{
		vsp = clamp(vsp, -2, 2);
	}
	
	if (window == 1)
	{
		hsp = 0;
		vsp = 0;
		
		if (window_timer == 1)
		{
			reset_attack_value(AT_DSPECIAL, AG_NUM_WINDOWS);	
		}
		
		if (energy_meter > 49)
		{		
			if (special_down && window_timer < 2)
			{
				attack = AT_DSPECIAL_2;
				hurtboxID.sprite_index = get_attack_value(attack, AG_HURTBOX_SPRITE);
				
				window 			= 1;
				window_timer 	= 0;
			}
		}
		
		if (special_pressed)
		{
			attack = AT_DSPECIAL;
			hurtboxID.sprite_index = get_attack_value(attack, AG_HURTBOX_SPRITE);
		}
	}	
	
	if (window == 2)
	{
		hsp = 2.8 * spr_dir * window_timer;
		
		if (window_timer == 1 && !hitpause)
		{
			energy_meter -= 25;
		}
	}
	
	if (window > 4 && window < 10 && has_hit_player && hit_player_obj.state_cat == SC_HITSTUN)
	{
		hit_player_obj.x += floor((x + 40*spr_dir - hit_player_obj.x)/4)
		hit_player_obj.y += floor((y - 4 - hit_player_obj.y)/4)
	}
	
	if (window == 4)
	{
		if (free)
		{
			vsp = clamp(vsp, -2, 2);
		}
	}
	
	if (window == 4 || window == 11)
	{
		move_cooldown[AT_DSPECIAL] 	= 33;
	}
}

if (attack == AT_DSPECIAL_2 && !hitpause)
{	
	can_move 		= false;
	can_wall_jump 	= true;
	can_fast_fall 	= false;
	
	if (free && window > 2 && window < 8)
	{
		vsp = clamp(vsp, -2, 2.5);
	}
	
	if (window == 1)
	{
		hsp = 0.15 * spr_dir * window_timer;
		vsp = 0;
		
		soft_armor = 8;
		
		if (window_timer == 1)
		{
			energy_meter -= 50;
		}
	}
	
	if (window == 2)
	{
		hsp = 0.45 * spr_dir * window_timer;
		vsp = 0;
	
		if (window_timer == 11)
		{
			var bear2 = random_func(0, 3, true);		
			switch(bear2) 
			{
				case 0:
				sound_play(sound_get("Alt Special Bear 1"), false, noone, 2);
				break;
				
				case 1:
				sound_play(sound_get("Alt Special Bear 2"), false, noone, 2);
				break;
					
				case 2:
				sound_play(sound_get("Alt Special Bear 3"), false, noone, 2);
				break;		
			}	
		}	
	}
	
	if (window == 3)
	{
		soft_armor = 0;
	}
	
	//	Grab Command Centre
	if (window > 1 && window < 4 && has_hit_player && hit_player_obj.state_cat == SC_HITSTUN)
	{
		hit_player_obj.x += floor((x + 50*spr_dir - hit_player_obj.x)/6)
		hit_player_obj.y += floor((y - 8 - hit_player_obj.y)/6)
	}
	
	if (window == 4 || window == 5)
	{		
		if (has_hit_player)
		{			
			grabbed_player_obj.x = lerp(grabbed_player_obj.x, x + 64 * spr_dir, 0.5);
			grabbed_player_obj.y = lerp(grabbed_player_obj.y, y - 12, 0.5);
		}
	}
	
	if (window == 6)
	{
		if (window_timer == 1)
		{
			if (!has_hit)
			{
				sound_play(asset_get("sfx_ell_strong_attack_explosion"), false, noone, 0.90);
			}
		}
	}
	
	if (window == 7)
	{
		if (free)
		{
			vsp = clamp(vsp, -2, 2);
		}
	}
	
	if (window == 8 && window_timer == phone_window_end)
	{
		if (!free)
		{
			set_state(PS_PRATLAND);
		}
		
		if (free)
		{
			set_state(PS_PRATFALL);
		}
	}
}

//	Out of juice, bruce
if (attack == AT_EXTRA_3 && !hitpause)
{	
	can_wall_jump 	= true;
	can_fast_fall 	= false;

	if (free)
	{
		set_window_value(AT_EXTRA_3, 3, AG_WINDOW_TYPE, 7);
	}

	if (!free)
	{
		set_window_value(AT_EXTRA_3, 3, AG_WINDOW_TYPE, 1);
	}

	if (window == 1)
	{
		if (window_timer == 1)
		{
			if (free)
			{
				vsp = -12;
			}

			var kodiOW = random_func(0, 3, true);		
			switch(kodiOW) 
			{
				case 0:
				set_window_value(AT_EXTRA_3, 2, AG_WINDOW_SFX, sound_get("Kodiak Pain 1"));
				break;
				
				case 1:
				set_window_value(AT_EXTRA_3, 2, AG_WINDOW_SFX, sound_get("Kodiak Pain 2"));
				break;
					
				case 2:
				set_window_value(AT_EXTRA_3, 2, AG_WINDOW_SFX, sound_get("Kodiak Pain 3"));
				break;		
			}				
		}
		
		if (window_timer > 1 && window_timer < 4) 
		{
			take_damage( player, player, 1 );
		}	
	}
}

//======================================================================================================================
//	Taunt(s)

if (attack == AT_TAUNT_2 && !hitpause) 
{
	if (attack_pressed) or (special_pressed) 
	{
		if (window == 2)
		{			
			window 			= 3;
			window_timer 	= 0;				
		}
	}
}

if (attack == AT_EXTRA_1) 
{
	taunt_time++;
	
	if (taunt_time == 2 && !hitstop && !hitpause)
	{
		suppress_stage_music(0, 0.5);
		
		sound_play(sound_get("Dance Jingle"), true, noone, 1.25);
	}
	
	if (attack_pressed) or (special_pressed) 
	{
		if (window == 2)
		{			
			window 			= 3;
			window_timer 	= 0;				
		}
	}
	
	if (window == 3)
	{
		sound_stop(sound_get("Dance Jingle"));
		taunt_time 			= 0;
	}
}

//======================================================================================================================
//	DUST TO DUST HAHAHAHAHAHAHAHAHA
//	What did you expect? I've been repeating the same joke with 4 different characters at this point...

switch(attack)
{	
	case AT_JAB:
	case AT_FTILT:
	case AT_DTILT:
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
		if window == 2 && window_timer == phone_window_end{
			array_push(phone_dust_query, [x, y, "dash_start", spr_dir]);
		}
		break;
	
	case AT_USTRONG:
		if window == 2 && window_timer == phone_window_end{
			array_push(phone_dust_query, [x, y, "dash_start", spr_dir]);
			array_push(phone_dust_query, [x, y, "dash_start", -spr_dir]);
		}
		break;	
}

//======================================================================================================================

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