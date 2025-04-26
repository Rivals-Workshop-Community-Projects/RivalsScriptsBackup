//hit_player - called when one of your hitboxes hits a player
switch(my_hitboxID.attack)
{
	case AT_NSPECIAL:
	{
		//Hit priority of 2 is needed to bypass stupid Kragg quirk with NSpecial
		//https://ko-fi.com/post/RoA-Workshop-Guide--GML--Making-Parries-Function-F1F251OJX
		if((my_hitboxID.hbox_num == 2 && my_hitboxID.hit_priority == 2) || my_hitboxID.hbox_num == 3)
		{
			hit_player_obj.shadowburn_timer = 70;
			hit_player_obj.shadowburn_owner = self;
		}
		else if(my_hitboxID.hbox_num == 4 && my_hitboxID.hit_priority == 2)
		{
			with(my_hitboxID.nspecial_entity)
			{
				if(microstate == PS_UNATTACHED_UNARMED && !other.hit_player_obj.clone)
				{
					change_state(PS_ATTACHED_PLAYER, 0);
					//Attach the NSpecial article to the hit player
					stuck_player = other.hit_player_obj;
					my_hitbox = noone;
				}
				else
				{
					change_state(PS_EXPLODING_UNATTACHED, 0);
				}
			}
			my_hitboxID.destroyed = true;
		}
		break;
	}
	case AT_NAIR:
	{
		break;
	}
	case AT_UAIR:
	{
		switch(my_hitboxID.hbox_num)
		{
			case 1: //work on these more maybe
			{
				vanda_uair_hit1 = true;
				old_hsp = clamp(old_hsp, -1 * vanda_uair1_max_hsp, vanda_uair1_max_hsp);
				old_vsp += vanda_uair1_vsp_boost;
				sound_play(a_sfx_pom_tailhit_up, false, noone, 0.65, 0.6);
				break;
			}
			case 2:
			{
				vanda_uair_hit2 = true;
				sound_play(a_sfx_pom_tailhit_forward, false, noone, 0.65, 0.65);
				break;
			}
			case 3:
			{
				//deep
				sound_play(a_sfx_absa_kickhit, false, noone, 0.6, 0.8);
				sound_play(a_sfx_ori_grenade_hit, false, noone, 0.8, 0.85);
				break;
			}
		}
		break;
	}
	case AT_DSTRONG:
	{
		hit_player_obj.shadowburn_timer = 60;
		hit_player_obj.shadowburn_owner = self;
		break;
	}
	case AT_DSPECIAL_AIR:
	{
		hit_player_obj.shadowburn_timer = 90;
		hit_player_obj.shadowburn_owner = self;
		if(active_runes[?"O"])
		{
			if(hit_player_obj.vanda_rune_o_mark == 0 && get_player_team(player) != get_player_team(hit_player_obj.player))
			{
				hit_player_obj.vanda_rune_o_player = self;
				hit_player_obj.vanda_rune_o_mark = dspecial_selected;
				sound_play(a_sfx_forsburn_spew2, false, noone, 2);
				sound_play(a_sfx_forsburn_spew2, false, noone, 1, 0.8);
			}
		
		}
		break;
	}
	case AT_DAIR:
	{
		if(my_hitboxID.hbox_num == 1 && hit_player_obj.super_armor != true)
		{
			window = 4;
			window_timer = 0;
			
			if(vanda_landed_dair == noone)
			{
				vanda_landed_dair = hit_player_obj;
			}
			has_hit = false;
		}
		
		if(my_hitboxID.hbox_num == 1 && restore_djump && djumps_restored < max_djump_restores)
		{
			djumps_restored += 1;
			djumps = max(0, djumps - 1);
		}
		break;
	}
	case AT_DATTACK:
	{
		if(my_hitboxID.hbox_num == 1)
		{
			vanda_dattack_hit1 = true;
		}
		//sound_stop(a_sfx_bigplant_clamp);
		//sound_play(a_sfx_forsburn_spew2, false, noone, 1, 1.1);
		break;
	}
	case AT_USTRONG:
	{
		
		if(my_hitboxID.hbox_num == 1)
		{
			vanda_hit_sourspot = true;
		}
		else if(my_hitboxID.hbox_num == 2)
		{
			hit_player_obj.should_make_shockwave = false;
			if(hit_player_obj.super_armor != true)
			{
				if(vanda_landed_ustrong == noone)
				{
					vanda_landed_ustrong = hit_player_obj;
					window = 4;
					window_timer = 0;
					
					if(!vanda_hit_sourspot)
					{
						sound_stop(a_sfx_clairen_nspecial_grab_success);
						sound_play(a_sfx_ice_shieldup, false, noone, 1.6, 1.6);
						sound_play(a_mfx_logo_shing, false, noone, 2, 1.6);
						sound_play(a_sfx_absa_kickhit, false, noone, 0.5, 1.4);
					
						take_damage(hit_player_obj.player, player, vanda_ustrong_stab_extra_damage);
						
						with(pHitBox)
						{
							if(player == other.player && attack == AT_USTRONG && hbox_num == 1)
							{
								//If the grab hitbox connects first and THEN the sourspot connects (this happens with big characters), it would cause extra hitpause
								hbox_group = other.my_hitboxID.hbox_group;
								break;
							}
						}
					}
				}
			}
		}
		break;
	
	}
	case AT_DTILT:
	{
		break;
	}
	case AT_FTILT:
	{
		sound_play(a_sfx_forsburn_spew2, false, noone, 0.5, 1.1);
		break;
	}
	case AT_USPECIAL: //Runes only
	{
		state = PS_IDLE_AIR;
		state_timer = 0;
		old_hsp = 0;
		old_vsp = -11;
		attack_end();
		uspecial_hitbox.destroyed = true;
		move_cooldown[AT_USPECIAL] = 24;
		move_cooldown[AT_USPECIAL_GROUND] = 24;
		break;
	}
}

#define change_state(new_state, frame_advance)
	microstate = new_state;
	switch(microstate)
	{
		case PS_UNATTACHED_UNARMED:
		case PS_UNATTACHED_ARMED:
		case PS_VANDA_UPLIFTED:
		{
			macrostate = MS_UNATTACHED;
			break;
		}
		
		case PS_ATTACHED_GROUND_ARMING:
		case PS_ATTACHED_GROUND_ARMED:
		case PS_ATTACHED_GROUND_FUSING:
		{
			macrostate = MS_ATTACHED_GROUND;
			break;
		}
		case PS_ATTACHED_PLAYER:
		{
			macrostate = MS_ATTACHED_PLAYER;
			break;
		}
		case PS_EXPLODING_UNATTACHED:
		case PS_EXPLODING_GROUND:
		case PS_EXPLODING_PLAYER:
		{
			macrostate = MS_EXPLODING;
			break;
		}
		case PS_BASHED:
		case PS_PLASMA_FIELDED:
		{
			macrostate = MS_MISC;
		}
		case PS_CLEANUP:
		{
			macrostate = MS_CLEANUP;
			break;
		}
	}
	state_timer = 0;
	increment_timer = frame_advance;

#define kaboom(hbox_number)
	var hbox = create_hitbox(AT_NSPECIAL, hbox_number, round(player_id.nspecial_entity.x), round(player_id.nspecial_entity.y));
	hbox.player = player_id.nspecial_entity.my_owner;
	with(player_id)
	{
		spawn_hit_fx(round(nspecial_entity.x), round(nspecial_entity.y), fx_shadowflame_explosion);
		if(nspecial_entity.my_hitbox != noone && instance_exists(nspecial_entity.my_hitbox))
		{
			instance_destroy(nspecial_entity.my_hitbox);
			nspecial_entity.my_hitbox = noone;
		}
	}
	sound_play(s_nspecial_explode);


#macro PS_UNATTACHED_UNARMED 10
#macro PS_UNATTACHED_ARMED 11
#macro PS_VANDA_UPLIFTED 12

#macro PS_ATTACHED_GROUND_ARMING 20
#macro PS_ATTACHED_GROUND_ARMED 21
#macro PS_ATTACHED_GROUND_FUSING 22

#macro PS_ATTACHED_PLAYER 30

#macro PS_EXPLODING_UNATTACHED 71
#macro PS_EXPLODING_GROUND 72
#macro PS_EXPLODING_PLAYER 73

#macro PS_BASHED 80
#macro PS_PLASMA_FIELDED 81

#macro PS_CLEANUP 90

#macro MS_UNATTACHED 1
#macro MS_ATTACHED_GROUND 2
#macro MS_ATTACHED_PLAYER 3
#macro MS_EXPLODING 7
#macro MS_MISC 8
#macro MS_CLEANUP 9