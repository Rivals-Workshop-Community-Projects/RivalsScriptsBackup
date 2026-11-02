// Attack Update


//B - Reversals
if (attack == AT_NSPECIAL || attack == AT_FSPECIAL || attack == AT_DSPECIAL || attack == AT_USPECIAL){
    trigger_b_reverse();
}

// // Debug Effect Tester
// if (attack == AT_JAB && window == 1 && window_timer == 1)
// {
// 	// 205 207 208
// 	spawn_hit_fx( x + 100, y - 50, effecttester)
// 	print_debug(effecttester);
// 	effecttester++;
// }
// if (attack == AT_DTILT && window == 1 && window_timer == 1)
// {
// 	// 205 207 208
// 	spawn_hit_fx( x + 100, y - 50, effecttester)
// 	print_debug(effecttester);
// 	effecttester--;
// }if (attack == AT_NSPECIAL && window == 1 && window_timer == 1)
// {
// 	// 205 207 208
// 	spawn_hit_fx( x + 100, y - 50, effecttester)
// 	print_debug(effecttester);
// 	effecttester += 10;
// }
		


switch (attack)
{
	case AT_EXTRA_1: // Wallclimb
	{
		if (spr_dir)
		{
			if((!up_down && !jump_down) || !(place_meeting(x-1,y-30,asset_get("par_block"))  ))
			{
				chicken_climb = 0;
				state = PS_WALL_JUMP;
				sound_play(sound_get("sfx_jump"));
			}
		}
		else
		{
			if((!up_down && !jump_down) || !(place_meeting(x+1,y-30,asset_get("par_block"))  ))
			{
				chicken_climb = 0;
				state = PS_WALL_JUMP;
				sound_play(sound_get("sfx_jump"));
			}
		}
		if (up_down && special_down)
		{
			set_attack(AT_USPECIAL);
		}
		hsp = 0;
		if vsp > 0
		{
			vsp = 0;
		}
		
		knight_climb = 0;
		if (chicken_climb)
		{
			knight_climb = 1;
		}
		
		if (taunt_pressed && canchicken_sfx)
		{
			sound_play( sound_get( "chicken" ) );
			canchicken_sfx = 0;
		}
	break;
	}
	
	case AT_TAUNT:
		if (window == 1 && window_timer == 1 && !can_taunt_dance)
		{
			if (down_down && !up_down)
			{
				// Different Taunt while holding down.
				can_taunt_dance = 1;
				switch (get_player_color(player))
				{
				case 12:
					sound_play( sound_get( "music_BlackKnife" ));
				break;
				default:
					sound_play( sound_get( "music_AndNowForTodaysSponsors" ));
				}
				set_window_value(AT_TAUNT, 1, AG_WINDOW_HAS_SFX, 0);
				set_window_value(AT_TAUNT, 1, AG_WINDOW_TYPE, 9);
				set_attack_value(AT_TAUNT, AG_SPRITE, sprite_get("taunt_down"));
				set_window_value(AT_TAUNT, 1, AG_WINDOW_LENGTH, 48);
				set_window_value(AT_TAUNT, 1, AG_WINDOW_ANIM_FRAMES, 8);
			}
			else
			{
				reset_attack_value(AT_TAUNT, AG_SPRITE);
				reset_window_value(AT_TAUNT, 1, AG_WINDOW_TYPE);
				reset_window_value(AT_TAUNT, 1, AG_WINDOW_HAS_SFX);
				reset_window_value(AT_TAUNT, 1, AG_WINDOW_LENGTH);
				reset_window_value(AT_TAUNT, 1, AG_WINDOW_ANIM_FRAMES);
			
				if (random_func(0, 11, 1) == 3)
				{
					set_window_value(AT_TAUNT, 1, AG_WINDOW_SFX, sound_get("sfx_dialup"));
				}
				else
				{
					// bluh....
					reset_window_value(AT_TAUNT, 1, AG_WINDOW_SFX);
				}
			}
		}
		
		suppress_stage_music(!can_taunt_dance, 1);
		
		if (!taunt_down && can_taunt_dance)
		{
			can_taunt_dance = 0;
    		attack_end()
    		set_state(PS_IDLE)
    		sound_stop( sound_get( "music_AndNowForTodaysSponsors" ) );
    		sound_stop( sound_get( "music_BlackKnife" ) );
    	}
	break;

	case AT_USTRONG:
		dirt_timer++
		if (!(dirt_timer % 10) && window == 1)
		{
			if spr_dir
			{
				dirteffect = spawn_hit_fx(x + 10 + random_func(0, 15, 1), y+65, digupdirt)
			}
			else
			{
				dirteffect = spawn_hit_fx(x - 20 + random_func(0, 15, 1), y+65, digupdirt)
			}
			dirteffect.grav = .20;
			dirteffect.vsp = -4;
			dirteffect.depth = depth -1;
			if random_func(0,2,1)
			{
				dirteffect.hsp = (random_func(0, 10, 1) * .1);
			}
			else
			{
				dirteffect.hsp = ((random_func(0, 10, 1) * .1) * -1);
			}
		}
		if (window == 2 && window_timer == 19)
		{
			dirt_timer = 0;
			reset_hitbox_value(AT_USTRONG, 1, HG_BASE_HITPAUSE);
			reset_hitbox_value(AT_USTRONG, 1, HG_HITPAUSE_SCALING);
			reset_hitbox_value(AT_USTRONG, 1, HG_EXTRA_CAMERA_SHAKE);
			reset_hitbox_value(AT_USTRONG, 1, HG_DAMAGE);
			reset_hitbox_value(AT_USTRONG, 1, HG_BASE_KNOCKBACK);
			reset_hitbox_value(AT_USTRONG, 1, HG_BASE_HITPAUSE);
			reset_hitbox_value(AT_USTRONG, 1, HG_ANGLE);
			
			
			reset_hitbox_value(AT_USTRONG, 1, HG_PROJECTILE_GRAVITY);
			reset_hitbox_value(AT_USTRONG, 1, HG_EFFECT);
			
			reset_hitbox_value(AT_USTRONG, 1, HG_VISUAL_EFFECT);
			reset_hitbox_value(AT_USTRONG, 1, HG_PROJECTILE_DESTROY_EFFECT);
			reset_window_value(AT_USTRONG, 2, AG_WINDOW_SFX);
			reset_hitbox_value(AT_USTRONG, 1, HG_HIT_SFX);
			move_cooldown[AT_USTRONG] = 23;
			digup = random_func(0, 15, 1);
			if digup == digrepeat
			{
				digup = 0;
			}
			if (digup == 6 && random_func(0,6,1))
			{
				digup = 0;
			}

			
			if(runeM && (random_func(0, 4, 1) == 3) && digup != 9 && digup != 7 && digup != 6)
			{
				if random_func(0, 3, 1) == 1
				{
					digup = 9;	
				}
				else
				{
					digup = 7;
				}
				if (digup == 10 ||  digup == 2)
				{
					digup = 0;
				}
			}
		}
		
		// RANDOM BULLSHIT GO!!!!!!!!!
	    switch (digup)
		{
			case 10:// Snowball
				digrepeat = 10;
				switch(random_func(0,8,1))
				{
					case 7:
					set_hitbox_value(AT_USTRONG, 1, HG_PROJECTILE_SPRITE, sprite_get("proj_snow_house"));
					set_hitbox_value(AT_USTRONG, 1, HG_PROJECTILE_MASK, sprite_get("proj_snow_house"));
					break;
					
					case 6:
					set_hitbox_value(AT_USTRONG, 1, HG_PROJECTILE_SPRITE, sprite_get("proj_snow_bird"));
					set_hitbox_value(AT_USTRONG, 1, HG_PROJECTILE_MASK, sprite_get("proj_snow_bird"));
					break;
					
					case 5:
					set_hitbox_value(AT_USTRONG, 1, HG_PROJECTILE_SPRITE, sprite_get("proj_snow_dog"));
					set_hitbox_value(AT_USTRONG, 1, HG_PROJECTILE_MASK, sprite_get("proj_snow_dog"));
					break;
					
					default:
					set_hitbox_value(AT_USTRONG, 1, HG_PROJECTILE_SPRITE, sprite_get("proj_snow"));
					set_hitbox_value(AT_USTRONG, 1, HG_PROJECTILE_MASK, sprite_get("proj_snow"));
				}
				set_hitbox_value(AT_USTRONG, 1, HG_HIT_SFX, sound_get("splat"));
				set_hitbox_value(AT_USTRONG, 1, HG_DAMAGE, 7);
				set_hitbox_value(AT_USTRONG, 1, HG_BASE_KNOCKBACK, 6);
				set_hitbox_value(AT_USTRONG, 1, HG_BASE_HITPAUSE, 2);
				set_hitbox_value(AT_USTRONG, 1, HG_VISUAL_EFFECT, 29);
				set_hitbox_value(AT_USTRONG, 1, HG_PROJECTILE_DESTROY_EFFECT, 29);
			break;
			case 9: // Signery
				digrepeat = 9;
				switch(random_func(0, 4, 1))
				{
					case 0:
						set_window_value(AT_USTRONG, 2, AG_WINDOW_SFX, sound_get("flowery_itsme"));
					break;
					case 1:
						set_window_value(AT_USTRONG, 2, AG_WINDOW_SFX, sound_get("flowery_flowery"));
					break;
					case 2:
						set_window_value(AT_USTRONG, 2, AG_WINDOW_SFX, sound_get("flowery_glue"));
					break;
					case 3:
						set_window_value(AT_USTRONG, 2, AG_WINDOW_SFX, sound_get("flowery_yes"));
					break;
				}
				set_hitbox_value(AT_USTRONG, 1, HG_HIT_SFX, sound_get("flowery_jarona"));
				set_hitbox_value(AT_USTRONG, 1, HG_DAMAGE, 12);
				set_hitbox_value(AT_USTRONG, 1, HG_BASE_KNOCKBACK, 12);
				set_hitbox_value(AT_USTRONG, 1, HG_BASE_HITPAUSE, 15);
				set_hitbox_value(AT_USTRONG, 1, HG_PROJECTILE_SPRITE, sprite_get("proj_signery"));
				set_hitbox_value(AT_USTRONG, 1, HG_PROJECTILE_MASK, sprite_get("proj_signery"));
				set_hitbox_value(AT_USTRONG, 1, HG_VISUAL_EFFECT, 254);
				
				set_hitbox_value(AT_USTRONG, 1, HG_EFFECT, 13);
			break;			
			case 8: // Dog Watering Can
				digrepeat = 8;
				set_window_value(AT_USTRONG, 2, AG_WINDOW_SFX, sound_get("sfx_flower"));
				set_hitbox_value(AT_USTRONG, 1, HG_HIT_SFX, sound_get("splat"));
				set_hitbox_value(AT_USTRONG, 1, HG_DAMAGE, 8);
				set_hitbox_value(AT_USTRONG, 1, HG_BASE_KNOCKBACK, 8);
				set_hitbox_value(AT_USTRONG, 1, HG_PROJECTILE_SPRITE, sprite_get("proj_waterdog"));
				set_hitbox_value(AT_USTRONG, 1, HG_PROJECTILE_MASK, sprite_get("proj_waterdog"));
				set_hitbox_value(AT_USTRONG, 1, HG_VISUAL_EFFECT, 6);
				
				set_hitbox_value(AT_USTRONG, 1, HG_EFFECT, 15);
				set_hitbox_value(AT_USTRONG, 1, HG_ANGLE, 270);
			break;			
			case 7: // Artifact
				digrepeat = 7;
				set_window_value(AT_USTRONG, 2, AG_WINDOW_SFX, sound_get("sfx_digbig"));
				set_hitbox_value(AT_USTRONG, 1, HG_HIT_SFX, sound_get("sfx_celebrate"));
				set_hitbox_value(AT_USTRONG, 1, HG_DAMAGE, 12);
				set_hitbox_value(AT_USTRONG, 1, HG_BASE_KNOCKBACK, 12);
				set_hitbox_value(AT_USTRONG, 1, HG_BASE_HITPAUSE, 15);
				set_hitbox_value(AT_USTRONG, 1, HG_PROJECTILE_SPRITE, sprite_get("proj_artifact"));
				set_hitbox_value(AT_USTRONG, 1, HG_PROJECTILE_MASK, sprite_get("proj_artifact"));
				set_hitbox_value(AT_USTRONG, 1, HG_VISUAL_EFFECT, 130);
				
				set_hitbox_value(AT_USTRONG, 1, HG_BASE_HITPAUSE, 20);
				set_hitbox_value(AT_USTRONG, 1, HG_HITPAUSE_SCALING, .7);
				set_hitbox_value(AT_USTRONG, 1, HG_EXTRA_CAMERA_SHAKE, 1);
			break;
			case 6: // Egg
				digrepeat = 6;
				set_hitbox_value(AT_USTRONG, 1, HG_PROJECTILE_SPRITE, sprite_get("proj_egg"));
				set_hitbox_value(AT_USTRONG, 1, HG_PROJECTILE_MASK, sprite_get("proj_egg"));
				set_window_value(AT_USTRONG, 2, AG_WINDOW_SFX, sound_get("sfx_egg"));
				set_hitbox_value(AT_USTRONG, 1, HG_DAMAGE, 6);
				set_hitbox_value(AT_USTRONG, 1, HG_BASE_KNOCKBACK, 6);
				set_hitbox_value(AT_USTRONG, 1, HG_BASE_HITPAUSE, 6);
				set_hitbox_value(AT_USTRONG, 1, HG_EFFECT, 13);
				set_hitbox_value(AT_USTRONG, 1, HG_VISUAL_EFFECT, 29);
				set_hitbox_value(AT_USTRONG, 1, HG_PROJECTILE_DESTROY_EFFECT, 29);
			break;
			case 5: // Traffic Cone
				digrepeat = 5;
				set_hitbox_value(AT_USTRONG, 1, HG_DAMAGE, 8);
				set_hitbox_value(AT_USTRONG, 1, HG_BASE_KNOCKBACK, 8);
				set_hitbox_value(AT_USTRONG, 1, HG_PROJECTILE_SPRITE, sprite_get("proj_cone"));
				set_hitbox_value(AT_USTRONG, 1, HG_PROJECTILE_MASK, sprite_get("proj_cone"));
				set_hitbox_value(AT_USTRONG, 1, HG_VISUAL_EFFECT, realistic_explosion);
				set_hitbox_value(AT_USTRONG, 1, HG_HIT_SFX, sound_get("sfx_explosion"));
			break;
			case 4: // Papyrus Picture
				digrepeat = 4;
				set_hitbox_value(AT_USTRONG, 1, HG_DAMAGE, 8);
				set_hitbox_value(AT_USTRONG, 1, HG_BASE_KNOCKBACK, 10);
				set_hitbox_value(AT_USTRONG, 1, HG_PROJECTILE_SPRITE, sprite_get("proj_papyrus"));
				set_hitbox_value(AT_USTRONG, 1, HG_PROJECTILE_MASK, sprite_get("proj_papyrus"));
				
				set_hitbox_value(AT_USTRONG, 1, HG_HIT_SFX, sound_get("sfx_glassbreak"));
				set_hitbox_value(AT_USTRONG, 1, HG_VISUAL_EFFECT, 259);
				set_hitbox_value(AT_USTRONG, 1, HG_PROJECTILE_DESTROY_EFFECT, 259);
			break;
			case 3: // Donation Box
				digrepeat = 3;
				set_hitbox_value(AT_USTRONG, 1, HG_DAMAGE, 8);
				set_hitbox_value(AT_USTRONG, 1, HG_BASE_KNOCKBACK, 8);
				set_hitbox_value(AT_USTRONG, 1, HG_PROJECTILE_SPRITE, sprite_get("proj_donation"));
				set_hitbox_value(AT_USTRONG, 1, HG_PROJECTILE_MASK, sprite_get("proj_donation"));
				set_hitbox_value(AT_USTRONG, 1, HG_PROJECTILE_GRAVITY, .35);
				set_hitbox_value(AT_USTRONG, 1, HG_HIT_SFX, sound_get("sfx_buyitem"));
				set_hitbox_value(AT_USTRONG, 1, HG_EFFECT, 13);
				set_hitbox_value(AT_USTRONG, 1, HG_VISUAL_EFFECT, 251); 
			break;
			case 2: // Ralsei Plush
				digrepeat = 2;
				set_hitbox_value(AT_USTRONG, 1, HG_HIT_SFX, sound_get("sfx_squeaky"));
				set_hitbox_value(AT_USTRONG, 1, HG_DAMAGE, 5);
				set_hitbox_value(AT_USTRONG, 1, HG_BASE_KNOCKBACK, 2);
				set_hitbox_value(AT_USTRONG, 1, HG_BASE_HITPAUSE, 1);
				set_hitbox_value(AT_USTRONG, 1, HG_PROJECTILE_SPRITE, sprite_get("proj_ralsei"));
				set_hitbox_value(AT_USTRONG, 1, HG_PROJECTILE_MASK, sprite_get("proj_ralsei"));
			break;
			case 1: // Pipis
				digrepeat = 1;
				if !(random_func(0, 7, 1))
				{
					set_hitbox_value(AT_USTRONG, 1, HG_PROJECTILE_SPRITE, sprite_get("proj_mspipis"));
					set_hitbox_value(AT_USTRONG, 1, HG_PROJECTILE_MASK, sprite_get("proj_mspipis"));
				}
				else
				{
					set_hitbox_value(AT_USTRONG, 1, HG_PROJECTILE_SPRITE, sprite_get("proj_pipis"));
					set_hitbox_value(AT_USTRONG, 1, HG_PROJECTILE_MASK, sprite_get("proj_pipis"));
				}
				set_hitbox_value(AT_USTRONG, 1, HG_DAMAGE, 6);
				set_hitbox_value(AT_USTRONG, 1, HG_BASE_KNOCKBACK, 6);
				set_hitbox_value(AT_USTRONG, 1, HG_BASE_HITPAUSE, 30);
				set_hitbox_value(AT_USTRONG, 1, HG_EFFECT, 10);
				set_hitbox_value(AT_USTRONG, 1, HG_PROJECTILE_DESTROY_EFFECT, 29);
			break;
			default: // Bone
				set_hitbox_value(AT_USTRONG, 1, HG_PROJECTILE_SPRITE, sprite_get("proj_bone"));
				set_hitbox_value(AT_USTRONG, 1, HG_PROJECTILE_MASK, sprite_get("proj_bone"));
		}
		
	
		
		if (strong_charge <= 10)
		{
			// Minimum height.
			set_hitbox_value(AT_USTRONG, 1, HG_PROJECTILE_VSPEED, -8);
		}
		else
		{
			if (strong_charge > 10)
			{
				set_hitbox_value(AT_USTRONG, 1, HG_PROJECTILE_VSPEED, -9);
				if (strong_charge > 20)
				{
					set_hitbox_value(AT_USTRONG, 1, HG_PROJECTILE_VSPEED, -10);
					if (strong_charge > 30)
					{
						set_hitbox_value(AT_USTRONG, 1, HG_PROJECTILE_VSPEED, -11);
						if (strong_charge > 40)
						{
							set_hitbox_value(AT_USTRONG, 1, HG_PROJECTILE_VSPEED, -12);
							if (strong_charge >= 50)
							{
								set_hitbox_value(AT_USTRONG, 1, HG_PROJECTILE_VSPEED, -13);
							}
						}
					}
				}
			}
		}
		
		if (strong_charge == 25 || strong_charge == 50 && window == 1)
		{
			sound_play(sound_get("sfx_noise"))
		}
	break;

	case AT_FSTRONG:
		if (window == 1)
		{
			soft_armor = 0;
			fstrong_parried = 0;
			if (window_timer >= 20)
			{
				soft_armor = 9;
			}
			if (state == PS_ATTACK_AIR)
			{
				state = PS_IDLE_AIR;
			}
		}
		if (window == 4)
		{
			soft_armor = 0;
		}
		if (window == 4 && window_timer == 5)
		{
			spawn_hit_fx(x,y, greaterarmor);
		}
		
		if (strong_charge <= 10)
		{
			// Minimum height.
			fstrong_distance = 10;
		}
		else
		{
			if (strong_charge > 10)
			{
				fstrong_distance = 10.5;
				if (strong_charge > 20)
				{
					fstrong_distance = 11;
					if (strong_charge > 30)
					{
						fstrong_distance = 11.5;
						if (strong_charge > 40)
						{
							fstrong_distance = 12;
							if (strong_charge >= 50)
							{
								fstrong_distance = 13;
							}
						}
					}
				}
			}
		}
		if (runeH)
		{
			fstrong_distance = fstrong_distance * 1.4;
			if (window == 2 && window_timer == 1)
			{
				sound_play(sound_get("sfx_criticalswing"))
			}
		}
		set_window_value(AT_FSTRONG, 2, AG_WINDOW_HSPEED, fstrong_distance);
		
	    if (fstrong_parried == 0){
			if (window == 5 && window_timer == 1)
			{
				// Teleports to the new position that FStrong finishes at.
				y -= 52;
				if (spr_dir == -1)
				{
					x -= 5;
					hsp = -4.5;
				}
				else 
				{
					hsp = 4.5;
					x -= -5;
				}
			}
			reset_window_value(AT_FSTRONG, 5, AG_WINDOW_VSPEED);
			reset_window_value(AT_FSTRONG, 5, AG_WINDOW_VSPEED_TYPE);
	    }
		else 
		{
			set_window_value(AT_FSTRONG, 5, AG_WINDOW_VSPEED, 0);
			set_window_value(AT_FSTRONG, 5, AG_WINDOW_VSPEED_TYPE, 0);
		}
	    can_fast_fall = false;
	    can_move = false
	break;
	
	case AT_DSTRONG:
		
	if (get_player_color(player) != 12)
	{
		if (window == 1 && window_timer == 1)
		{
			set_attack_value(AT_DSTRONG, AG_SPRITE, sprite_get("dstrong"));
			set_hitbox_value(AT_DSTRONG, 1, HG_HITBOX_X, 36);
			set_hitbox_value(AT_DSTRONG, 1, HG_WIDTH, 28);
			
			set_hitbox_value(AT_DSTRONG, 2, HG_HITBOX_X, -38);
			set_hitbox_value(AT_DSTRONG, 2, HG_WIDTH, 28);
		}
		if strong_charge == 15 && window == 1
		{
			sound_play( sound_get("sfx_spearappear"), false, noone, 1, 1.3 );
			if spr_dir
			{
				spawn_hit_fx(x-78,y-94, dstrong_appear);
				spawn_hit_fx(x+38,y-94, dstrong_appear); 
			}
			else
			{
				spawn_hit_fx(x-38,y-94, dstrong_appear);
				spawn_hit_fx(x+78,y-94, dstrong_appear); 
			}
		}
		if ((strong_charge == 27) || ((strong_charge >= 15 && strong_charge < 45) && !down_strong_down))
		{
			set_attack_value(AT_DSTRONG, AG_SPRITE, sprite_get("dstrong_two"));
			set_hitbox_value(AT_DSTRONG, 1, HG_HITBOX_X, 46);
			set_hitbox_value(AT_DSTRONG, 1, HG_WIDTH, 42);
			
			set_hitbox_value(AT_DSTRONG, 2, HG_HITBOX_X, -48);
			set_hitbox_value(AT_DSTRONG, 2, HG_WIDTH, 42);
		}
		
		if strong_charge == 45 && window == 1
		{
			//set_attack_value(AT_DSTRONG, AG_SPRITE, sprite_get("ustrong"));
			sound_play( sound_get("sfx_spearappear"), false, noone, 1, 1.5 );
			if spr_dir
			{
				spawn_hit_fx(x-100,y-94, dstrong_appear);
				spawn_hit_fx(x+60,y-94, dstrong_appear);
			}
			else
			{
				spawn_hit_fx(x-60,y-94, dstrong_appear);
				spawn_hit_fx(x+100,y-94, dstrong_appear);
			}
		}
		if ((strong_charge == 57) || (strong_charge >= 45 && !down_strong_down))
		{
			set_attack_value(AT_DSTRONG, AG_SPRITE, sprite_get("dstrong_three"));
			set_hitbox_value(AT_DSTRONG, 1, HG_HITBOX_X, 56);
			set_hitbox_value(AT_DSTRONG, 1, HG_WIDTH, 64);
			
			set_hitbox_value(AT_DSTRONG, 2, HG_HITBOX_X, -58);
			set_hitbox_value(AT_DSTRONG, 2, HG_WIDTH, 64);
		}
	}
	
	else // Knight Alt Version
	{
		if (window == 1 && window_timer == 1)
		{
			set_attack_value(AT_DSTRONG, AG_SPRITE, sprite_get("dstrong_knight"));
			set_hitbox_value(AT_DSTRONG, 1, HG_HITBOX_X, 36);
			set_hitbox_value(AT_DSTRONG, 1, HG_WIDTH, 28);
			
			set_hitbox_value(AT_DSTRONG, 2, HG_HITBOX_X, -38);
			set_hitbox_value(AT_DSTRONG, 2, HG_WIDTH, 28);
		}
		if strong_charge == 15 && window == 1
		{
			sound_play( sound_get("alt_knight_appear"), false, noone, 1, 1.3 );
			if spr_dir
			{
				spawn_hit_fx(x-78,y-94, dstrong_appear_knight);
				spawn_hit_fx(x+38,y-94, dstrong_appear_knight); 
			}
			else
			{
				spawn_hit_fx(x-38,y-94, dstrong_appear_knight);
				spawn_hit_fx(x+78,y-94, dstrong_appear_knight); 
			}
		}
		if ((strong_charge == 27) || ((strong_charge >= 15 && strong_charge < 45) && !down_strong_down))
		{
			set_attack_value(AT_DSTRONG, AG_SPRITE, sprite_get("dstrong_knight_two"));
			set_hitbox_value(AT_DSTRONG, 1, HG_HITBOX_X, 46);
			set_hitbox_value(AT_DSTRONG, 1, HG_WIDTH, 42);
			
			set_hitbox_value(AT_DSTRONG, 2, HG_HITBOX_X, -48);
			set_hitbox_value(AT_DSTRONG, 2, HG_WIDTH, 42);
		}
		
		if strong_charge == 45 && window == 1
		{
			//set_attack_value(AT_DSTRONG, AG_SPRITE, sprite_get("ustrong"));
			sound_play( sound_get("alt_knight_appear"), false, noone, 1, 1.5 );
			if spr_dir
			{
				spawn_hit_fx(x-100,y-94, dstrong_appear_knight);
				spawn_hit_fx(x+60,y-94, dstrong_appear_knight);
			}
			else
			{
				spawn_hit_fx(x-60,y-94, dstrong_appear_knight);
				spawn_hit_fx(x+100,y-94, dstrong_appear_knight);
			}
		}
		if ((strong_charge == 57) || (strong_charge >= 45 && !down_strong_down))
		{
			set_attack_value(AT_DSTRONG, AG_SPRITE, sprite_get("dstrong_knight_three"));
			set_hitbox_value(AT_DSTRONG, 1, HG_HITBOX_X, 56);
			set_hitbox_value(AT_DSTRONG, 1, HG_WIDTH, 64);
			
			set_hitbox_value(AT_DSTRONG, 2, HG_HITBOX_X, -58);
			set_hitbox_value(AT_DSTRONG, 2, HG_WIDTH, 64);
		}
	}
	break;



// Cannot parry Jab, like the main cast.
	case AT_JAB:
		if (was_parried)
		{
	    was_parried = false;
		}
	break;
	
	case AT_FTILT:
		move_cooldown[AT_FTILT] = 18;
		if (window == 3 && window_timer == 5)
		{
			spawn_hit_fx(x,y, ftiltbone);
		}
	break;
	
	case AT_DTILT:
		move_cooldown[AT_DTILT] = 4;
		
		switch(random_func(0, 4, 1))
		{
			case 0:
				set_window_value(AT_DTILT, 2, AG_WINDOW_SFX, sound_get("sfx_tem1"));
			break;
			case 1:
				set_window_value(AT_DTILT, 2, AG_WINDOW_SFX, sound_get("sfx_tem2"));
			break;
			case 2:
				set_window_value(AT_DTILT, 2, AG_WINDOW_SFX, sound_get("sfx_tem3"));
			break;
			case 3:
				set_window_value(AT_DTILT, 2, AG_WINDOW_SFX, sound_get("sfx_tem4"));
			break;
		}
	break;
	
	case AT_DATTACK:
		move_cooldown[AT_DATTACK] = 24;
		if (window <= 2)
		{
			set_attack_value(AT_DATTACK, AG_OFF_LEDGE, 0);
			set_hitbox_value(AT_DATTACK, 2, HG_WINDOW_CREATION_FRAME, 14);
			set_hitbox_value(AT_DATTACK, 2, HG_DAMAGE, 3);
			set_hitbox_value(AT_DATTACK, 2, HG_BASE_KNOCKBACK, 3);
			set_hitbox_value(AT_DATTACK, 2, HG_BASE_HITPAUSE, 4);
			set_hitbox_value(AT_DATTACK, 2, HG_VISUAL_EFFECT, 302);
		}
		if (window >= 3)
		{
			spawn_hit_fx(x,y, dashtrail);
			if(has_hit) 
			{
			    can_jump = true;
			    set_hitbox_value(AT_DATTACK, 2, HG_WINDOW_CREATION_FRAME, 9);
			    set_hitbox_value(AT_DATTACK, 2, HG_DAMAGE, 0);
				set_hitbox_value(AT_DATTACK, 2, HG_BASE_KNOCKBACK, 0);
				set_hitbox_value(AT_DATTACK, 2, HG_BASE_HITPAUSE, 0);
				set_hitbox_value(AT_DATTACK, 2, HG_VISUAL_EFFECT, 1);
			}
			
			if (window == 4)
			{
				set_attack_value(AT_DATTACK, AG_OFF_LEDGE, 0);
			}
			else
			{
				set_attack_value(AT_DATTACK, AG_OFF_LEDGE, 1);
			}
		}
	break;



	case AT_NSPECIAL:
		// Flips the words around if facing the other way.
	    if (spr_dir == -1)
		{
			set_hitbox_value(AT_NSPECIAL, 1, HG_PROJECTILE_SPRITE, sprite_get("nspecial_proj_left"));
			set_hitbox_value(AT_NSPECIAL, 1, HG_PROJECTILE_MASK, sprite_get("nspecial_proj_left"));
			set_hitbox_value(AT_NSPECIAL, 2, HG_PROJECTILE_SPRITE, sprite_get("nspecial_bigshot_left"));
			set_hitbox_value(AT_NSPECIAL, 2, HG_PROJECTILE_MASK, sprite_get("nspecial_bigshot_left"));
		}
		else
		{
			set_hitbox_value(AT_NSPECIAL, 1, HG_PROJECTILE_SPRITE, sprite_get("nspecial_proj"));
			set_hitbox_value(AT_NSPECIAL, 1, HG_PROJECTILE_MASK, sprite_get("nspecial_proj"));
			set_hitbox_value(AT_NSPECIAL, 2, HG_PROJECTILE_SPRITE, sprite_get("nspecial_bigshot"));
			set_hitbox_value(AT_NSPECIAL, 2, HG_PROJECTILE_MASK, sprite_get("nspecial_bigshot"));
		}
		
		if (window == 3)
		{
			if (window_timer > 8 && window_timer < 10 && !special_down) // Not Charging
			{
				sound_stop( sound_get( "sfx_chargeshot_charge" ) );
				set_state(PS_IDLE);
			}
			if (!special_down && window_timer >= 15) // Slight Charge
			{
				window = 2;
				window_timer = -1;
				skipcharge = 1;
				sound_stop( sound_get( "sfx_chargeshot_charge" ) );
			}
			if (window_timer == 1 && !skipcharge && special_down) 
			{
				shotcharge = spawn_hit_fx(x,y-16, bigshot);
			}
			shotcharge.draw_angle += 3;
			shotcharge.x = shotcharge.player_id.x;
			shotcharge.y = shotcharge.player_id.y - 16;
		}
		if !special_down && instance_exists(shotcharge)
		{
			shotcharge.step_timer = shotcharge.hit_length;
			sound_stop( sound_get( "sfx_chargeshot_charge" ) );
		}
		if window == 2 && skipcharge == 1 && (window_timer == 6 || runeL)
		{
			skipcharge = 0;
			set_state(PS_IDLE);
		}
		if (window == 4 && sparkle_tracker == 1)
		{
			sparkle_tracker = 0;
			var little_sparkle spawn_hit_fx(x+14*spr_dir,y-44, small_sparkle)
			sound_play(sound_get("sfx_sparkle"))
		}
		if (window == 4 && !special_down)
		{
			window = 5;
			window_timer = -1;
			sound_stop( sound_get( "sfx_chargeshot_charge" ) );
			sound_play(sound_get("sfx_BIGbark"))
		}
		if (window == 5)
		{
			sparkle_tracker = 1;
		}
		
	break;

	case AT_USPECIAL:
		// Ends the move if shield is pressed.
		if (window == 3 && shield_pressed)
		{
			window = 4;
			window_timer = -1;
		}
		can_wall_jump = true;
	break;

	case AT_FSPECIAL:
		can_fast_fall = false;
		can_wall_jump = true;
		move_cooldown[AT_FSPECIAL] = 40;
		if (window == 1 || window == 2)
		{
			carfuel = 100;
			reset_attack_value(AT_FSPECIAL, AG_OFF_LEDGE);
			removehud = 0;
			canhonk = 1;
		}
		if (window == 1 && window_timer == 6)
		{
			spawn_hit_fx(x, y, carsparkle);
		}
		if (window == 4 && attack_pressed && canhonk == 1) 
		{
			//Honk while driving.
			sound_play( sound_get( "sfx_honk" ));
			canhonk = 0;
		}
		if ((shield_down || special_down || carfuel <= 0) && (window == 4 && (window_timer > 1 && window_timer < 19))) 
		{
			// Exiting
			window = 6;
			window_timer = 0;
			carfuel = 0;
			destroy_hitboxes();
		}
		if (state == PS_ATTACK_GROUND)
		{
			if ((window == 4 && window_timer >= 2) && carfuel > 9 && ((spr_dir == -1 && right_down) || (spr_dir == 1 && left_down)))
			{
				// Turnaround
				window = 5;
				window_timer = 1;
				destroy_hitboxes();
				canhonk = 1;
			}
		}
		if (window == 5 && window_timer >= 25)
		{
			// When turning animation finished, actually turn around.
			window = 3;
			window_timer = 1;
			spr_dir = spr_dir * -1;
		}
		if (window >= 4 && window_timer == 1 && donotlower == 0)
		{
			// Fuel lowers by 10 every 20 frames.
			carfuel -= 10;
			canhonk = 1;
			attack_end(AT_FSPECIAL);
		}
		
		if (donotlower == 1 && window_timer == 2)
		{
			// Fixes a bug where if you land the move on window_timer == 1 then the meter will become empty.
			// Just skips the meter lowering and pushes it to the next frame when the attack isn't being landed instead. 
			donotlower = 0;
			carfuel -= 10;
			canhonk = 1;
		}
	break;
	
	case AT_DSPECIAL:
		can_fast_fall = false;
	break;
}



// Reset taunt while charging strong when charge ends.
if ((attack == AT_DSTRONG || attack == AT_FSTRONG || attack == AT_USTRONG) && window == 2 && canbluh == 0)
{
	canbluh = 1;
}

// Secret Taunts
if (taunt_pressed && strong_charge >= 1 && canbluh == 1 && window == 1) 
{
	// Plays the bluh sound if you press taunt while charging a strong attack.
	sound_play( sound_get( "sfx_bluh" ) );
	canbluh = 0;
} 


// ---------- Abyss Rune Support ----------

// ---------- Level 1 Runes ---------- 
if runeA 
{
	set_window_value(AT_TAUNT, 1, AG_WINDOW_INVINCIBILITY, 1);
}
if runeB 
{
	set_window_value(AT_EXTRA_1, 1, AG_WINDOW_LENGTH, 6);
}
if runeC
{
	set_hitbox_value(AT_UTILT, 1, HG_EFFECT, 10);
	set_hitbox_value(AT_UAIR, 1, HG_EFFECT, 10);
}
if runeD 
{
	set_hitbox_value(AT_JAB, 1, HG_FORCE_FLINCH, 1);
}
if runeE
{
	set_window_value(AT_DAIR, 2, AG_WINDOW_VSPEED_TYPE, 0);
	set_window_value(AT_DAIR, 2, AG_WINDOW_VSPEED, -1.5);
	
	set_window_value(AT_DAIR, 3, AG_WINDOW_VSPEED_TYPE, 0);
	set_window_value(AT_DAIR, 3, AG_WINDOW_VSPEED, -1.5);
	
	set_window_value(AT_DAIR, 4, AG_WINDOW_VSPEED_TYPE, 0);
	set_window_value(AT_DAIR, 4, AG_WINDOW_VSPEED, -2);
	
	set_window_value(AT_DAIR, 5, AG_WINDOW_VSPEED_TYPE, 2);
	set_window_value(AT_DAIR, 5, AG_WINDOW_VSPEED, -8);
}

if runeF 
{
	set_hitbox_value(AT_DTILT, 1, HG_ANGLE, 165);
	set_hitbox_value(AT_DTILT, 1, HG_BASE_KNOCKBACK, 2);
}

// ---------- Level 2 Runes ---------- 
if runeG
{
set_window_value(AT_DATTACK, 3, AG_WINDOW_HSPEED, 20);
}
if runeI 
{	
	set_window_value(AT_DSPECIAL, 1, AG_WINDOW_LENGTH, 40);
}
if runeK
{	
	set_num_hitboxes(AT_USPECIAL, 3);
	set_hitbox_value(AT_USPECIAL, 1, HG_HITBOX_GROUP, 1);
	set_hitbox_value(AT_USPECIAL, 3, HG_HITBOX_GROUP, 2);
	set_hitbox_value(AT_USPECIAL, 3, HG_PARENT_HITBOX, 3);
	set_hitbox_value(AT_USPECIAL, 3, HG_HITBOX_TYPE, 1);
	set_hitbox_value(AT_USPECIAL, 3, HG_WINDOW, 2);
	set_hitbox_value(AT_USPECIAL, 3, HG_WINDOW_CREATION_FRAME, 9);
	set_hitbox_value(AT_USPECIAL, 3, HG_LIFETIME, 50);
	set_hitbox_value(AT_USPECIAL, 3, HG_HITBOX_X, -2);
	set_hitbox_value(AT_USPECIAL, 3, HG_HITBOX_Y, -55);
	set_hitbox_value(AT_USPECIAL, 3, HG_WIDTH, 45);
	set_hitbox_value(AT_USPECIAL, 3, HG_HEIGHT, 65);
	set_hitbox_value(AT_USPECIAL, 3, HG_SHAPE, 0);
	set_hitbox_value(AT_USPECIAL, 3, HG_PRIORITY, 1);
	set_hitbox_value(AT_USPECIAL, 3, HG_DAMAGE, 5);
	set_hitbox_value(AT_USPECIAL, 3, HG_ANGLE, 75);
	set_hitbox_value(AT_USPECIAL, 3, HG_BASE_KNOCKBACK, 6);
	set_hitbox_value(AT_USPECIAL, 3, HG_KNOCKBACK_SCALING, .6);
	set_hitbox_value(AT_USPECIAL, 3, HG_BASE_HITPAUSE, 7);
	set_hitbox_value(AT_USPECIAL, 3, HG_HITPAUSE_SCALING, .35);
	set_hitbox_value(AT_USPECIAL, 3, HG_VISUAL_EFFECT_Y_OFFSET, 10);
	set_hitbox_value(AT_USPECIAL, 3, HG_HIT_SFX, sound_get("sfx_hit2"));
}


// ---------- Level 3 Runes ---------- 
if (attack == AT_FSPECIAL && runeN) {
	can_jump = true;
}

if runeL 
{
	set_attack_value(AT_NSPECIAL, AG_HAS_LANDING_LAG, 4);
	set_hitbox_value(AT_NSPECIAL, 1, HG_DAMAGE, 1);
	set_window_value(AT_NSPECIAL, 1, AG_WINDOW_LENGTH, 1);
	set_window_value(AT_NSPECIAL, 2, AG_WINDOW_LENGTH, 2);
}
if runeO
{
	set_num_hitboxes(AT_FAIR, 2);
	set_hitbox_value(AT_FAIR, 2, HG_PARENT_HITBOX, 2);
	set_hitbox_value(AT_FAIR, 2, HG_HITBOX_TYPE, 2);
	set_hitbox_value(AT_FAIR, 2, HG_WINDOW, 4);
	set_hitbox_value(AT_FAIR, 2, HG_LIFETIME, 200);
	set_hitbox_value(AT_FAIR, 2, HG_HITBOX_X, 23);
	set_hitbox_value(AT_FAIR, 2, HG_HITBOX_Y, -10);
	set_hitbox_value(AT_FAIR, 2, HG_PRIORITY, 5);
	set_hitbox_value(AT_FAIR, 2, HG_ANGLE, 70);
	set_hitbox_value(AT_FAIR, 2, HG_PROJECTILE_ANIM_SPEED, .3);
	set_hitbox_value(AT_FAIR, 2, HG_PROJECTILE_PARRY_STUN, 1);
	set_hitbox_value(AT_FAIR, 2, HG_PROJECTILE_HSPEED, 1);
	set_hitbox_value(AT_FAIR, 2, HG_PROJECTILE_GRAVITY, .25);
	set_hitbox_value(AT_FAIR, 2, HG_PROJECTILE_GROUND_BEHAVIOR, 0);
	set_hitbox_value(AT_FAIR, 2, HG_PROJECTILE_WALL_BEHAVIOR, 2);
	set_hitbox_value(AT_FAIR, 2, HG_PROJECTILE_ENEMY_BEHAVIOR, 0);
	set_hitbox_value(AT_FAIR, 2, HG_EXTENDED_PARRY_STUN, 1);
	set_hitbox_value(AT_FAIR, 2, HG_DAMAGE, 3);
	set_hitbox_value(AT_FAIR, 2, HG_BASE_KNOCKBACK, 4);
	set_hitbox_value(AT_FAIR, 2, HG_KNOCKBACK_SCALING, .4);
	set_hitbox_value(AT_FAIR, 2, HG_BASE_HITPAUSE, 3);
	set_hitbox_value(AT_FAIR, 2, HG_HITPAUSE_SCALING, .4);
	set_hitbox_value(AT_FAIR, 2, HG_PROJECTILE_SPRITE, sprite_get("proj_bone"));
	set_hitbox_value(AT_FAIR, 2, HG_PROJECTILE_MASK, sprite_get("proj_bone"));
	set_hitbox_value(AT_FAIR, 2, HG_HIT_SFX, sound_get("sfx_hit2"));
	set_hitbox_value(AT_FAIR, 2, HG_VISUAL_EFFECT, 0);
	
	set_attack_value(AT_FAIR, AG_NUM_WINDOWS, 4);
}