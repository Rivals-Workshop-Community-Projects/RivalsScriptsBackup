switch (attack)
{
	case AT_NSPECIAL:
	case AT_NSPECIAL_2:
	case AT_FSPECIAL:
	case AT_FSPECIAL_2:
	case AT_FSPECIAL_AIR:
	case AT_USPECIAL:
	case AT_USPECIAL_2:
		trigger_b_reverse();
	break;
}

if (motorbike == false)
{
	switch (attack)
	{
		//Hold Taunt down to keep dancing!
		case AT_TAUNT:
			if (!taunt_down)
			{
				window = 2;
				window_timer = 1;
			}
     	break;
     	//:O
     	case AT_EXTRA_3:
			can_move = false; //Prevents a bug with the respawn platform.
			//Allow Carol to remove the respawn platform in secret taunt.
			if (window == 1 && window_timer == 150 && respawn_taunt > 0)
			{
				invince_time = 0;
				respawn_taunt = 0;
				hsp = get_window_value(AT_EXTRA_3, 2, AG_WINDOW_HSPEED);
				vsp = get_window_value(AT_EXTRA_3, 2, AG_WINDOW_VSPEED);
			}
     	break;
		//Claw Combo
		case AT_JAB:
		case AT_FTILT:
		case AT_UTILT:
		case AT_DTILT:
			//Jab and Tilt Combo cancels
			//Mix up jab quotes so that it doesn't get tired and also break them up a bit.
			var	 choose_quote = random_func(16, 15, 1);
			
			switch (window)
			{
				case 1:
				case 4:
				case 7:
				if (window_timer == 1)
				{
					sound_stop(sound_get("sweet"));
					stopVoice();
					if (choose_quote <2)
					{
						if (voice == 1)
						{
							sound_stop(sound_get ("carol_jab_voice1"));
							sound_play(sound_get ("carol_jab_voice1"));
						}
					}
					else if (choose_quote >1 && choose_quote <4)
					{
						if (voice == 1)
						{
							sound_stop(sound_get ("carol_jab_voice2"));
							sound_play(sound_get ("carol_jab_voice2"));
						}
					}
					else if (choose_quote >3 && choose_quote <6)
					{
						if (voice == 1)
						{
							sound_stop(sound_get ("carol_jab_voice3"));
							sound_play(sound_get ("carol_jab_voice3"));
						}
					}
					else if (choose_quote >5 && choose_quote <8)
					{
						if (voice == 1)
						{
							sound_stop(sound_get ("carol_jab_voice4"));
							sound_play(sound_get ("carol_jab_voice4"));
						}
					}
					else if (choose_quote >7 && choose_quote <10)
					{
						if (voice == 1)
						{
							sound_stop(sound_get ("carol_jab_voice5"));
							sound_play(sound_get ("carol_jab_voice5"));
						}			
					}
					if (window != 1)
					{
						switch(attack)
						{
							case AT_FTILT:
							case AT_UTILT:
								spawn_base_dust(x, y, "walk");
							break;
							default:
							break;
						}
						
					}
					else
					{
						switch(attack)
						{
							case AT_UTHROW:
							case AT_DTHROW:
								spawn_base_dust(x, y, "dash");
								spawn_base_dust(x, y, "dash", -spr_dir);
							break;
							default:
							break;
						}
					}
				}
				if (window_timer == 3)
				{
					//sound_play(asset_get("sfx_swipe_weak1"));			
				}
				break;
				case 2:
					if (window_timer == 1)
					{
						switch(attack)
						{
							case AT_FTILT:
							case AT_UTILT:
								spawn_base_dust(x, y, "walk");
							break;
							case AT_FTHROW:
								spawn_base_dust(x, y, "dash");
								spawn_base_dust(x + 30 * spr_dir, y, "dash");
							break;
							default:
							break;
						}
					}
				break;
				case 3:
					can_jump = has_hit && window_timer >=4;
					can_special = has_hit && window_timer >=4;
					can_strong = has_hit && window_timer >=4;
					ClawCombo();
					if (right_down-left_down == - spr_dir && down_down-up_down == 0)
					{
						if (window_timer == 15)
						{
							set_hitbox_value(AT_JAB, 1, HG_TECHABLE, 1);
							set_hitbox_value(AT_FTILT, 1, HG_TECHABLE, 1);
							set_hitbox_value(AT_UTILT, 1, HG_TECHABLE, 1);
							set_hitbox_value(AT_DTILT, 1, HG_TECHABLE, 1);
							set_state(PS_IDLE);
			            }
					}
					else if (!can_attack && window_timer >= 4 && attack_pressed)
					{
						window = 4;
						window_timer = 0;
					}
					else if (window_timer == 15)
					{
						set_hitbox_value(AT_JAB, 1, HG_TECHABLE, 1);
						set_hitbox_value(AT_FTILT, 1, HG_TECHABLE, 1);
						set_hitbox_value(AT_UTILT, 1, HG_TECHABLE, 1);
						set_hitbox_value(AT_DTILT, 1, HG_TECHABLE, 1);
						set_state(PS_IDLE);
						attack_end();
					}
				break;
				case 6:
					can_jump = has_hit && window_timer >=4;
					can_special = has_hit && window_timer >=4;
					can_strong = has_hit && window_timer >=4;
					ClawCombo();
					if (!can_attack && window_timer >= 4 && attack_pressed && !(right_down-left_down == - spr_dir && down_down-up_down == 0 && !has_hit && !has_hit_player))
					{
						window = 7;
						window_timer = 0;
					}
					else if (window_timer == 15)
					{
						set_hitbox_value(AT_JAB, 1, HG_TECHABLE, 1);
						set_hitbox_value(AT_FTILT, 1, HG_TECHABLE, 1);
						set_hitbox_value(AT_UTILT, 1, HG_TECHABLE, 1);
						set_hitbox_value(AT_DTILT, 1, HG_TECHABLE, 1);
						set_state(PS_IDLE);
						attack_end();
					}
				break;
				case 9:
					if (window_timer == 15)
					{
						set_hitbox_value(AT_JAB, 1, HG_TECHABLE, 1);
						set_hitbox_value(AT_FTILT, 1, HG_TECHABLE, 1);
						set_hitbox_value(AT_UTILT, 1, HG_TECHABLE, 1);
						set_hitbox_value(AT_DTILT, 1, HG_TECHABLE, 1);
					}				
				break;
			}
			
			if (window == 9 && window_timer == 15 && attack == AT_DTILT)
			{
				set_state(PS_CROUCH);
			}
		break;
		//Roll
		case AT_DATTACK:
	     	//Stop Dash Attack on hit or if parried
			can_attack = (window > 2 ? has_hit : 0);
			can_jump = (window > 2 ? has_hit : 0);
			if (!has_hit)
			{
				if (has_rune("F"))
				{
					hsp = 9 * spr_dir;
				}
				else
				{
					hsp = 8 * spr_dir;
				}
			}
			else
			{
				hsp = 4 * spr_dir;
			}
			if (was_parried)
			{
				hsp = 0;
			}
		break;
		//Strong Kick
		case AT_FSTRONG:
			if (window == 3 && window_timer == 2)
			{
				sound_play(sound_get("jab1"))
			}
		break;
		//Splits Kick
		case AT_DSTRONG:
			if (window == 3 && window_timer == 4)
			{
				sound_play(sound_get("jab1"))
			}
		break;
		//Bubble Bounce
		case AT_DAIR:
			//Allow for move cancelling through, jump, special or shield
			can_shield = window == 2 && window_timer > 16;
			can_special = window > 1 && has_hit;
			can_attack = window > 1 && has_hit && !down_pressed && !down_down;
			can_jump = window > 1 && has_hit;
			
			/*if (window == 1)
			{
				vsp= clamp(vsp, 0, 1)
				/*if (window_timer == 10 && !hitpause)
				{
					create_hitbox(AT_DAIR, 1, x - 4 * spr_dir, y - 4)
				}*/
			//}
			if ((window == 2 || window == 4) && !hitpause)
			{
				switch (window_timer)
				{
					case 1:
					case 5:
					case 9:
					case 13:
					case 17:
						var smallspark = spawn_hit_fx(x, y-30 , sparkle);
						smallspark.depth = -100;
					break;
					default:
					break;
				}
			}
			//Check if bounce is in effect
			if (vsp == 18)
			{
				if (window == 2 && has_hit)
				{
					//If bounce off anything, move to window 3
					window =3;
					window_timer= 0;
				}
				if (was_parried)
				{
					destroy_hitboxes();
					attack_end();
					set_state(free? PS_PRATFALL: PS_PRATLAND)
				}
			}
			if (vsp == 0)
			{
				destroy_hitboxes();
			}
			if (!free)
			{
				if (window == 3 && window_timer == 3) spawn_base_dust(x, y, "jump");
				if (window == 3 && window_timer == 1) spawn_base_dust(x, y, "land");
			}
			if (((can_shield && (shield_pressed || shield_down)) 
			|| (can_jump && (jump_pressed || (tap_jump_pressed && can_tap_jump()))) 
			|| (can_attack && attack_pressed) || (can_special && special_pressed)) 
			&& (window < 5 || (window == 5 && window_timer < 6)))
			{
				//sound_play(asset_get("sfx_bubblepop"));
				//sound_play(asset_get("sfx_bubblepop"));
				sound_play(sound_get("bubble_popping"));
				var pop = spawn_hit_fx(x, y, bubble_pop);
				pop.depth = 29;
			}
			if (window == 5)
			{
				if (window_timer == 6 && !hitpause && has_hit)
				{
					//sound_play(asset_get("sfx_bubblepop"));
					//sound_play(asset_get("sfx_bubblepop"));
					sound_play(sound_get("bubble_popping"));
				}
				else if (window_timer == 8 && !hitpause && !has_hit)
				{
					//sound_play(asset_get("sfx_bubblepop"));
					//sound_play(asset_get("sfx_bubblepop"));
					sound_play(sound_get("bubble_popping"));			
				}
			}
		break;
		//High Kick
		case AT_UAIR:
			if (window == 1)
			{
				vsp = clamp(vsp, -2, 2)
				if (window_timer == 4 && voice == 1 && random_func_2(78, 3, 1) == 1)
				{
					stopVoice();
					sound_stop(sound_get ("carol_jab_voice4"));
					sound_play(sound_get ("carol_jab_voice4"));	
				}
			}
			if (window == 3)
			{
				set_window_value(AT_UAIR, 2, AG_WINDOW_VSPEED, 0);
				set_window_value(42, 2, AG_WINDOW_VSPEED, 0);
			}
		//Low Kick
		case AT_FAIR:
			can_move = window == 2? false: true;
			can_wall_jump = window >= 2;
		case AT_BAIR:
			can_jump = has_hit && window = 3 && window_timer >=3 && window_timer <=8;
			can_special = has_hit && window = 3 && window_timer >=3 && window_timer <=8;
			if (window == 1 && window_timer == window_end)
			{
				var make_quote = random_func_2(15, 12, 1);
				if (voice == 1)
				{
					if (make_quote < 2)
					{
						stopVoice();
						sound_stop(sound_get("carol_attack_voice1"));
						sound_play(sound_get("carol_attack_voice1"));
					}
					else if (make_quote <4)
					{
						stopVoice();
						sound_stop(sound_get("carol_attack_voice2"));
						sound_play(sound_get("carol_attack_voice2"));
					}
				}
			}
		break;
		//Wild Claw (Voice clip for Nair)
		case AT_NAIR:
			can_jump = has_hit && window = 3 && window_timer >=3 && window_timer <=8;
			if (voice == 1 && window == 1 && window_timer == 5)
			{
				var random_play = random_func_2(79, 4, 1);
				if (random_play == 1)
				{
					stopVoice();
					sound_stop(sound_get ("carol_up_special"));
					sound_play(sound_get ("carol_up_special"));
				}
				else if (random_play == 2)
				{
					stopVoice();
					sound_stop(sound_get ("carol_jab_voice2"));
					sound_play(sound_get ("carol_jab_voice2"));					
				}
			}
			/*if (window == 1  && window_timer == 5)
			{
				sound_play(asset_get("sfx_swipe_medium1"));
			}*/
		break;
		//Pounce
		case AT_USPECIAL:
			set_window_value(AT_UAIR, 2, AG_WINDOW_VSPEED, -6);
			set_window_value(42, 2, AG_WINDOW_VSPEED, -6);
			if (window == 1 && window_timer == 1 && !hitpause)
			{
				pounce = true;
				pounce_number++;
			}
			if (window == 1 && window_timer == get_window_value(attack, window, AG_WINDOW_SFX_FRAME) && !hitpause)
			{
				var random_pounce_voice = random_func_2(67, 3, 1);
				if (voice == 1 && random_pounce_voice == 1)
				{
					stopVoice();
					sound_stop(sound_get ("carol_pounce_voice"));
					sound_play(sound_get ("carol_pounce_voice"));
				}
			}
			if (window == 1)
			{
				if (left_pressed || left_down && spr_dir == 1 && !pounceChange)
				{
					spr_dir = -1;
					old_hsp = 0;
					hsp = -6;
					pounceChange = true;
				}
				if (right_pressed || right_down && spr_dir == -1 && !pounceChange)
				{
					spr_dir = 1;
					old_hsp = 0;
					hsp = 6;
					pounceChange = true;
				}
				vsp = special_down? -3: -1;
			}
			can_attack = has_hit && (window == 3 || (window == 2 && window_timer > 8));
			can_special = has_hit && !up_down && (window == 3 || (window == 2 && window_timer > 8));
			can_shield = window == 3 || (window == 2 && window_timer > 8);
			can_strong = has_hit && (window == 3 || (window == 2 && window_timer > 8));
			can_ustrong = has_hit && (window == 3 || (window == 2 && window_timer > 8));
			if (walljump_number < walljump_limit)
			{
				can_wall_jump = true;
				has_walljump = true;
			}
			if (hsp == 0 && place_meeting(x + 5 * spr_dir, y, asset_get("par_block")))
			{
				if (can_wall_jump && has_walljump && jump_down && walljump_number < walljump_limit)
				{
					spr_dir = -spr_dir;
					has_walljump = false;
					pounceChange = false;
					pounce = false;
					if (pounce_number = max_pounce)
					{
						move_cooldown[AT_USPECIAL] = 80;
					}
					set_state(PS_WALL_JUMP);
				}
			}
			/*if (!free)
			{
				hsp=0;
				old_hsp = 0;
				destroy_hitboxes();
				set_state(PS_LAND)
			}*/
			if (window == 2 && (window_timer == 25 || !free))
			{
				destroy_hitboxes();
				if (window_timer < 25)
				{
					window = 3;
					window_timer = 0;
				}
			}
			if (window == 3)
			{
				pounce = false;
				pounceChange = false;
				if (pounce_number = max_pounce)
				{
					move_cooldown[AT_USPECIAL] = 80;
				}
				if (window_timer == 9 && (has_hit || pounce_number != max_pounce))
				{
					set_state(free?PS_IDLE_AIR:PS_IDLE);
				}
			}
		break;
		//Getting on the bike
		case AT_DSPECIAL:
			if (window == 1 && window_timer == 1)
			{
				if (instance_exists(bike))
				{
					instance_destroy(bike);
				}
				//Spinning bike in the startup of the animation
				tsprite_index = -1;
				bsprite_index = sprite_get("bike_assembly");
				brotation=0;
				bimage_number=8;
				bimage_speed=0.5;
				bfront=true;
				bx=-40*spr_dir;
				by=-80;
				bsx=2;
				bsy=2;
				bshader = true;
				returnBike = false;
				//Voice line
				if (voice == 1)
				{
					stopVoice();
					sound_stop(sound_get ("go"));
					sound_play(sound_get ("go"));
				}
			}
			if (window == 1 && window_timer == 16)
			{
				//Remove the spinning bike
				tsprite_index = -1;
				bsprite_index = -1;
			}
			
			if (window == 2)
			{
				//Carol's attributes change on the bike, the following code ensures the bike handles properly
				motorbike = true;
				bike_stored = false;
			}
		break;
		case AT_DSPECIAL_2:
			if (window_timer == 18 && !hitpause)
			{
				if (instance_exists(bike))
				{
					instance_destroy(bike);
				}
				bike = instance_create(x, y, "obj_article2");
			}
		break;
		case 45:
	    	x = lerp(x, 430, 0.5);
			if (window == 1 && window_timer == 1)
			{
				spr_dir = 1;
			}
			if (window == 2) 
			{
				if (jump_pressed || attack_pressed || shield_pressed || taunt_pressed) 
				{
					window = 3	
					window_timer = 0;
				}
			}
		break;
		default:
		break;
	}
}
else if (motorbike == true)
{
	/*switch (prev_state)
	{
		case PS_DASH:
		case PS_DASH_START:
		case PS_DASH_STOP:
		case PS_DASH_TURN:
			bike_sp = dash_speed;
		break;
		case PS_WALK:
			bike_sp = walk_speed;
		break;
		default:
			bike_sp = 0;
		break;
	}*/
	if (window == 1 && window_timer == 1)
	{
		bike_sp = prev_hsp/2;
	}
	switch (attack)
	{
		//Taunt
		case AT_TAUNT_2:
			//If voice is on, this taunt has a voice line
			if (state_timer == 1 && window == 1 && voice == 1)
			{
				stopVoice();
				sound_stop(sound_get ("feel_my_power"));
				sound_play(sound_get ("feel_my_power"));
			}
		break;
		//High Kick (Bike)
		case 42:
			if (window == 1)
			{
				vsp = clamp(vsp, -2, 2)
				if (window_timer == 4 && voice == 1 && random_func_2(78, 3, 1) == 1)
				{
					stopVoice();
					sound_stop(sound_get ("carol_jab_voice4"));
					sound_play(sound_get ("carol_jab_voice4"));	
				}
			}
			if (window == 3)
			{
				set_window_value(AT_UAIR, 2, AG_WINDOW_VSPEED, 0);
				set_window_value(42, 2, AG_WINDOW_VSPEED, 0);
			}		
		break;
		//Nitro Boost
		case AT_FSPECIAL_2:
			if(floor(state_timer/2) == state_timer /2 && (window == 2 || (window == 1 && window_timer > 14)))
			{
				spawn_base_dust(x, y, "dash_start");
				spawn_base_dust(x + 30 *spr_dir, y, "dash_start");
			}
			if (window == 1 && window_timer == 1)
			{
				hsp = 0;
			}
			if (window == 1 && window_timer == 15 && !hitpause)
			{
				//Set Cooldown
				if has_rune("L")
				{
					move_cooldown[AT_FSPECIAL_2] = 100;
				}
				else
				{
					move_cooldown[AT_FSPECIAL_2] = 300;
				}
				//Voice
				if (voice == 1)
				{
					stopVoice();
					sound_stop(sound_get ("go2"));
					sound_play(sound_get ("go2"));
				}
				//Nitro effect at start of move
				if (hsp > - 11 && hsp < 11)
				{
					hsp = 11 * spr_dir;
				}
				var nitro = spawn_hit_fx(x - 40 * spr_dir, y -32, nitro_boost);
				nitro.depth = -100;
			}
			
			if (((window == 1 && window_timer >=15) ||(window ==2 && window_timer <5)) && !free)
			{
				hsp = spr_dir * 0.5 + (hsp * 1.1);
			}
			
			if (window == 2)
			{
				if (floor(window_timer/4) = window_timer/4)
				{
					fuel--;
				}
				vsp = clamp(vsp, -2, 4);
				if (!hitpause)
				{
					can_attack = window_timer > 6 || has_hit;
					can_shield = window_timer > 6 || has_hit;
					can_strong = window_timer > 6 || has_hit;
					can_ustrong = window_timer > 6 || has_hit;
					can_jump = window_timer > 6 || has_hit;
				}
				if (walljump_number < walljump_limit)
				{
					can_wall_jump = true;
					has_walljump = true;
				}
				if (floor(window_timer/3) == window_timer /3)
				{
					//Effects to enhance move	
					var smallspark = spawn_hit_fx(x - 40 * spr_dir, y-32 , sparkle);
					smallspark.depth = -100;
				}
				if (hsp == 0 && place_meeting(x + 5 * spr_dir, y - 40, asset_get("par_block")))
				{
					if (can_wall_jump && has_walljump && jump_down && walljump_number < walljump_limit)
					{
						spr_dir = -spr_dir;
						has_walljump = false;
						set_state(PS_WALL_JUMP);
					}
				}
				if (was_parried)
				{
					hsp = 0;
					window = 3;
					window_timer = 0;
				}
				if (!hitpause && hsp = 0)
				{
					set_state(PS_DASH);
					attack_end();
				}
			}
			if (window == 3 && window_timer == 6 && !hitpause && was_parried)
			{
				set_state(free? PS_PRATFALL: PS_PRATLAND);
			}
		break;
		//Rising Wild Claw
		case AT_USPECIAL_2:
			//Voice clip
			if (window == 1 && window_timer == 1)
			{
				if (voice == 1)
				{
					var random_play_2 = random_func_2 (78, 3, 1);
					if (random_play_2 == 1)
					{
						stopVoice();
						sound_stop(sound_get ("carol_up_special"));
						sound_play(sound_get ("carol_up_special"));
					}
				}
			}
			if (window == 1 && window_timer == 6 && !free)
			{
				spawn_base_dust(x, y, "jump");
			}
			if (window == 3 || (window == 2 && window_timer >= 4))
			{
				can_wall_jump = true;
			}
		break;
		
		//This code handles getting off the bike
		case AT_DSPECIAL_2:
		case AT_EXTRA_2:
			if (window == 1)
			{
				//End all bike sound effects
				sound_stop(sound_get("motorbike_move"));
				sound_stop(sound_get("motorbike_idle"));
				sound_stop(sound_get("motorbike_stop"));
				//Create the spinning bike
				tsprite_index = -1;
				if (attack == AT_EXTRA_2)
				{
					bsprite_index = sprite_get("bike_dessembly");
					brotation=0;
					bimage_number=8;
					bimage_speed=0.5;
					bfront=true;
					bx=-40*spr_dir;
					by=-79;
					bsx=2;
					bsy=2;
					bshader = true;
				}
				else
				{
					bsprite_index = -1;
				}
				//Reset values back to default
				motorbike = false;

				wait_length = 60;
				wait_sprite = sprite_get("wait");
				
				//This code resolves a glitch whereby the meter gets stuck when you do a Wild Kick while running out of fuel
				
				if (multikick_energy < 200 && fuel == 0)
				{
					feline_power = false;
					move_cooldown[AT_NSPECIAL]= 200;
					move_cooldown[AT_NSPECIAL_2]= 200;
					sound_stop(sound_get ("wild_kick"));
				}
				//Abyss Runes reset, just in case!
				if has_rune("B")
				{
					walk_accel = 0.3;
					walk_turn_time = 5;
					initial_dash_time = 8;
					initial_dash_speed = 7.75;
					dash_turn_time = 8;
					dash_turn_accel = 1.5;
				}
				
				if has_rune("I")
				{
					jump_speed = 15;
				}
				
				if has_rune("O")
				{
				 	jump_speed = 16;
					walk_accel = 0.8;
					initial_dash_time = 9;
					initial_dash_speed = 8;
					dash_turn_time = 8;
					dash_turn_accel = 1.5;
				}
			}
		break;

		//Dattack2// Bike Roll
		case 3:
			//If use the dash attack, remove the hitbox on the front of the bike while moving and also add cooldown to Dash
			attack_end(AT_EXTRA_1);
			bike_hit = false;
			/*can_attack = (window > 2 ? has_hit : 0);
			if (can_attack && attack_pressed)
			{
				bike_sp = dash_speed;
			}*/
			if (!has_hit)
			{
				if (has_rune("F"))
				{
					hsp = 9 * spr_dir;
				}
				else
				{
					hsp = 8 * spr_dir;
				}
			}
			else
			{
				hsp = 4 * spr_dir;
			}
			if (was_parried)
			{
				hsp = 0;
			}
		break;

		//Abandon Bike
		case AT_DSPECIAL_AIR:
			//We're dropping the bike from midair, so should reset values back to default
			sound_stop(sound_get("motorbike_move"));
			sound_stop(sound_get("motorbike_idle"));
			sound_stop(sound_get("motorbike_stop"));
			set_hitbox_value(AT_DSPECIAL_AIR, 1, HG_DAMAGE, 20 - fuel_remaining / 3);
			//Voice clip
			if (window == 1 && window_timer == 1)
			{
				sound_play(sound_get("motorbike_throw2"));
			}
			
			//The following code is resetting values back to default as declared in init.
			motorbike = false;
			bikeReady = 0;
			fuel = 0;
		break;
		
		//Wheel Sawblade
		case AT_DTHROW:
			if (window == 1 && window_timer == 3)
			{
				spawn_base_dust(x, y, "dash_start");
				spawn_base_dust(x + 30 * spr_dir, y, "jump");
			}
		//Claw Combo
		case AT_NTHROW:
			if ((window == 3 || window == 6) && has_hit && window_timer >=4)
			{
				can_attack = !joy_pad_idle;
			}
			if (window == 3 && joy_pad_idle && window_timer >=4 && attack_pressed)
			{
				window = 4;
				window_timer = 0;
			}
			if (window == 6 && joy_pad_idle && window_timer >=4 && attack_pressed)
			{
				window = 7;
				window_timer = 0;
			}
			if ((window == 3 || window == 6|| window == 9) && was_parried && window_timer == 15)
			{
				set_state(PS_IDLE);
			}
		case AT_UTHROW:
	        if (right_down and spr_dir == 1) or (left_down and spr_dir == -1)
	        {
	            hsp = bike_sp;
	            can_move = true;
				if (bike_sp >= dash_speed)
				{
					if(floor(state_timer/4) == state_timer /4)
					{
						spawn_base_dust(x, y, "dash_start");
						spawn_base_dust(x + 30 * spr_dir, y, "dash_start");
					}	
				}
				else if (bike_sp == walk_speed)
				{
					if(floor(state_timer/4) == state_timer /4)
					{
						spawn_base_dust(x, y, "dash");
						spawn_base_dust(x + 30 * spr_dir, y, "dash");
					}
				}
			}
		
        break;
		//Claw Combo
        case AT_FTHROW:
		//Rev Swipe
        case AT_FSTRONG_2:
		//Bike Handstand
        case AT_USTRONG_2:
        	if (strong_charge == 0 && window < 3)
        	{
	            hsp = was_parried? 0: bike_sp;
        	}
        	if (strong_charge == 0 && window == 3 && attack !=AT_FSTRONG_2)
        	{
	            hsp = was_parried? 0: bike_sp;
        	}
			if (attack != AT_FSTRONG_2 && window = 4 && has_hit)
			{
				hsp = 0;
				bike_sp = 0;
				old_hsp = 0;
			}
            can_move = true;
            if (bike_sp = dash_speed/2 && window < 4)
			{
				if(floor(state_timer/4) == state_timer /4)
				{
					spawn_base_dust(x, y, "dash_start");
					spawn_base_dust(x + 30 * spr_dir, y, "dash_start");
				}	
			}
			else if (bike_sp == walk_speed/2)
			{
				if(floor(state_timer/4) == state_timer /4)
				{
					spawn_base_dust(x, y, "dash");
					spawn_base_dust(x + 30 * spr_dir, y, "dash");
				}
			}
		break;
		//Bike Spin
        case AT_DSTRONG_2:
			if (strong_charge == 0 && window < 4)
			{
				hsp = bike_sp;
			}
			if (window = 4 && has_hit)
			{
				hsp = 0;
				bike_sp = 0;
				old_hsp = 0;
			}
            can_move = true;
            if (bike_sp = dash_speed)
			{
				if(floor(state_timer/4) == state_timer /4)
				{
					spawn_base_dust(x, y, "dash_start");
					spawn_base_dust(x + 30 * spr_dir, y, "dash_start");
				}	
			}
			else if (bike_sp == walk_speed)
			{
				if(floor(state_timer/4) == state_timer /4)
				{
					spawn_base_dust(x, y, "dash");
					spawn_base_dust(x + 30 * spr_dir, y, "dash");
				}
			}
		break;
		default:
		break;
	}
}

switch (attack)
{
	//Voice clip for Strong
	case AT_DSTRONG:
	case AT_USTRONG:
	case AT_FSTRONG:
	case AT_DSTRONG_2:
	case AT_USTRONG_2:
	case AT_FSTRONG_2:
		if ((window == 3 && window_timer == 1 && attack != AT_DSTRONG) || window == 3 && window_timer == 4 && attack == AT_DSTRONG)
		{
			var make_quote = random_func(15, 12, 1);
			if (voice == 1)
			{
				if (make_quote < 4)
				{
					stopVoice();
					sound_stop(sound_get("carol_attack_voice1"));
					sound_play(sound_get("carol_attack_voice1"));
				}
				else if (make_quote > 3 && make_quote < 8)
				{
					stopVoice();
					sound_stop(sound_get("carol_attack_voice3"));
					sound_play(sound_get("carol_attack_voice3"));				
				}
				else if (make_quote > 7)
				{
					stopVoice();
					sound_stop(sound_get("carol_attack_voice2"));
					sound_play(sound_get("carol_attack_voice2"));				
				}
			}
		}
		if (window == 2 && window_timer == 1)
		{
			switch (attack)
			{
				case AT_FSTRONG_2:
				case AT_USTRONG_2:
					spawn_base_dust (x, y, "dash");
				break;
				default:
				break;
			}
		}
		
		if (window == 2 && attack == AT_DSTRONG_2)
		{
			if(floor(state_timer/4) == state_timer /4)
			{
				spawn_base_dust(x, y, "land");
			}	
		}
		if (window == 3 && window_timer == 1 && attack == AT_DSTRONG)
		{
			spawn_base_dust (x, y, "jump");
		}
		if (window == 4 && window_timer == 1)
		{
			switch (attack)
			{
				case AT_FSTRONG:
					spawn_base_dust (x, y, "dattack");
				break;
				case AT_USTRONG:
					spawn_base_dust (x, y, "jump");
				break;
				case AT_DSTRONG:
					spawn_base_dust(x + 20 * spr_dir, y, "dattack", -spr_dir, 0);
					spawn_base_dust(x - 20 * spr_dir, y, "dattack", spr_dir, 0);			
				break;
				default:
				break;
			}
		}
		if (window == 5 && (window_timer == 18 && has_hit || window_timer == 23) && attack == AT_DSTRONG)
		{
			set_state(PS_CROUCH);
		}
		
		if (window == 6 && window_timer == 1 && attack = AT_USTRONG)
		{
			spawn_base_dust (x, y, "land");		
		}
	break;
	case AT_NTHROW:
        if (right_down-left_down == - spr_dir && down_down-up_down == 0 && !has_hit && !has_hit_player)
        {
            var win_time = get_window_value(attack, window, AG_WINDOW_LENGTH);
            set_window_value(attack, window, AG_WINDOW_CANCEL_FRAME, win_time);
            if (get_window_value(attack, window, AG_WINDOW_CANCEL_TYPE) != 0  && window_timer == win_time)
            {
                set_state(PS_IDLE);
                was_parried = false;
            }
        }
        else
        {
            reset_window_value(attack, window, AG_WINDOW_CANCEL_FRAME);   
        }
	case AT_FTHROW:
	case AT_UTHROW:
		var	choose_quote = random_func(16, 15, 1);
		switch (window)
		{
			case 1:
			case 4:
			case 7:
				if (window_timer == get_window_value(attack, window, AG_WINDOW_SFX_FRAME) && !hitpause)
				{
					if (choose_quote <2)
					{
						if (voice == 1)
						{
							stopVoice();
							sound_stop(sound_get ("carol_jab_voice1"));
							sound_play(sound_get ("carol_jab_voice1"));
						}
					}
					else if (choose_quote >1 && choose_quote <4)
					{
						if (voice == 1)
						{
							stopVoice();
							sound_stop(sound_get ("carol_jab_voice2"));
							sound_play(sound_get ("carol_jab_voice2"));
						}
					}
					else if (choose_quote >3 && choose_quote <6)
					{
						if (voice == 1)
						{
							stopVoice();
							sound_stop(sound_get ("carol_jab_voice3"));
							sound_play(sound_get ("carol_jab_voice3"));
						}
					}
					else if (choose_quote >5 && choose_quote <8)
					{
						if (voice == 1)
						{
							stopVoice();
							sound_stop(sound_get ("carol_jab_voice4"));
							sound_play(sound_get ("carol_jab_voice4"));
						}
					}
					else if (choose_quote >7 && choose_quote <10)
					{
						if (voice == 1)
						{
							stopVoice();
							sound_stop(sound_get ("carol_jab_voice5"));
							sound_play(sound_get ("carol_jab_voice5"));
						}			
					}
				}
			break;
		}
	break;
	case AT_DTHROW:
		if (window == 1 && window_timer == get_window_value(attack, window, AG_WINDOW_SFX_FRAME) && !hitpause)
		{
			var make_quote = random_func(15, 8, 1);
			if (voice == 1)
			{
				if (make_quote < 4)
				{
					stopVoice();
					sound_stop(sound_get("carol_attack_voice1"));
					sound_play(sound_get("carol_attack_voice1"));
				}
			}
		}
	break;
	//Bike Swing
	case 43:
	//Bike Hammer
	case AT_EXTRA_1:
		if (window == 1 && window_timer == get_window_value(attack, window, AG_WINDOW_SFX_FRAME) && !hitpause)
		{
			var make_quote = random_func(15, 12, 1);
			if (voice == 1)
			{
				stopVoice();
				if (make_quote < 4)
				{
					sound_stop(sound_get("carol_attack_voice1"));
					sound_play(sound_get("carol_attack_voice1"));
				}
				else if (make_quote > 3 && make_quote < 8)
				{
					sound_stop(sound_get("carol_attack_voice3"));
					sound_play(sound_get("carol_attack_voice3"));				
				}
				else if (make_quote > 7)
				{
					sound_stop(sound_get("carol_attack_voice2"));
					sound_play(sound_get("carol_attack_voice2"));				
				}
			}	
		}
	break;
	//Wild Kick
	case AT_NSPECIAL:
	case AT_NSPECIAL_2:
		trigger_b_reverse();
		soft_armor =window < 3 && !has_hit? 6:0;
		if (attack == AT_NSPECIAL)
		{
		 	tsprite_index=sprite_get("tail_idle");
			trotation=0;
			timage_number=12;
			timage_speed=0.1;
			tfront=false;
			tx= -42*spr_dir;
			ty=-66;
			tsx=2;
			tsy=2;
		 	bsprite_index=-1;
		}
		//Voice line
		if (window == 1 && window_timer == 1)
		{
			reset_hitbox_value(AT_NSPECIAL, 1, HG_HITBOX_GROUP);
			reset_hitbox_value(AT_NSPECIAL_2, 1, HG_HITBOX_GROUP);
			feline_power = true;
			start_kick_value = multikick_energy
			if (voice == 1)
			{
				stopVoice();
				sound_stop(sound_get ("carol_attack_voice2"));
				sound_play(sound_get ("carol_attack_voice2"));
			}
		}
		//Move has super armour, restricts movement, prevents fast falling but is shield and jump cancellable
		can_move=false;
		can_fast_fall=false;

		//Increase Kick Time to make the meter drain during the attack
		if (window == 2 && !hitpause)
		{
			feline_power = true;
			can_jump=(has_hit_player && window < 3);
			kickTime++;
			//multikick Recharge meter
			if (kickTime > 0)
			{
				multikick_energy = start_kick_value - (kickTime * 2.5);
				//print_debug(start_kick_value);
				remainingCharge = multikick_energy;
			}
			if window_timer > 1 && window_timer < 24 && floor(window_timer/5) == window_timer/5 && !hitpause 
			{
				attack_end();
				switch (attack)
				{
					case AT_NSPECIAL:
						if (kickTime >= 75)
						{
							create_hitbox(AT_NSPECIAL, 2, x + 36 * spr_dir, y - 38)
						}
						else
						{
							create_hitbox(AT_NSPECIAL, 1, x + 36 * spr_dir, y - 38)
						}
					break;
					case AT_NSPECIAL_2:
						if (kickTime >=75)
						{
							create_hitbox(AT_NSPECIAL_2, 2, x + 62 * spr_dir, y - 52)
						}
						else
						{
							create_hitbox(AT_NSPECIAL_2, 1, x + 62 * spr_dir, y - 52)
						}
					break;
				}
			}
			//Set Cooldown if cancelled by shield and also trigger meter
			if (((!special_down || was_parried) && state_timer > 25)|| (multikick_energy<=0))
			{
				window = 3;
				window_timer = 0;
				feline_power = false;
				multikick_energy = remainingCharge;
				//move_cooldown[AT_NSPECIAL]= 200 - remainingCharge;
				//move_cooldown[AT_NSPECIAL_2]= 200 - remainingCharge;
				sound_stop(sound_get ("wild_kick"));
			}
		}

		//Set Cooldown if cancelled by jump and also trigger meter
		if (can_jump && (jump_pressed || (tap_jump_pressed && can_tap_jump())))
		{
			feline_power = false;
			multikick_energy = remainingCharge;
			//move_cooldown[AT_NSPECIAL]= 200 - remainingCharge;
			//move_cooldown[AT_NSPECIAL_2]= 200 - remainingCharge;
			sound_stop(sound_get("wild_kick"));
		}
		
		//Remove super armour at end of attack
		if (window == 3)
		{
			super_armor=false;
		}
		break;
		
	//Jump Disc/Bike Throw
	case AT_FSPECIAL:
	case AT_FSPECIAL_AIR:
		can_fast_fall = false;
		//Since this move provides great recovery, the ability to wall jump should be restricted
		
		//Clamp Speed
		if (window < 3)
		{
			vsp = clamp(vsp, -2, 2);
		}
		
		if (window == 1 && window_timer == 1)
		{
			bsprite_index = sprite_get("disc_arrow");
			bimage_number = 1;
			bx= 0 ;
			by= -36;
			bsx = 1;
			bsy = 1;
			bshader = false;
			bikeWarp = false;
		}
	
		if (window = 1)
		{
			var ddir = spr_dir > 0 ? 0 : 180;
			//Move the boost arrow around
			if (joy_pad_idle) brotation=0;
			else brotation=joy_dir + ddir;
			if (window_timer == 18)
			{
				if (joy_pad_idle) dst=spr_dir>0 ? 0 : 180;
				else dst=round(joy_dir/45)*45;
			}
		}
		
		if (window == 2 && motorbike == true)
		{
			motorbike = false;
			bike_stored = true;
		}
		
		//Voice line
		if (window == 1 && window_timer == get_window_value(attack, window, AG_WINDOW_SFX_FRAME) && !hitpause)
		{
			bsprite_index = -1;
			if (voice == 1)
			{
				stopVoice();
				sound_stop(sound_get ("carol_jab_voice2"));
				sound_play(sound_get ("carol_jab_voice2"));
			}
		}
		
		//You can throw the disc normally, or press down Special to zoom towards it
		if (window == 3 && window_timer == 1)
		{
			if ((shield_down || shield_pressed) && bike_stored)
			{
				bikeWarp = true;
				window = 4;
			}
			else if ((special_down || special_pressed) && !shield_down)
			{
				bikeWarp = false;
				window = 4;
			}
		}

		
		if (window == 3 && window_timer > 1 && window_timer < 24)
		{
			set_hitbox_value(AT_FSPECIAL, 1, HG_PROJECTILE_WALL_BEHAVIOR, 1);
			set_hitbox_value(AT_FSPECIAL, 1, HG_PROJECTILE_GROUND_BEHAVIOR, 1);
			set_hitbox_value(AT_FSPECIAL_AIR, 1, HG_PROJECTILE_WALL_BEHAVIOR, 1);
			set_hitbox_value(AT_FSPECIAL_AIR, 1, HG_PROJECTILE_GROUND_BEHAVIOR, 1);
		}
		//If you simply throw the disc without zooming towards it, this attack ends the move and prevents it moving to window 3	
		if (window == 3 && window_timer == 27)
		{
			moveDisc = true;
			move_cooldown[AT_FSPECIAL] = 120;
			move_cooldown[AT_FSPECIAL_AIR] = 120;
			set_hitbox_value(AT_FSPECIAL, 1, HG_PROJECTILE_WALL_BEHAVIOR, 0);
			set_hitbox_value(AT_FSPECIAL, 1, HG_PROJECTILE_GROUND_BEHAVIOR, 0);
			set_hitbox_value(AT_FSPECIAL, 1, HG_ANGLE, 45);
			set_hitbox_value(AT_FSPECIAL_AIR, 1, HG_PROJECTILE_WALL_BEHAVIOR, 0);
			set_hitbox_value(AT_FSPECIAL_AIR, 1, HG_PROJECTILE_GROUND_BEHAVIOR, 0);
			set_hitbox_value(AT_FSPECIAL_AIR, 1, HG_ANGLE, 45);
			destroy_hitboxes();
			attack_end();
			set_state(free?PS_IDLE_AIR:PS_IDLE);
		}
		//If the move if shield cancelled, set cooldown, this can be used to cancel vertical momentum from the jump if needed
	
		//Effect generation to make the move look more flashy (and like the FP2 Demo that it comes from)
		if (window == 4)
		{
			can_move = false
			moveDisc = false;
			switch (window_timer)
			{
				case 1:
					if (!bikeWarp) sound_play(sound_get("pounce"));
					if (dst >=30 && dst <= 150 && !has_rune("N"))
					{
						walljump_number= walljump_number == 0? 4: 5;
					}
					if (voice == 1)
					{
						stopVoice();
						sound_stop(sound_get ("go2"));
						sound_play(sound_get ("go2"));
					}
		
					var disc_direction = point_direction(x, y,Fspecial_positionX, Fspecial_positionY);
					var disc_distance = point_distance(x, y, Fspecial_positionX, Fspecial_positionY);
					hsp = lengthdir_x (disc_distance, disc_direction) / 19;
					vsp = lengthdir_y(disc_distance, disc_direction) / 19;
			
					if (!free && y < Fspecial_positionY)
					{
						destroy_hitboxes();
						attack_end();
					}
				case 5:
				case 9:
				case 13:
				case 17:
					var smallspark = spawn_hit_fx(x - 20 * spr_dir, y-30 , sparkle);
					smallspark.depth = -100;
				break;
				default:
				break;
			}
			//This code allows Carol to jump off enemies and immediately bounce up if she hits a wall
			if (hsp = 0)
			{
				window = 5;
				sound_stop(sound_get ("spin_jump"));
				sound_play(sound_get ("spin_jump"));
			}
		}

		if (window = 5)
		{
			hsp = clamp (hsp, -2, 2);
			if (floor(window_timer)/14 == window_timer/14)
			{
				white_flash_timer = 3;
			}
			switch (window_timer)
			{
				case 1:
					//restore ability to move
					vsp = 0;
					can_move = true;
					if has_rune("D")
					{
						vsp = -9;
					}
					else if has_rune("O")
					{
						vsp = -11;
					}
					else
					{
						vsp = -6;
					}
					var contact = spawn_hit_fx(Fspecial_positionX, Fspecial_positionY, hit_proj);
					contact.depth = -20;
					spawn_hit_fx(Fspecial_positionX + 20 * spr_dir, Fspecial_positionY + 20, disc_hit);
					if (bikeWarp && motorbike == false)
					{
						sound_play(sound_get("motorbike_start"));
						bike_stored = false;
						motorbike = true;
					}
				break;
				case 2:
				case 9:
				case 16:
				case 23:
				case 30:
					var sparkly1 = spawn_base_dust(x - 10, y - 30, "fastfall");
					sparkly1.depth = -100;
					var sparkly2 = spawn_base_dust(x, y - 50, "fastfall");
					sparkly2.depth = -100;
					var sparkly3 =spawn_base_dust(x + 10, y - 40, "fastfall");
					sparkly3.depth = -100;
				break;
				//Set Cooldown at the very end of the move
				case 32:
					moveDisc = true;
					move_cooldown[AT_FSPECIAL] = 120;
					move_cooldown[AT_FSPECIAL_AIR] = 120;
					if (!has_hit)
					{
						set_state(PS_PRATFALL);
					}
				break;
			}
			
			if has_rune ("D")
			{
				vsp += 0.3;
			}
			else if has_rune ("O")
			{
				vsp += 0.5;
			}
			else
			{
				vsp += 0.2;
			}
		}
	break;
	//Final Smash
	case 49:
		can_move = false;
		can_fast_fall = false;
		if (window < 6)
		{
			hsp = 0;
			old_hsp = 0;
			vsp = 0;
			old_vsp = 0;
		}
		//Voice line
		if (window == 1 && window_timer == 4 && !hitpause)
		{
			bsprite_index = -1;
			sound_play(sound_get("gear"));
			if (voice == 1)
			{
				stopVoice();
				sound_stop(sound_get ("dramatic_music_voice"));
				sound_play(sound_get ("dramatic_music_voice"));
			}
		}
		if (window == 2 && window_timer == 1)
		{
			sound_play(sound_get("motorbike_idle"));
			bsprite_index = sprite_get("disc_arrow");
			bimage_number = 1;
			bx= 0 ;
			by= -36;
			bsx = 1;
			bsy = 1;
			bshader = false;
			bikeWarp = false;

			if (motorbike = true)
			{
				motorbike = false;
				bikeReady = 0;
				wait_length = 60;
				wait_sprite = sprite_get("wait");
				//Abyss Runes reset, just in case!
				if has_rune("B")
				{
					walk_accel = 0.3;
					walk_turn_time = 5;
					initial_dash_time = 8;
					initial_dash_speed = 7.75;
					dash_turn_time = 8;
					dash_turn_accel = 1.5;
				}
				
				if has_rune("I")
				{
					jump_speed = 15;
				}
					
				if has_rune("O")
				{
				 	jump_speed = 16;
					walk_accel = 0.8;
					initial_dash_time = 9;
					initial_dash_speed = 8;
					dash_turn_time = 8;
					dash_turn_accel = 1.5;
				}
			}
				
		}
		if (window = 2)
		{
			var ddir = spr_dir > 0 ? 0 : 180;
			//Move the boost arrow around
			if (joy_pad_idle) brotation=0;
			else brotation=joy_dir + ddir;
			if (floor(window_timer/5) == window_timer /5) sound_play(sound_get("final_smash_charge"))
			if (window_timer == 101) sound_play(sound_get("motorbike_idle"));
			
			if (window_timer > 140)
			{
				if (floor(window_timer/4) == window_timer/4 && !hitpause)
				{
					white_flash_timer = 10;
				}
			}
			if (window_timer == 180)
			{
				sound_stop(sound_get("motorbike_idle"));
				sound_stop(sound_get("final_smash_charge"))
				if (joy_pad_idle) dst=spr_dir>0 ? 0 : 180;
				else dst=round(joy_dir/45)*45;
				bsprite_index = -1;
				final_smash_bike = create_hitbox(49, 1, x + 36 * spr_dir, y -80)
			}
		}
		if (window == 4 && window_timer == 25 && final_smash_bike.times_hit = 0)
		{
			final_smash_player = noone;
			destroy_hitboxes();
			attack_end();
			bike_stored = true;
			set_state(free?PS_IDLE_AIR:PS_IDLE);
		}
		if (window == 5)
		{
			tsprite_index=sprite_get("tail_idle");
			trotation=0;
			timage_number=12;
			timage_speed=0.25;
			tfront=false;
			tx=-45*spr_dir;
			ty=-76;
			tsx=2;
			tsy=2;
		}
		if (window == 5 && instance_exists(final_smash_bike))
		{
			if (final_smash_bike.times_hit >= 6)
			{
				tsprite_index = -1;
				window = 6;
				window_timer = 0;
			}
			if (!instance_exists(final_smash_bike))
			{
				final_smash_player = noone;
				destroy_hitboxes();
				attack_end();
				set_state(free?PS_IDLE_AIR:PS_IDLE);
			}
		}
		if (window == 6)
		{
			can_move = false
			if (spr_dir == 1)
			{
				x = lerp(x, final_smash_player.x - 40, 0.15)
				y = lerp(y, final_smash_player.y , 0.15)
			}
			else
			{
				x = lerp(x, final_smash_player.x + 40, 0.15)
				y = lerp(y, final_smash_player.y, 0.15)
			}
			switch (window_timer)
			{
				case 1:
					sound_play(sound_get("pounce"));
					if (voice == 1)
					{
						stopVoice();
						sound_stop(sound_get ("go2"));
						sound_play(sound_get ("go2"));
					}

				case 5:
				case 9:
				case 13:
				case 17:
					var smallspark = spawn_hit_fx(x - 20 * spr_dir, y-30 , sparkle);
					smallspark.depth = -100;
				break;
				default:
				break;
			}
		}
		if (window == 8 && window_timer == window_end)
		{
			bike_stored = true;
			final_smash_player = noone;
		}
	break;
	//Intro
	case 2:
		var time = get_gameplay_time();
		if (window <= 4) hud_offset = lerp(hud_offset, 2000, 0.1); // put hud away
		if (window == 4 && window_timer == 33 && time <= 125) state = PS_SPAWN; //correct state to spawn if needed
	break;
	default:
	break;
}

#define stopVoice

sound_stop(sound_get("aw_yeah"));
sound_stop(sound_get("feel_my_power"));
sound_stop(sound_get("hold_on_lilac"));
sound_stop(sound_get("im_bored"));
sound_stop(sound_get("parry"));
sound_stop(sound_get("pow_pow"));
sound_stop(sound_get("that_stupid_panda"));
sound_stop(sound_get("try_and_catch_me"));
sound_stop(sound_get("what_you_doing"));
sound_stop(sound_get("why_are_we_stopping"));
sound_stop(sound_get("wittle_wiwac"));

#define spawn_base_dust // originally by supersonic
{
    // spawn_base_dust(x, y, name)
    // spawn_base_dust(x, y, name, ?dir, ?angle, ?window, ?window_timer)

    // This function spawns base cast dusts. Names can be found below.
    var dlen; //dust_length value
    var dfx; //dust_fx value
    var dfg; //fg_sprite value
    var dust_color = 0;
    var x = argument[0], y = argument[1], name = argument[2];
var dir = argument_count > 3 ? argument[3] : 0;
var angle = argument_count > 4 ? argument[4] : 0;
var win = argument_count > 5 ? argument[5] : -10;
var win_time = argument_count > 6 ? argument[6] : 0;

    if (!hitpause && (win > 0 && win == window && win_time == window_timer || win == -10) ) //spawns it whenever we want for 1 frame
    {
        switch (name) 
        {
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
			case "fastfall": dlen = 44; dfx = 17; dfg = 2657; dust_color = 1; break;
            //
            //bar-kun additions (note: idk how fg_sprite work)
            //
            case "dattack": dlen = 22; dfx = 12; dfg = 0; break;
            case "b_bounce_bg": dlen = 10; dfx = 7; dfg = 0; break;
            case "b_bounce_fg": dlen = 14; dfx = 8; dfg = 0; break;
            case "s_bounce_bg": dlen = 18; dfx = 7; dfg = 0; break;
            case "s_bounce_fg": dlen = 19; dfx = 8; dfg = 0; break;
            case "doublejump_small": 
            case "djump_small": dlen = 21; dfx = 16; dfg = 0; break;
        }
        var newdust = spawn_dust_fx(x, y, asset_get("empty_sprite"), dlen);
        newdust.x = floor(x);
        newdust.y = floor(y);
        newdust.dust_fx = dfx; //set the fx id
        if (dfg != -1) newdust.fg_sprite = dfg; //set the foreground sprite

        newdust.dust_color = dust_color; //set the dust color

        if (dir != 0) newdust.spr_dir = dir; //set the spr_dir, if dir is 0 it will take the player's spr_dir
        else newdust.spr_dir = spr_dir;

        newdust.draw_angle = angle; //sets the angle of the dust sprite
        return newdust;
    }
}

#define ClawCombo

//In order to prevent infinite combos, a counter is used to limit the amount of times you can change the current jab
var maxCombo = 2;
if has_rune ("K")
{
	maxCombo = 3;
}
if (comboCounter < maxCombo )
{
	if ((window == 3 || window == 6) && window_timer >= 4 && !(right_down-left_down == - spr_dir))
	{
				
		//If a direction is pressed when attacking, cancel to the specificed jab
		if (attack == AT_JAB)
		{
			can_attack=(has_hit && !joy_pad_idle);			
		}
		else if (attack == AT_FTILT)
		{
			can_attack=(has_hit && !right_pressed && !right_down && !left_pressed && !left_down);			
		}
		else if (attack == AT_UTILT)
		{
			can_attack=(has_hit && !up_pressed && !up_down);			
		}
		else if (attack == AT_DTILT)
		{
			can_attack=(has_hit && !down_pressed && !down_down);			
		}
		//This code is here to help cancel the multi hit tilts into each other for comboing
		if (can_attack)
		{
			if (attack != AT_JAB)
			{
				if (!right_pressed && !left_pressed && !right_down && !left_down && !up_pressed
				&& !up_down && !down_pressed && !down_down && attack_pressed)	
				{
					comboCounter++;
					set_hitbox_value(AT_JAB, 1, HG_TECHABLE, 0);
					set_attack(AT_JAB);
				}
			}
			if (attack != AT_FTILT)
			{
				if (spr_dir == 1 && (right_pressed || right_down) && attack_pressed)
				{
					comboCounter++;
					set_hitbox_value(AT_FTILT, 1, HG_TECHABLE, 0);
					set_attack(AT_FTILT);
				}
				else if (spr_dir == -1 && (left_pressed || left_down) && attack_pressed)
				{
					comboCounter++;
					set_hitbox_value(AT_FTILT, 1, HG_TECHABLE, 0);
					set_attack(AT_FTILT);
				}
			}
			if (attack !=AT_UTILT)
			{
				if ((up_pressed || up_down) && attack_pressed )
				{
					comboCounter++;
					set_hitbox_value(AT_UTILT, 1, HG_TECHABLE, 0);
					set_attack(AT_UTILT);
				}
			}
			if (attack !=AT_DTILT)
			{
				if ((down_pressed || down_down ) && attack_pressed )
				{
					comboCounter++;
					set_hitbox_value(AT_DTILT, 1, HG_TECHABLE, 0);
					set_attack(AT_DTILT);
				}
			}
		}
	}
}
//Add small cooldown if attack plays out fully, for balancing reasons
else if (comboCounter == 2)
{
	if (window == 9 && window_timer == 1)
	{
		if (voice == 1)
		{
			stopVoice();
			var finisher_quote = random_func(17, 15, 1);
			if (finisher_quote < 8)
			{
				sound_stop(sound_get ("pow_pow"));
				sound_play(sound_get ("pow_pow"));
			}
			else if (finisher_quote >7)
			{
				sound_stop(sound_get("sweet"));
				sound_play(sound_get("sweet"));
			}
		}
		move_cooldown[AT_JAB] = 10;
		move_cooldown[AT_FTILT] = 10;
		move_cooldown[AT_UTILT] = 10;
		move_cooldown[AT_DTILT] = 10;
	}
}