image_alpha = 0; //thanos snap
width_screen = view_get_yview();
rand_num = random_func( 0, 3, true);

//figure out position.
if(player_count == 0) //also round start
{
	for(i = 1; i < 5; i++)
	{
		if(is_player_on(i))
		{
			players_on[player_count] = i;
			player_count ++;
		}
	}
}

#region PLAY SFX FOR GROOVE SELECT
if(sfx_move == 1)
{
	sound_play(sound_get("groove_move"), false, 0, 0.6);
	sfx_move = 0;
}
if(sfx_select == 1)
{
	sound_play(sound_get("groove_select"), false, 0, 0.6);
	sfx_select = 0;
}
if(sfx_cancel == 1)
{
	for(i = 0; i < 4; i++)
		sound_stop(sfx_roundstart[i]);
	sound_play(sound_get("no_more_announcer"), false, 0, 0.6);
	sfx_cancel = 2;
}
#endregion

#region ANNOUNCER STUFF
announcer_timer ++;
switch(sfx_announcer)
{
	case 0: //THIS WILL BE A MATCH TO REMEMBER
		sound_play(sfx_roundstart[rand_num], false, 0, 0.8);
		sfx_announcer = 1;
		break;
	case 1: //FIGHT!
		if(announcer_timer > 140)
		{
			if(sfx_cancel == 0)
				sound_play(sound_get("round_fight"));
			sfx_announcer = 2;
			announcer_timer = 0;
		}
		break;
	case 2: //Watching / Start of match
		if(announcer_timer < 300)
		{
			//check for any damage.
			for(i = 0; i < player_count; i++)
			{
				if(get_player_damage(players_on[i]) > 0)
				{
					if(sfx_cancel == 0)
						sound_play(sound_get("comm2"));
					sfx_announcer = 3;
				}
			}
		}
		else
		{
			if(sfx_cancel == 0)
				sound_play(sound_get("comm1"));
			sfx_announcer = 3;
		}
	case 3: // Match stuff
		if(announcer_timer > 0 && sfx_cancel == 0)
		{
			//YOOO HES TRYING TO SPEAK
			if(announcer_say != 0)
			{
				sound_stop(sound_get("comm1"));
				sound_stop(sound_get("comm2"));
			}
			//If someone does more than 50% in a combo.
			if(announcer_say == 1)
			{
				sound_play(sound_get("russianDamage"));
				announcer_timer = -500;
				announcer_say = 0;
			}
			//If someone gets hit with like 5 hits.
			if(announcer_say == 2)
			{
				sound_play(sound_get("hellaCOMBO"));
				announcer_timer = -500;
				announcer_say = 0;
			}
			//LOL GOT EM GGS
			if(announcer_say == 3)
			{
				sound_play(sound_get("knockout"));
				announcer_timer = -500;
				announcer_say = 0;
			}
			if(get_game_timer() == 0)
			{
				sound_play(sound_get("timeout"));
				announcer_timer = -500;
				announcer_say = 0;
			}
		}
		break;
}

#endregion 

with(oPlayer) 
{
	if("url" in self && !clone && clones_player_id == 0 && !custom_clone)
	{
	//At the start of the match, give everyone a groove variable.
	//Groove Selects. Grooves based of ScribeAwoken's ideas of multiple platform fighters
	//0- D(an Fornace)
	//1- B(rawlhalla)
	//2- L(iquidicity)
	//3- M(Slayers for Hire)
	//4- V(ortex Games)
	//5- E(arth Romancer)
	//6- H(al Labatories)
	//7- N(intendo)
	if(!variable_instance_exists(id, "groove_hud_x"))
		groove_hud_x = 0;
	if(!variable_instance_exists(id, "groove_hud_y"))
		groove_hud_y = 0;
	if(!variable_instance_exists(id, "lgroove_strong"))
		lgroove_strong = AT_FTILT;
	if(!variable_instance_exists(id, "bud_groove"))
	{
		//Groove stuff
		bud_groove = 0;
		groove_start = 0;
		groovepos = 2.75;
		dash_timer = -1;
		gravity_cancel = false;
		wavedash_pls = false;
		can_spark = false;
		safe_timer = -1;
		orig_hitgrav = hitstun_grav;

		//Announcer stuff
		has_announced = false;
		announce_death = 0;
		comboRest = 0;
		comboHits = 0;
		curHP = 0;

		//Position
		switch(other.player_count)
		{
			case 2: // 1v1
				if(player != other.players_on[0])
					groovepos = 2;
				else
					groovepos = 4;
				break;
			case 3: // 3 FFA
					if(player == other.players_on[0])
						groovepos = 8;
					else if(player == other.players_on[1])
						groovepos = 2.68;
					else if(player == other.players_on[2])
						groovepos = 1.62;
				break;
			case 4: // 4 FFA
				switch(player)
				{
					case 1:
						groovepos = 80; break;
					case 2:
						groovepos = 4; break;
					case 3:
						groovepos = 2; break;
					case 4:
						groovepos = 1.34; break;
				}
				break;
		}
	}

	#region ANNOUNCER
	//Not dying or getting hit
	if(state != PS_HITSTUN && state != PS_HITSTUN_LAND)
	{
		if(comboRest >= 20) //if more in 20 frames not hitstun
		{
			curHP = get_player_damage(player);
			comboHits = 0;
			has_announced = false;
		}
		comboRest ++;
	}
	else
	{
		if(state_timer == 0 && hitstop == hitstop_full) //get hit on first frame
		{
			comboHits ++;

			checkDMG = abs(curHP - get_player_damage(player));
			if(!has_announced)
			{
				if(checkDMG > 40 && comboHits < 7) //how did you get fucked up like that lmao
				{
					has_announced = true;
					other.announcer_say = 1;
				}
				else if(comboHits >= 7)
				{
					has_announced = true;
					other.announcer_say = 2;
					comboHits = -999; //GET OUT OF MY HEAD GET OUR OF MY HEAD
				}
			}
		}
	}
	if (get_player_stocks(player) == 0 && !has_announced) 
	{
		has_announced = true;
		other.announcer_say = 3;
	}
	#endregion

	#region SELECT YOUR GROOVE!
	//if taunt is pressed no more announcer.
	if(taunt_pressed && other.sfx_cancel == 0 && other.sfx_announcer < 2)
		other.sfx_cancel = 1;

	if(groove_start < 140)
	{
		groove_start += (other.clone_comp ? 0.5 : 1);
		//lets you select during testing, will be changed.
		if(attack_pressed && groove_start > 10 || groove_start == 139)
		{
			other.sfx_select = 1;
			groove_start = 140;
		}
		else if(left_pressed || up_pressed)
		{
			other.sfx_move = 1;
			bud_groove -= (other.clone_comp ? 0.5 : 1);
			print_debug(bud_groove);
		}
		else if(right_pressed || down_pressed)
		{
			other.sfx_move = 1;
			bud_groove += (other.clone_comp ? 0.5 : 1);
		}

		if(bud_groove <= -1)
			bud_groove = 7;
		else if (bud_groove >= 8)
			bud_groove = 0;
	}
	#endregion
	else
	{
		#region GENERIC GROOVE STUFF
		//Return to original weight values once in control again. (H-Groove)
		if(state != PS_HITSTUN)
			hitstun_grav = orig_hitgrav;

		//No more wavedashing
		if((bud_groove == 6 || bud_groove == 7) && (state == PS_JUMPSQUAT || state_cat == SC_AIR_NEUTRAL && state_timer < 2))
			clear_button_buffer( PC_SHIELD_PRESSED );

		//no more moonwalk for specific grooves.
		if(bud_groove == 1 || bud_groove == 6 ||
		bud_groove == 7 || bud_groove == 3 )
			moonwalk_accel = 0.5;

		//Set up Dash Timer
		if(dash_timer != -1)
		{
			if(!free)
				dash_timer = 0;
			
			dash_timer --;
			vsp -= grav;
			if(dash_timer == 0)
			{
				can_fast_fall = false;
				if(state != PS_IDLE_AIR || bud_groove == 4)
					hsp /= 2;
				else
				{
					hsp = 0;
					vsp = 0;
				}
			}
		}
		
		//Tilts get strong charge damage.
		if(window == 1 && (attack != AT_FSTRONG || attack != AT_USTRONG || attack != AT_DSTRONG))
		{
			for(i = 1; i < get_num_hitboxes(attack)+1; i++)
			{
				reset_hitbox_value(attack, i, HG_BASE_KNOCKBACK);
				reset_hitbox_value(attack, i, HG_KNOCKBACK_SCALING);
				reset_hitbox_value(attack, i, HG_DAMAGE);
				if(smash_charging)
				{
					set_hitbox_value(attack, i, HG_BASE_KNOCKBACK, ceil(get_hitbox_value(attack, i, HG_BASE_KNOCKBACK) * (strong_charge/200+1)));
					set_hitbox_value(attack, i, HG_KNOCKBACK_SCALING, ceil(get_hitbox_value( attack, i, HG_KNOCKBACK_SCALING)* (strong_charge/200+1)*10)/10);
					set_hitbox_value(attack, i, HG_DAMAGE, ceil(get_hitbox_value(attack, i, HG_DAMAGE) * (strong_charge/150+1)));
				}
			}
		}
		#endregion

		//Groove Coding.
		if(state != PS_DEAD || state != PS_RESPAWN || state != PS_SPAWN) //Dont do these functions when you're dead.
		{
			switch(bud_groove)
			{
				case 1: //BRAWLHALLA
						walk_speed = max_jump_hsp;
						//make sure strongs work idk man
						set_attack_value(AT_FSTRONG, AG_CATEGORY, 2);
						set_attack_value(AT_FSTRONG, AG_AIR_SPRITE, get_attack_value(AT_FSTRONG, AG_SPRITE));
						set_attack_value(AT_USTRONG, AG_CATEGORY, 2);
						set_attack_value(AT_USTRONG, AG_AIR_SPRITE, get_attack_value(AT_USTRONG, AG_SPRITE));
						set_attack_value(AT_DSTRONG, AG_CATEGORY, 2);
						set_attack_value(AT_DSTRONG, AG_AIR_SPRITE, get_attack_value(AT_DSTRONG, AG_SPRITE));
						//Stop dashing.
						if(state == PS_DASH)
						{
							clear_button_buffer(PC_LEFT_HARD_PRESSED);
							clear_button_buffer(PC_RIGHT_HARD_PRESSED);
							state = PS_WALK;
						}
						
						//Make sure attacks have brawlhalla effects, say goodbye 
						if(state == PS_ATTACK_GROUND || state == PS_ATTACK_AIR)
						{
							if(state_timer == 1)
							{
								set_attack_value(attack, AG_AIR_SPRITE, sprite_index);
								if(!free)
									set_attack_value(attack, AG_CATEGORY, 2);
								set_attack_value(attack, AG_OFF_LEDGE, 1);
							}
							sprite_index = sprite_index;
							//Gravity Cancels
							if(gravity_cancel != 0)
							{
								has_airdodge = false;
								if(state_timer == 0)
								{
									state = PS_ATTACK_AIR;
									set_state(PS_ATTACK_AIR);
								}
								//Check for direction in gravity cancels.
								if(state_timer == 1)
								{
									if(left_down)
										spr_dir = -1;
									else if (right_down)
										spr_dir = 1;
									gravity_cancel += (other.clone_comp ? 0.5 : 1);
								}
								if(gravity_cancel == 2)
								{
									//enter dust fx
									if(get_gameplay_time() % 8 == 0)
										spawn_base_dust(x,y+6, "land");
									can_move = false;
									vsp = -0.001;
									hsp = (window == 1 ? 0 : hsp/1.25);
									free = false;
									//Cooldown to prevent buffing moves
									move_cooldown[AT_FTILT] = 5;
									move_cooldown[AT_DTILT] = 5;
									move_cooldown[AT_UTILT] = 5;
									move_cooldown[AT_FSTRONG] = 5;
									move_cooldown[AT_DSTRONG] = 5;
									move_cooldown[AT_USTRONG] = 5;
									move_cooldown[AT_JAB] = 5;
									move_cooldown[AT_TAUNT] = 5;
								}
							}
						}
						else if(gravity_cancel != 0)
						{
							state = PS_IDLE_AIR;
							has_airdodge = false;
							free = true;
							gravity_cancel = 0;
						}

						//Check for neutral airdodge.
						if(state == PS_AIR_DODGE && hsp == 0 && vsp == 0 && gravity_cancel == 0)
						{
							//Check for attack inputs
							if(attack_pressed || taunt_pressed)
							{	
								gravity_cancel = 1;
								// free=false;
								if(taunt_pressed)
								{
									attack = AT_TAUNT;
									set_attack(AT_TAUNT);
								}
								else if(joy_pad_idle)
								{
									attack = AT_JAB;
									set_attack(AT_JAB);
								}
								else if(((right_pressed || right_down)) || (left_down || left_pressed) && !up_down && !down_down)
								{
									attack = AT_FTILT;
									set_attack(AT_FTILT);
								}
								else if(!up_down && down_down)
								{
									attack = AT_DTILT;
									set_attack(AT_DTILT);
								}
								else if(up_down && !down_down)
								{
									attack = AT_UTILT;
									set_attack(AT_UTILT);
								}
								set_attack_value(attack, AG_CATEGORY, 2);
							}	
							//STRONG INPUTS
							if(up_strong_pressed || down_strong_pressed || left_strong_pressed || right_strong_pressed)
							{
								gravity_cancel = 1;
								if(up_strong_pressed)
								{
									attack = AT_USTRONG;
									set_attack(AT_USTRONG);
								}
								else if(down_strong_pressed)
								{
									attack = AT_DSTRONG;
									set_attack(AT_DSTRONG);
								}	
								else
								{
									if(left_strong_pressed)
										spr_dir = -1;
									else if(right_strong_pressed)
										spr_dir = 1;
									attack = AT_FSTRONG;
									set_attack(AT_FSTRONG);
								}
							}
							set_attack_value(attack, AG_CATEGORY, 2);
						}
							
					break;
				case 2: //SLAP THESE NUTS. Thanks Equinox <3
					owner = id;
					owner.air_dodge_speed = 9;

					if !variable_instance_exists(owner, "lgroove_can_clutch")
						variable_instance_set(owner, "lgroove_can_clutch", 0);
				
					if(can_move)
					{
						if owner.state == PS_DASH_STOP
							owner.state = PS_IDLE;

						if owner.state == PS_DASH_TURN
							owner.state = PS_DASH_START;
					}

					if owner.state == PS_AIR_DODGE and owner.state_timer == 22
						owner.state = PS_PRATFALL;

					if owner.state == PS_ATTACK_AIR or owner.state == PS_ATTACK_GROUND
					{
						if ((owner.taunt_pressed or owner.taunt_down) and !activated_clutch)
						{
							if(attack == AT_NSPECIAL || attack == AT_FSPECIAL || attack == AT_DSPECIAL
							|| attack == AT_USPECIAL || attack == AT_NSPECIAL_2 || attack == AT_FSPECIAL_AIR
							|| attack == AT_DSPECIAL_AIR || attack == AT_USPECIAL_GROUND )
							{
								hold_clutch();
								clear_button_buffer(PC_TAUNT_PRESSED);
								activated_clutch = true;
								break;
							}
							if owner.lgroove_can_clutch == 1{
								hold_clutch();
								clear_button_buffer(PC_TAUNT_PRESSED);
								activated_clutch = true;
							}
						}
					} else {
						activated_clutch = false;
						owner.lgroove_can_clutch = 0;
					}
					//Air strong
					if(state == PS_ATTACK_AIR)
					{
						if(attack == lgroove_strong && get_attack_value(attack, AG_CATEGORY) == 2)
							set_attack_value(attack, AG_CATEGORY, 1);
						if(state_timer == 0 && (!shield_down && !taunt_down) && 
						(right_strong_pressed || left_strong_pressed || down_strong_pressed || up_strong_pressed))
						{
							vsp /= 2;
							attack = lgroove_strong;
							set_attack_value(attack, AG_CATEGORY, 2);
							set_attack_value(attack, AG_HAS_LANDING_LAG, 1);
							set_attack_value(attack, AG_LANDING_LAG, 8);
							set_attack_value(attack, AG_AIR_SPRITE, get_attack_value(attack, AG_SPRITE));
							set_attack_value(attack, AG_STRONG_CHARGE_WINDOW, 1);
							print_debug(string(get_attack_value(attack, AG_CATEGORY)));
							set_attack(lgroove_strong);
						}
					}
					else if(!free && state != PS_ATTACK_AIR)
					{
						if(lgroove_strong != AT_FSTRONG || lgroove_strong != AT_DSTRONG || lgroove_strong != AT_USTRONG)
							set_attack_value(lgroove_strong, AG_STRONG_CHARGE_WINDOW, 0);
						set_attack_value(lgroove_strong, AG_CATEGORY, 0);
						set_attack_value(lgroove_strong, AG_HAS_LANDING_LAG, 0);
					}
					

					break;
				case 3: //Slay these nuts
					//Change airdodge to a multi-directional dash
					if(state == PS_AIR_DODGE && state_timer == 1)
						air_dash();
					//Shorten Roll
					if(state == PS_ROLL_BACKWARD || state == PS_ROLL_FORWARD)
					{
						if(state_timer == 20 && state == PS_ROLL_FORWARD )
							spr_dir = -spr_dir;
						roll_forward_max = 7;
						roll_backward_max = 7;
					}
					break;
				case 4: //RUSHDOWN THESE NUTS (THE MOST COMPLICATED SHIT WTF)
					//Change airdodge to a multi-directional dash
					if(state == PS_AIR_DODGE && !wavedash_pls && state_timer >= 1)
						air_dash();
					//Chargeable attacks
					if(state == PS_ATTACK_GROUND || state == PS_ATTACK_AIR)
					{
						if(state_timer == 1)
							strong_charge = 0;

						if(attack == AT_DATTACK 
						|| attack == AT_DSPECIAL 
						|| attack == AT_FSPECIAL 
						|| attack == AT_USPECIAL 
						|| attack == AT_NSPECIAL
						|| attack == AT_DSPECIAL_AIR 
						|| attack == AT_FSPECIAL_AIR 
						|| attack == AT_USPECIAL_GROUND 
						|| attack == AT_NSPECIAL_2
						|| attack == AT_JAB)
							set_attack_value(attack, AG_STRONG_CHARGE_WINDOW, 0);
						else
							set_attack_value(attack, AG_STRONG_CHARGE_WINDOW, 1);

						//No Strongs.
						if(attack == AT_USTRONG)
							attack = AT_UTILT;
						if(attack == AT_DSTRONG)
							attack = AT_DTILT;
						if(attack == AT_FSTRONG)
							attack = AT_FTILT;

						//Spark cancelling on ground and its not a special
						if (attack != AT_NSPECIAL || attack != AT_FSPECIAL ||
						attack != AT_USPECIAL || attack != AT_DSPECIAL ||
						attack != AT_NSPECIAL_2 || attack != AT_FSPECIAL_AIR ||
						attack != AT_USPECIAL_GROUND || attack != AT_DSPECIAL_AIR)
						{
							//Allows for hit again.
							if(state_timer == 1)
								attack_end();
								
							//You can spark now :)
							if(has_hit)
								can_spark = true;

							//Do movement
							if(shield_down && can_spark)
							{
								sound_play(asset_get("sfx_coin_capture"));
								spawn_hit_fx(x, y-40, 109);
								white_flash_timer = 5;
								has_hit = false;
								can_shield = true;
								can_spark = false;
								state_timer = 0;
								hitpause = true;
								hitstop += 2;
								destroy_hitboxes();
								if(!free)
								{
									spr_dir = -spr_dir;
									state = PS_ROLL_FORWARD;
								}
								else
									air_dash();
							}
						}
					}

					//Wavedash Macro
					if(state == PS_ROLL_BACKWARD || state == PS_ROLL_FORWARD)
					{
						state = PS_JUMPSQUAT;
						wavedash_pls = true;
					}
					//Make sure you airdodge
					if (wavedash_pls)
					{
						if(state != PS_AIR_DODGE && free && has_airdodge)
						{
							air_dodge_speed = 8;	
							spr_dir = -spr_dir;
							if(left_down || left_pressed)
								hsp = -air_dodge_speed;
							else if(right_down || right_pressed)
								hsp = air_dodge_speed;
							
							vsp = 10;

							state = PS_AIR_DODGE;
							set_state(PS_AIR_DODGE);
						}
						else
							vsp = 2;
					}
					if(!free && state != PS_JUMPSQUAT || state == PS_IDLE_AIR && state_timer >= 2)
						wavedash_pls = false;

					break;
				case 5: //Earth romance me pls :(
						if(((state == PS_DASH || state == PS_DASH_START) || (free && state_cat != SC_AIR_COMMITTED)) && state != PS_HITSTUN) 
						{
							with(pHitBox)
							{
								if(!variable_instance_exists(id, "play_sfx"))
									variable_instance_set(id, "play_sfx", 0);
								if(collision_circle(other.x,other.y-50,120,self,false,false) && type == 2 && player_id != other.player)
									other.initial_invince = 2;
								if(place_meeting(x,y, other) && play_sfx == 0)
								{
									play_sfx = 1;
									spawn_hit_fx(x, y, 17)
									sound_play(asset_get("sfx_coin_capture"));
								}
							}
						}
						else
							initial_invince = -1;
						//Extra Air Option rather than airdodge. UNLESS NEAR GROUND
						if(state == PS_AIR_DODGE)
						{
							clear_button_buffer(PC_SHIELD_PRESSED);
							has_airdodge = false;

							if(!(position_meeting(x,y+6, asset_get("par_block"))
							|| (position_meeting(x,y+6, asset_get("par_jumpthrough")))) )
							{
								if(variable_instance_exists(id, "egroove_custom_action"))
									egroove_custom_action = 1;
								else
								{
									state = PS_DOUBLE_JUMP;
									vsp = -short_hop_speed*1.25;
								}
							}
							y += 5;
						}
					break;
				case 6: //HAL LABATORIES.
					has_airdodge = false;
					hitstun = hitstun_full * 1.25;
					hitstun_grav = .3;
						
					//No more fspecial
					if(url == CH_ORI)
					{
						if(joy_pad_idle && special_pressed && (state_cat == SC_GROUND_NEUTRAL || state_cat == SC_AIR_NEUTRAL))
						{
							attack = AT_FSPECIAL;
							set_attack(AT_FSPECIAL);
						}
					}
					else if(url != CH_RANNO && (attack == AT_FSPECIAL || attack == AT_FSPECIAL_AIR) || url == CH_RANNO && (attack == AT_DSPECIAL || attack == AT_DSPECIAL_AIR))
					{
						attack = AT_NSPECIAL;
						set_attack(AT_NSPECIAL);
					}

					//Adjust hitstun
					if(hitpause)
					{
						if(hit_player_obj != noone && hit_player_obj.hitpause)
						{
							//No more teching
							hit_player_obj.can_wall_tech = false;
							hit_player_obj.hitstun_grav = .3;
							hit_player_obj.hitstun = hit_player_obj.hitstun_full * 1.25;
						}
					}

					//No more drift or DI
					if(state == PS_ATTACK_AIR || state == PS_ATTACK_GROUND)
					{
						for(i = 1; i < get_num_hitboxes(attack)+1; i++)
						{
							set_hitbox_value(attack, i, HG_DRIFT_MULTIPLIER, 0);
							set_hitbox_value(attack, i, HG_SDI_MULTIPLIER, 0);
							print_debug(string(get_hitbox_value(attack, i, HG_DRIFT_MULTIPLIER)));
						}
					}
					break;
				case 7: //Smash 4 >:(
					dmg_rage = clamp(get_player_damage(player)-30, 1, 115); //Rage formula

					if(state == PS_DASH_START) //no more dash dancing
					{
						if(state_timer > 4)
						{
							if(spr_dir == 1)
								clear_button_buffer( PC_LEFT_HARD_PRESSED );
							else
								clear_button_buffer( PC_RIGHT_HARD_PRESSED );
						}
					}

					if(state == PS_AIR_DODGE)
					{
						if(state_timer == 1)
							y -= 10;
						safe_timer = 15;
						save_vsp += gravity_speed/1.75;
						vsp = save_vsp;
						hsp = save_hsp;
						if(state_timer == 15)
							state = PS_PRATFALL;
					}
					else // remember momentum
					{
						if(safe_timer != -1)
						{
							can_fast_fall = false;
							has_airdodge = true;
							if(safe_timer == 0)
								state = PS_IDLE_AIR;

							safe_timer --;
						}
						if(state != PS_PRATFALL)
							safe_timer = -1;

						save_vsp = vsp;
						save_hsp = hsp;
					}
					//RAGE
					if((state == PS_ATTACK_GROUND || state == PS_ATTACK_AIR))
					{				
						for(i = 1; i < get_num_hitboxes(attack)+1; i++)
						{
							reset_hitbox_value(attack, i, HG_BASE_KNOCKBACK);
							set_hitbox_value(attack, i, HG_BASE_KNOCKBACK, ceil(get_hitbox_value(attack, i, HG_BASE_KNOCKBACK) * (dmg_rage * 0.00135 + 1)));
						}
					}
					//rage dust
					if(dmg_rage > 30 && get_gameplay_time() % ceil(30-dmg_rage/10*1.5) == 0)
						fx = spawn_hit_fx(x-10+random_func(0, 20, true), y-40+random_func(0, 25, true), (dmg_rage > 50 ? 142 : 13));
					break;
			}
		}
	}
	}
}

#define hold_clutch()
sound_play(asset_get("sfx_jumpair"));
owner.hsp *= -1;
owner.spr_dir *= -1;

#define air_dash()
#region Airdash
sound_play(asset_get("sfx_roll"));
//WHEEE
dash_timer = (bud_groove == 3 ? 10 : 8);
has_airdodge = false;
//Check for input
if(joy_pad_idle)
{
	air_dodge_speed = 0;
	angle = 90/180*-3.14;
}
else
{
	angle = joy_dir/180*-3.14;
	air_dodge_speed = 8;
}

vsp = (wavedash_pls ? 4 : sin(angle) * air_dodge_speed * 1.25);
hsp = cos(angle) * air_dodge_speed * 1.25;
old_vsp = vsp;
old_hsp = hsp;
wavedash_pls = false;
state = PS_IDLE_AIR;
#endregion

#define spawn_base_dust
#region //This function spawns base cast dusts. Names can be found below.
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
#endregion