//pre-update
event3_context = "pre-update"; user_event(3);
var move_dir = right_down - left_down;
var down_down_lenient = down_down || (!joy_pad_idle && (joy_dir > 200 && joy_dir < 340));

//#mark Hit FX Scanner
var stomp_connected = false, tail_connected = false;
with(hit_fx_obj) if(object_index == hit_fx_obj && hit_fx != 1 && player_id == other && draw_angle > -2880) {
	var recognized = true;
	draw_angle -= 3240;
	
	var fx_identity = variable_instance_get(other.HIT_FX_KEYS_OBJ, string(hit_fx), [other.ATTACKS_OBJ.unknown, false, 0]);
	
	var fx_name = fx_identity[0].name, fx_destroyed = fx_identity[1], fx_player = fx_identity[2], fx_player_id = other.player_instances[fx_player];
	
	if(fx_destroyed) switch(fx_name) {
		case "Fireball":
			sound_play(sound_get("fireball_wall"));
			var dusteroo = instance_create(round(x), round(y), "obj_article1");
			dusteroo.variant = "dust"; dusteroo.life = 20;
		break;
		
		case "Iceball":
			sound_play(sound_get("iceball_wall")); var snowflake_decal_sprite = sprite_get("decal_snowflake");
			for(var counteroo = 0; counteroo < 8; counteroo++) {
				var snowflakeroo = instance_create(round(x + (random_func(counteroo + 0, 1, false) - 0.5) * 16), round(y + (random_func(counteroo + 1, 1, false) - 0.5) * 16), "obj_article1");
				snowflakeroo.variant = "snowflake"; snowflakeroo.sprite_index = snowflake_decal_sprite;
				snowflakeroo.hsp = random_func(counteroo + 2, 1, false) - 0.5; snowflakeroo.vsp = random_func(counteroo + 3, 1, false) - 0.5;
				snowflakeroo.life = 20 + random_func(counteroo + 3, 12, true);
			}
		break;
		
		case "Unknown": default:
			print(`Unrecognized destroyed FX: "${fx_name}"`);
			recognized = false;
		break;
	}
	else switch(fx_name) {
		case "Stomp": case "Spin Jump": case "Ground Pound": case "Falling Tanooki Statue":
			if(other.listening_for_hitpause) other.found_hitpause = true;
		break;
		
		case "Ceiling Bump":
			other.listening_for_hitpause = false;
		break;
		
		case "Pillar Breaker":
			
		break;
		
		case "Throw Enemy": break;
		
		case "Fireball":
			earn_points_for(x, y, fx_player_id, other, 100);
			earn_coins_for(x, y, fx_player_id, other, 1, true);
		break;
		
		case "Iceball":
			earn_points_for(x, y, fx_player_id, other, 200);
		break;
		
		case "Tanooki Tail":
			other.listening_for_hitpause = false;
			earn_points_for(x, y, other, other, 400);
		break;
		
		case "Blue Koopa Shell":
			play_prog_sfx(other.PROG_SFX_OBJ.kick, null, other.consecutive_hits);
			earn_coins_for(x, y, other.shell_points_owner, other);
			earn_points_for(x, y, other.shell_points_owner, other, QMP_POINTS_ARRAY[other.consecutive_hits % 8]);
			if(other.consecutive_hits % 8 == 7) earn_life_for(x, y, other.shell_points_owner, other);
			
			other.consecutive_hits++;
		break;
		
		case "Koopa Troopa Shell":
			var koopa_shell = find_flotbox(x, y, 200, other.ATTACKS_OBJ.koopa_shell, fx_player);
			if(instance_exists(koopa_shell)) {
				play_prog_sfx(other.PROG_SFX_OBJ.kick, null, koopa_shell.consecutive_hits);
				earn_coins_for(x, y, fx_player_id, other);
				earn_points_for(x, y, fx_player_id, other, QMP_POINTS_ARRAY[koopa_shell.consecutive_hits % 8]);
				if(koopa_shell.consecutive_hits % 8 == 7) earn_life_for(x, y, fx_player_id, other);
				
				koopa_shell.consecutive_hits++;
			}
			else {
				play_prog_sfx(other.PROG_SFX_OBJ.kick, null, 0);
				earn_points_for(x, y, fx_player_id, other, 100);
			}
		break;
		
		case "Ice Block":
			var frozen_object = find_flotbox(x, y, 200, other.ATTACKS_OBJ.ice_block, fx_player);
			if(instance_exists(frozen_object)) {
				play_prog_sfx(other.PROG_SFX_OBJ.kick, null, frozen_object.consecutive_hits);
				earn_coins_for(x, y, fx_player_id, other);
				earn_points_for(x, y, fx_player_id, other, QMP_POINTS_ARRAY[frozen_object.consecutive_hits % 8]);
				if(frozen_object.consecutive_hits % 8 == 7) earn_life_for(x, y, fx_player_id, other);
				
				frozen_object.consecutive_hits++;
			}
			else {
				play_prog_sfx(other.PROG_SFX_OBJ.kick, null, 0);
				earn_points_for(x, y, fx_player_id, other, 100);
			}
		break;
		
		case "Ice Shatter": break;
		
		case "Unknown": default:
			print(`Unrecognized attack FX: "${fx_name}"`);
			recognized = false;
		break;
	}
	
	// print_debug(`Found Hit FX ${fx_identity[0].name}${fx_identity[1]?" (destroyed)":" (hit)"} from P${fx_identity[2]} (FX value ${hit_fx})`);
	if(recognized) {
		x = -300; y = -300; hsp = 0; vsp = 0;
		// hit_fx = 1; //<-- that was a test and it was not a successful one
	}
}

//#mark Hitpause behaviour
if(aggressive_hitstop > 0) {
	aggressive_hitstop--;
	if(aggressive_hitstop > hitstop) {
		if(!hitpause) {
			listening_for_hitpause = false;
			hitpause = true; old_hsp = hsp; old_vsp = vsp;
			hitstop_full = aggressive_hitstop;
		}
		hitstop = aggressive_hitstop;
	}
}
if(hitpause) {
	animation_frozen = true;
	cancel_state_processing = true;
	transition_to_frames--;
	transition_to_statue--;
	
	if(hitpause_spr_dir != 0) { spr_dir = hitpause_spr_dir; hitpause_spr_dir = 0; }
	
	//Record hitpause if we're listening for it (used to detect stomps)
	if(listening_for_hitpause) {
		stomped_success = true;
		found_hitpause = true;
	}
}
else {
	animating_hitpause = false;
	if(transition_to_frames > 0) transition_to_frames = 0;
}
if(transition_to_frames == 0 || transition_to_frames == -1) {
	if(!phone_cheats[CHEAT_SUPPRESS_POWERCHANGE]) neo_power = transition_to_power;
	transition_to_frames = -2;
}
if(transition_to_statue == 0 || transition_to_statue == -1) {
	neo_armor = true; super_armor = true; damage_scaling = 0;
	neo_sprite_name = "statue";
}
listening_for_hitpause = false;
prev_hitpause = hitpause;

//Drop things when attacked
if(hit_last_frame) {
	if(instance_exists(carry_obj)) {
		if(carry_obj.object_index == oPlayer || carry_obj.object_index == oTestPlayer)
			lose_player();
		else
			lose_item();
	}
	hit_last_frame = false;
}

if(bubbled) {
	cancel_state_processing = true;
	if(!prev_bubbled) {
		unpause_queue_voice = "bubble";
		prev_bubbled = true;
		bubble_time = neo_power.size_profile.ranno_bubble_time;
	}
}
else {
	prev_bubbled = false;
	if(state != PS_ATTACK_AIR && state != PS_ATTACK_GROUND && state != PS_HITSTUN)
		cancel_state_processing = true;
}

prev_bubbled = bubbled;

if(cancel_state_processing) {
	carry_update("no process");
}
else {
	//#region Mario Update
	event3_context = "early update"; user_event(3);
	var p_loss_coefficient = 1.0;
	
	if(STAGE_COMPAT_OBJ.start_with_tanooki) {
		STAGE_COMPAT_OBJ.start_with_tanooki = false;
		obtain_power_up(POWER_OBJ.tanooki_leaf, true, false);
	}
	
	// if(fs_using_final_smash && neo_state != "Final Smash Plat")
	// 	change_neostate("Final Smash Plat", free?"Charging":"Jumping", "final_smash");
	
	//#region Debug Functionality
	if(phone_cheats[CHEAT_KEYBOARD_CHEATS]) switch(keyboard_lastkey) {
		case 78:
			keyboard_lastkey = 0;
			if(neo_state == "Noclip") {
				enter_normal_state();
				sound_play(sound_get("bookworm_gem"));
			}
			else {
				change_neostate("Noclip", "Noclip", "idle");
				sound_play(sound_get("bookworm_gem"));
			}
		break;
		case 77:
			keyboard_lastkey = 0;
			reserve_slot = variable_instance_get(RESERVE_OBJ, get_string("Enter new item ID:", "red_koopa_shell"));
			sound_play(sound_get("reserve_store"));
		break;
		case 66:
			keyboard_lastkey = 0;
			neo_points = real(get_string("Enter new points number:", "0"));
		break;
		case 86:
			keyboard_lastkey = 0;
			tallying_points = true;
		break;
	}
	//#endregion
	
	//#mark Burn transition
	if(burned && burn_timer == 1 && neo_state != "Respawn Plat" && neo_state != "Final Smash Plat" && neo_state != "Cutscene" && neo_state != "Burnt") {
		change_neostate("Burnt", "Burn Jump", "burn_jump");
		hsp = 0; vsp = -4;
	}
	
	//#region Behaviour Determination
	var neo_behaviour = neo_state, state_overridden = false;
	//Solve grab/lift data inconsistencies before they can cause errors
	switch(identify_carry_type(id)) {
		
		case "grab item": case "lift object":
			if(!instance_exists(carry_obj)) {
				carry_obj = noone; exit_carrying_state();
				state_overridden = true;
				// print("The carry obj is missing!");
			}
		break;
		case "none":
			if(instance_exists(carry_obj)) {
				// print("The carry obj was not reset properly!");
				if(carry_obj.object_index == oPlayer || carry_obj.object_index == oTestPlayer)
					lose_player();
				else
					lose_item();
			}
		break;
	}
	
	//Limit based on powers
	switch(neo_state) {
		case "Tail Wag": case "Tanooki Statue":
			if(neo_power.name != "Tanooki Leaf") enter_aerial_state();
		break;
		case "Grab Item Tail Wag":
			if(!power_in_stack(id, "Tanooki Leaf")) enter_aerial_state("Grab Item Aerial", "grab_jump", "grab_duck");
		break;
		case "Lift Object Tail Wag":
			if(!power_in_stack(id, "Tanooki Leaf")) enter_aerial_state("Lift Object Aerial", "lift_jump");
		break;
		
		case "Shell Hide": case "Shell Spin":
			if(neo_power.name != "Blue Shell") enter_normal_state();
		break;
		
		case "Propeller Spin":
			if(neo_power.name != "Propeller Mushroom") enter_normal_state();
		break;
	}
	//#endregion
	
	neo_behaviour = neo_state;
	
	switch(neo_behaviour) {
		//#region State Behaviour
		case "Noclip":
			//#region Noclip
			
			///Behaviour
			mask_override = sprite_get("mask_dead");
			if(!joy_pad_idle) {
				var noclip_speed = input_run?12.5:6.5;
				hsp = lengthdir_x(noclip_speed, joy_dir);
				vsp = lengthdir_y(noclip_speed, joy_dir);
			}
			else {
				hsp = 0; vsp = 0;
			}
			if(move_dir != 0) spr_dir = move_dir;
			if(down_down) neo_animstate = "duck";
			else neo_animstate = "idle";
			fall_through = true;
			
			///Animstate Overrides
			collect_power_ups();
			
			///Exit Conditions
			repeat(1) {
				
			}
			
			//Static State Behaviours
			perform_fireball_actions();
			
			//#endregion
		break;
		case "Cutscene":
			//#region Cutscene
				
				switch(neo_substate) {
					case "Death":
						invincible = 3; invince_time = 30;
						reserve_allowed = false;
						spr_dir = 1; mask_override = sprite_get("mask_dead");
						fall_through = true;
						
						if(neo_statetimer == 1) {
							hsp *= 0.75; vsp *= 1.05;
							
							//Bias for the classic straight upwards death arc
							if(vsp < 2) {
								if(vsp > -8) {
									vsp = -8;
									hsp *= 0.75;
								}
							}
							else {
								vsp = -3.5; hsp *= 0.85;
							}
							
							if(abs(hsp) < 2.5) hsp = 0;
						}
						else if(neo_statetimer == 20) {
							sound_play(neo_char.death_song.index);
							music_suppression_time = neo_char.death_song.length;
						}
						
						// x += death_hsp; y += death_vsp;
						
						vsp += 0.25;
						
						//Makes Mario die off the top
						//This is probs 100% pointless now that Mario should actually stay hitstun while dying
						//But I don't care enough to test what happens when I remove it
						if(y < phone_blastzone_t && death_vsp < 0) {
							set_state(PS_HITSTUN);
							hitstun = 60;
							nspecial_leniency_timer = 60;
						}
						
						// if() {
						// 	//just spawn a deathbox if we're in the dying state for too long
						// 	create_deathbox(floor(x), floor(y - 16), 64, 64, player, true, 1, 2, 1);
						// }
						
						//Insta-die if Mario falls too fast, stays dead for too long, or touches a deathbox
						if(vsp > 2.5 * 60 * 0.25 || neo_statetimer >= 7 * 60 || collision_point(x, y, asset_get("death_block_obj"), true, false)) {
							invincible = 0; attack_invince = 0; initial_invince = 0; invince_time = 0;
							create_deathbox(floor(x - 60000), floor(y - 60000), 64, 64, player, true, 1, 2, 1);
						}
					break;
				}
				
			//#endregion
		break;
		case "Helpless":
			//#region Helpless
			
			///Behaviour
			helpless_darken = true; if(give_flicker_frames) neo_armor = true;
			vsp = min(vsp + move_air.fall_accel * 0.8, move_air.fall_speed);
			
			if(neo_substate != "Parried") neo_animstate = "jump";
			
			process_aerial_drift(move_dir, false, (neo_substate == "Parried")?0.7:0.45);
			
			///Animstate Overrides
			push_players(false);
			collect_power_ups();
			
			///Exit Conditions
			repeat(1) {
				if(y < phone_blastzone_t && vsp < 0) {
					set_state(PS_HITSTUN);
					hitstun = 60;
					nspecial_leniency_timer = 60;
					continue;
				}
				
				if(!free) {
					sound_play(floor_type.land_sfx);
					enter_normal_state();
					continue;
				}
				
				if(abs(hsp) > 1 && place_meeting(x + hsp, y, asset_par_block)) {
					print("Exited hitstun due to contact with a wall");
					set_attack(AT_NSPECIAL);
				}
				
				//Exit state by starting a wall skid
				if(wall_skidding(move_dir)) {
					firsties_hsp = max_abs(prev_hsp, prev_prev_hsp);
					hsp = move_dir * 8; spr_dir = move_dir * -1;
					vsp = 0;
					change_neostate("Wall Slide", "Wall Slide", "wall_slide");
					set_attack(AT_NSPECIAL);
					continue;
				}
			}
			
			//#endregion
		break;
		
		case "Grounded":
			//#region Grounded
			
			///Behaviour
			if(down_down && no_override && neo_power.name != "Blue Shell") {
				//Mario is ducking
				training_town_crouch = true;
				
				if(neo_animstate != "duck") {
					sound_play(sound_get("duck"), false, noone, 0.3, 1.0);
					voice("duck");
					if(move_type.name == "Ice") hsp *= 1.25;
				}
				neo_animstate = "duck"; duck(false);
				if(move_dir != 0 && move_dir != spr_dir) {
					spr_dir = move_dir;
					sound_play(sound_get("duck"), false, noone, 1.0, 1.0);
				}
				if(abs(hsp) <= move_type.ducking_deaccel) {
					hsp = 0;
					neo_substate = "Duck Idle";
				}
				else {
					hsp -= sign(hsp) * move_type.ducking_deaccel;
					neo_substate = "Duck Skid";
					enable_skid_sfx(floor_type.skid_sfx, floor_type.skid_sfx_freq);
				}
			}
			else {
				if(neo_animstate == "duck") sound_play(sound_get("duck"), false, noone, 1.0, 1.25);
				if(move_dir == 0) {
					if(abs(hsp) <= move_type.neutral_deaccel) {
						hsp = 0;
						if(neo_animstate == "walk") play_footstep_sfx();
						if(up_down) {
							neo_substate = "Looking Up";
							neo_animstate = "look_up";
						}
						else {
							neo_substate = "Idle";
							neo_animstate = "idle";
						}
					}
					else {
						hsp -= sign(hsp) * move_type.neutral_deaccel;
						neo_substate = "Neutral Deaccel";
						if(move_type.sliding_deaccel) {
							neo_animstate = "idle";
							enable_skid_sfx(floor_type.skid_sfx, floor_type.skid_sfx_freq);
						}
						else {
							neo_animstate = "walk";
						}
					}
				}
				else {
					if(input_run) {
						spr_dir = move_dir;
						if(sign(hsp) != 0 && move_dir != sign(hsp)) {
							//You only start skidding if you're attempting to turn around
							//If you're already facing against your momentum for some reason
							//(like if you turn around in midair) you won't skid
							if(abs(hsp) > move_type.skid_threshold || neo_substate == "Skid") {
								neo_substate = "Skid";
								neo_animstate = "skid";
								hsp -= sign(hsp) * move_type.skid_deaccel;
								if(hsp * move_dir >= 0) {
									hsp = 0;
									skid_timer = move_type.skid_frames;
									neo_substate = "Skid Extension";
									
									dust_status = "Skid Extension 100%";
									sound_play(sound_get("skid_old"));
								}
								else {
									enable_skid_sfx(floor_type.skid_sfx, floor_type.skid_sfx_freq);
								}
								
								
							}
							else {
								neo_substate = "Run Against Momentum";
								neo_animstate = move_type.special_run_animstate;
								hsp += move_dir * move_type.run_against_momentum_accel;
							}
						}
						else {
							if(neo_substate == "Skid Extension" && skid_timer > 0) {
								skid_timer--;
							}
							else {
								if(abs(hsp) > move_type.run_speed) {
									hsp -= move_dir * move_type.overrun_speed_reduction;
									neo_substate = "Overrun";
									neo_animstate = "run";
									if(abs(hsp) < move_type.run_speed) {
										hsp = move_dir * move_type.run_speed;
									}
								}
								else {
									neo_animstate = "walk";
									if(abs(hsp) < move_type.walk_speed) {
										hsp += move_dir * move_type.run_from_standstill_accel;
										neo_animstate = move_type.special_run_animstate;
										neo_substate = "Run Sub-Walking";
									}
									else {
										hsp += move_dir * move_type.run_accel;
										neo_substate = "Run Accel";
										if(abs(hsp) > move_type.run_speed) {
											hsp = move_dir * move_type.run_speed;
											neo_substate = "Run Max";
											neo_animstate = "run";
										}
									}
								}
							}
						}
					}
					else {
						neo_animstate = "walk"; spr_dir = move_dir;
						if(sign(hsp) != 0 && move_dir != sign(hsp)) {
							hsp += move_dir * move_type.walk_against_momentum_accel;
							neo_substate = "Walk against momentum";
						}
						else {
							if(abs(hsp) > move_type.walk_speed) {
								hsp -= move_dir * move_type.overwalk_speed_reduction;
								neo_substate = "Overwalk";
								if(abs(hsp) < move_type.walk_speed) {
									hsp = move_dir * move_type.walk_speed;
								}
							}
							else {
								hsp += move_dir * move_type.walk_accel;
								neo_substate = "Walk accel";
								if(abs(hsp) > move_type.walk_speed) {
									neo_substate = "Walk";
									hsp = move_dir * move_type.walk_speed;
								}
							}
						}
					}
				}
			}
			
			///Anim overrides (like fireballs and kicking things)
			kick_items(neo_animstate != "duck");
			push_players(true);
			collect_power_ups();
			
			///Exit Conditions
			repeat(1) { 
				//Using a repeat(1) here is extraordinarily stupid BUT it lets me use the continue statement for
				//a RIDICULOUSLY easy and intuitive priority system that will prevent two exit conditions from
				//occuring simultaneously
				//I'm sorry for making code like this
				
				//Exit state by leaving ground
				if(free) {
					if(neo_animstate == "duck") change_neostate("Aerial", "Duck Fall", "duck");
					else change_neostate("Aerial", "Fall", "fall");
					continue;
				}
				
				
				//Exit state by carrying something
				if(!down_down) {
					//Exist state by grabbing or lifting an item
					if(composite_carry_item(true, "Grab Item Grounded", (hsp == 0)?(up_down?"grab_look_up":"grab_idle"):"grab_walk", "Lift Object Grounded", (hsp == 0)?"lift_idle":"lift_walk")) continue;
				}
				
				//Exit state by entering shell
				if(neo_power.name == "Blue Shell") {
					if((down_down && abs(hsp) >= 7) || neo_substate == "Run Max" || neo_substate == "Overrun") {
						sound_play(sound_get("shell_hide"));
						enter_shell(true, "Shell Spin", down_down?"Duck":"Run", "shell_spin");
						hsp = sign(hsp) * 10;
						continue;
					}
					if(down_down) {
						sound_play(sound_get("shell_hide"));
						enter_shell(true, "Shell Hide", "Duck", "shell_duck");
						continue;
					}
				}
				
				//Exit state by becoming a statue
				if(attempt_tanooki_statue()) continue;
				
				//Exit state by pressing Taunt while standing still
				if(taunt_pressed && hsp == 0) {
					if (joy_pad_idle && phone_practice) {
						change_neostate("Phone", "Phone", "phone");
						set_attack(AT_TAUNT);
					}
					else {
						change_neostate(neo_char.taunt_state, neo_char.taunt_substate, neo_char.taunt_animstate);
					}
					
					continue;
				}
				
				//Exit state by pressing Jump
				if(input_jump_pressed) {
					unbuffer_input("jump");
					dust_status = "Jump Frame";
					jump_sfx_instance = sound_play(sound_get("jump"));
					//Duck Jump
					if(neo_animstate == "duck") {
						voice("duckjump");
						change_neostate("Aerial", "Duck Jump", "duck");
						hsp *= 0.8; vsp = -13;
						continue;
					}
					//Sideflip
					if(neo_substate == "Skid Extension") {
						voice("sideflip");
						change_neostate("Aerial", "Sideflip", "sideflip");
						hsp = 4 * move_dir; vsp = -17;
						continue;
					}
					//Ice Jump
					if(abs(hsp) > 2 && move_type.name == "Ice") {
						sound_play(sound_get("ice_jump"));
						voice("doublejump");
						change_neostate("Aerial", "Ice Jump", "spin");
						
						var boost = max(0, (min(move_type.run_speed, abs(hsp)) / 3.0));
						hsp *= 0.85; vsp = -14 - boost;
						continue;
					}
					//Triple Jump
					if(doublejump_land_time > get_gameplay_time() - 3 && abs(hsp) > move_type.triplejump_threshold && move_dir == sign(hsp)) {
						if(neo_power.name == "Blue Shell") {
							//Blue Shell Triple Jump
							sound_stop(jump_sfx_instance);
							jump_sfx_instance = sound_play(sound_get("jump_shell"));
							doublejump_land_time = -100;
							voice("triplejump");
							// change_neostate("Aerial", "Triple Jump", "triplejump");
							enter_shell(true, "Shell Spin", "Triple Jump", "shell_triple_jump");
							hsp = 9 * move_dir; vsp = -17;
							p_speed = 1;
							continue;
						}
						else {
							//Normal Triple Jump
							doublejump_land_time = -100;
							voice("triplejump");
							change_neostate("Aerial", "Triple Jump", "triplejump");
							hsp = move_type.run_speed * move_dir; vsp = -20;
							p_speed = 1;
							continue;
						}
					}
					//Double Jump
					if(jump_land_time > get_gameplay_time() - 3 && (hsp == 0 || sign(hsp) == spr_dir)) {
						jump_land_time = -100;
						voice("doublejump");
						change_neostate("Aerial", "Double Jump", "doublejump");
						var boost = max(0, (min(move_type.run_speed, abs(hsp)) / 3.0));
						vsp = -16.5 - boost;
						continue;
					}
					//Star Jump
					if(move_type.name == "Starman") {
						change_neostate("Aerial", "Star Jump", "somersault");
						voice("doublejump");
						var boost = max(0, (min(move_type.run_speed, abs(hsp)) / 2.6));
						hsp *= 1.0; vsp = -16.5 - boost;
						continue;
					}
					//Max-speed Jump
					if(neo_substate == "Run Max" || neo_substate == "Overrun") {
						change_neostate("Aerial", "Max Jump", "run_jump");
						var boost = max(0, (move_type.run_speed / 2.6));
						hsp *= 1; vsp = -13 - boost;
						continue;
					}
					//Regular Jump
					change_neostate("Aerial", "Jump", "jump");
					var boost = max(0, (min(move_type.run_speed, abs(hsp)) / 2.6));
					hsp *= 0.85; vsp = -13 - boost;
					continue;
				}
				
				//Exit state by rolling
				if(input_roll_pressed) {
					unbuffer_input("roll");
					voice("roll");
					if(blj_land_time > get_gameplay_time() - 7) {
						change_neostate("Roll", "Backwards Roll", "roll");
						hsp = 2 * blj_land_hsp;
						spr_dir = -1 * sign(blj_land_hsp);
					}
					else {
						change_neostate("Roll", "Roll", "roll");
						dust_status = "Start Roll";
						hsp += 4 * spr_dir;
						roll_initial_speed = hsp;
					}
					continue;
				}
				
				//Exit state by spin jumping
				if(perform_spin_action()) continue;
			}
			
			///Static-state Behaviours
			perform_fireball_actions();
			
			//#endregion
		break;
		
		case "Aerial":
			//#region Aerial
			
			///Behaviour
			vsp = min(vsp + move_air.fall_accel, move_air.fall_speed);
			// process_aerial_gravity(jump_down);
			if(vsp > 0) sound_volume(jump_sfx_instance, 0, 40);
			//Jump capping
			if(!input_jump) {
				var up_cap = -999;
				switch(neo_substate) {
					case "Duck Jump":
						up_cap = -2;
					break;
					case "Double Jump": case "Triple Jump": case "DJump Twirl": case "TJump Twirl":
						up_cap = -3;
					break;
					case "Jump": case "Max Jump": case "Twirl": case "Star Jump":
						up_cap = -4;
					break;
					case "Sideflip": case "SFlip Twirl": case "Ice Jump": case "Wall Jump":
						up_cap = -6;
					break;
					case "Stomp":
						up_cap = -8.5;
					break;
				}
				
				if(vsp < up_cap) {
					vsp = up_cap;
					// sound_volume(jump_sfx_instance, 0, 100);
				}
			}
			
			if(neo_substate != "Wall Jump" || move_dir == spr_dir)
				process_aerial_drift(move_dir, (neo_substate != "Triple Jump" && neo_substate != "Sideflip" && neo_substate != "Wall Jump"), 1);
			
			//Duck-jump behaviour
			if(neo_substate == "Duck Jump" || neo_substate == "Duck Fall") {
				if(down_down) duck(false);
				else change_neostate(neo_state, "Jump", "jump");
			}
			
			//Wall Jump behaviour
			if(neo_substate == "Wall Jump" && neo_substatetimer > 18) change_neostate("Aerial", "Jump", "jump");
			
			///Common Behaviours
			kick_items(false);
			push_players(false);
			collect_power_ups();
			bump_ceilings();
			
			///Exit Conditions:
			repeat(1) {
				//Exit state by landing
				if(!free && vsp > 0) {
					sound_play(floor_type.land_sfx);
					dust_status = "Land Frame";
					
					switch(neo_substate) {
						case "Jump": case "Max Jump": case "Stomp": case "Sideflip": case "Star Jump":
							jump_land_time = get_gameplay_time();
						break;
						case "Double Jump":
							doublejump_land_time = get_gameplay_time();
						break;
						case "Duck Jump": case "Duck Fall":
							hsp *= 0.5;
						break;
					}
					
					enter_normal_state();
					continue;
				}
				
				//Exit state by carrying something
				if(!down_down && composite_carry_item(false, "Grab Item Aerial", "grab_jump", "Lift Object Aerial", "lift_jump")) continue;
				
				//Exit state by becoming a statue
				if(attempt_tanooki_statue()) continue;
				
				//Exit state by tail-flying or tail-stalling
				if(attempt_tail_wag()) continue;
				
				//Exit state by ground-pounding
				if(neo_substate != "Duck Jump" && (down_pressed || input_roll_pressed)) {
					hsp = 0; vsp = 0;
					pound_twirl_sfx_instance = sound_play(sound_get("pound_twirl"));
					if(neo_power.name == "Blue Shell")
						enter_shell(true, "Ground Pound", "Twirl", "shell_pound_twirl");
					else
						change_neostate("Ground Pound", "Twirl", "pound_twirl");
					continue;
				}
				
				//Exit state by starting a wall skid
				if(wall_skidding(move_dir)) {
					firsties_hsp = max_abs(prev_hsp, prev_prev_hsp);
					hsp = move_dir * 8; spr_dir = move_dir * -1;
					vsp = 0;
					change_neostate("Wall Slide", "Wall Slide", "wall_slide");
					continue;
				}
				
				//Exit state by twirling
				if(perform_spin_action()) continue; 
				// var can_twirl = (neo_substate != "Star Jump" && (vsp > 0 || neo_substate != "Stomp"));
				// if(can_twirl && input_spin_pressed && get_gameplay_time() > last_twirl_time + 21) {
				// 	unbuffer_input("spin");
				// 	last_twirl_time = get_gameplay_time();
				// 	vsp = min(0, vsp);
				// 	sound_play(sound_get("twirl"));
				// 	if(unduck()) change_neostate(neo_state, "Jump", "jump");
					
				// 	switch(neo_animstate) {
				// 		case "sideflip":
				// 			var twirling_animstate = "sflip_twirl";
				// 		break;
				// 		case "triplejump":
				// 			var twirling_animstate = "tjump_twirl";
				// 		break;
				// 		default:
				// 			var twirling_animstate = "twirl";
				// 		break;
				// 	}
				// 	var save_anim_timer = neo_animtimer; pre_twirl_animstate = neo_animstate;
				// 	enter_aerial_state("Twirl", twirling_animstate, "duck", true);
				// 	neo_animtimer = save_anim_timer;
					
				// 	continue;
				// }
			}
			
			///Static state behaviours
			perform_fireball_actions(neo_substate != "Wall Jump");
			create_stomp_hitbox(STOMPS_OBJ.normal, "Aerial", "Stomp", "jump");
			
			//#endregion
		break;
		
		case "Twirl":
			//#region Twirl
			
			///Behaviour
			vsp = min(vsp + (move_air.fall_accel * (vsp > 0?move_air.twirl_gravity_mult:1)), move_air.fall_speed);
			if(vsp > 0) sound_volume(jump_sfx_instance, 0, 40);
			//Jump capping
			if(!input_jump) {
				var up_cap = -999;
				switch(neo_substate) {
					case "Duck Jump":
						up_cap = -2;
					break;
					case "Double Jump": case "Triple Jump": case "DJump Twirl": case "TJump Twirl":
						up_cap = -3;
					break;
					case "Jump": case "Max Jump": case "Twirl": case "Star Jump":
						up_cap = -4;
					break;
					case "Sideflip": case "SFlip Twirl": case "Ice Jump": case "Wall Jump":
						up_cap = -6;
					break;
					case "Stomp":
						up_cap = -8.5;
					break;
				}
				
				if(vsp < up_cap) {
					vsp = up_cap;
				}
			}
			process_aerial_drift(move_dir, false, (vsp > 0)?move_air.twirl_drift_mult:1);
			
			//Wall Jump behaviour
			if(neo_substate == "Wall Jump" && neo_substatetimer > 10) change_neostate("Aerial", "Jump", "jump");
			
			///Common Behaviours
			kick_items(false);
			push_players(false);
			collect_power_ups();
			bump_ceilings();
			
			///Exit Conditions:
			repeat(1) {
				//Exit state by landing
				if(!free && vsp > 0) {
					sound_play(floor_type.land_sfx);
					dust_status = "Land Frame";
					
					switch(neo_substate) {
						case "Jump": case "Max Jump": case "Stomp": case "Sideflip": case "Star Jump": case "Twirl":
							jump_land_time = get_gameplay_time();
						break;
						case "Double Jump": case "DJump Twirl":
							doublejump_land_time = get_gameplay_time();
						break;
						case "Duck Jump": case "Duck Fall":
							hsp *= 0.5;
						break;
					}
					
					enter_normal_state();
					
					continue;
				}
				
				//Exit state by wavetwirling (platform)
				if(vsp < 0 && place_meeting(x, y, asset_get("par_jumpthrough")) && !place_meeting(x, y + vsp, asset_get("par_jumpthrough"))) {
					vsp = 0;
					while(place_meeting(x, y, asset_get("par_jumpthrough"))) {
						y--;
					}
					free = false;
					last_twirl_time = -100;
					sound_play(floor_type.land_sfx);
					jump_land_time = get_gameplay_time() + 10;
					
					// hsp = move_dir * 4;
					if(joy_pad_idle) hsp = 0;
					else hsp = lengthdir_x(4, joy_dir);
					
					enter_normal_state();
					continue;
				}
				
				//Exit state by becoming a statue
				if(attempt_tanooki_statue()) continue;
				
				//Exit state by timing out the twirl
				if(neo_statetimer > 8) {
					var save_anim_timer = neo_animtimer;
					enter_aerial_state("Aerial", pre_twirl_animstate, "duck", true);
					neo_animtimer = save_anim_timer;
					continue;
				}
				
				//Exit state by grabbing item (i.e. koopa shell)
				if(composite_carry_item(false, "Grab Item Twirl", "grab_twirl", "Lift Object Twirl", "lift_twirl")) continue;
				
				//Exit state by starting a wall skid
				if(wall_skidding(move_dir)) {
					firsties_hsp = max_abs(prev_hsp, prev_prev_hsp);
					hsp = move_dir * 8; spr_dir = move_dir * -1;
					vsp = 0;
					change_neostate("Wall Slide", "Wall Slide", "wall_slide");
					continue;
				}
			}
			
			///Static state behaviours
			create_stomp_hitbox(STOMPS_OBJ.normal, "Aerial", "Stomp", "jump");
			
			//#endregion
		break;
		
		case "Spin Jump":
			//#region Spin Jump
			
			///Behaviour
			vsp = min(vsp + move_air.fall_accel, move_air.fall_speed);
			if(neo_substate == "Spin Jump" && !input_spin && !input_jump && vsp < -3) vsp = -3;
			if(neo_substate == "Wall Jump" && !input_spin && !input_jump && vsp < -3) vsp = -3;
			if(neo_substate == "Stomp" && !input_spin && !input_jump && vsp < -8) vsp = -8;
			process_aerial_drift(move_dir, false, 1);
			
			//Fall-through spinning
			if(vsp > 2 && neo_animstate == "twirl" && input_spin) change_neostate("Spin Jump", "Drill", "spin", true, true, false);
			if(neo_substate == "Drill") fall_through = true;
			
			///Animstate Overrides
			kick_items(false, false);
			push_players(false);
			perform_spin_power_actions();
			collect_power_ups();
			
			///Exit Conditions
			repeat(1) {
				//Land
				if(!free) {
					enter_normal_state();
					dust_status = "Land Frame";
					sound_play(floor_type.land_sfx);
					continue;
				}
				
				//Exit state by grabbing item (i.e. koopa shell)
				if(composite_carry_item(false, "Grab Item Spin Jump", "grab_spin", "Lift Object Spin Jump", "lift_spin")) continue;
				
				//Exit state by performing a spinning wall jump
				if(wall_skidding(move_dir)) {
					if(input_jump_pressed) {
						unbuffer_input("jump");
						sound_play(sound_get("wall_jump"));
						voice("wallkick");
						wall_jump_y = y; wall_jump_polarity = -1 * spr_dir;
						hsp = move_dir * -7.75; vsp = -14;
						spr_dir = -1 * move_dir;
						
						dust_status = "Wall Jump Frame";
						create_burst_decal();
						
						change_neostate("Aerial", "Wall Jump", "jump");
						continue;
					}
					if(false && input_spin_pressed) {
						unbuffer_input("spin");
						sound_play(sound_get("wall_jump"));
						sound_play(sound_get("spin_jump"));
						voice("wallkick");
						wall_jump_y = y; wall_jump_polarity = -1 * spr_dir;
						hsp = move_dir * -5; vsp = -10.5;
						spr_dir = -1 * move_dir;
						
						dust_status = "Wall Jump Frame";
						create_burst_decal();
						
						change_neostate("Spin Jump", "Wall Jump", "twirl");
						
						continue;
					}
				}
				
				//Exit state by tail-flying or tail-stalling
				if(wall_jump_y == 0 && attempt_tail_wag()) continue;
			}
			
			///Stomping
			create_stomp_hitbox(STOMPS_OBJ.spin_jump, "Spin Jump", "Stomp", "twirl");
			bump_ceilings();
			
			//#endregion
		break;
		
		case "Wall Slide":
			//#region Wall Slide
			
			///Behaviour
			enable_skid_sfx(sound_get("skid_wall"), 6);
			hsp = spr_dir * -1;
			vsp = 1.0;
			p_speed = 0;
			
			if(get_gameplay_time() % 8 == 0) {
				var dust_offset_x = spr_dir * -14 + spr_dir * -1 * (4 + random_func(0, 4, true));
				var dust_offset_y = -15 + (4 + random_func(1, 9, true));
				var dust = instance_create(round(x + dust_offset_x), round(y + dust_offset_y), "obj_article1");
				dust.variant = "dust_rising"; dust.fake_vsp = 0.5;
				dust.life = 20 + random_func(2, 16, true); dust.image_angle += random_func(3, 4, true) * 90;
				dust.image_alpha = 0.7;
			}
			
			if(move_dir == spr_dir) skid_timer++;
			
			///Animstate Overrides
			kick_items(false, true);
			collect_power_ups();
			
			///Exit Conditions
			repeat(1) {
				//Fall off the wall
				if(skid_timer > 6 || !place_meeting(x - spr_dir * 8, y + 10, asset_get("par_block"))) {
					enter_normal_state();
					continue;
				}
				
				//Wall jump
				if(input_jump_pressed) {
					unbuffer_input("jump");
					sound_play(sound_get("wall_jump"));
					wall_jump_y = y; wall_jump_polarity = -1 * spr_dir;
					if(false && neo_statetimer <= 2 && jump_counter == 0 && abs(firsties_hsp) > 3) {
						voice("tjumptaunt");
						//Firsties
						make_stars();
						hsp = abs(firsties_hsp) * spr_dir * 1.2; vsp = -15.5;
						
						if(abs(firsties_hsp) < 1) //Glitchy Wall Kick
							earn_points_for(x + spr_dir * 12, y + 20, id, id, 1000);
						else //Firsty
							earn_points_for(x + spr_dir * 12, y + 20, id, id, 400);
					}
					else {
						hsp = spr_dir * 5; vsp = -13;
						voice("wallkick");
					}
					
					dust_status = "Wall Jump Frame";
					create_burst_decal();
					
					change_neostate("Aerial", "Wall Jump", "jump");
					continue;
				}
				
				//Exit state by becoming a statue
				if(attempt_tanooki_statue()) continue;
				
				//Wall spin jump
				if(input_spin_pressed && neo_statetimer > 6) {
					unbuffer_input("spin");
					sound_play(sound_get("wall_jump"));
					voice("wallkick");
					sound_play(sound_get("spin_jump"));
					wall_jump_y = y; wall_jump_polarity = -1 * spr_dir;
					hsp = spr_dir * 5; vsp = -10.5;
					
					dust_status = "Wall Jump Frame";
					create_burst_decal();
					
					change_neostate("Spin Jump", "Wall Jump", "twirl");
					
					continue;
				}
				
				//Landing on the ground
				if(!free) {
					sound_play(floor_type.land_sfx);
					dust_status = "Land Frame";
					enter_normal_state();
					continue;
				}
			}
			
			//#endregion
		break;
		
		case "Carried":
			//#region Carried
			///Behaviour
			if(find_stack_bottom_recursive(id) != id) {
				if(neo_data.carried_by_id.neo_state != "Lift Object Pickup")
					hud_offset = 18 + neo_data_compat.carry_hud_offset;
				
				collect_power_ups();
				resist_carrier_holp_dir = false; neo_animstate = "carried";
				switch(neo_data.carried_by_id.neo_state) {
					case "Lift Object Grounded": case "Lift Object Aerial": case "Lift Object Tail Wag":
						if(down_down && no_override && neo_power.name != "Blue Shell") {
							training_town_crouch = true; //why not, right???
							//if you want to change the stage on training town while being carried, that's your god-given right
							if(neo_substate != "Duck") {
								sound_play(sound_get("duck"), false, noone, 0.3, 1.0);
								voice("duck");
							}
							neo_substate = "Duck"; duck(false); neo_animstate = "carried_duck";
						}
						else {
							if(neo_substate == "Duck") sound_play(sound_get("duck"), false, noone, 1.0, 1.25);
							if(up_down) neo_animstate = "carried_look_up";
							neo_substate = "Idle";
							perform_fireball_actions(false, move_dir);
							if(override_anim_timer > 0) resist_carrier_holp_dir = true;
						}
					break;
					case "Lift Object Spin Jump":
						perform_spin_power_actions(neo_data.carried_by_id);
					break;
				}
			}
			
			///Exit Conditions
			repeat(1) {
				//Exit state by grabbing items
				if(!down_down && composite_carry_item(true, "Grab Item Carried", "grab_carried", "Lift Object Carried", "lift_carried")) continue;
				
				//Exit state by hiding in shell
				if(down_down && neo_power.name == "Blue Shell") {
					sound_play(sound_get("shell_hide"));
					enter_shell(true, "Shell Hide", "Carried", "carried_shell");
					continue;
				}
				
				//Exit state by becoming a statue
				if(attempt_tanooki_statue()) continue;
			}
			
			//#endregion
		break;
		
		case "Grab Item Grounded":
			//#region Grab Item Grounded
			
			///Behaviour
			var holp_y_offset = neo_power.size_profile.grab_item_height;
			if(down_down && no_override && neo_power.name != "Blue Shell") {
				//Mario is ducking
				training_town_crouch = true; //is this a good idea?????
				
				if(neo_animstate != "grab_duck") {
					sound_play(sound_get("duck"), false, noone, 0.3, 1.0);
					voice("duck");
				}
				neo_animstate = "grab_duck"; duck(false);
				holp_y_offset = neo_power.size_profile.grab_item_height_duck;
				
				if(move_dir != 0 && move_dir != spr_dir) {
					spr_dir = move_dir;
					sound_play(sound_get("duck"), false, noone, 1.0, 1.0);
				}
				if(abs(hsp) <= move_type.ducking_deaccel) {
					hsp = 0;
					neo_substate = "Duck Idle";
				}
				else {
					hsp -= sign(hsp) * move_type.ducking_deaccel;
					neo_substate = "Duck Skid";
					enable_skid_sfx(floor_type.skid_sfx, floor_type.skid_sfx_freq);
				}
			}
			else {
				if(neo_animstate == "grab_duck") sound_play(sound_get("duck"), false, noone, 1.0, 1.25);
				if(move_dir == 0) {
					if(abs(hsp) <= move_type.neutral_deaccel) {
						hsp = 0;
						if(neo_animstate == "grab_walk") play_footstep_sfx();
						if(up_down) {
							neo_substate = "Looking Up";
							neo_animstate = "grab_look_up";
						}
						else {
							neo_substate = "Idle";
							neo_animstate = "grab_idle";
						}
					}
					else {
						hsp -= sign(hsp) * move_type.neutral_deaccel;
						neo_substate = "Neutral Deaccel";
						neo_animstate = "grab_walk";
					}
				}
				else {
					neo_animstate = "grab_walk";
					spr_dir = move_dir;
					if(sign(hsp) != 0 && move_dir != sign(hsp)) {
						//You can't skid when you're grabbing an item
						neo_substate = "Run Against Momentum";
						hsp += move_dir * move_type.run_against_momentum_accel;
					}
					else {
						if(neo_substate == "Skid Extension" && skid_timer > 0) {
							skid_timer--;
						}
						else {
							if(abs(hsp) > move_type.run_speed) {
								hsp -= move_dir * move_type.overrun_speed_reduction;
								neo_substate = "Overrun";
								neo_animstate = "grab_run";
								if(abs(hsp) < move_type.run_speed) {
									hsp = move_dir * move_type.run_speed;
								}
							}
							else {
								if(abs(hsp) < move_type.walk_speed) {
									hsp += move_dir * move_type.run_from_standstill_accel;
									neo_substate = "Run Sub-Walking";
								}
								else {
									hsp += move_dir * move_type.run_accel;
									neo_substate = "Run Accel";
									if(abs(hsp) > move_type.run_speed) {
										hsp = move_dir * move_type.run_speed;
										neo_substate = "Run Max";
										neo_animstate = "grab_run";
									}
								}
							}
						}
					}
				}
			}
			
			//Anim overrides (like fireballs and kicking things)
			kick_items(false, false);
			push_players(true);
			collect_power_ups();
			
			
			///Exit Conditions
			repeat(1) { 
				//Exit state by releasing the item (drop & kick/throw)
				if(carry_update("grab unknown")) continue;
				
				//Exit state by leaving ground
				if(free) {
					if(neo_animstate == "grab_duck") change_neostate("Grab Item Aerial", "Duck Fall", "grab_duck");
					else change_neostate("Grab Item Aerial", "Fall", "grab_jump");
					vsp = 0;
					continue;
				}
				
				//Exit state by entering shell
				if(neo_power.name == "Blue Shell") {
					if((down_down && abs(hsp) >= 7) || neo_substate == "Run Max" || neo_substate == "Overrun") {
						sound_play(sound_get("shell_hide"));
						enter_shell(true, "Shell Spin", down_down?"Duck":"Run", "shell_spin");
						carry_obj._hittable_time = get_gameplay_time() + 6; lose_item();
						hsp = sign(hsp) * 10;
						continue;
					}
					if(down_down) {
						sound_play(sound_get("shell_hide"));
						enter_shell(true, "Shell Hide", "Duck", "shell_duck");
						lose_item();
						continue;
					}
				}
				
				//Exit state by pressing Jump
				if(input_jump_pressed) {
					unbuffer_input("jump");
					dust_status = "Jump Frame";
					jump_sfx_instance = sound_play(sound_get("jump"));
					//Duck Jump
					if(neo_animstate == "grab_duck") {
						voice("duckjump");
						change_neostate("Grab Item Aerial", "Duck Jump", "grab_duck");
						hsp *= 0.8; vsp = -13;
						continue;
					}
					//Max-speed Jump
					if(neo_substate == "Run Max" || neo_substate == "Overrun") {
						change_neostate("Grab Item Aerial", "Max Jump", "grab_run_jump");
						var boost = max(0, (move_type.run_speed / 2.6));
						hsp *= 1; vsp = -13 - boost;
						continue;
					}
					//Regular Jump
					change_neostate("Grab Item Aerial", "Jump", "grab_jump");
					var boost = max(0, (min(move_type.run_speed, abs(hsp)) / 2.6));
					hsp *= 0.85; vsp = -13 - boost;
					continue;
				}
				
				//Exit state by spin-jumping
				if(perform_spin_action()) continue;
			}
			
			//#endregion
		break;
		
		case "Grab Item Aerial":
			//#region Grab Item Aerial
			
			///Behaviour
			vsp = min(vsp + move_air.fall_accel, move_air.fall_speed);
			if(vsp > 0) sound_volume(jump_sfx_instance, 0, 40);
			//Jump capping
			if(!input_jump) {
				var up_cap = -999;
				switch(neo_substate) {
					case "Duck Jump":
						up_cap = -2;
					break;
					case "Double Jump": case "Triple Jump": case "DJump Twirl": case "TJump Twirl":
						up_cap = -3;
					break;
					case "Jump": case "Max Jump": case "Twirl": case "Star Jump":
						up_cap = -4;
					break;
					case "Sideflip": case "SFlip Twirl": case "Ice Jump": case "Wall Jump":
						up_cap = -6;
					break;
					case "Stomp":
						up_cap = -8.5;
					break;
				}
				
				if(vsp < up_cap) {
					vsp = up_cap;
				}
			}
			process_aerial_drift(move_dir, true, 1);
			
			//Duck-jump behaviour
			if(neo_substate == "Duck Jump" || neo_substate == "Duck Fall") {
				if(down_down) duck(false);
				else change_neostate(neo_state, "Jump", "grab_jump");
			}
			
			//Wall Jump behaviour
			if(neo_substate == "Wall Jump" && neo_substatetimer > 10) change_neostate(neo_state, "Jump", "grab_jump");
			
			///Common Behaviours
			kick_items(false);
			push_players(false);
			collect_power_ups();
			bump_ceilings();
			
			///Exit Conditions:
			repeat(1) {
				//Grab update
				if(carry_update("grab unknown")) continue;
				
				//Exit state by landing
				if(!free && vsp > 0) {
					sound_play(floor_type.land_sfx);
					dust_status = "Land Frame";
					
					switch(neo_substate) {
						case "Jump": case "Max Jump": case "Stomp": case "Sideflip": case "Star Jump":
							jump_land_time = get_gameplay_time();
						break;
						case "Double Jump":
							doublejump_land_time = get_gameplay_time();
						break;
						case "Duck Jump": case "Duck Fall":
							hsp *= 0.5;
						break;
					}
					
					enter_grounded_state(0, "Grab Item Grounded", "grab_idle", "grab_walk", "grab_run", "grab_duck");
					
					continue;
				}
				
				//Exit state by tail-flying or tail-stalling
				if(attempt_tail_wag()) continue;
				
				//Exit state by twirling
				if(perform_spin_action()) continue;
				// var can_twirl = (neo_substate != "Star Jump" && (vsp > 0 || neo_substate != "Stomp"));
				// if(can_twirl && input_spin_pressed && get_gameplay_time() > last_twirl_time + 21) {
				// 	unbuffer_input("spin");
				// 	last_twirl_time = get_gameplay_time();
				// 	vsp = min(0, vsp);
				// 	sound_play(sound_get("twirl"));
				// 	if(unduck()) change_neostate(neo_state, "Jump", "grab_jump");
					
				// 	var save_anim_timer = neo_animtimer; pre_twirl_animstate = neo_animstate;
				// 	enter_aerial_state("Grab Item Twirl", "grab_spin", "duck", true);
				// 	neo_animtimer = save_anim_timer;
					
				// 	continue;
				// }
			}
			
			///Static state behaviours
			create_stomp_hitbox(STOMPS_OBJ.normal, "Grab Item Aerial", "Stomp", "grab_jump");
			
			//#endregion
		break;
		
		case "Grab Item Twirl":
			//#region Grab Item Twirl
			
			///Behaviour
			vsp = min(vsp + (move_air.fall_accel * (vsp > 0?move_air.twirl_gravity_mult:1)), move_air.fall_speed);
			if(vsp > 0) sound_volume(jump_sfx_instance, 0, 40);
			//Jump capping
			if(!input_jump) {
				var up_cap = -999;
				switch(neo_substate) {
					case "Duck Jump":
						up_cap = -2;
					break;
					case "Double Jump": case "Triple Jump": case "DJump Twirl": case "TJump Twirl":
						up_cap = -3;
					break;
					case "Jump": case "Max Jump": case "Twirl": case "Star Jump":
						up_cap = -4;
					break;
					case "Sideflip": case "SFlip Twirl": case "Ice Jump": case "Wall Jump":
						up_cap = -6;
					break;
					case "Stomp":
						up_cap = -8.5;
					break;
				}
				
				if(vsp < up_cap) {
					vsp = up_cap;
				}
			}
			process_aerial_drift(move_dir, false, (vsp > 0)?move_air.twirl_drift_mult:1);
			
			//Wall Jump behaviour
			if(neo_substate == "Wall Jump" && neo_substatetimer > 10) change_neostate("Grab Item Twirl", "Jump", "grab_twirl");
			
			///Common Behaviours
			kick_items(false);
			push_players(false);
			collect_power_ups();
			bump_ceilings();
			
			///Exit Conditions:
			repeat(1) {
				//Grab update
				if(carry_update("grab unknown")) continue;
				
				//Exit state by landing
				if(!free && vsp > 0) {
					sound_play(floor_type.land_sfx);
					dust_status = "Land Frame";
					
					switch(neo_substate) {
						case "Jump": case "Max Jump": case "Stomp": case "Sideflip": case "Star Jump": case "Twirl":
							jump_land_time = get_gameplay_time();
						break;
						case "Double Jump": case "DJump Twirl":
							doublejump_land_time = get_gameplay_time();
						break;
						case "Duck Jump": case "Duck Fall":
							hsp *= 0.5;
						break;
					}
					
					enter_grounded_state(0, "Grab Item Grounded", "grab_idle", "grab_walk", "grab_run", "grab_duck");
					
					continue;
				}
				
				//Exit state by wavetwirling (platform)
				if(vsp < 0 && place_meeting(x, y, asset_get("par_jumpthrough")) && !place_meeting(x, y + vsp, asset_get("par_jumpthrough"))) {
					vsp = 0;
					while(place_meeting(x, y, asset_get("par_jumpthrough"))) {
						y--;
					}
					free = false;
					last_twirl_time = -100;
					sound_play(floor_type.land_sfx);
					jump_land_time = get_gameplay_time() + 10;
					hsp = move_dir * 4;
					enter_grounded_state(0, "Grab Item Grounded", "grab_idle", "grab_walk", "grab_run", "grab_duck");
					continue;
				}
				
				//Exit state by timing out the twirl
				if(neo_statetimer > 8) {
					var save_anim_timer = neo_animtimer;
					enter_aerial_state("Grab Item Aerial", pre_twirl_animstate, "grab_duck", true);
					neo_animtimer = save_anim_timer;
					continue;
				}
			}
			
			///Static state behaviours
			create_stomp_hitbox(STOMPS_OBJ.normal, "Grab Item Aerial", "Stomp", "grab_jump");
			
			//#endregion
		break;
		
		case "Grab Item Spin Jump":
			//#region Grab Item Spin Jump
			
			///Behaviour
			vsp = min(vsp + move_air.fall_accel, move_air.fall_speed);
			if(neo_substate == "Spin Jump" && !input_spin && !input_jump && vsp < -3) vsp = -3;
			if(neo_substate == "Wall Jump" && !input_spin && !input_jump && vsp < -3) vsp = -3;
			if(neo_substate == "Stomp" && !input_spin && !input_jump && vsp < -8) vsp = -8;
			process_aerial_drift(move_dir, false, 1);
			
			//Fall-through spinning
			if(vsp > 2 && neo_substate != "Drill" && input_spin) change_neostate("Grab Item Spin Jump", "Drill", "grab_spin", true, true, false);
			if(neo_substate == "Drill") fall_through = true;
			
			///Animstate Overrides
			push_players(false);
			collect_power_ups();
			
			///Exit Conditions
			repeat(1) {
				//Exit state by releasing the item (drop & kick/throw)
				if(carry_update("grab unknown")) continue;
				
				//Land
				if(!free) {
					enter_grounded_state(0, "Grab Item Grounded", "grab_idle", "grab_walk", "grab_run", "grab_duck");
					dust_status = "Land Frame";
					sound_play(floor_type.land_sfx);
					continue;
				}
				
				//Exit state by tail-flying or tail-stalling
				if(attempt_tail_wag()) continue;
			}
			
			///Stomping
			create_stomp_hitbox(STOMPS_OBJ.spin_jump, "Grab Item Spin Jump", "Stomp", "grab_spin");
			bump_ceilings();
			
			//#endregion
		break;
		
		case "Grab Item Carried":
			//#region Grab Item Carried
			
			///Behaviour
			if(find_stack_bottom_recursive(id) != id) {
				if(neo_data.carried_by_id.neo_state != "Lift Object Pickup")
					hud_offset = 18 + neo_data_compat.carry_hud_offset;
				
				collect_power_ups();
				resist_carrier_holp_dir = false; neo_animstate = "carried_grab";
				switch(neo_data.carried_by_id.neo_state) {
					case "Lift Object Grounded": case "Lift Object Aerial": case "Lift Object Tail Wag":
						if(down_down && no_override) {
							training_town_crouch = true; //why not, right???
							if(neo_substate != "Duck") {
								sound_play(sound_get("duck"), false, noone, 0.3, 1.0);
								voice("duck");
							}
							neo_substate = "Duck"; duck(false); neo_animstate = "carried_grab_duck";
						}
						else {
							if(neo_substate == "Duck") sound_play(sound_get("duck"), false, noone, 1.0, 1.25);
							if(up_down) neo_animstate = "carried_grab_look_up";
							neo_substate = "Idle";
						}
					break;
					case "Lift Object Spin Jump":
						
					break;
				}
			}
			
			///Exit Conditions
			carry_update("grab unknown");
			
			//#endregion
		break;
		
		case "Lift Object Pickup":
			//#region Lift Object Pickup
			
			///Behaviour
			if(free) vsp = min(vsp + move_air.fall_accel, move_air.fall_speed);
			else {
				if(abs(hsp) <= move_type.ducking_deaccel) {
					hsp = 0;
				}
				else {
					hsp -= sign(hsp) * move_type.ducking_deaccel;
					dust_status = "Duck Skid";
					enable_skid_sfx(floor_type.skid_sfx, floor_type.skid_sfx_freq);
				}
			}
			
			///Animstate Overrides
			kick_items(false, false);
			push_players(!free);
			
			///Exit Conditions
			repeat(1) {
				if(neo_statetimer > 9) {
					if(free) {
						change_neostate("Lift Object Aerial", "Fall", "lift_jump");
						carry_update("lift unknown");
					}
					else {
						change_neostate("Lift Object Grounded", "Idle", (hsp == 0)?"lift_idle":"lift_walk");
						carry_update("lift unknown");
					}
					
					continue;
				}
				
				if(carry_update("lift unknown pickup")) continue;
			}
			
			//#endregion
		break;
		
		case "Lift Object Grounded":
			//#region Lift Object Grounded
			
			///Behaviour
			var holp_y_offset = neo_power.size_profile.lift_item_height;
			
			if(move_dir == 0) {
				if(abs(hsp) <= move_type.neutral_deaccel) {
					hsp = 0;
					if(neo_animstate == "grab_walk") play_footstep_sfx();
					neo_substate = "Idle";
					neo_animstate = "lift_idle";
				}
				else {
					hsp -= sign(hsp) * move_type.neutral_deaccel;
					neo_substate = "Neutral Deaccel";
					neo_animstate = "lift_walk";
				}
			}
			else {
				neo_animstate = "lift_walk";
				spr_dir = move_dir;
				if(sign(hsp) != 0 && move_dir != sign(hsp)) {
					//You can't skid when you're grabbing an item
					neo_substate = "Run Against Momentum";
					hsp += move_dir * move_type.run_against_momentum_accel;
				}
				else {
					if(neo_substate == "Skid Extension" && skid_timer > 0) {
						skid_timer--;
					}
					else {
						if(abs(hsp) > move_type.run_speed) {
							hsp -= move_dir * move_type.overrun_speed_reduction;
							neo_substate = "Overrun";
							neo_animstate = "lift_run";
							if(abs(hsp) < move_type.run_speed) {
								hsp = move_dir * move_type.run_speed;
							}
						}
						else {
							if(abs(hsp) < move_type.walk_speed) {
								hsp += move_dir * move_type.run_from_standstill_accel;
								neo_substate = "Run Sub-Walking";
							}
							else {
								hsp += move_dir * move_type.run_accel;
								neo_substate = "Run Accel";
								if(abs(hsp) > move_type.run_speed) {
									hsp = move_dir * move_type.run_speed;
									neo_substate = "Run Max";
									neo_animstate = "lift_run";
								}
							}
						}
					}
				}
			}
			
			//Anim overrides (like fireballs and kicking things)
			kick_items(false, false);
			push_players(true);
			
			//Grab power-ups
			collect_power_ups();
			
			///Exit Conditions
			repeat(1) { 
				//Exit state by releasing the item
				if(carry_update("lift unknown")) continue;
				
				//Exit state by leaving ground
				if(free) {
					change_neostate("Lift Object Aerial", "Fall", "lift_jump");
					vsp = 0;
					continue;
				}
				
				//Exit state by entering shell
				if(neo_power.name == "Blue Shell") {
					if((down_down && abs(hsp) >= 7) || neo_substate == "Run Max" || neo_substate == "Overrun") {
						sound_play(sound_get("shell_hide"));
						enter_shell(true, "Shell Spin", down_down?"Duck":"Run", "shell_spin");
						if(carry_obj.object_index == oPlayer || carry_obj.object_index == oTestPlayer)
							lose_player();
						else
							lose_item();
						hsp = sign(hsp) * 10;
						continue;
					}
					if(down_down) {
						sound_play(sound_get("shell_hide"));
						enter_shell(true, "Shell Hide", "Duck", "shell_duck");
						if(carry_obj.object_index == oPlayer || carry_obj.object_index == oTestPlayer)
							lose_player();
						else
							lose_item();
						continue;
					}
				}
				
				//Exit state by pressing Jump
				if(input_jump_pressed) {
					unbuffer_input("jump");
					dust_status = "Jump Frame";
					jump_sfx_instance = sound_play(sound_get("jump"));
					//Max-speed Jump
					if(neo_substate == "Run Max" || neo_substate == "Overrun") {
						change_neostate("Lift Object Aerial", "Max Jump", "lift_run_jump");
						var boost = max(0, (move_type.run_speed / 2.6));
						hsp *= 1; vsp = -13 - boost;
						continue;
					}
					//Regular Jump
					change_neostate("Lift Object Aerial", "Jump", "lift_jump");
					var boost = max(0, (min(move_type.run_speed, abs(hsp)) / 2.6));
					hsp *= 0.85; vsp = -13 - boost;
					continue;
				}
				
				//Exit state by spin-jumping
				if(perform_spin_action()) continue;
			}
			
			//#endregion
		break;
		
		case "Lift Object Aerial":
			//#region Lift Object Aerial
			
			///Behaviour
			vsp = min(vsp + move_air.fall_accel, move_air.fall_speed);
			if(vsp > 0) sound_volume(jump_sfx_instance, 0, 40);
			//Jump capping
			if(!input_jump) {
				var up_cap = -999;
				switch(neo_substate) {
					case "Duck Jump":
						up_cap = -2;
					break;
					case "Double Jump": case "Triple Jump": case "DJump Twirl": case "TJump Twirl":
						up_cap = -3;
					break;
					case "Jump": case "Max Jump": case "Twirl": case "Star Jump":
						up_cap = -4;
					break;
					case "Sideflip": case "SFlip Twirl": case "Ice Jump": case "Wall Jump":
						up_cap = -6;
					break;
					case "Stomp":
						up_cap = -8.5;
					break;
				}
				
				if(vsp < up_cap) {
					vsp = up_cap;
				}
			}
			process_aerial_drift(move_dir, true, 1);
			
			//Wall Jump behaviour
			if(neo_substate == "Wall Jump" && neo_substatetimer > 10) change_neostate(neo_state, "Jump", "grab_jump");
			
			///Common Behaviours
			kick_items(false);
			push_players(false);
			collect_power_ups();
			bump_ceilings();
			
			///Exit Conditions:
			repeat(1) {
				//Grab update
				if(carry_update("lift unknown")) continue;
				
				//Exit state by landing
				if(!free && vsp > 0) {
					sound_play(floor_type.land_sfx);
					dust_status = "Land Frame";
					
					switch(neo_substate) {
						case "Jump": case "Max Jump": case "Stomp": case "Sideflip": case "Star Jump":
							jump_land_time = get_gameplay_time();
						break;
						case "Double Jump":
							doublejump_land_time = get_gameplay_time();
						break;
						case "Duck Jump": case "Duck Fall":
							hsp *= 0.5;
						break;
					}
					
					enter_grounded_state(0, "Lift Object Grounded", "lift_idle", "lift_walk", "lift_run", "lift_duck");
					
					continue;
				}
				
				//Exit state by tail-flying or tail-stalling
				if(attempt_tail_wag()) continue;
				
				//Exit state by twirling
				if(perform_spin_action()) continue;
			}
			
			///Static state behaviours
			create_stomp_hitbox(STOMPS_OBJ.normal, "Lift Object Aerial", "Stomp", "lift_jump");
			
			//#endregion
		break;
		
		case "Lift Object Twirl":
			//#region Lift Object Twirl
			
			///Behaviour
			vsp = min(vsp + (move_air.fall_accel * (vsp > 0?move_air.twirl_gravity_mult:1)), move_air.fall_speed);
			if(vsp > 0) sound_volume(jump_sfx_instance, 0, 40);
			//Jump capping
			if(!input_jump) {
				var up_cap = -999;
				switch(neo_substate) {
					case "Duck Jump":
						up_cap = -2;
					break;
					case "Double Jump": case "Triple Jump": case "DJump Twirl": case "TJump Twirl":
						up_cap = -3;
					break;
					case "Jump": case "Max Jump": case "Twirl": case "Star Jump":
						up_cap = -4;
					break;
					case "Sideflip": case "SFlip Twirl": case "Ice Jump": case "Wall Jump":
						up_cap = -6;
					break;
					case "Stomp":
						up_cap = -8.5;
					break;
				}
				
				if(vsp < up_cap) {
					vsp = up_cap;
				}
			}
			process_aerial_drift(move_dir, false, (vsp > 0)?move_air.twirl_drift_mult:1);
			
			//Wall Jump behaviour
			if(neo_substate == "Wall Jump" && neo_substatetimer > 10) change_neostate(neo_state, "Jump", "lift_twirl");
			
			///Common Behaviours
			kick_items(false);
			push_players(false);
			collect_power_ups();
			bump_ceilings();
			
			///Exit Conditions:
			repeat(1) {
				//Grab update
				if(carry_update("lift unknown")) continue;
				
				//Exit state by landing
				if(!free && vsp > 0) {
					sound_play(floor_type.land_sfx);
					dust_status = "Land Frame";
					
					switch(neo_substate) {
						case "Jump": case "Max Jump": case "Stomp": case "Sideflip": case "Star Jump": case "Twirl":
							jump_land_time = get_gameplay_time();
						break;
						case "Double Jump": case "DJump Twirl":
							doublejump_land_time = get_gameplay_time();
						break;
						case "Duck Jump": case "Duck Fall":
							hsp *= 0.5;
						break;
					}
					
					enter_grounded_state(0, "Lift Object Grounded", "lift_idle", "lift_walk", "lift_run", "lift_duck");
					
					continue;
				}
				
				//Exit state by wavetwirling (platform)
				if(vsp < 0 && place_meeting(x, y, asset_get("par_jumpthrough")) && !place_meeting(x, y + vsp, asset_get("par_jumpthrough"))) {
					vsp = 0;
					while(place_meeting(x, y, asset_get("par_jumpthrough"))) {
						y--;
					}
					free = false;
					last_twirl_time = -100;
					sound_play(floor_type.land_sfx);
					jump_land_time = get_gameplay_time() + 10;
					hsp = move_dir * 4;
					enter_grounded_state(0, "Lift Object Grounded", "lift_idle", "lift_walk", "lift_run", "lift_duck");
					continue;
				}
				
				//Exit state by timing out the twirl
				if(neo_statetimer > 8) {
					var save_anim_timer = neo_animtimer;
					enter_aerial_state("Lift Object Aerial", pre_twirl_animstate, "lift_duck", true);
					neo_animtimer = save_anim_timer;
					continue;
				}
			}
			
			///Static state behaviours
			create_stomp_hitbox(STOMPS_OBJ.normal, "Lift Object Aerial", "Stomp", "grab_jump");
			
			//#endregion
		break;
		
		case "Lift Object Spin Jump":
			//#region Lift Object Spin Jump
			
			///Behaviour
			vsp = min(vsp + move_air.fall_accel, move_air.fall_speed);
			if(neo_substate == "Spin Jump" && !input_spin && !input_jump && vsp < -3) vsp = -3;
			if(neo_substate == "Wall Jump" && !input_spin && !input_jump && vsp < -3) vsp = -3;
			if(neo_substate == "Stomp" && !input_spin && !input_jump && vsp < -8) vsp = -8;
			process_aerial_drift(move_dir, false, 1);
			
			//Fall-through spinning
			if(vsp > 2 && neo_substate != "Drill" && input_spin) change_neostate(neo_state, "Drill", "lift_spin", true, true, false);
			if(neo_substate == "Drill") fall_through = true;
			
			///Animstate Overrides
			push_players(false);
			collect_power_ups();
			bump_ceilings();
			
			///Exit Conditions
			repeat(1) {
				//Exit state by releasing the item (drop & kick/throw)
				if(carry_update("lift unknown")) continue;
				
				//Land
				if(!free) {
					enter_grounded_state(0, "Lift Object Grounded", "lift_idle", "lift_walk", "lift_run", "lift_duck");
					dust_status = "Land Frame";
					sound_play(floor_type.land_sfx);
					continue;
				}
				
				//Exit state by tail-flying or tail-stalling
				if(attempt_tail_wag()) continue;
			}
			
			///Stomping
			create_stomp_hitbox(STOMPS_OBJ.spin_jump, "Lift Object Spin Jump", "Stomp", "lift_spin");
			
			//#endregion
		break;
		
		case "Lift Object Carried":
			//#region Lift Object Carried
			
			///Behaviour
			if(find_stack_bottom_recursive(id) != id) {
				if(neo_data.carried_by_id.neo_state != "Lift Object Pickup")
					hud_offset = 18 + neo_data_compat.carry_hud_offset;
				
				collect_power_ups();
				resist_carrier_holp_dir = false; neo_animstate = "carried_lift";
				switch(neo_data.carried_by_id.neo_state) {
					case "Lift Object Grounded": case "Lift Object Aerial": case "Lift Object Tail Wag": case "Lift Object Carried":
						neo_substate = "Idle";
					break;
					case "Lift Object Spin Jump":
						
					break;
				}
			}
			
			///Exit Conditions
			carry_update("lift unknown");
			
			//#endregion
		break;
		
		case "Thrown":
			//#region Thrown
			
			///Behaviour
			vsp = min(vsp + move_air.fall_accel * 0.85, move_air.fall_speed);
			
			process_aerial_drift(move_dir, false, 0.45);
			
			///Animstate Overrides
			// push_players(false);
			collect_power_ups();
			
			///Exit Conditions
			repeat(1) {
				if(y < phone_blastzone_t && vsp < 0) {
					set_state(PS_HITSTUN);
					hitstun = 60;
					nspecial_leniency_timer = 60;
					sound_stop(thrown_sfx_instance);
					continue;
				}
				
				if(!free) {
					enter_normal_state();
					hsp *= 0.5;
					sound_stop(thrown_sfx_instance);
					continue;
				}
				
				//Exit state by starting a wall skid
				if(wall_skidding(move_dir)) {
					firsties_hsp = max_abs(prev_hsp, prev_prev_hsp);
					hsp = move_dir * 8; spr_dir = move_dir * -1;
					vsp = 0;
					change_neostate("Wall Slide", "Wall Slide", "wall_slide");
					sound_stop(thrown_sfx_instance);
					continue;
				}
			}
			
			//#endregion
		break;
		
		case "Roll":
			//#region Roll
			
			///Behaviour
			if(neo_power.size_profile.crouch_is_duck) duck(false);
			
			//Gravity
			if(free) vsp = min(vsp + move_air.fall_accel, move_air.fall_speed);
			else {
				vsp = 0;
			}
			
			//Motion
			if(abs(hsp) > 0.2) hsp -= sign(hsp) * 0.2;
			else hsp = 0;
			
			///Animstate Overrides
			kick_items(false, false);
			push_players(!free);
			collect_power_ups();
			
			///Exit Conditions
			repeat(1) {
				//Bonk
				if(place_meeting(x + spr_dir, y - 4, asset_get("par_block"))) {
					hsp = -4 * spr_dir; vsp = -6;
					sound_play(sound_get("bump"));
					voice("bonk");
					change_neostate("Bonk", "Roll Bonk", "bonk");
					
					make_stars();
					
					continue;
				}
				
				//Idle
				if(hsp == 0) {
					enter_normal_state();
					continue;
				}
				
				//Long Jump
				if(!free && input_jump_pressed) {
					unbuffer_input("jump");
					jump_sfx_instance = sound_play(sound_get("jump"));
					dust_status = "Jump Frame";
					voice("longjump");
					if(neo_substate == "Backwards Roll") {
						hsp *= 1.0; vsp = -6.0;
						change_neostate("Long Jump", "BLJ", "backwards_long_jump");
					}
					else if(neo_substate == "Pound Roll") {
						hsp = (neo_statetimer > 10)?hsp:(12 * sign(spr_dir)); vsp = -6.5;
						change_neostate("Long Jump", "Pound Long Jump", "long_jump");
					}
					else {
						hsp = (neo_statetimer > 10)?hsp:(roll_initial_speed); vsp = -6.5;
						change_neostate("Long Jump", "Long Jump", "long_jump");
					}
					continue;
				}
			}
			
			///Static-state behaviours
			if(!neo_state_changed && !free && input_roll_pressed && abs(hsp) > 0.5) {
				unbuffer_input("roll");
				hsp = clamp(hsp + sign(hsp) * min(abs(hsp) * 2, 3), -14, 14);
				vsp = -4.25;
				voice("roll");
			}
			if(free) create_stomp_hitbox(STOMPS_OBJ.normal, "Aerial", "Stomp", "jump");
			
			//#endregion
		break;
		
		case "Long Jump":
			//#region Long Jump
			
			///Behaviour
			vsp = min(vsp + move_air.fall_accel * 0.5, move_air.fall_speed);
			if(move_dir != 0) {
				if(hsp * move_dir < move_air.slow_drift_speed) {
					hsp += move_dir * move_air.slow_drift_accel;
					if(hsp * move_dir > move_air.slow_drift_speed) {
						hsp = move_dir * move_air.slow_drift_speed;
					}
				}
			}
			
			///Animstate Overrides
			kick_items(false, false);
			push_players(false);
			
			///Exit Conditions
			repeat(1) {
				//Land
				if(!free) {
					if(input_roll) {
						hsp *= 0.8;
						voice("roll");
						unbuffer_input("roll");
						if(spr_dir != sign(hsp)) {
							blj_land_time = get_gameplay_time();
							blj_land_hsp = hsp;
							
							change_neostate("Roll", "Backwards Roll", "roll");
							hsp = 2 * blj_land_hsp;
							spr_dir = -1 * sign(blj_land_hsp);
						}
						else {
							change_neostate("Roll", "Roll", "roll");
							hsp += 4 * spr_dir;
							roll_initial_speed = hsp;
						}
						
					}
					else {
						hsp *= 0.8;
						if(spr_dir != sign(hsp)) {
							blj_land_time = get_gameplay_time();
							blj_land_hsp = hsp;
						}
						else if(move_dir == 0 && down_down) {
							hsp *= 0.5;
							neo_animstate = "duck";
						}
						else if(abs(hsp) > 8 && move_dir == sign(hsp)) {
							hsp = move_dir * max(move_type.run_speed * 1.25, abs(hsp));
						}
						enter_normal_state(move_dir);
					}
					
					
					jump_land_time = get_gameplay_time();
					dust_status = "Land Frame";
					sound_play(floor_type.land_sfx);
					continue;
				}
				
				//Bonk
				if(neo_substate != "BLJ" && place_meeting(x + spr_dir, y - 4, asset_get("par_block"))) {
					hsp = -4 * spr_dir; vsp = 0;
					sound_play(sound_get("bump"));
					voice("bonk");
					change_neostate("Bonk", "Long Jump Bonk", "bonk");
					
					make_stars();
					
					continue;
				}
				
				//Exit state by tail-flying or tail-stalling
				if(attempt_tail_wag()) continue;
			}
			
			///Stomping
			create_stomp_hitbox(STOMPS_OBJ.normal, "Aerial", "Stomp", "long_jump");
			
			//#endregion
		break;
		
		case "Ground Pound":
			//#region Ground Pound
			
			var use_shell = neo_power.name == "Blue Shell";
			p_loss_coefficient = 0.4;
			switch(neo_substate) {
				case "Twirl":
					///Behaviour
					
					///Exit Conditions
					repeat(1) {
						//Midair Roll
						if(input_roll_pressed || input_spin_pressed || input_run_pressed) {
							unbuffer_input("roll"); unbuffer_input("run");
							sound_stop(pound_twirl_sfx_instance);
							if(move_dir != 0) spr_dir = move_dir;
							voice("duck");
							// use_shell = false;
							change_neostate("Ground Pound", "Pre-Roll", "pound_twirl", false, true, false);
						}
						
						//Exit state by becoming a statue
						if(attempt_tanooki_statue()) {
							sound_stop(pound_twirl_sfx_instance);
							continue;
						}
						
						//Finish somersault
						if(neo_substatetimer >= 13) {
							change_neostate("Ground Pound", "Fall", use_shell?"shell_pound":"ground_pound");
							if(move_dir != 0) spr_dir = move_dir;
						}
					}
					
				break;
				case "Fall": case "Fallthrough":
					///Behaviour
					hsp = move_dir * 2;
					vsp = move_air.pound_fall_speed;
					
					if(neo_substate == "Fallthrough") {
						fall_through = true;
						if(neo_substatetimer > 3) change_neostate("Ground Pound", "Fall");
						else if(up_down) {
							vsp = 0;
							change_neostate("Aerial", "Fall", "jump");
						}
					}
					
					///Exit Conditions
					repeat(1) {
						//Transition to next state if free
						if(!free) {
							hsp = 0; vsp = 0;
							if(ground_type == 1) {
								if(use_shell) {
									enter_shell(true, "Shell Hide", "Ground Pound", "shell_pound");
									skid_timer = 16;
									sound_play(sound_get("pound_land_nsmb"));
								}
								else {
									change_neostate("Ground Pound", "Solid");
									sound_play(sound_get("pound_land"));
								}
								
								shake_camera(2, 6);
								dust_status = "Ground Pound Solid";
							}
							else {
								if(down_down && move_dir == 0 && neo_power.size_profile.breaks_blocks) {
									sound_play(sound_get("pound_land"), false, noone, 0.4, 1.0);
									sound_play(sound_get("break_block"));
									change_neostate("Ground Pound", "Platform Break");
									dust_status = "Ground Pound Break";
								}
								else {
									sound_play(sound_get("pound_land"), false, noone, 0.8, 1.0);
									sound_play(sound_get("bump"));
									change_neostate("Ground Pound", "Platform Bump");
									dust_status = "Ground Pound Platform";
								}
							}
							
							continue;
						}
						
						//Ground-pound cancels
						if(up_pressed && neo_substatetimer >= 3) {
							change_neostate("Aerial", "Fall", "jump");
							vsp = move_air.fall_speed;
						}
					}
					
					///Stomping
					create_stomp_hitbox(STOMPS_OBJ.ground_pound, "Ground Pound", "Fall", use_shell?"shell_pound":"ground_pound");
				break;
				case "Solid":
					///Behaviour
					p_loss_coefficient = 400;
					
					///Exit Conditions
					repeat(1) {
						if(free) {
							if(down_down) {
								change_neostate("Ground Pound", "Fall");
							}
							else {
								enter_normal_state();
							}
							continue;
						}
						
						if(neo_substatetimer >= 16) {
							enter_normal_state();
							continue;
						}
						
						if(input_roll_pressed || (down_down_lenient && input_spin_pressed)) {
							unbuffer_input("roll");
							voice("roll");
							change_neostate("Roll", "Pound Roll", "roll");
							dust_status = "Start Pound Roll";
							hsp = 12 * spr_dir;
							roll_initial_speed = hsp;
							continue;
						}
					}
				break;
				case "Platform Bump":
					///Behaviour
					p_loss_coefficient = 400;
					if(neo_substatetimer <= 6) neo_draw_y += 4 * (3 - abs(3 - neo_substatetimer));
					
					///Exit Conditions
					repeat(1) {
						var enter_shell_duck = input_jump_pressed && use_shell;
						if(neo_substatetimer >= 16) {
							if(use_shell) enter_shell_duck = true;
							else {
								enter_normal_state();
								continue;
							}
						}
						if(enter_shell_duck) {
							skid_timer = max(0, 16 - neo_substatetimer);
							enter_shell(false, "Shell Hide", "Post-platform-bump", "shell_duck");
							continue;
						}
						
						if(!use_shell && (input_roll_pressed || (down_down_lenient && input_spin_pressed))) {
							unbuffer_input("spin");
							voice("roll");
							change_neostate("Roll", "Pound Roll", "roll");
							hsp = 12 * spr_dir;
							roll_initial_speed = hsp;
							continue;
						}
					}
				break;
				case "Platform Break":
					///Behaviour
					if(neo_substatetimer <= 6) neo_draw_y += 4 * (3 - abs(3 - neo_substatetimer));
					
					///Exit Conditions
					if(neo_substatetimer >= 4) {
						neo_draw_y = 0; y += 16;
						if(up_down) {
							change_neostate("Aerial", "Fall", "jump");
						}
						else {
							change_neostate("Ground Pound", "Fallthrough");
							fall_through = true;
						}
					}
				break;
				case "Parrylag":
					///Behaviour
					helpless_darken = true;
					
					///Exit Conditions
					if(neo_substatetimer > 60 && !free) {
						enter_normal_state();
					}
				break;
				case "Pre-Roll":
					///Behaviour
					
					///Exit Conditions
					if(neo_statetimer > 13) {
						voice("roll");
						if(use_shell) {
							enter_shell(false, "Shell Hide", "Midair Shell Roll", "shell_duck");
							skid_timer = 50;
						}
						else change_neostate("Roll", "Roll", "roll");
						
						if(wall_jump_y == 0) {
							hsp = (use_shell?6.5:8) * spr_dir; vsp = -3;
						}
						else {
							hsp = 11.5 * spr_dir; vsp = -5;
						}
						roll_initial_speed = hsp;
					}
				break;
			}
			
			if(!neo_state_changed && use_shell) {
				enter_shell();
			}
			
			//#endregion
		break;
		
		case "Bonk":
			//#region Bonk
			
			///Behaviour
			
			if(free) vsp = min(vsp + move_air.fall_accel, move_air.fall_speed);
			else {
				vsp = 0;
				if(abs(hsp) > 0.2) hsp -= sign(hsp) * 0.2;
				else hsp = 0;
			}
			
			if(neo_substate == "Parried") helpless_darken = true;
			
			///Animstate Overrides
			push_players(!free);
			
			///Exit Conditions
			repeat(1) {
				
				if(neo_statetimer > 42) {
					enter_normal_state();
				}
				
			}
			
			//#endregion
		break;
		
		case "Respawn Plat":
			//#region Respawn Plat
			
			///Behaviour
			visible = true;
			if(neo_substate == "Respawn Initial") {
				neo_power = POWER_OBJ.fire_flower;
				change_neostate("Respawn Plat", "Roulette");
			}
			char_height = 64;
			hsp = 0; vsp = 0;
			invincible = 1;
			invince_time = 120;
			
			var frames_per_tick = 17, total_slots = array_length(ROULETTE_ENTRIES);
			
			roulette_slot = round(neo_statetimer / frames_per_tick) % total_slots;
			var prev_roulette_slot = round((neo_statetimer - 1) / frames_per_tick) % total_slots;
			
			if(roulette_slot != prev_roulette_slot) sound_play(sound_get("roulette_tick"));
			
			//Anim Overrides
			
			
			///Exit Conditions
			var use_slot = true;
			repeat(1) {
				//Jump
				if(input_jump_pressed) {
					jump_sfx_instance = sound_play(sound_get("jump"));
					change_neostate("Aerial", "Jump", "jump");
					hsp *= 0.85; vsp = -13;
					continue;
				}
				
				//Spin jump
				if(input_spin_pressed && perform_spin_action(true)) continue;
				
				//Ground pound
				if(down_pressed || input_roll_pressed) {
					hsp = 0; vsp = 0;
					pound_twirl_sfx_instance = sound_play(sound_get("pound_twirl"));
					change_neostate("Ground Pound", "Twirl", "pound_twirl");
					continue;
				}
				
				//Idling too long on the platform
				if(neo_statetimer == 240) {
					enter_normal_state();
					initial_invince = 1;
					invince_time = 120;
					continue;
				}
				
				use_slot = false;
			}
			if(use_slot) {
				//Invincibility time is halved if you wait too long to get off the platform
				initial_invince = 1;
				invincible = 1;
				invince_time = ((neo_statetimer / frames_per_tick) > total_slots)?60:120;
				
				reserve_slot = ROULETTE_ENTRIES[roulette_slot];
				instant_reserve_available = true;
				switch(ROULETTE_ENTRIES[roulette_slot].roulette_reaction) {
					case "item":
						sound_play(sound_get("reserve_store"));
						reserve_scale = 2.5;
					break;
					case "bowser":
						sound_play(sound_get("roulette_bowser"));
						reserve_scale = 4;
					break;
				}
			}
			
			//#endregion
		break;
		
		case "Final Smash Plat":
			//#region Final Smash Plat
			// invincible = 3;
			// invince_time = 120;
			
			// if(neo_substate == "Jumping") {
			// 	if(neo_substatetimer == 0) {
			// 		vsp = -9;
			// 		sound_play(sound_get("jump"));
			// 		voice("select");
			// 		neo_animstate = "jump";
			// 	}
			// 	else {
			// 		vsp += move_air.fall_accel * 0.4;
			// 		if(neo_substatetimer >= 54) change_neostate(neo_state, "Charging", "final_smash");
			// 	}
			// }
			// else if(neo_substate == "Charging") {
			// 	hsp = 0; vsp = 0;
			// 	if(neo_substatetimer == 1) sound_play(sound_get("kamek_magic_grow"));
			// 	else if(neo_substatetimer >= 120) { spr_dir = 1; change_neostate(neo_state, "Selecting", "taunt"); }
			// }
			// else {
			// 	hsp = 0; vsp = 0;
				
			// 	var frames_per_tick = 64, total_slots = array_length(BIG_ROULETTE_ENTRIES);
				
			// 	roulette_slot = round(neo_statetimer / frames_per_tick) % total_slots;
			// 	var prev_roulette_slot = round((neo_statetimer - 1) / frames_per_tick) % total_slots;
				
			// 	if(roulette_slot != prev_roulette_slot) {
			// 		shake_camera(6, 6);
			// 		sound_play(sound_get("koopaling_pillar"));
			// 		sound_play(sound_get("roulette_tick"), false, noone, 2.0, 0.65);
			// 	}
				
			// 	///Exit Conditions
			// 	var use_slot = true;
			// 	repeat(1) {
			// 		//Jump
			// 		if(input_jump_pressed) {
			// 			jump_sfx_instance = sound_play(sound_get("jump"));
			// 			change_neostate("Aerial", "Jump", "jump");
			// 			hsp *= 0.85; vsp = -13;
			// 			continue;
			// 		}
					
			// 		//Spin jump
			// 		if(perform_spin_action()) continue;
					
			// 		//Ground pound
			// 		if(down_pressed) {
			// 			hsp = 0; vsp = 0;
			// 			pound_twirl_sfx_instance = sound_play(sound_get("pound_twirl"));
			// 			change_neostate("Ground Pound", "Twirl", "pound_twirl");
			// 			continue;
			// 		}
					
			// 		//Idling too long on the platform
			// 		if(neo_substatetimer == 60 * 20) {
			// 			enter_normal_state();
			// 			initial_invince = 1;
			// 			invince_time = 120;
			// 			continue;
			// 		}
					
			// 		use_slot = false;
			// 	}
			// 	if(use_slot) {
			// 		fs_using_final_smash = false;
			// 		reserve_slot = BIG_ROULETTE_ENTRIES[roulette_slot];
			// 		instant_reserve_available = false;
			// 	}
			// }
			
			//#endregion
		break;
		
		case "Taunt Hold":
			//#region Hold Taunt
			
			///Behaviour
			if(neo_statetimer == 1) {
				if(neo_substate == "Kablammered") {
					sound_play(sound_get("taunt_explode"));
					var kablammer = instance_create(round(x), round(y - char_height * 0.7), "obj_article1");
					kablammer.life = 36; kablammer.variant = "kablammer";
					kablammer.sprite_index = sprite_get("decal_taunt_explode");
				}
				else voice("taunt");
			}
			if(neo_substate == "Banktoad Flex") {
				if(neo_statetimer % 4 == 0 && neo_coins > 0 && neo_points > 10) {
					neo_coins--; neo_points -= 10;
					var toss_coin = instance_create(round(x), round(y - char_height * 0.8), "obj_article2");
					toss_coin.variant = "coin";
					toss_coin.collector = id;
					toss_coin.sprite_index = spr_item_coin;
					toss_coin.image_index = random_func(0, 8, false);
					toss_coin.hsp = random_func(1, 9, true) - 4;
					toss_coin.vsp = -9.5; toss_coin.life = 12; toss_coin.depth = -2000;
				}
			}
			
			///Animstate Overrides
			push_players(true);
			kick_items(false, false);
			collect_power_ups();
			
			///Exit Conditions
			repeat(1) {
				if(free) {
					enter_normal_state(); continue;
				}
				
				if(!taunt_down && neo_statetimer > ((neo_substate == "Kablammered")?65:10)) {
					enter_normal_state(); continue;
				}
			}
			
			//#endregion
		break;
		
		case "Taunt Balloon":
			//#region Taunt Balloon
			
			///Behaviour
			if(neo_statetimer == 1) {
				hsp = 0; vsp = -2; sound_play(sound_get("p_balloon"));
			}
			else {
				hsp *= 0.96; vsp *= 0.96;
			}
			
			///Animstate Overrides
			push_players(false);
			kick_items(false, false);
			collect_power_ups();
			
			///Exit Conditions
			repeat(1) {
				if((!taunt_down && neo_statetimer > 30) || (!place_meeting(x, y + char_height, asset_par_block) && !place_meeting(x, y + char_height, asset_par_jumpthrough))) {
					sound_play(sound_get("p_balloon_pop"));
					change_neostate("Helpless", "Post-balloon", "fall"); continue;
				}
			}
			
			//#endregion
		break;
		
		case "Taunt Pluck Letter":
			//#region Taunt Letter
			
			///Behaviour
			if(neo_statetimer == 1) sound_play(sound_get("pluck"));
			if(neo_statetimer == 30) {
				var letter = instance_create(round(x), round(y - char_height * 0.65 - 11 - 21), "obj_article1");
				letter.variant = "letter"; letter.life = 240;
				letter.spr_dir = (x > room_width / 2)?1:-1;
				letter.sprite_index = sprite_get("decal_letter");
			}
			
			///Animstate Overrides
			push_players(false);
			kick_items(false, false);
			collect_power_ups();
			
			repeat(1) {
				if(free || neo_statetimer == 60) {
					enter_normal_state(); continue;
				}
			}
			
			//#endregion
		break;
		
		case "Phone":
			//#region MunoPhone
			
			collect_power_ups();
			neo_armor = true;
			if(attack == AT_NSPECIAL) enter_normal_state();
			
			//#endregion
		break;
		
		case "Burnt":
			//#region Burnt
			
			///Behaviour
			if(neo_statetimer == 1) {
				voice("burnt"); burning_sfx_instance = sound_play(sound_get("burning"), true);
				hsp = 0; vsp = -9;
			}
			if(neo_statetimer < 2) free = true;
			
			var burn_dash_speed = 7.5;
			
			if(neo_statetimer % 4 == 0) {
				var smoke = instance_create(round(x), round(y - char_height * 0.65), "obj_article1");
				smoke.sprite_index = sprite_get("decal_smoke"); smoke.variant = "dust_rising"; smoke.depth = depth + 1;
				smoke.image_xscale = 1; smoke.image_yscale = 1;
			}
			
			switch(neo_substate) {
				case "Burn Jump": case "Fall": case "Jump": case "Stomp": case "Knockback":
					burn_timer = min(burn_timer, 147); //Burn timer cannot end in midair
					
					vsp = min(vsp + move_air.fall_accel * 0.85, move_air.fall_speed);
					if(vsp > 0) sound_volume(jump_sfx_instance, 0, 40);
					if(!free) {
						change_neostate(neo_state, "Run Accel", "walk");
					}
				break;
				
				case "Run Accel": case "Run Max": case "Overrun":
					if(get_gameplay_time() % 2 == 0 && burn_timer > 4) burn_timer--; //Extend burn timer
					if(free) {
						hsp = 0; change_neostate(neo_state, "Fall", "somersault");
					}
					else if(input_jump_pressed) {
						hsp = spr_dir * 2; vsp = -7; change_neostate(neo_state, "Jump", "jump");
						jump_sound = sound_play(sound_get("jump"));
					}
					else if(hsp * spr_dir > 4 && move_dir == spr_dir * -1) {
						spr_dir = move_dir; change_neostate(neo_state, "Skid", "skid");
					}
					else if(hsp * spr_dir < burn_dash_speed) {
						hsp += 0.65 * spr_dir;
						if(hsp * spr_dir > burn_dash_speed) {
							hsp = burn_dash_speed * spr_dir;
							change_neostate(neo_state, "Run Max", "run");
						}
					}
					else if(hsp * spr_dir > burn_dash_speed) {
						hsp -= 0.1 * spr_dir;
						change_neostate(neo_state, "Overrun", "run");
					}
				break;
				
				case "Skid":
					if(get_gameplay_time() % 2 == 0 && burn_timer > 4) burn_timer--; //Extend burn timer
					if(free) {
						hsp = 0; vsp = 0; change_neostate(neo_state, "Fall", "somersault");
					}
					else if(input_jump_pressed && hsp * spr_dir > -2) {
						hsp = spr_dir * 3.5; vsp = -8.75; change_neostate(neo_state, "Jump", "somersault");
						jump_sound = sound_play(sound_get("jump"));
					}
					else if(sign(hsp) == spr_dir) {
						change_neostate(neo_state, "Run Accel", "walk");
					}
					else {
						hsp += 0.3 * spr_dir;
						enable_skid_sfx(floor_type.skid_sfx, floor_type.skid_sfx_freq);
					}
				break;
			}
			
			///Exit Conditions
			repeat(1) {
				if(!burned) {
					enter_normal_state();
				}
			}
			if(free) create_stomp_hitbox(STOMPS_OBJ.normal, "Burnt", "Stomp", "somersault");
			
			//#endregion
		break;
		
		//#region Power-specific states
		case "Tail Wag":
			//#region Tail Wag
			
			///Behaviour
			process_aerial_drift(move_dir, true, 1.1);
			var max_vsp = 4, stall_grav = 0.1;
			switch(neo_substate) {
				case "Fly":
					vsp = -4; p_loss_coefficient = 2;
				break;
				
				case "Duck Stall":
					if(down_down) duck(false);
					else change_neostate(neo_state, "Stall", "stall", false, false, false);
				case "Stall":
					vsp += stall_grav;
					if(vsp > max_vsp) vsp = max_vsp;
				break;
			}
			
			///Animstate Overrides
			kick_items(false, true);
			push_players(false);
			bump_ceilings();
			perform_fireball_actions();
			
			///Exit Conditions
			repeat(1) {
				//Exit state by landing
				if(!free && vsp > 0) {
					sound_play(floor_type.land_sfx);
					dust_status = "Land Frame";
					
					enter_normal_state();
					
					continue;
				}
				
				//Exit state by grabbing item (i.e. koopa shell)
				if(!down_down && composite_carry_item(false, "Grab Item Tail Wag", "grab_stall", "Lift Object Tail Wag", "lift_stall")) continue;
				
				//Exit state by becoming a statue
				if(attempt_tanooki_statue()) continue;
				
				//Exit state by ground-pounding
				if(neo_substate != "Duck Jump" && down_pressed) {
					hsp = 0; vsp = 0;
					pound_twirl_sfx_instance = sound_play(sound_get("pound_twirl"));
					change_neostate("Ground Pound", "Twirl", "pound_twirl");
					continue;
				}
				
				//Exit state by starting a wall skid
				if(wall_skidding(move_dir)) {
					firsties_hsp = max_abs(prev_hsp, prev_prev_hsp);
					hsp = move_dir * 8; spr_dir = move_dir * -1;
					vsp = 0;
					change_neostate("Wall Slide", "Wall Slide", "wall_slide");
					continue;
				}
				
				//Time out
				if(neo_statetimer >= 12 || !input_jump) {
					if(input_jump && (neo_substate != "Fly" || p_speed > 0)) {
						neo_statetimer = 0;
						sound_play(sound_get("smash4_tanookifly"), false, noone, 0.3, 0.95);
					}
					else {
						if(neo_substate == "Fly")
							change_neostate("Aerial", "Max Jump", "run_jump");
						else
							enter_aerial_state();
						neo_state_changed = false; continue;
					}
				}
			}
			
			///Stomping and bumping
			create_stomp_hitbox(STOMPS_OBJ.normal, "Aerial", "Stomp", "jump");
			
			//#endregion
		break;
		
		case "Tanooki Statue":
			//#region Tanooki Statue
			
			///Behaviour
			if(free) {
				vsp = min(vsp + 0.9, 19);
				neo_substate = "Falling";
				fall_through = 1;
			}
			else {
				if(neo_substate == "Falling") {
					shake_camera(2, 6);
					sound_play(sound_get("thwomp_land"));
					dust_status = "Ground Pound Solid";
				}
				neo_substate = "Guard";
				if(abs(hsp) <= move_type.ducking_deaccel) {
					hsp = 0;
				}
				else {
					hsp -= sign(hsp) * move_type.ducking_deaccel;
					enable_skid_sfx(floor_type.skid_sfx, floor_type.skid_sfx_freq);
				}
			}
			
			///Common
			push_players(!free);
			collect_power_ups();
			
			///Exit Conditions
			repeat(1) {
				if(neo_statetimer > 60 || ((!input_run || input_run_pressed) && (!free || neo_statetimer > 20))) {
					if(instance_exists(neo_data.carried_by_id))
						change_neostate("Carried", "Idle", "carried");
					else
						enter_normal_state();
					
					neo_sprite_name = "statue_transform";
					sound_play(sound_get("mk8_tanookistatue"));
					unbuffer_input("run");
					
					if(!statue_was_hit) {
						hitpause = true; hitstop = 24; hitstop_full = 24;
						old_hsp = hsp; old_vsp = vsp; hsp = 0; vsp = 0;
					}
					continue;
				}
			}
			
			if(!neo_state_changed) {
				if(free) create_stomp_hitbox(STOMPS_OBJ.statue_fall, "Tanooki Statue", "Falling", "statue");
				
				neo_armor = true; super_armor = true; damage_scaling = 0;
				if(neo_statetimer > 40) {
					neo_draw_x += random_func(0, 7, 0) - 3;
					if(free) neo_draw_y += random_func(0, 7, 0) - 3;
				}
			}
			
			//#endregion
		break;
		
		case "Grab Item Tail Wag":
			//#region Grab Item Tail Wag
			
			///Behaviour
			process_aerial_drift(move_dir, true, 1.1);
			switch(neo_substate) {
				case "Fly":
					vsp = -4; p_loss_coefficient = 2;
				break;
				
				case "Duck Stall":
					if(down_down) duck(false);
					else change_neostate(neo_state, "Stall", "grab_stall", false, false, false);
				case "Stall":
					vsp += 0.1;
					if(vsp > 4) vsp = 4;
				break;
			}
			
			///Animstate Overrides
			kick_items(false, true);
			push_players(false);
			
			///Exit Conditions
			repeat(1) {
				//Carry update
				if(carry_update("grab unknown")) continue;
				
				//Exit state by landing
				if(!free && vsp > 0) {
					sound_play(floor_type.land_sfx);
					dust_status = "Land Frame";
					
					enter_grounded_state(0, "Grab Item Grounded", "grab_idle", "grab_walk", "grab_run", "grab_duck");
					
					continue;
				}
				
				//Time out
				if(neo_statetimer >= 12 || !input_jump) {
					if(input_jump && (neo_substate != "Fly" || p_speed > 0)) {
						neo_statetimer = 0;
						sound_play(sound_get("smash4_tanookifly"), false, noone, 0.3, 0.95);
					}
					else {
						if(neo_substate == "Fly")
							change_neostate("Grab Item Aerial", "Max Jump", "grab_run_jump");
						else
							enter_aerial_state("Grab Item Aerial", "grab_jump", "grab_duck");
						neo_state_changed = false; continue;
					}
				}
			}
			
			///Stomping and bumping
			create_stomp_hitbox(STOMPS_OBJ.normal, "Grab Item Aerial", "Stomp", "grab_jump");
			
			//#endregion
		break;
		
		case "Lift Object Tail Wag":
			//#region Lift Object Tail Wag
			
			///Behaviour
			process_aerial_drift(move_dir, true, 1.1);
			switch(neo_substate) {
				case "Fly":
					vsp = -4; p_loss_coefficient = 2;
				break;
				
				case "Duck Stall":
					if(down_down) duck(false);
					else change_neostate(neo_state, "Stall", "lift_stall", false, false, false);
				case "Stall":
					vsp += 0.1;
					if(vsp > 4) vsp = 4;
				break;
			}
			
			///Animstate Overrides
			kick_items(false, true);
			push_players(false);
			
			///Exit Conditions
			repeat(1) {
				//Carry update
				if(carry_update("lift unknown")) continue;
				
				//Exit state by landing
				if(!free && vsp > 0) {
					sound_play(floor_type.land_sfx);
					dust_status = "Land Frame";
					
					enter_grounded_state(0, "Lift Object Grounded", "lift_idle", "lift_walk", "lift_run");
					
					continue;
				}
				
				//Time out
				if(neo_statetimer >= 12 || !input_jump) {
					if(input_jump && (neo_substate != "Fly" || p_speed > 0)) {
						neo_statetimer = 0;
						sound_play(sound_get("smash4_tanookifly"), false, noone, 0.3, 0.95);
					}
					else {
						if(neo_substate == "Fly")
							change_neostate("Lift Object Aerial", "Max Jump", "lift_run_jump");
						else
							enter_aerial_state("Lift Object Aerial", "lift_jump");
						neo_state_changed = false; continue;
					}
				}
			}
			
			///Stomping and bumping
			create_stomp_hitbox(STOMPS_OBJ.normal, "Grab Item Aerial", "Stomp", "grab_jump");
			
			//#endregion
		break;
		
		case "Shell Hide":
			//#region Shell Hide
			var being_carried = instance_exists(neo_data.carried_by_id);
			
			///Behaviours
			skid_timer--;
			if(free) {
				vsp = min(vsp + 0.5, 14);
				if(neo_substate != "Launched" && neo_substate != "Reverse Jump" && skid_timer <= 0 && !jump_down && vsp < -3) vsp = -3;
				if(skid_timer && y < phone_blastzone_t && vsp < 0) {
					set_state(PS_HITSTUN);
					hitstun = 60;
					nspecial_leniency_timer = 60;
				}
			}
			else {
				if(neo_substate == "Launched") neo_substate = "Unlaunched";
				hsp = (abs(hsp) < 0.25)?0:(hsp - sign(hsp) * 0.25);
				if(jump_pressed && !being_carried) {
					unbuffer_input("jump");
					dust_status = "Jump Frame";
					jump_sfx_instance = sound_play(sound_get("jump_shell"));
					vsp = -11.25;
				}
			}
			
			///Common
			collect_power_ups();
			
			///Exit Conditions
			repeat(1) {
				//Exit state by standing up
				if(!down_down && skid_timer <= 0) {
					if(being_carried && identify_carry_type(neo_data.carried_by_id) == "lift object")
						change_neostate("Carried", "Idle", "carried");
					else
						enter_normal_state();
				}
				
				//Exit state by moving quickly
				if(abs(hsp) > 7 && !being_carried) {
					enter_shell(false, "Shell Spin", neo_substate, "shell_spin");
					hsp = sign(hsp) * 10;
					continue;
				}
			}
			
			//Shell stats
			if(!neo_state_changed) enter_shell();
			
			//#endregion
		break;
		
		case "Shell Spin":
			//#region Shell Spin
			
			///Behaviours
			skid_timer--;
			if(neo_substate == "Reverse") {
				var prev_reverse = true;
				neo_substate = "Abort Reverse";
			}
			else var prev_reverse = false;
			if(free) {
				vsp = min(vsp + 0.5, 14);
				if(neo_substate != "Launched" && neo_substate != "Reverse Jump" && skid_timer <= 0 && !jump_down && vsp < -3) vsp = -3;
				if(skid_timer && y < phone_blastzone_t && vsp < 0) {
					set_state(PS_HITSTUN);
					hitstun = 60;
					nspecial_leniency_timer = 60;
				}
			}
			else {
				if(neo_substate == "Launched") neo_substate = "Unlaunched";
				if(neo_substate == "Triple Jump") {
					neo_substate = "Triple Jumped";
					neo_animstate = "shell_spin";
				}
				
				if(abs(hsp) > 4) {
					enable_skid_sfx(floor_type.skid_sfx, floor_type.skid_sfx_freq);
				}
				if(jump_pressed) {
					unbuffer_input("jump");
					dust_status = "Jump Frame";
					jump_sfx_instance = sound_play(sound_get("jump_shell"));
					vsp = -11.25;
				}
				else if(input_spin && skid_timer <= ((input_spin_pressed)?10:0)) {
					skid_timer = 0;
					neo_substate = "Reverse";
					enable_skid_sfx(sound_get("skid_wall"), 6);
					var hsp_change = -1 * hsp * spr_dir;
					
					if(hsp_change > 9) {
						spr_dir = sign(hsp); hsp = 9 * spr_dir;
						neo_substate = "Reversed";
						skid_timer = 16;
						
					}
					else if(hsp_change > -1.5) {
						hsp -= 0.75 * sign(spr_dir);
					}
					else {
						dust_status = "Shell Reverse";
						hsp -= 0.4 * sign(spr_dir);
					}
				}
			}
			
			if(neo_substate != "Reverse" && prev_reverse) {
				shell_points_owner = id; shell_player = 5; consecutive_hits = 0; shell_bounce_dir = 0;
			}
			
			//Bounce off walls
			if(neo_substate != "Reverse" && hsp != 0) spr_dir = sign(hsp);
			if(place_meeting(x + spr_dir, y, asset_par_block)) {
				shell_player = 5;
				shell_bounce_dir = -1 * spr_dir;
			}
			var bounced = false;
			if(shell_bounce_dir != 0) {
				bounced = true;
				sound_play(sound_get("bump_shell"));
				create_burst_decal(x + spr_dir * 12, y - 16);
				skid_timer = max(skid_timer, 12);
				spr_dir = shell_bounce_dir; hsp = spr_dir * 9;
				shell_player = 5;
				
				shell_bounce_dir = 0;
			}
			if(neo_substate == "Triple Jump") {
				hsp = clamp(hsp + move_dir * 0.5, -9, 9);
			}
			else if(neo_substate != "Reverse" && abs(hsp) > 4.5) hsp = sign(hsp) * 9;
			
			///Common
			collect_power_ups();
			
			///Exit Conditions
			repeat(1) {
				//Exit state by standing up
				if(!down_down && (!input_run || (neo_substate != "Triple Jump" && move_dir == -1 * spr_dir)) && skid_timer <= 0) {
					enter_normal_state(); unduck(); continue;
				}
				
				//Exit state by ceasing motion
				if(neo_substate != "Reverse" && neo_substate != "Triple Jump" && abs(hsp) <= 6.5) {
					var save_neo_image = neo_image;
					enter_shell(true, "Shell Hide", "Sudden stop", "shell_duck");
					neo_image = save_neo_image;
					continue;
				}
			}
			
			//Shell stats
			if(!neo_state_changed) {
				enter_shell();
				
				//Hitbox
				if(!bounced && (free || abs(hsp) > 2)) {
					var total_speed = point_distance(0, 0, hsp, vsp);
					if(instance_exists(shell_hitbox))
						shell_hitbox.length++;
					else
						shell_hitbox = flotbox(ATTACKS_OBJ.blue_koopa_shell, x, y);
					shell_hitbox.spr_dir = spr_dir; shell_hitbox.stop_effect = false;
					shell_hitbox.damage = total_speed * 1.5; shell_hitbox.kb_value = total_speed / 4;
					with(oPlayer) if(state != PS_SPAWN) {
						var no_hit = false;
						if(url == other.url) {
							if(in_shell || neo_state == "Helpless") no_hit = true;
						}
						else {
							if(state == PS_HITSTUN) no_hit = true;
						}
						other.shell_hitbox.can_hit[player + (clone || custom_clone) * 10] = !no_hit;
					}
					if(shell_player != 5) shell_hitbox.can_hit[shell_player] = false;
					performed_shell_slide = true;
				}
			}
			
			//#endregion
		break;
		
		case "Shell Kicked Up":
			//#region Shell Kicked Up
			
			///Behaviour
			vsp = min(vsp + 0.5, 14); skid_timer--;
			if(neo_substate == "Kicked by Enemy" && y < phone_blastzone_t && vsp < 0) {
				set_state(PS_HITSTUN);
				hitstun = 60;
				nspecial_leniency_timer = 60;
			}
			
			///Common
			collect_power_ups();
			
			///Exit Conditions
			repeat(1) {
				//Exit state by landing
				if(!free) {
					if(abs(hsp) <= 4.5) {
						enter_shell(true, "Shell Hide", neo_substate, "shell_spin");
						continue;
					}
					else {
						enter_shell(false, "Shell Spin", neo_substate, "shell_spin");
						hsp = sign(hsp) * 10;
						continue;
					}
				}
				
			}
			
			if(!neo_state_changed) {
				enter_shell();
				
				//Hitbox
				var total_speed = point_distance(0, 0, hsp, vsp);
				if(instance_exists(shell_hitbox))
					shell_hitbox.length++;
				else
					shell_hitbox = flotbox(ATTACKS_OBJ.blue_koopa_shell, x, y);
				shell_hitbox.my_name = "power-5";
				shell_hitbox.spr_dir = spr_dir; shell_hitbox.stop_effect = false;
				shell_hitbox.damage = total_speed * 1.5; shell_hitbox.kb_value = total_speed / 4;
				with(oPlayer) {
					var no_hit = false;
					if(url == other.url) {
						if(in_shell || neo_state == "Helpless") no_hit = true;
					}
					else {
						if(state == PS_HITSTUN) no_hit = true;
					}
					other.shell_hitbox.can_hit[player + (clone || custom_clone) * 10] = !no_hit;
				}
				if(shell_player != 5) shell_hitbox.can_hit[shell_player] = false;
				performed_shell_slide = true;
			}
			
			//#endregion
		break;
		
		//#endregion
		
		default:
			sound_play(sound_get("bookworm_buzzer"));
			change_neostate(get_string("ERROR: Invalid Mario state (" + string(neo_state) + "). Enter new state:", "Grounded"));
		break;
	}
	
	//Timer Processing
	neo_statetimer++;
	neo_substatetimer++;
	
	//fish oil
	//vitamin B 12 or complex (3 6 or 12 in one vitamin)
	//gingko biloba
	
	//Calculate certain variables based on groundedness and carry status
	if(instance_exists(neo_data.carried_by_id) && neo_data.carried_by_id.carry_obj == id) {
		p_speed = neo_data.carried_by_id.p_speed;
		p_flashing = neo_data.carried_by_id.p_flashing;
		show_p_meter = false;
		
		consecutive_stomps = 0;
		wall_jump_y = 0;
	}
	else {
		if(free || neo_state == "Ground Pound") {
			p_speed = clamp(p_speed - (p_loss_coefficient * 0.005), 0, 1);
			if(p_speed == 0) p_flashing = false;
		}
		else {
			var new_p_speed = clamp(abs(hsp) / move_type.run_speed, 0, 1);
			if(new_p_speed > p_speed) p_speed = new_p_speed;
			else p_speed = (p_speed + new_p_speed) / 2;
			if(p_speed == 1) p_flashing = 6;
			else if(p_speed > 0.4) p_flashing--;
			else p_flashing = 0;
			
			consecutive_stomps = 0;
			
			wall_jump_y = 0;
		}
		show_p_meter = neo_state != "Tanooki Statue" && (p_flashing || (!free && p_speed > 0)) && power_in_stack(id, "Tanooki Leaf");
		
		//P Flashing sound effect
		if(show_p_meter && p_flashing && get_gameplay_time() % 7 == 0) {
			sound_volume(p_speed_sfx_instance, 0, 100);
			p_speed_sfx_instance = sound_play(sound_get("p_speed2"), false, noone, 0.15, 0.98);
		}
	}
	
	//Evaluate Peril
	var new_in_peril = (neo_power.name == "Depowered" && reserve_slot.variant == "power-up" && reserve_slot.power_object.revert_to != "death");
	if(new_in_peril) {
		//Timing
		if(new_in_peril != in_peril) peril_time = 0;
		else peril_time++;
		
		//Alarm sound
		if(peril_time % 56 == 0) {
			var peril_volume = max(0.3, 1 - peril_time / 560);
			sound_play(sound_get((get_player_damage(player) > 100)?"peril2":"peril1"), false, noone, peril_volume);
		}
	}
	in_peril = new_in_peril;
	
	//Evaluate Instant Reserve
	if(instant_reserve_available && !hitpause && (reserve_slot.variant != "power-up" || reserve_slot.power_object.name == neo_power.name || reserve_slot.power_object.value != neo_power.value)) {
		instant_reserve_available = false;
	}
	
	//#mark Access Reserve
	if(input_reserve_pressed && !reserve_blocked && get_gameplay_time() > reserve_lock_time) {
		// if(true) {
		// 	unbuffer_input("reserve");
		// 	yoshi_drum_playing = !yoshi_drum_playing;
		// 	sound_play(sound_get(yoshi_drum_playing?"yoshi_mount":"yoshi_dismount"));
		// 	print(yoshi_drum_playing?"Mounted Yoshi":"No longer on Yoshi");
		// }
		// else
		if(phone_playtest) {
			unbuffer_input("reserve");
			sound_play(sound_get("bookworm_buzzer"));
			neo_power = PLAYTEST_POWERS_ARRAY[playtest_power_index % array_length(PLAYTEST_POWERS_ARRAY)];
			playtest_power_index++;
		}
		else if(instant_reserve_available) {
			unbuffer_input("reserve");
			var old_reserve_slot = reserve_slot;
			if(!phone_cheats[CHEAT_INFINITE_RESERVE]) reserve_slot = RESERVE_OBJ.empty;
			instant_reserve_available = false; reserve_lock_time = get_gameplay_time() + 120;
			obtain_power_up(old_reserve_slot.power_object, true);
		}
		else {
			unbuffer_input("reserve");
			instant_reserve_available = false;
			if(reserve_slot == RESERVE_OBJ.empty) {
				sound_play(sound_get("reserve_empty"));
				reserve_scale = 2.5;
			}
			else {
				sound_play(sound_get("reserve_release"));
				switch(reserve_slot.variant) {
					case "power-up":
						var power_up = instance_create(-200, -200, "obj_article2");
						
						power_up.subvariant = reserve_slot.power_object;
						power_up.sprite_index = reserve_slot.sprite;
						
						reserve_scale = 2.5;
					break;
					case "article2":
						var reserve_item = instance_create(-200, -200, "obj_article2");
						
						reserve_item.variant = reserve_slot.article_variant;
						reserve_item.sprite_index = reserve_slot.sprite;
						
						reserve_scale = 2.5;
					break;
					case "articlesolid":
						var reserve_item = instance_create(-200, -200, "obj_article_solid");
						
						reserve_item.variant = reserve_slot.article_variant;
						reserve_item.sprite_index = reserve_slot.sprite;
						
						reserve_scale = 2.5;
					break;
					default:
						sound_play(sound_get("bookworm_buzzer"));
					break;
				}
				
				if(!phone_cheats[CHEAT_INFINITE_RESERVE]) reserve_slot = RESERVE_OBJ.empty;
			}
		}
		
	}
	
	//Skid SFX functionality
	if(play_skid_freq == 0) {
		sound_stop(skid_sfx_instances[0]);
		sound_stop(skid_sfx_instances[1]);
		sound_stop(skid_sfx_instances[2]);
	}
	else {
		if(get_gameplay_time() % play_skid_freq == 0) {
			skid_sfx_instances[2] = skid_sfx_instances[1];
			skid_sfx_instances[1] = skid_sfx_instances[0];
			skid_sfx_instances[0] = sound_play(play_skid_sfx);
		}
	}
	
	//Reset attack groups if we're no longer attacking???
	if(!performed_stomp && !performed_shell_slide) {
		var old_attack = attack;
		
		attack = AT_NSPECIAL; attack_end(); //Reset standard hitboxes
		attack = AT_DSPECIAL; attack_end(); //Reset power hitboxes
		attack = AT_USPECIAL; attack_end(); //Reset item hitboxes
		
		attack = old_attack;
	}
	
	//Store the HUD offset in case we end up in hitpause
	prev_hud_offset = hud_offset;
	
	//Increment Neo Age
	neo_age++;
	
	//Set hurtbox
	if(mask_override == "none") {
		hurtbox_spr = sprite_get("mask_" + neo_power.size_profile.mask_prefix + mask_stance + "disjoint" + string(disjoint_level));
		hurtboxID.sprite_index = hurtbox_spr; hurtboxID.mask_index = hurtbox_spr;
		mask_index = sprite_get("mask_" + neo_power.size_profile.mask_prefix + mask_stance + "disjoint0");
	}
	else {
		hurtbox_spr = mask_override;
		hurtboxID.sprite_index = mask_override;
		mask_index = mask_override;
	}
	if(mask_index == UNDEFINED_SPRITE) {
		print_debug("Undefined sprite error!");
		print_debug("Attempted to use mask " + string("mask_" + neo_power.size_profile.mask_prefix + mask_stance + "disjoint0"));
		print_debug("Report this to Floral qua Floral.");
	}
	
	//#endregion
}

//#mark Hitbox Responses
event3_context = "post-update"; user_event(3);

//The reason I'm using "== true" here (which looks stupid) is so the value can be overwritten to 2 elsewhere to prevent Mario from earning coins, points, etc for one frame
//This is useful so that Mario doesn't always get points, coins, etc from, for instance, ground-pounding a Question Block
if(queued_change_neostate[0] == true) change_neostate(queued_change_neostate[1], queued_change_neostate[2], queued_change_neostate[3]);
if(queued_play_prog_sfx[0] == true) play_prog_sfx(queued_play_prog_sfx[1], queued_play_prog_sfx[2], queued_play_prog_sfx[3]);
if(queued_earn_coins_for[0] == true) earn_coins_for(queued_earn_coins_for[1], queued_earn_coins_for[2], queued_earn_coins_for[3], queued_earn_coins_for[4], queued_earn_coins_for[5], queued_earn_coins_for[6]);
if(queued_earn_points_for[0] == true) earn_points_for(queued_earn_points_for[1], queued_earn_points_for[2], queued_earn_points_for[3], queued_earn_points_for[4], queued_earn_points_for[5]);
if(queued_earn_life_for[0] == true) earn_life_for(queued_earn_life_for[1], queued_earn_life_for[2], queued_earn_life_for[3], queued_earn_life_for[4], queued_earn_life_for[5]);
if(queued_flotbox[0] == true) flotbox(queued_flotbox[1], queued_flotbox[2], queued_flotbox[3]);
queued_change_neostate[0] = false; queued_play_prog_sfx[0] = false; queued_earn_coins_for[0] = false; queued_earn_points_for[0] = false; queued_earn_life_for[0] = false; queued_flotbox[0] = false;

//Occasionally reset everyone's carryable and freezable objects
if(mario_number == 1 && get_gameplay_time() % 120 == 0) {
	//Only the Head Honcho needs to do this since it covers everyone
	find_carryable_item(undefined, 1); find_carryable_item(undefined, 2);
}

//Earn lives from coins
if(neo_coins >= 100) {
	neo_coins -= 100; earn_life_for(x, y - char_height - 16, id, id, true);
}

with(oPlayer) {
	//#region Other Update
	//Keep an array of the instance of every player
	if(neo_data.add_to_instance_array) {
		if("url" not in self) continue; //characters who haven't initialized properly are skipped
		
		other.player_instances[player] = self;
		switch(url) {
			//I'm not considering Ronald a boss because then I'd have to paste in the IDs of all his 6000 clones
			case "1976183668": //Zetta
			case "2219755812": //Mayu
			case "1928599994": //Godkarmachine o Inary
			case "2099418807": //Colosso
			case "2208624452": //Master Hand
			case "1869814191": //Sans (is he really a boss? does it matter?)
			case "1968648848": //Abyss Hime
			case "2037682193": //King Bowser
			case "2272591153": //ONI-MIKO-ZERO (if you somehow manage to beat her, you get the castle victory theme. nice)
				other.enemy_boss = true;
			break;
		}
		neo_data.add_to_instance_array = false;
	}
	
	if(neo_data.healed_by_id == other && get_gameplay_time() % 3 == 0 && neo_data.healed_time > 0) {
		neo_data.healed_time--;
		// set_player_damage(player, get_player_damage(player) - 1);
		take_damage(player, other.player, -1); //lol it'll remove damage from the victory screen stats
		
		sound_play(asset_get(neo_data.healed_time?"mfx_hp":"mfx_star"));
		if(!neo_data.healed_time) neo_data.healed_by_id = noone;
	}
	
	// print(`P${player} has tail: ${neo_data_compat.has_tail?"true":"false"}`);
	
	//Make sure every Qua Mario knows who the Mario Prime is
	if(url == other.url && false_mario_prime && other.mario_number == 1) {
		neo_mario_prime = other;
	}
	
	//Detecting kills
	if(id != other && neo_data.launched_by_id == other) {
		if(state == 17 && prev_state == PS_RESPAWN) {
			//for some ungodly reason this is what happens when an Endless Abyss enemy dies?!
			if(!other.tallying_points) {
				other.tallying_points = true;
				// other.debug_match_analysis += `KO AbyssP${player} with ${other.neo_points}p/`;
			}
			else with(other) earn_points_for(x, y - char_height - 10, id, id, 8000);
			neo_data.launched_by_id = noone;
		}
		
		if((state == 17 || state == PS_RESPAWN || state == PS_DEAD) && (prev_state != PS_RESPAWN)) {
			if(!other.tallying_points) {
				other.tallying_points = true;
				// other.debug_match_analysis += `KO P${player} with ${other.neo_points}p/`;
			}
			else
				earn_points_for(other.x, other.y - other.char_height - 10, other, other, 8000);
			neo_data.launched_by_id = noone;
		}
		
		if(state == PS_DEAD && get_player_stocks(player) == 0) {
			// other.debug_match_analysis += `Enemy out of stocks/`;
			// if(other.debug_get_match_analysis) with(other) get_string("It looks like you just took an opponent's last stock. If this was the last opponent, please copy and paste this match report to a text document so Floral can analyze it:", debug_match_analysis);
			neo_data.launched_by_id = noone;
		}
		
		if(!free && state != PS_HITSTUN_LAND && state != PS_HITSTUN && state != PS_PRATFALL)
			neo_data.launched_by_id = noone;
	}
	
	//Etalus window freezer - for grabs that won't cooperate with just adding hitstop
	if(neo_data.etalus_window_freezer == other) {
		neo_data.etalus_window_frames--;
		window_timer--;
		if(neo_data.etalus_window_frames <= 0)
			neo_data.etalus_window_freezer = noone;
	}
	
	//#mark Carried Update
	if(neo_data.carried_by_id == other) {
		force_depth = true; depth = neo_data.carried_by_id.depth  + 1;
		var panic_escape = false;
		if(url != other.url && state != PS_LANDING_LAG) panic_escape = true;
		else if(other.carry_obj != id) panic_escape = true;
		
		if(panic_escape) {
			neo_data.carried_by_id = noone;
			other.carry_obj = noone;
			if(url == other.url) escape_carried();
		}
	}
	
	//#mark Thrown Update
	if(neo_data.thrown_by_id == other && url != other.url) {
		if(state == PS_HITSTUN || state == PS_TUMBLE) {
			
		}
		else {
			neo_data.thrown_by_id = noone;
		}
	}
	
	//#region Frozen Update
	if(neo_data.frozen_by_id == other) {
		var ice_exists = instance_exists(neo_data.frozen_ice_instance);
		var remove_ice_data = false, remove_ice_block = false, allow_ice_update = true;
		var ice_resume_escape = false, ice_spin_escape = false, ice_uspecial_escape = false;
		
		//#region Ice EscConds
		if(!ice_exists) {
			//Top priority: If the ice block is missing just ditch everything and escape
			remove_ice_data = true; allow_ice_update = false;
			ice_resume_escape = true;
		}
		else if(!hitpause || (state != PS_HITSTUN && state != PS_HITSTUN_LAND)) {
			//Second priority: If the player has forcefully escaped the frozen status just let them out
			remove_ice_data = true; allow_ice_update = false; remove_ice_block = true;
		}
		else if(url == other.url && input_spin_pressed) {
			//Third priority: If the player has deliberately tried to escape, update and then let them out
			remove_ice_data = true; remove_ice_block = true;
			ice_spin_escape = true;
		}
		else if(neo_data_compat.can_uspecial_out_of_ice && (is_special_pressed(DIR_UP) || (up_down && special_pressed))) {
			//Third priority: If the player has deliberately tried to escape, update and then let them out
			remove_ice_data = true; remove_ice_block = true;
			ice_uspecial_escape = true;
		}
		else if(neo_data.frozen_frames <= 0) {
			//Lowest priority: If they've timed out the freeze timer, thaw them out
			remove_ice_data = true; remove_ice_block = true;
			ice_resume_escape = true;
		}
		//#endregion
		
		//#region Frozen Perform
		if(allow_ice_update) {
			state = PS_HITSTUN; state_timer = 0; hitstun = 4;
			invincible = true; invince_time = 2;
			hitpause = true; hitstop = 4; hitstop_full = 4;
			hsp = neo_data.frozen_ice_instance.hsp; old_hsp = hsp;
			vsp = neo_data.frozen_ice_instance.vsp; old_hsp = vsp;
			x = round(neo_data.frozen_ice_instance.x);
			if (neo_data.frozen_ice_instance.object_index == pHitBox)
				var ice_bottom_yoffset = neo_data.frozen_ice_instance.image_yscale * 100;
			else
				var ice_bottom_yoffset = neo_data.frozen_ice_instance.image_yscale;
			y = ceil(neo_data.frozen_ice_instance.y + ice_bottom_yoffset);
			free = neo_data.frozen_ice_instance.free;
			spr_dir = neo_data.frozen_ice_instance.spr_dir * sign(neo_data.frozen_ice_instance.frozen_xscale);
			visible = false;
			
			var ice_carried = neo_data.frozen_ice_instance.neo_carry_data.carried_type;
			
			// print(neo_data.frozen_frames);
			if(neo_data.frozen_frames < (ice_carried?5:28)) neo_data.frozen_ice_instance.escape_rumbling = true;
			
			if(ice_carried)
				neo_data.frozen_frames -= 0.25;
			else if(neo_data.frozen_ice_instance.state == "Initial" && neo_data.frozen_ice_instance.object_index == obj_article_solid)
				neo_data.frozen_frames -= 0.5;
			else if(neo_data.frozen_ice_instance.free)
				neo_data.frozen_frames -= 2;
			else
				neo_data.frozen_frames--;
		}
		//#endregion
		
		//#region Ice Escapes
		if(remove_ice_data) {
			neo_data.frozen_by_id = noone; neo_data.frozen_frames = 0;
			mask_index = neo_data.frozen_data.mask;
			if(spr_dir == 0) spr_dir = neo_data.frozen_data.spr_dir;
			visible = true;
			invincible = false; invince_time = 0;
			hitpause = false; hitstop = 0;
			
			has_walljump = true; has_airdodge = true; djumps = 0;
		}
		
		if(ice_resume_escape) {
			if(ice_exists
					&& neo_data.frozen_ice_instance.neo_carry_data.carried_type == 2
					&& instance_exists(neo_data.frozen_ice_instance.neo_carry_data.carrier_id)
					&& neo_data.frozen_ice_instance.neo_carry_data.carrier_id.carry_obj == neo_data.frozen_ice_instance) {
				free = false; freemd = true; ground_type = 2;
				if(url == other.url) {
					enter_carried();
				}
				else {
					set_state(PS_LANDING_LAG);
					landing_lag_time = 4;
				}
				neo_data.frozen_ice_instance.neo_carry_data.carrier_id.carry_obj = id;
			}
			else {
				sprite_index = neo_data.frozen_data.sprite;
				image_index = neo_data.frozen_data.image;
				state = neo_data.frozen_data.state;
				state_timer = neo_data.frozen_data.state_timer;
				attack = neo_data.frozen_data.attack;
				window = neo_data.frozen_data.window;
				window_timer = neo_data.frozen_data.window_timer;
				hitpause = false; hitstop = 0;
			}
		}
		else if(ice_spin_escape) {
			perform_spin_action(true);
			free = true;
			//Give Mario iframes if he's carrying this ice
			if(neo_data.frozen_ice_instance.neo_carry_data.carried_type
					&& instance_exists(neo_data.frozen_ice_instance.neo_carry_data.carrier_id)) {
				neo_data.frozen_ice_instance.neo_carry_data.carrier_id.invincible = 2;
				neo_data.frozen_ice_instance.neo_carry_data.carrier_id.invince_time = 30;
			}
		}
		else if(ice_uspecial_escape) {
			set_attack(neo_data_compat.ice_escape_attack);
			//Give Mario iframes if he's carrying this ice
			if(neo_data.frozen_ice_instance.neo_carry_data.carried_type
					&& instance_exists(neo_data.frozen_ice_instance.neo_carry_data.carrier_id)) {
				neo_data.frozen_ice_instance.neo_carry_data.carrier_id.invincible = 2;
				neo_data.frozen_ice_instance.neo_carry_data.carrier_id.invince_time = 30;
			}
		}
		
		if(remove_ice_block) {
			// instance_destroy(neo_data.frozen_ice_instance);
			if(ice_uspecial_escape || ice_spin_escape) { //escaping early means Mario gets even more coins
				earn_coins_for(x, y, neo_data.frozen_ice_instance.player_id, neo_data.frozen_ice_instance.player_id, 5, false);
				// earn_coins_for(x, y, neo_data.frozen_ice_instance.player_id, neo_data.frozen_ice_instance.player_id, 3, true);
			}
			neo_data.frozen_ice_instance.eject_coins = false;
			neo_data.frozen_ice_instance.state = "Shatter";
			neo_data.frozen_ice_instance.mask_index = other.spr_mask_dead;
			neo_data.frozen_ice_instance.visible = false;
		}
		//#endregion
	}
	//#endregion
	
	//#endregion
}

tallying_points = false; //TODO: remove this line for point tallying

if(tallying_points) {
	if(tallying_points == 1) {
		display_points = 0; saved_neo_points = neo_points; saved_reward = points_reward;
		neo_points = 0; points_reward = REWARDS_ARRAY[0];
		tally_score_sfx_instance = sound_play(sound_get("tally_score"));
		tallying_points_overflow = 0;
		var rough_tally_per_frame = saved_neo_points / 89;
		var increment = max(25, floor((saved_neo_points / 80) / 50) * 50);
		tally_per_frame = max(25, floor(rough_tally_per_frame / 50) * 50);
		score_flash_time = 0;
	}
	tallying_points++;
	
	if(display_points < saved_neo_points) {
		display_points += min(saved_neo_points - display_points, tally_per_frame);
		if(tallying_points == 40) {
			sound_stop(tally_score_sfx_instance);
			tally_score_sfx_instance = sound_play(sound_get("tally_score_loop"), true);
		}
	}
	else {
		if(tallying_points_overflow == 0) {
			sound_stop(tally_score_sfx_instance);
			tally_score_sfx_instance = sound_play(sound_get("tally_score_finish"));
			saved_neo_points = 0;
			
			// debug_match_analysis += `reward ${saved_reward.name}/`;
			
			//TODO remove this disgusting evil placeholder code
			if(is_endless_abyss_mode) {
				var power_up = instance_create(-200, -200, "obj_article2");
				
				power_up.subvariant = POWER_OBJ.super_mushroom;
				power_up.sprite_index = sprite_get("item_mushroom");
			}
			//end of the gross horrid placeholder code
			
			saved_points_reward = REWARDS_ARRAY[0];
			points_reward_preview = REWARDS_ARRAY[0];
		}
		else if(tallying_points_overflow > 72) {
			tallying_points = false;
			score_old_render_images = array_create(7, -1);
		}
		tallying_points_overflow++;
		score_flash_time = 0;
	}
	
	update_points_icon_for(id, true);
}

//#mark End of Update
prev_prev_hsp = prev_hsp;
prev_hsp = hsp;
if(queue_update_score) update_points_icon_for(id, tallying_points);
if(queue_voice != null) {
	voice(queue_voice);
	queue_voice = null;
}
if(!hitpause && unpause_queue_voice != null) {
	voice(unpause_queue_voice);
	unpause_queue_voice = null;
}

#define max_abs(numberoo_alfa, numberoo_bravo)
	if(abs(numberoo_alfa) > abs(numberoo_bravo)) return(numberoo_alfa);
	else return(numberoo_bravo);

#define voice
/// voice(name, use_unique = false, volume = 1.0)
var name = argument[0];
var use_unique = argument_count > 1 ? argument[1] : false;
var volume = argument_count > 2 ? argument[2] : 1.0;
	//Prevent another voice line from queueing
	
	//Count how many sounds there are with this name
	var invalid_sfx = sound_get(""), current_sfx = sound_get(`voc_${neo_char.prefix}${name}1`), sounds_count = 0;
	while(current_sfx != invalid_sfx && sounds_count < 20) {
		sounds_count++;
		current_sfx = sound_get(`voc_${neo_char.prefix}${name}${sounds_count + 1}`);
	}
	//If there's at least one sound, then play it with the old play_voice_sfx function. If not, that's probs bad
	if(sounds_count > 0) voice_secondary_func(name, sounds_count, volume);
	else {
		sound_play(sound_get("bookworm_buzzer"));
		print(`Warning: There is no voc_${neo_char.prefix}${name}1.ogg :(`);
	}

#define voice_secondary_func(suffix, count, volume)
	if(count > 0) {
		var has_starman = neo_data.starman_time > 0;
		//End any echoing SFX
		// for(var counteroo = 0; counteroo < array_length(echo_array); counteroo++) {
		// 	sound_stop(echo_array[counteroo]);
		// 	if(debug_echoes) print_debug("Stopped echo " + string(echo_array[counteroo]));
		// }
		echo_array = []; schedule_echo_sfx = [];
		// if(debug_echoes) print_debug("Emptied echo SFX list & schedule");
		
		var sfx = string("voc_" + neo_char.prefix + suffix + string(random_func(0, count, true) + 1));
		sound_stop(latest_voice_sfx_instance);
		latest_voice_sfx_instance = sound_play(sound_get(sfx), false, noone, volume * (has_starman?0.5:1), neo_power.size_profile.voice_pitch);
		
		var echo_count = 20, echo_delay = 1;
		if(has_starman) for(var counteroo = 0; counteroo < echo_count; counteroo++) {
			var echo_volume = ((echo_count + 1) - counteroo - 1) / (echo_count + 1);
			var echo_time_offset = counteroo * echo_delay;
			array_push(schedule_echo_sfx, {
				at_time: get_gameplay_time() + echo_time_offset,
				full_name: sfx,
				volume: echo_volume
			});
			// if(debug_echoes) print_debug("Scheduled new SFX of " + sfx + " (" + string(echo_volume) + "," + string(echo_time_offset) + ")");
		}
	}

#define wall_skidding(move_dir)
	if(vsp > 0 && move_dir != 0 && (true || move_dir != wall_jump_polarity || y > wall_jump_y) && move_dir == sign(hsp))
		if(place_meeting(x + hsp + move_dir, y + 10, asset_get("par_block")) && place_meeting(x + hsp + move_dir, y - 20, asset_get("par_block")))
			if(!place_meeting(x, y + 40, asset_get("par_block")) && !place_meeting(x, y + 40, asset_get("par_jumpthrough")))
				return(true);
	return(false);

#define unbuffer_input(input_name)
	switch(input_name) {
		case "run": case "grab":
			clear_button_buffer(PC_ATTACK_PRESSED);
			clear_button_buffer(PC_SPECIAL_PRESSED);
		break;
		case "jump":
			clear_button_buffer(PC_JUMP_PRESSED);
		break;
		case "spin":
			clear_button_buffer(PC_SHIELD_PRESSED);
		break;
		case "lift":
			clear_button_buffer(PC_SHIELD_PRESSED);
			clear_button_buffer(PC_RIGHT_STICK_PRESSED);
			clear_button_buffer(PC_LEFT_STICK_PRESSED);
		break;
		case "reserve":
			clear_button_buffer(PC_ATTACK_PRESSED);
			clear_button_buffer(PC_SPECIAL_PRESSED);
			clear_button_buffer(PC_UP_STICK_PRESSED);
		break;
		case "roll":
			clear_button_buffer(PC_SHIELD_PRESSED);
			clear_button_buffer(PC_DOWN_STICK_PRESSED);
		break;
	}

#define play_footstep_sfx
	sound_play(floor_type.footstep_sfx[footstep_counter % 2]);
	footstep_counter++;

#define enable_skid_sfx(sfx, frequency)
	play_skid_sfx = sfx;
	play_skid_freq = frequency;

#define duck
/// duck(prevent_if_aerial = free)
var prevent_if_aerial = argument_count > 0 ? argument[0] : free;
	if(prevent_if_aerial) return(false);
	mask_stance = "duck_"; char_height = neo_power.size_profile.height_duck;

#define unduck
	if(mask_stance == "stand_") return(false);
	mask_stance = "stand_"; char_height = neo_power.size_profile.height_normal; return(true);

#define enter_carried
	switch(identify_carry_type(id)) {
		case "grab item":
			change_neostate("Grab Item Carried", "Idle", "carried_grab");
		break;
		case "lift object":
			change_neostate("Lift Object Carried", "Idle", "carried_lift");
			print(neo_animstate);
		break;
		default:
			change_neostate("Carried", "Idle", "carried");
		break;
	}

#define escape_carried
	switch(neo_state) {
		case "Grab Item Carried":
			enter_aerial_state("Grab Item Aerial", "grab_jump", "grab_duck");
		break;
		case "Lift Object Carried":
			enter_aerial_state("Lift Object Aerial", "lift_jump", "duck"); 
		break;
		case "Shell Hide":
			skid_timer = 12;
		break;
		default:
			enter_aerial_state();
		break;
	}

#define exit_carrying_state
	switch(neo_state) {
		case "Grab Item Carried":
			change_neostate("Carried", "Idle", "carried");
		break;
		case "Grab Item Tail Wag": case "Lift Object Tail Wag":
			if(neo_substate == "Fly") {
				neo_state = "Tail Wag"; neo_animstate = "flight";
			}
			else {
				neo_state = "Tail Wag"; neo_animstate = (mask_stance == "duck_")?"stall_duck":"stall";
			}
		break;
		default:
			var prev_substate = neo_substate;
			enter_normal_state();
			neo_substate = prev_substate;
		break;
	}

#define enter_normal_state
/// enter_normal_state(face_dir = 0, aerial_neostate = "Aerial", aerial_animstate = "jump", grounded_neostate = "Grounded", idle_animstate = "idle", walk_animstate = "walk", run_animstate = "run", duck_animstate = "duck")
var face_dir = argument_count > 0 ? argument[0] : 0;
var aerial_neostate = argument_count > 1 ? argument[1] : "Aerial";
var aerial_animstate = argument_count > 2 ? argument[2] : "jump";
var grounded_neostate = argument_count > 3 ? argument[3] : "Grounded";
var idle_animstate = argument_count > 4 ? argument[4] : "idle";
var walk_animstate = argument_count > 5 ? argument[5] : "walk";
var run_animstate = argument_count > 6 ? argument[6] : "run";
var duck_animstate = argument_count > 7 ? argument[7] : "duck";
	if(free) {
		enter_aerial_state(aerial_neostate, aerial_animstate, duck_animstate, true);
	}
	else {
		enter_grounded_state(face_dir, grounded_neostate, idle_animstate, walk_animstate, run_animstate, duck_animstate);
	}

#define enter_grounded_state
/// enter_grounded_state(face_dir = 0, grounded_neostate = "Grounded", idle_animstate = "idle", walk_animstate = "walk", run_animstate = "run", duck_animstate = "duck")
var face_dir = argument_count > 0 ? argument[0] : 0;
var grounded_neostate = argument_count > 1 ? argument[1] : "Grounded";
var idle_animstate = argument_count > 2 ? argument[2] : "idle";
var walk_animstate = argument_count > 3 ? argument[3] : "walk";
var run_animstate = argument_count > 4 ? argument[4] : "run";
var duck_animstate = argument_count > 5 ? argument[5] : "duck";
	var new_animstate = (mask_stance == "duck_" && down_down)?duck_animstate:((hsp == 0)?idle_animstate:walk_animstate);
	if(abs(hsp) >= move_type.run_speed) {
		new_animstate = run_animstate;
	}
	if(face_dir != 0) spr_dir = face_dir;
	change_neostate(grounded_neostate, "Idle", new_animstate);

#define enter_aerial_state
/// enter_aerial_state(aerial_neostate = "Aerial", aerial_animstate = "jump", duck_animstate = "duck", preserve_substate = false)
var aerial_neostate = argument_count > 0 ? argument[0] : "Aerial";
var aerial_animstate = argument_count > 1 ? argument[1] : "jump";
var duck_animstate = argument_count > 2 ? argument[2] : "duck";
var preserve_substate = argument_count > 3 ? argument[3] : false;
	if(aerial_neostate == "Aerial" && neo_state == "Grab Item Spin Jump" || neo_state == "Lift Object Spin Jump")
		change_neostate("Spin Jump", "Fall", "spin");
	else
		change_neostate(
				aerial_neostate,
				preserve_substate?neo_substate:((mask_stance == "duck_" && down_down)?"Duck Fall":"Fall"),
				(mask_stance == "duck_" && down_down)?duck_animstate:aerial_animstate,
				true, !preserve_substate
		);

#define change_neostate
/// change_neostate(state, substate = neo_substate, animstate = neo_animstate, reset_state_timer = true, reset_substate_timer = true, reset_anim_timer = true, reset_anim_override = true, silent_change = false)
var state = argument[0];
var substate = argument_count > 1 ? argument[1] : neo_substate;
var animstate = argument_count > 2 ? argument[2] : neo_animstate;
var reset_state_timer = argument_count > 3 ? argument[3] : true;
var reset_substate_timer = argument_count > 4 ? argument[4] : true;
var reset_anim_timer = argument_count > 5 ? argument[5] : true;
var reset_anim_override = argument_count > 6 ? argument[6] : true;
var silent_change = argument_count > 7 ? argument[7] : false;
	if(state != "Burnt") sound_stop(burning_sfx_instance);
	if(reset_state_timer && state != neo_state) { neo_statetimer = 0; neo_substatetimer = 0; if(!silent_change) { neo_state_changed = true; neo_substate_changed = true; } }
	else if(reset_substate_timer && substate != neo_substate) { neo_substatetimer = 0; if(!silent_change) neo_substate_changed = true; }
	
	neo_state = state;
	neo_substate = substate;
	neo_animstate = animstate;
	if(reset_anim_timer && (override_anim_timer <= 0 || !override_aggressive)) neo_animtimer = 0;
	if(reset_anim_override && !override_aggressive) override_anim_timer = 0;
	
	if(!in_shell) skid_timer = 0;
	hang_time = 0;
	was_parried = false;
	
	if(state == "Roll") {
		duck();
	}

#define perform_spin_action
/// perform_spin_action(force_grounded = false)
var force_grounded = argument_count > 0 ? argument[0] : false;
	if(!input_spin_pressed && !force_grounded) return(false);
	if(neo_state == "Aerial" && neo_substate == "Wall Jump") return(false);
	if(neo_power.name == "Propeller Mushroom" && has_boost) {
		//propeller boost
	}
	else if(!free || force_grounded) {
		unbuffer_input("spin");
		sound_play(sound_get("spin_jump"));
		dust_status = "Jump Frame";
		switch(identify_carry_type(id)) {
			case "grab item":
				change_neostate("Grab Item Spin Jump", "Spin Jump", "grab_twirl");
			break;
			case "lift object":
				change_neostate("Lift Object Spin Jump", "Spin Jump", "lift_twirl");
			break;
			case "none":
				change_neostate("Spin Jump", "Spin Jump", "twirl");
			break;
		}
		vsp = -12;
		return(true);
	}
	else {
		switch(identify_carry_type(id)) {
			case "grab item":
				var twirling_neostate = "Grab Item Twirl", jumping_animstate = "grab_jump", twirling_animstate = "grab_twirl";
			break;
			case "lift object":
				var twirling_neostate = "Lift Object Twirl", jumping_animstate = "lift_jump", twirling_animstate = "lift_twirl";
			break;
			case "none":
				var twirling_neostate = "Twirl", jumping_animstate = "jump";
				switch(neo_animstate) {
					case "sideflip":
						var twirling_animstate = "sflip_twirl";
					break;
					case "triplejump":
						var twirling_animstate = "tjump_twirl";
					break;
					default:
						var twirling_animstate = "twirl";
					break;
				}
			break;
		}
		
		var can_twirl = (neo_substate != "Star Jump" && (vsp > 0 || neo_substate != "Stomp"));
		if(can_twirl && get_gameplay_time() > last_twirl_time + 24) {
			unbuffer_input("spin");
			last_twirl_time = get_gameplay_time();
			vsp = min(0, vsp);
			sound_play(sound_get("twirl"));
			if(unduck()) change_neostate(neo_state, "Jump", jumping_animstate);
			
			var save_anim_timer = neo_animtimer; pre_twirl_animstate = neo_animstate;
			enter_aerial_state(twirling_neostate, twirling_animstate, "duck", true);
			neo_animtimer = save_anim_timer;
			
			return(true);
		}
	}
	
#define identify_carry_type(mario_id)
	switch(mario_id.neo_state) {
		//Solve grab/lift data inconsistencies before they can cause errors
		case "Grab Item Grounded": case "Grab Item Aerial":
		case "Grab Item Twirl": case "Grab Item Spin Jump":
		case "Grab Item Carried":
		case "Grab Item Tail Wag":
			return("grab item");
		break;
		case "Lift Object Pickup": case "Lift Object Grounded": case "Lift Object Aerial":
		case "Lift Object Twirl": case "Lift Object Spin Jump":
		case "Lift Object Carried":
		case "Lift Object Tail Wag":
			return("lift object");
		break;
		default:
			return("none");
		break;
	}

#define override_animstate
/// override_animstate(animstate, timer, aggressive = false, override_instance = id)
var animstate = argument[0], timer = argument[1];
var aggressive = argument_count > 2 ? argument[2] : false;
var override_instance = argument_count > 3 ? argument[3] : id;
	override_ignore = false;
	override_instance.neo_animtimer = 0;
	override_instance.override_anim_animstate = animstate;
	override_instance.override_anim_timer = timer;
	override_instance.no_override = false;
	override_instance.override_aggressive = aggressive;
	
	// if(override_instance.neo_state == "Aerial") {
	// 	override_instance.neo_substate = "Jump";
	// 	override_instance.neo_animstate = "jump";
	// }

#define process_aerial_drift(move_dir, face_movedir, drift_mult)
	if(move_dir != 0) {
		if(face_movedir) spr_dir = move_dir;
		if(input_run) {
			if(hsp * move_dir < move_air.fast_drift_speed) {
				hsp += move_dir * move_air.fast_drift_accel * drift_mult;
				if(hsp * move_dir > move_air.fast_drift_speed) {
					hsp = move_dir * move_air.fast_drift_speed;
				}
			}
		}
		else {
			if(hsp * move_dir < move_air.slow_drift_speed) {
				hsp += move_dir * move_air.slow_drift_accel * drift_mult;
				if(hsp * move_dir > move_air.slow_drift_speed) {
					hsp = move_dir * move_air.slow_drift_speed;
				}
			}
		}
	}

// #define process_aerial_gravity
/// process_aerial_gravity(allow_slow_peak = false, allow_hang_time = true, fall_accel = move_air.fall_accel, rising_fall_accel = move_air.rising_fall_accel, fall_speed = move_air.fall_speed)
// #args allow_slow_peak = false, allow_hang_time = true, fall_accel = move_air.fall_accel, rising_fall_accel = move_air.rising_fall_accel, fall_speed = move_air.fall_speed
// 	if(false && vsp >= 0 && jump_down && vsp < move_air.fall_accel && allow_hang_time && hang_time < 2) {
// 		vsp = 0; hang_time++;
// 	}
// 	else
// 		vsp = min(vsp + ((allow_slow_peak && vsp < 0 && vsp > -3)?rising_fall_accel:fall_accel), fall_speed);

#define push_players(groundedness)
	if(neo_data.starman_time > 0) {
		//don't push players when we have a star - cancel the function here
		return;
	}
	//TODO: Optimize
	//Push other Qua Marios
	with(oPlayer) if(state != PS_SPAWN && id != other && id != other.carry_obj && url == other.url) {
		var can_collide = free == !groundedness;
		switch(neo_state) {
			case "Noclip": case "Cutscene": case "Respawn Plat": case "MunoPhone":
			case "Carried": case "Carried Statue": case "Carried Shell": case "Grab Item Carried": case "Lift Object Carried":
			case "Wall Slide": case "Ground Pound":
				can_collide = false;
			break;
		}
		var push_dir = sign(x - other.x); if(push_dir == 0) push_dir = spr_dir; if(push_dir == 0) push_dir = 1; //do NOT let push_dir == 0 or the game will freeze!!!!!!
		var leniency = push_dir * 5 + hsp - other.hsp, y_leniency = (groundedness?0:-10) + vsp - other.vsp;
		
		if(push_dir != 0 && can_collide && place_meeting(x + leniency, y + y_leniency, other)) {
			while(place_meeting(x + leniency, y + y_leniency, other)) {
				x += push_dir; other.x -= push_dir;
			}
		}
	}
	//Push other players who aren't Qua Mario
	with(pHurtBox) if(instance_exists(playerID) && playerID != other && playerID.url != other.url && playerID != other.carry_obj) {
		var can_collide = playerID.state != PS_ATTACK_GROUND && playerID.state != PS_ATTACK_AIR && playerID.state != PS_HITSTUN && playerID.free = !groundedness;
		var push_dir = sign(x - other.x); if(push_dir == 0) push_dir = playerID.spr_dir;
		var leniency = push_dir * 5 + playerID.hsp - other.hsp, y_leniency = (groundedness?0:-10) + playerID.vsp - other.vsp;
		
		if(push_dir != 0 && can_collide && place_meeting(x + leniency, y + y_leniency, other)) {
			
			var enemy_push_coefficient = 1.0;
			if(playerID.knockback_adj < 1) {
				var pushing_weight = max(0, (1.0 - 6 * (1.0 - playerID.knockback_adj)));
				enemy_push_coefficient = pushing_weight / 2;
			}
			else {
				var pushing_weight = min(1.0 + 2 * (playerID.knockback_adj - 1.0), 2.0);
				enemy_push_coefficient = pushing_weight / 2;
			}
			var mario_push_coefficient = 1.0 - enemy_push_coefficient;
			
			var hypothetical_push = 0;
			while(place_meeting(x + hypothetical_push * push_dir + leniency, y, other)) {
				hypothetical_push += 0.1;
			}
			
			var enemy_push = (push_dir * hypothetical_push * enemy_push_coefficient);
			var mario_push = (push_dir * hypothetical_push * mario_push_coefficient);
			
			other.x -= (push_dir == 1)?floor(mario_push):ceil(mario_push);
			playerID.x += (push_dir == 1)?ceil(enemy_push):floor(enemy_push);
			
			other.hsp = clamp(other.hsp, -4, 4);
			if(other.neo_substate == "Duck Idle" || other.neo_substate == "Duck Skid") other.hsp = clamp(-1 * mario_push, -4, 4);
			other.pushing = true;
		}
	}

#define kick_items
/// kick_items(kick_animation = true, can_grab = true)
var kick_animation = argument_count > 0 ? argument[0] : true;
var can_grab = argument_count > 1 ? argument[1] : true;
//Originally Qua Mario would kick shells on contact, like in the original games
//However... I found that it wasn't very fun. It was also too easy to kick your Blue Shell away by accident, which feels awful
	return(undefined);

#define composite_carry_item(can_lift, grab_neostate, grab_animstate, lift_neostate, lift_animstate)
	if(!input_grab && !input_lift_pressed) return(false); //obvi...
	
	if(phone_cheats[CHEAT_AIRLIFT]) can_lift = true;
	
	if(can_lift && input_lift_pressed && !phone_playtest) { //lifting playtest dummies causes crashes :(
		var liftable_player = noone;
		with(pHurtBox) if(instance_exists(playerID)) {
			if(playerID != other && !instance_exists(playerID.neo_data.carried_by_id) && !playerID.super_armor && !playerID.invincible && !playerID.attack_invince && !playerID.initial_invince && place_meeting(x + playerID.hsp - other.hsp, y + playerID.vsp - other.vsp, other)) {
				liftable_player = playerID;
				break;
			}
		}
		
		if(liftable_player != noone) {
			voice("lift");
			unbuffer_input("lift");
			
			if(phone_cheats[CHEAT_AIRLIFT] == 2)
				change_neostate(lift_neostate, neo_substate, lift_animstate);
			else
				change_neostate("Lift Object Pickup", "Pickup Object", "lift_pickup");
			
			//Set the carry object
			carry_obj = liftable_player;
			carry_obj.neo_data.carried_by_id = id;
			
			carry_obj.free = false; carry_obj.freemd = true; carry_obj.ground_type = 2;
			if(carry_obj.url == url) {
				with(carry_obj) enter_carried();
			}
			else {
				with(carry_obj) set_state(PS_LANDING_LAG);
				carry_obj.landing_lag_time = 4;
			}
			
			carry_update((phone_cheats[CHEAT_AIRLIFT] == 2)?"lift player":"lift player pickup");
			return(true);
		}
	}
	
	var item_carry_data = find_carryable_item(can_lift, false), item = item_carry_data[0], carry_type = item_carry_data[1];
	
	if(item == noone || !instance_exists(item)) return(false);
	if(carry_type == "lift item") {
		voice("lift");
		unbuffer_input("lift");
		
		if(phone_cheats[CHEAT_AIRLIFT] == 2)
			change_neostate(lift_neostate, neo_substate, lift_animstate);
		else
			change_neostate("Lift Object Pickup", "Pickup Item", "lift_pickup");
		
		pre_twirl_animstate = "lift_jump";
	}
	else {
		//Grabs preserve the animtimer and statetimer
		var save_animtimer = neo_animtimer, save_statetimer = neo_statetimer;
		change_neostate(grab_neostate, neo_substate, grab_animstate); voice("grab");
		pre_twirl_animstate = "grab_jump";
		neo_animtimer = save_animtimer; neo_statetimer = save_statetimer;
	}
	
	if(item.object_index == oPlayer || item.object_index == oTestPlayer) {
		//Unless something has gone horribly wrong, this means we're carrying a Shell Mario player
		
		//Set the carry object
		carry_obj = item;
		carry_obj.neo_data.carried_by_id = id;
		
		carry_obj.neo_image = 0.1; carry_obj.skid_timer = 40;
		
		carry_obj.free = false; carry_obj.freemd = true; carry_obj.ground_type = 2;
		// with(carry_obj) enter_carried();
		
		if(carry_type == "grab item") carry_type = "grab unknown";
	}
	else {
		//Set the carry object
		carry_obj = item;
		carry_obj.neo_carry_data.carried_type = (carry_type == "grab item")?1:2;
		carry_obj.neo_carry_data.carrier = player;
		carry_obj.neo_carry_data.carrier_id = id;
		carry_obj.neo_carry_data.was_released = 0;
		
		//Replace mask
		if(carry_obj.neo_carry_data.override_mask) {
			if(carry_obj.object_index == pHitBox) {
				carry_obj.neo_carry_data.old_mask_index = carry_obj.collision_sprite;
				carry_obj.collision_sprite = spr_pmask_holp;
			}
			else {
				carry_obj.neo_carry_data.old_mask_index = carry_obj.mask_index;
				carry_obj.mask_index = spr_pmask_holp;
			}
		}
		carry_obj.neo_carry_data.old_spr_dir = carry_obj.spr_dir;
		carry_obj.neo_carry_data.carried_backwards = spr_dir != carry_obj.spr_dir;
	}
	
	if(neo_state == "Lift Object Pickup") carry_type = "lift unknown pickup";
	
	carry_update(carry_type);
	return(true);

#define find_carryable_item(can_lift, is_cleartest)
	//this cheat is so stupid
	if(phone_cheats[CHEAT_CARRY_ALL] && !is_cleartest) {
		//Shell Mario grabbing
		if(!is_cleartest) with(oPlayer)
			if(self != other && state != PS_SPAWN && url == other.url && in_shell && neo_state == "Shell Hide" && place_meeting(x + hsp - other.hsp - (3 * other.spr_dir), y + vsp, other))
				return([id, "grab item"]);
		
		//Find everything and put it all into a huge array (performance is for chumps i guess)
		var everything_list = [];
		with(obj_article1) if(!disable_movement) array_push(everything_list, id);
		with(obj_article2) if(!disable_movement) array_push(everything_list, id);
		with(obj_article3) if(!disable_movement) array_push(everything_list, id);
		with(obj_article_solid) if(!disable_movement) array_push(everything_list, id);
		with(obj_article_platform) if(!disable_movement) array_push(everything_list, id);
		
		if(phone_cheats[CHEAT_CARRY_ALL != 3]) {
			with(pHitBox) if(type == 2 && (hsp != 0 || vsp != 0)) array_push(everything_list, id);
			with(obj_stage_article) if(!disable_movement) array_push(everything_list, id);
			if(phone_cheats[CHEAT_CARRY_ALL] != 2) {
				with(obj_stage_article_platform) if(!disable_movement) array_push(everything_list, id);
				with(obj_stage_article_solid) if(!disable_movement) array_push(everything_list, id);
			}
		}
		
		return(process_carryable_list(everything_list, true, id, can_lift, is_cleartest));
	}
	
	//Array-based compatibility
	with(oPlayer) {
		var carried = process_carryable_list(neo_data_compat, false, other, can_lift, is_cleartest);
		if(carried[0] != noone) return(carried);
		
		//Shell Mario grabbing
		if(!is_cleartest && self != other && state != PS_SPAWN && url == other.url && in_shell && neo_state == "Shell Hide" && place_meeting(x + hsp - other.hsp - (3 * other.spr_dir), y + vsp, other))
			return([id, "grab item"]);
	}
	
	if(stage_id != noone) {
		var carried = process_carryable_list(stage_id.neo_data_compat, false, other, can_lift, is_cleartest);
		return(carried);
	}
	
	return([noone, undefined]);
	
#define process_carryable_list(compat_data, passing_directly, mario_id, can_lift, cleartest)
	var carry_list = passing_directly?compat_data:(cleartest == 2?compat_data.freezable_objects:compat_data.carryable_objects);
	var remove_indices = undefined;
	for(var incrementeroo = 0, total = array_length(carry_list); incrementeroo < total; incrementeroo++;) {
		var check_object = carry_list[@incrementeroo];
		
		if(!instance_exists(check_object)) {
			if(!passing_directly) {
				if(remove_indices == undefined) remove_indices = [incrementeroo];
				else array_push(remove_indices, incrementeroo);
			}
			continue;
		}
		
		if(cleartest) continue; //Cleartests don't check any collisions or carryability, they just remove dead IDs
		
		//Some objects will be automatically rejected (in hitstop or in Q.M. "offer" phase)
		if(check_object.object_index == pHitBox && (check_object.player != mario_id.player || check_object.can_hit_self) && (check_object.can_hit[mario_id.player + 10 * (mario_id.custom_clone + 1)])) continue;
		if(variable_instance_get(check_object, "hitstop", 0) > 0) continue;
		if(check_object.player_id != noone && check_object.player_id.url == mario_id.url && check_object.player_id != mario_id && "state" in check_object && check_object.state == "Offer") continue;
		
		//Create and populate Neo Carry Data if it's missing
		if("neo_carry_data" not in check_object) check_object.neo_carry_data = { is_grabbable: true, is_liftable: true };
		else if(!is_object(check_object.neo_carry_data)) {
			if(check_object.neo_carry_data == false) continue; // "false" items are not processed
			else if(check_object.neo_carry_data == "grab") check_object.neo_carry_data = { is_grabbable: true }; // "grab" objects are only grabbable
			else if(check_object.neo_carry_data == "lift") check_object.neo_carry_data = { is_liftable: true }; // "lift" items are only liftable
			else if(check_object.neo_carry_data == true) check_object.neo_carry_data = { is_grabbable: true, is_liftable: true }; // "true" items are grabbable and liftable
			else {
				print(`Invalid carry data value: ${check_object.neo_cary_data}`);
			}
		}
		if("complete" not in check_object.neo_carry_data || !check_object.neo_carry_data.complete) {
			ensure_vars(check_object.neo_carry_data, [
				//Metadata
				"name", "Unknown",
				
				//Readable data
				"carried_type", 0, "carried_dir", 1, "carrier", 0, "carrier_id", noone,
				"was_released", 0,
				
				//Interaction limiters
				"is_grabbable", false, "is_liftable", false, "no_interact_time", -100,
				
				//Compatibility tweaks
				"half_width", undefined, "half_height", undefined, "xoffset", undefined, "yoffset", undefined,
				"sprite_can_flip", true, "can_change_depth", true, "override_mask", true,
				
				//Release behaviour
				"force_gentle_drop", false,
				"kick_hsp", 5, "kick_up_vsp", -12, "kick_sfx", undefined,
				"throw_hsp", 5, "throw_vsp", -4,
				
				//Carry effects
				"super_heavy", false, "blocks_attacks", false,
				
				//Population metadata
				"complete", true
			]);
		}
		else if(check_object.neo_carry_data.no_interact_time > get_gameplay_time()) continue;
		//^ that part is behind an Else since no_interact_time always starts at -100 when the data is first created, so checking it is unnecessary
		
		//Check for collisions with the object
		with(check_object) {
			var returns = undefined;
			
			//See if lifting the item is possible
			if(can_lift && mario_id.input_lift_pressed && neo_carry_data.is_liftable && place_meeting(x + hsp - other.hsp - (7 * mario_id.spr_dir) - (mario_id.hsp * 2.25), y + vsp - mario_id.vsp - 3, mario_id))
				returns = [check_object, "lift item"];
			
			//See if grabbing the item is possible
			else if(mario_id.input_grab && neo_carry_data.is_grabbable && place_meeting(x + hsp - other.hsp - (3 * other.spr_dir), y + vsp, mario_id))
				returns = [check_object, "grab item"];
			
			if(returns != undefined) {
				if(remove_indices != undefined)
					compat_data.carryable_objects = remove_indices_from_array(carry_list, remove_indices);
				return(returns);
			}
		}
	}
	
	if(remove_indices != undefined) {
		if(cleartest == 2)
			compat_data.freezable_objects = remove_indices_from_array(carry_list, remove_indices);
		else
			compat_data.carryable_objects = remove_indices_from_array(carry_list, remove_indices);
	}
	return([noone, undefined]);

#define remove_indices_from_array(old_array, remove_indices)
	var old_length = array_length(old_array), remove_count = array_length(remove_indices), new_length = old_length - remove_count, new_array = array_create(new_length, noone);
	for(var incrementeroo = 0, killed_index = 0; incrementeroo < old_length; incrementeroo++;) {
		if(killed_index < remove_count && incrementeroo == remove_indices[killed_index])
			killed_index++;
		else
			new_array[incrementeroo - killed_index] = old_array[@incrementeroo];
	}
	// print(`Removed ${array_length(remove_indices)} items from list; changed from ${old_length} items to ${array_length(new_array)} items}`);
	return(new_array);

#define ensure_vars(in_obj, pairs)
	for(var incrementeroo = 0, pairs_length = array_length(pairs); incrementeroo < pairs_length; incrementeroo += 2;)
		if(!variable_instance_exists(in_obj, pairs[incrementeroo]))
			variable_instance_set(in_obj, pairs[incrementeroo], pairs[incrementeroo + 1]);

#define generic_item_carry_update
	//Lose the item if it's forcefully escaped
	if(carry_obj.neo_carry_data.carried_type == 0) {
		lose_item();
		exit_carrying_state();
		return(true);
	}
	
	//Enforce carry stasis
	carry_obj.hsp = 0; carry_obj.vsp = 0; carry_obj.hitstop = 2;
	carry_obj.neo_carry_data.no_interact_time = get_gameplay_time() + 10;
	// carry_obj._hittable_time = carry_obj.neo_carry_data.no_interact_time;
	holp_depth = depth;
	if(carry_obj.object_index == pHitBox) carry_obj.hitbox_timer = 0;
	
	//Decide whether HOLP is facing left or right
	if(carry_obj.neo_carry_data.sprite_can_flip)
		holp_dir = spr_dir * (carry_obj.neo_carry_data.carried_backwards?-1:1);
	else
		holp_dir = carry_obj.neo_carry_data.old_spr_dir;
	carry_obj.neo_carry_data.carried_dir = spr_dir;
	
	//We didn't change Mario's state, so we're fine
	return(false);

#define carry_update(carry_type)
	//set the HOLP, manipulate the object, drop/release it if necessary
	switch(carry_type) {
		case "lift unknown pickup":
			if(carry_obj.object_index == oPlayer || carry_obj.object_index == oTestPlayer)
				return(carry_update("lift player pickup"));
			else
				return(carry_update("lift item pickup"));
		break;
		case "lift unknown":
			if(carry_obj.object_index == oPlayer || carry_obj.object_index == oTestPlayer)
				return(carry_update("lift player"));
			else
				return(carry_update("lift item"));
		break;
		case "grab unknown":
			if(carry_obj.object_index == oPlayer || carry_obj.object_index == oTestPlayer)
				return(carry_update("grab shell mario"));
			else
				return(carry_update("grab item"));
		break;
		
		case "grab item":
			//Common carrying behaviour
			if(generic_item_carry_update()) return(true);
			
			//Set HOLP position
			var holp_info = get_holp_sprite_info(), holding_height = (mask_stance == "duck_")?neo_power.size_profile.grab_item_height_duck:neo_power.size_profile.grab_item_height;
			holp_relative_x = spr_dir * (4 + holp_info.carry_xoffset + (holp_info.carry_width));
			holp_relative_y = holp_info.carry_yoffset - holding_height + (-1 * holp_info.carry_height);
			carry_obj.x = x + holp_relative_x;
			carry_obj.y = y + holp_relative_y;
			
			//Crouch-carry interactions (Blue Shell, shellmets)
			if(carry_obj.object_index == obj_article2 && carry_obj.player_id.url == url && mask_stance == "duck_") switch(carry_obj.variant) {
				case "blue koopa shell":
					obtain_power_up(POWER_OBJ.blue_shell, true, true);
					change_neostate("Shell Hide", "Duck", "shell_duck");
					neo_sprite_name = "duck"; neo_armor = true;
					instance_destroy(carry_obj);
					return(true);
				break;
				case "buzzy beetle shellmet":
					
				break;
				case "spiny shellmet":
					
				break;
			}
			
			//Release the item
			if(!input_grab && !(carry_obj.neo_carry_data.force_gentle_drop == 2 && free)) {
				if(down_down || carry_obj.neo_carry_data.force_gentle_drop)
					drop_item(holp_info);
				else if(up_down)
					kick_item(true);
				else
					kick_item(false);
				
				return(true);
			}
		break;
		case "lift item pickup":
			//Common carrying behaviour
			if(generic_item_carry_update()) return(true);
			
			//Set HOLP position
			var holp_info = get_holp_sprite_info(), holding_height = neo_power.size_profile.lift_item_height_pickup;
			holp_relative_x = spr_dir * (4 + holp_info.carry_xoffset + (holp_info.carry_width));
			holp_relative_y = holp_info.carry_yoffset - holding_height + (-1 * holp_info.carry_height);
			carry_obj.x = x + holp_relative_x;
			carry_obj.y = y + holp_relative_y;
		break;
		case "lift item":
			//Common carrying behaviour
			if(generic_item_carry_update()) return(true);
			
			//Set HOLP position
			var holp_info = get_holp_sprite_info();
			holp_relative_x = spr_dir * (holp_info.carry_xoffset);
			holp_relative_y = holp_info.carry_yoffset - neo_power.size_profile.lift_item_height + (-1 * holp_info.carry_height);
			carry_obj.x = x + holp_relative_x;
			carry_obj.y = y + holp_relative_y;
			
			//HUD offset
			hud_offset = holp_info.carry_height * 2;
			
			//Release the item
			with(carry_obj) {
				var reset_mask_to = mask_index;
				if(neo_carry_data.override_mask) mask_index = neo_carry_data.old_mask_index;
				var clip_drop = place_meeting(x, y, other.asset_par_block);
				mask_index = reset_mask_to;
			}
			if(clip_drop) {
				lose_item(); exit_carrying_state(); return(true);
			}
			
			if(!input_lift && !(carry_obj.neo_carry_data.force_gentle_drop == 2 && free)) {
				if(down_down || carry_obj.neo_carry_data.force_gentle_drop)
					drop_item(holp_info);
				else
					throw_item();
				
				return(true);
			}
		break;
		case "lift player pickup":
			//Set HOLP position
			carry_obj.hsp = 0; carry_obj.vsp = 0;
			holp_relative_x = spr_dir * (carry_obj.neo_data_compat.carry_x_offset + 4 + (16 * abs(carry_obj.spr_dir)));
			holp_relative_y = -1 * neo_power.size_profile.lift_item_height_pickup + carry_obj.neo_data_compat.carry_y_offset;
			
			//Carried player properties
			carry_obj.landing_lag_time = 4; carry_obj.state_timer = 0; holp_dir = spr_dir;
			carry_obj.free = false; carry_obj.freemd = true; carry_obj.ground_type = 0;
		break;
		case "lift player":
			//Set HOLP position
			carry_obj.hsp = 0; carry_obj.vsp = 0;
			holp_relative_x = carry_obj.neo_data_compat.carry_x_offset * spr_dir;
			holp_relative_y = -1 * neo_power.size_profile.lift_item_height + carry_obj.neo_data_compat.carry_y_offset;
			
			//HUD offset
			hud_offset = carry_obj.char_height + carry_obj.neo_data_compat.carry_hud_offset;
			
			//Carried player properties
			if(carry_obj.url != url) carry_obj.hud_offset = 18 + carry_obj.neo_data_compat.carry_hud_offset;
			carry_obj.landing_lag_time = 4; carry_obj.state_timer = 0; holp_dir = spr_dir;
			carry_obj.free = false; carry_obj.freemd = true; carry_obj.ground_type = 0;
			
			//Escaping
			if(carry_obj.url == url) {
				if(carry_obj.input_spin_pressed && !carry_obj.hitpause) {
					var old_carry_obj = lose_player();
					with(old_carry_obj) {
						perform_spin_action(true);
					}
					old_carry_obj.dust_status = "Jump Frame";
					old_carry_obj.vsp = -12;
					
					invincible = 2; invince_time = 30;
					if(free) enter_aerial_state("Aerial", "jump", "duck", true);
					else enter_grounded_state();
					return(true);
				}
			}
			else if(!free || get_player_team(carry_obj.player) == get_player_team(player)) {
				carry_obj.neo_data.last_escapable_time = get_gameplay_time();
				with(carry_obj) var carry_obj_upspecial = is_special_pressed(DIR_UP);
				if(carry_obj_upspecial || (carry_obj.up_down && carry_obj.special_pressed)) {
					var old_carry_obj = lose_player();
					with(old_carry_obj) {
						set_attack(neo_data_compat.carry_escape_attack);
						clear_button_buffer(PC_SPECIAL_PRESSED);
					}
					
					invincible = 2; invince_time = 30;
					if(free) enter_aerial_state("Aerial", "jump", "duck", true);
					else enter_grounded_state();
					return(true);
				}
			}
			
			//Release the player
			with(carry_obj)
				var clip_drop = place_meeting(other.x + other.holp_relative_x, other.y + other.holp_relative_y, other.asset_par_block);
			if(clip_drop) {
				lose_player(); exit_carrying_state(); return(true);
			}
			
			if(!input_lift) {
				if(carry_obj.url == url) {
					if(down_down)
						drop_neo_mario();
					else
						throw_neo_mario();
				}
				else {
					if(down_down)
						drop_player();
					else
						throw_player();
				}
				
				return(true);
			}
		break;
		
		case "grab shell mario":
			//Check if the object has escaped
			if(!carry_obj.in_shell) {
				lose_player();
				exit_carrying_state();
				return(true);
			}
			
			with(carry_obj)
				var clip_drop = place_meeting(other.x + other.holp_relative_x, other.y + other.holp_relative_y, other.asset_par_block);
			if(clip_drop) {
				lose_player(); exit_carrying_state(); return(true);
			}
			
			//Enforce carry stasis
			carry_obj.hsp = 0; carry_obj.vsp = 0;
			carry_obj.free = false; carry_obj.freemd = true; carry_obj.ground_type = 1;
			// carry_obj.skid_timer = 10;
			carry_obj.force_depth = true;
			
			holp_depth = depth;
			if(carry_obj.object_index == pHitBox) carry_obj.hitbox_timer = 0;
			
			//Decide whether HOLP is facing left or right
			holp_dir = spr_dir;
			
			//Set HOLP position
			var holding_height = (mask_stance == "duck_")?neo_power.size_profile.grab_item_height_duck:neo_power.size_profile.grab_item_height;
			holp_relative_x = spr_dir * 20;
			holp_relative_y = -1 * holding_height;
			carry_obj.x = x + holp_relative_x;
			carry_obj.y = y + holp_relative_y;
			
			if(!input_grab) {
				if(down_down)
					drop_neo_mario();
				else if(up_down)
					kick_shell_mario(true);
				else
					kick_shell_mario(false);
				
				return(true);
			}
		break;
		
		case "no process":
			if(!instance_exists(carry_obj)) return(false);
			if(carry_obj.object_index == oPlayer || carry_obj.object_index == oTestPlayer) {
				//HUD offset
				hud_offset = prev_hud_offset;
				
				//Keep the HOLP in stasis
				carry_obj.hsp = 0; carry_obj.vsp = 0;
				if(carry_obj.url != url) carry_obj.hud_offset = 18 + carry_obj.neo_data_compat.carry_hud_offset;
				carry_obj.landing_lag_time = 4; carry_obj.state_timer = 0; holp_dir = spr_dir;
				carry_obj.free = false; carry_obj.freemd = true; carry_obj.ground_type = 0;
			}
			else {
				//Lose the item if it's forcefully escaped
				if(carry_obj.neo_carry_data.carried_type == 0) {
					lose_item();
					enter_normal_state();
					return(true);
				}
				
				//HUD offset
				hud_offset = prev_hud_offset;
				
				//Enforce carry stasis
				carry_obj.hsp = 0; carry_obj.vsp = 0; carry_obj.hitstop = 2;
				carry_obj.neo_carry_data.no_interact_time = get_gameplay_time() + 10;
				// carry_obj._hittable_time = carry_obj.neo_carry_data.no_interact_time;
				holp_depth = depth;
				if(carry_obj.object_index == pHitBox) carry_obj.hitbox_timer = 0;
			}
			
			return(false);
		break;
		
		default:
			print(`UNKNOWN CARRY UPDATE TYPE: ${carry_type}!!! :( :( :(`);
		break;
	}
	//ahoy!
	return(false);

#define get_holp_sprite_info
	var carry_width = carry_obj.neo_carry_data.half_width, carry_height = carry_obj.neo_carry_data.half_height;
	var carry_xoffset = carry_obj.neo_carry_data.xoffset, carry_yoffset = carry_obj.neo_carry_data.yoffset;
	
	var use_xscale, use_yscale, use_sprite, use_mask;
	if(carry_obj.object_index == pHitBox) {
		use_mask = carry_obj.mask_index;
		if(use_mask == -1) {
			use_sprite = carry_obj.sprite_index;
			use_xscale = 1; use_yscale = 1;
		}
		else {
			use_sprite = use_mask;
			use_xscale = carry_obj.image_xscale; use_yscale = carry_obj.image_yscale;
		}
	}
	else {
		use_mask = carry_obj.neo_carry_data.override_mask?carry_obj.neo_carry_data.old_mask_index:carry_obj.mask_index;
		use_sprite = (use_mask == -1)?carry_obj.sprite_index:use_mask;
		use_xscale = abs(carry_obj.image_xscale); use_yscale = abs(carry_obj.image_yscale);
	}
	
	if(carry_width == undefined) {
		carry_width = ceil(abs(0.5 * use_xscale * (1 + sprite_get_bbox_right(use_sprite) - sprite_get_bbox_left(use_sprite))));
	}
	if(carry_height == undefined) {
		carry_height = ceil(abs(0.5 * use_yscale * (1 + sprite_get_bbox_bottom(use_sprite) - sprite_get_bbox_top(use_sprite))));
	}
	if(carry_xoffset == undefined) {
		var sprite_center_x = 0.5 * sprite_get_width(use_sprite);
		carry_xoffset = sprite_get_xoffset(use_sprite) - sprite_center_x;
	}
	if(carry_yoffset == undefined) {
		var sprite_center_y = 0.5 * sprite_get_height(use_sprite);
		carry_yoffset = sprite_get_yoffset(use_sprite) - sprite_center_y;
	}
	
	return({
		use_sprite: use_sprite,
		carry_width: carry_width,
		carry_height: carry_height,
		carry_xoffset: carry_xoffset,
		carry_yoffset: carry_yoffset,
	});

#define lose_item
	if(carry_obj.object_index == oPlayer || carry_obj.object_index == oTestPlayer) return(lose_player());
	//Stop carrying the object
	var old_carry_obj = carry_obj;
	carry_obj = noone;
	
	//Tell the object it's been released
	old_carry_obj.neo_carry_data.no_interact_time = get_gameplay_time() + 30;
	// old_carry_obj._hittable_time = old_carry_obj.neo_carry_data.no_interact_time;
	old_carry_obj.hitstop = 0;
	old_carry_obj.neo_carry_data.was_released = 1;
	old_carry_obj.neo_carry_data.carried_type = 0;
	if(old_carry_obj.neo_carry_data.override_mask) {
		if(old_carry_obj.object_index == pHitBox)
			old_carry_obj.collision_sprite = old_carry_obj.neo_carry_data.old_mask_index;
		else
			old_carry_obj.mask_index = old_carry_obj.neo_carry_data.old_mask_index;
	}
	// if(old_carry_obj.neo_carry_data.override_article_num) old_carry_obj.num = old_carry_obj.neo_carry_data.old_num;
	
	//Return the old instance ID
	return(old_carry_obj);

#define drop_item(holp_info)
	//Stop carrying the object
	var old_carry_obj = lose_item();
	
	//Reset the object's position & velocities
	old_carry_obj.x = x + spr_dir * (holp_info.carry_width + 6);
	old_carry_obj.y = y - holp_info.carry_height;
	old_carry_obj.hsp = spr_dir * 3; old_carry_obj.vsp = 0;
	
	//Push the object away if it's a solid
	if(old_carry_obj.object_index == obj_article_solid && spr_dir != 0) while(place_meeting(x, y, old_carry_obj)) {
		old_carry_obj.x += spr_dir;
	}
	
	//Change state
	exit_carrying_state();

#define kick_item(kick_up)
	//Stop carrying the object
	var old_carry_obj = lose_item();
	
	//Tell the object is was kicked
	old_carry_obj.hsp = hitpause?old_hsp:hsp; old_carry_obj.vsp = min(0, hitpause?old_vsp:vsp);
	old_carry_obj.neo_carry_data.was_released = kick_up?3:2;
	if(!kick_up && old_carry_obj.neo_carry_data.kick_hsp != undefined) {
		old_carry_obj.hsp *= 0.5;
		old_carry_obj.hsp += spr_dir * old_carry_obj.neo_carry_data.kick_hsp;
	}
	if(kick_up && old_carry_obj.neo_carry_data.kick_up_vsp != undefined) {
		old_carry_obj.vsp *= 0.5;
		old_carry_obj.vsp += old_carry_obj.neo_carry_data.kick_up_vsp;
	}
	if(old_carry_obj.object_index == pHitBox) old_carry_obj.player = player;
	
	//Push the object away if it's a solid
	if(old_carry_obj.object_index == obj_article_solid && spr_dir != 0) while(place_meeting(x + hsp, y, old_carry_obj)) {
		old_carry_obj.x += spr_dir;
	}
	
	//Change state
	exit_carrying_state(); override_animstate("kick", 12);
	sound_play(sound_get("kick")); create_burst_decal(0.5 * (x + old_carry_obj.x), 0.5 * (y + old_carry_obj.y));
	old_carry_obj.neo_carry_data.no_interact_time = get_gameplay_time() + 6;

#define throw_item
	//Stop carrying the object
	var old_carry_obj = lose_item();
	
	//Tell the object is was thrown
	old_carry_obj.hsp = hitpause?old_hsp:hsp; old_carry_obj.vsp = hitpause?old_vsp:vsp;
	old_carry_obj.neo_carry_data.was_released = 4;
	if(old_carry_obj.neo_carry_data.throw_hsp != undefined) {
		old_carry_obj.hsp *= 0.5;
		old_carry_obj.hsp += spr_dir * old_carry_obj.neo_carry_data.throw_hsp;
	}
	if(old_carry_obj.neo_carry_data.throw_vsp != undefined) {
		old_carry_obj.vsp *= 0.5;
		old_carry_obj.vsp += old_carry_obj.neo_carry_data.throw_vsp;
	}
	if(old_carry_obj.object_index == pHitBox) old_carry_obj.player = player;
	
	//Push the object up if it's a solid
	if(old_carry_obj.object_index == obj_article_solid && spr_dir != 0) while(place_meeting(x, y + vsp, old_carry_obj)) {
		old_carry_obj.y -= 1;
	}
	
	//Change state
	enter_normal_state(); override_animstate("lift_throw", 12);
	voice("throw");
	old_carry_obj.neo_carry_data.no_interact_time = get_gameplay_time() + 10;

#define lose_player
	//Stop carrying the player
	var old_carry_obj = carry_obj;
	carry_obj = noone;
	
	//Tell the player they've been released
	old_carry_obj.neo_data.carried_by_id = noone;
	old_carry_obj.free = true; old_carry_obj.freemd = false; old_carry_obj.ground_type = 0;
	if(old_carry_obj.url == url) {
		with(old_carry_obj) escape_carried();
	}
	
	//Return the old instance ID
	return(old_carry_obj);

#define drop_player
	//Stop carrying the player
	var old_carry_obj = lose_player();
	duck(); exit_carrying_state();
	
	//Put the player down
	old_carry_obj.x = x + spr_dir * 38; old_carry_obj.y = y;
	old_carry_obj.free = false;
	
	//Player enters waveland state
	old_carry_obj.hsp = spr_dir * old_carry_obj.air_dodge_speed * 0.5;
	with(old_carry_obj) set_state(PS_WAVELAND);

#define throw_player
	//Stop carrying the player
	var old_carry_obj = lose_player();
	exit_carrying_state(); override_animstate("lift_throw", 12); voice("throw");
	
	//Put the player in an aerial state
	old_carry_obj.free = true;
	with(old_carry_obj) set_state(PS_IDLE_AIR);
	old_carry_obj.neo_data.thrown_by_id = id;
	
	if(get_player_team(old_carry_obj.player) == get_player_team(player)) {
		//Toss a teammate
		old_carry_obj.hsp = spr_dir * 4; old_carry_obj.vsp = -4;
	}
	else {
		//Hurl an enemy
		old_carry_obj.hsp = spr_dir * 7; old_carry_obj.vsp = -7;
		flotbox(ATTACKS_OBJ.throw_enemy, x, y);
	}

#define drop_neo_mario
	//Stop carrying the player
	var old_carry_obj = lose_player();
	duck(); exit_carrying_state();
	
	//Put the player down
	old_carry_obj.x = x + spr_dir * 38; old_carry_obj.y = y;
	old_carry_obj.free = false;

#define kick_shell_mario(kick_up)
	//Stop carrying the object
	var old_carry_obj = lose_player();
	
	//Tell the object is was kicked
	old_carry_obj.hsp = hitpause?old_hsp:hsp; old_carry_obj.vsp = min(0, hitpause?old_vsp:vsp);
	var new_substate = (get_player_team(old_carry_obj.player) == get_player_team(player))?"Kicked by Ally":"Kicked by Enemy";
	if(!kick_up) {
		old_carry_obj.hsp = spr_dir * 10;
		with(old_carry_obj) enter_shell(false, "Shell Spin", new_substate, "shell_spin");
	}
	else {
		old_carry_obj.vsp *= 0.5; old_carry_obj.vsp += -12;
		with(old_carry_obj) enter_shell(false, "Shell Kicked Up", new_substate, "shell_spin");
	}
	old_carry_obj.shell_player = player; old_carry_obj.shell_points_owner = id;
	old_carry_obj.skid_timer = 30;
	
	//Change state
	exit_carrying_state(); override_animstate("kick", 12);
	sound_play(sound_get("kick")); create_burst_decal(0.5 * (x + old_carry_obj.x), 0.5 * (y + old_carry_obj.y));

#define throw_neo_mario
	//Stop carrying the player
	var old_carry_obj = lose_player();
	exit_carrying_state(); override_animstate("lift_throw", 12); voice("throw");
	
	//Put the player in an aerial state
	old_carry_obj.free = true;
	with(old_carry_obj) {
		change_neostate("Thrown", "Thrown", "somersault");
		thrown_sfx_instance = sound_play(sound_get("thrown"));
	}
	old_carry_obj.hsp = spr_dir * old_carry_obj.neo_power.size_profile.thrown_hsp;
	old_carry_obj.vsp = old_carry_obj.neo_power.size_profile.thrown_vsp;

#define bump_ceilings
	if(vsp < 0) {
		var top_obj = id, hit_ceil = noone, next_top_obj = id;
		while(instance_exists(next_top_obj)) {
			top_obj = next_top_obj;
			next_top_obj = ((top_obj.object_index == oPlayer || top_obj.object_index == oTestPlayer) && top_obj.url == url && identify_carry_type(top_obj) == "lift object")?top_obj.carry_obj:noone;
		}
		
		with(top_obj) {
			var reset_mask_to = mask_index;
			if(object_index != oPlayer && object_index != oTestPlayer && neo_carry_data.override_mask)
				mask_index = neo_carry_data.old_mask_index;
			var hit_ceil = (place_meeting(x, y, other.asset_par_block))?noone:instance_place(x, y + other.vsp, other.asset_par_block);
			if(hit_ceil == id) hit_ceil = noone;
			mask_index = reset_mask_to;
		}
		
		// destroy_hitboxes();
		// attack_end();
		// set_attack(AT_NSPECIAL);
		// var rock_punch = flotbox(ATTACKS_OBJ.ceiling_bump, x, y);
		// if(get_gameplay_time() % 2 == 0) set_state(PS_IDLE_AIR);
		
		// var place_at_x = x, place_at_y = y - char_height;
		// rock_punch.x = place_at_x; rock_punch.x_pos = place_at_x - x; rock_punch.y = place_at_y; rock_punch.y_pos = place_at_y - y;
		// rock_punch.image_yscale *= 25;
		
		if(hit_ceil == noone) {
			var hit_rock = noone;
			with(pHitBox) {
				if(player_id.url == CH_KRAGG && attack == AT_NSPECIAL && type == 2 && place_meeting(x + hsp - other.hsp, y + vsp - other.vsp, other) && !place_meeting(x + hsp - other.hsp, y, other)) {
					hit_rock = id; break;
				}
			}
			if(hit_rock != noone) {
				hit_rock.can_hit[player] = false;
				var rock_punch = flotbox(ATTACKS_OBJ.ceiling_bump, x, y);
				
				var place_at_x = hit_rock.x, place_at_y = hit_rock.y;
				rock_punch.x = place_at_x; rock_punch.x_pos = place_at_x - x;
				rock_punch.y = place_at_y; rock_punch.y_pos = place_at_y - y;
				
				if(neo_power.name == "Depowered") {
					rock_punch.kb_scale = 0; //rock_punch.base_kb = 2;
					
					hit_rock.coins_extracted = variable_instance_get(hit_rock, "coins_extracted", 0) + 1;
					if(hit_rock.coins_extracted < 5) rock_punch.throws_rock = 1;
					earn_coins_for(rock_punch.x, rock_punch.y, id, id, 1, false);
					earn_points_for(rock_punch.x, rock_punch.y - 30, id, id, 200);
				}
				else {
					earn_coins_for(rock_punch.x, rock_punch.y, id, id, 5 - variable_instance_get(hit_rock, "coins_extracted", 0), false);
					earn_points_for(rock_punch.x, rock_punch.y - 30, id, id, 1000);
				}
				
				vsp = 1.0; sound_play(sound_get("bump_player"));
				spawn_hit_fx(rock_punch.x, rock_punch.y, rock_punch.hit_effect);
			}
		}
		else {
			var bump_response = "bump", hit_ceil_index = variable_instance_get(hit_ceil, "object_index", asset_par_block);
			with(asset_rock_obj) if(self == hit_ceil) hit_ceil_index = other.asset_rock_obj;
			
			switch(hit_ceil_index) {
				case obj_article_solid:
					
				break;
			}
			
			switch(bump_response) {
				case "bump":
					vsp = 1.0; sound_play(sound_get("bump_player"));
					bump_hitbox = flotbox(ATTACKS_OBJ.ceiling_bump, x, y);
					bump_hitbox.bump_at_x = x; bump_hitbox.bump_at_y = top_obj.y;
					if(neo_power.name == "Depowered") {
						bump_hitbox.damage = 0;
						bump_hitbox.kb_scale = 0;
					}
					
					if(top_obj.object_index == oPlayer || top_obj.object_index == oPlayer) bump_hitbox.can_hit[top_obj.player] = false;
					
					
					
					var place_at_y = top_obj.y;
					bump_hitbox.y = place_at_y; bump_hitbox.y_pos = place_at_y - y;
					
					with(bump_hitbox) {
						//Find the bottom of the ceiling
						repeat(100) {
							y--;
							if(collision_line(x - 12, y, x + 12, y, hit_ceil_index, true, false)) break;
						}
						if(y_pos == -100) { print("Hitbox failed to find ceiling"); instance_destroy(id); break; }
						
						//Extend up to the top of the ceiling
						var penetrating_stage_solid = (hit_ceil_index == other.asset_par_block);
						var extend_to_penetrate = penetrating_stage_solid?hit_ceil_index:hit_ceil; //if we hit a normal ceiling, keep going until we run out of ceiling. else, only penetrate the one object we hit
						
						var loops = 0;
						var check_collision_at_y = y, check_distance = 2, half_check_distance = check_distance / 2, small_check_distance = check_distance / 200;
						repeat(200) {
							loops++;
							check_collision_at_y -= check_distance;
							image_yscale += small_check_distance;
							y -= half_check_distance;
							
							var collision_at_height = collision_line(x - 12, check_collision_at_y, x + 12, check_collision_at_y, extend_to_penetrate, true, false);
							if(collision_at_height == noone || variable_instance_get(collision_at_height, "object_index", other.asset_par_block) != hit_ceil_index) break;
							// if(!) break;
							// if(penetrating_stage_solid && collision_line(x - 10, check_collision_at_y, x + 10, check_collision_at_y, other.asset_rock_obj, true, false)) break;
						}
						
						y_pos = y - other.y;
					}
				break;
			}
		}
	}
	return(false);

#define create_stomp_hitbox(stomp, bounce_neostate, bounce_substate, bounce_animstate)
	if(prohibit_stomp || neo_data.starman_time > 0 || neo_state_changed || (stomp.must_be_falling && vsp < 0)) {
		last_stomp_data.type = stomp;
		last_stomp_data.hitbox = noone;
		last_stomp_data.new_neostate = bounce_neostate;
		last_stomp_data.new_substate = bounce_substate;
		last_stomp_data.new_animstate = bounce_animstate;
		last_stomp_data.time = -100;
		last_stomp_data.age = -100;
		return(false);
	}
	
	listening_for_hitpause = true;
	performed_stomp = true;
	
	//Modify Mario's disjoint level
	disjoint_level = stomp.disjoint_level;
	
	//Create the hitbox
	if(instance_exists(stomp_hitbox) && stomp_hitbox.my_name == stomp.my_name) {
		stomp_hitbox.length++;
	}
	else
		stomp_hitbox = flotbox(stomp.identity, x, y);
	
	
	stomp_hitbox.fx_particles = 1;
	stomp_hitbox.damage = move_air.stomp_dmg_mult * (get_hitbox_value(stomp.identity.attack, stomp.identity.hbox_num, HG_DAMAGE) + (consecutive_stomps * stomp.extra_damage_per_stomp));
	if(stomp.only_hit_below) {
		stomp_hitbox.only_hit_below = true;
		with(pHurtBox) if(instance_exists(playerID)) {
			var true_player_number = playerID.player + (playerID.clone || playerID.custom_clone) * 10;
			other.stomp_hitbox.can_hit[true_player_number] = false;
			
			if(playerID.url == other.url && playerID.in_shell && playerID.neo_state != "Shell Spin" && stomp.name == "Stomp") continue;
			
			if(place_meeting(x, y, other.stomp_hitbox) && !place_meeting(x, y + 20, other.stomp_hitbox)) {
				other.stomp_hitbox.can_hit[true_player_number] = true;
			}
		}
	}
	stomp_hitbox.my_name = stomp.my_name;
	stomp_hitbox.spr_dir = spr_dir; stomp_hitbox.stop_effect = false;
	
	last_stomp_data.type = stomp;
	last_stomp_data.hitbox = stomp_hitbox;
	last_stomp_data.new_neostate = bounce_neostate;
	last_stomp_data.new_substate = bounce_substate;
	last_stomp_data.new_animstate = bounce_animstate;
	last_stomp_data.time = get_gameplay_time();
	last_stomp_data.age = neo_age;

#define play_prog_sfx
/// play_prog_sfx(prog_sfx, pitch_mod = null, value = consecutive_stomps)
var prog_sfx = argument[0];
var pitch_mod = argument_count > 1 ? argument[1] : null;
var value = argument_count > 2 ? argument[2] : consecutive_stomps;
	if(pitch_mod == null) pitch_mod = min(7, value % 8);
	sound_play(prog_sfx.index, false, noone, 1.0, 1.0 + pitch_mod * prog_sfx.pitch_mult);

#define power_in_stack(lowest_player, power_name)
	while(instance_exists(lowest_player) && (lowest_player.object_index == oPlayer || lowest_player.object_index == oTestPlayer) && lowest_player.url == url) {
		if(lowest_player.neo_power.name == power_name) return(true);
		lowest_player = lowest_player.carry_obj;
	}
	return(false);

#define find_stack_bottom_recursive(examining_player)
	if(instance_exists(examining_player.neo_data.carried_by_id) && examining_player.neo_data.carried_by_id.carry_obj == examining_player)
		return(find_stack_bottom_recursive(examining_player.neo_data.carried_by_id));
	else
		return(examining_player);

#define perform_fireball_actions
/// perform_fireball_actions(put_in_jump_substate = false, face_dir = 0)
var put_in_jump_substate = argument_count > 0 ? argument[0] : false;
var face_dir = argument_count > 1 ? argument[1] : 0;
	if(neo_state_changed || mask_stance == "duck_") return(false);
	override_ignore = false;
	
	if(input_run_pressed || (phone_cheats[CHEAT_FIRESPAM] == 3 && input_run)) {
		// fs_force_fs = true;
		
		if(no_override || override_anim_animstate == "fireball") {
			//Fireballs
			if(neo_power.name == "Fire Flower") {
				if(get_gameplay_time() >= allow_fireballs_time) {
					if(phone_cheats[CHEAT_FIRESPAM] < 2) unbuffer_input("run");
					
					if(get_gameplay_time() >= first_fireball_time + 30) {
						//throw the first fireball
						sound_play(sound_get("fireball")); voice("fireball");
						override_animstate("fireball", 9); if(face_dir != 0) spr_dir = face_dir;
						allow_fireballs_time = get_gameplay_time() + 9;
						first_fireball_time = get_gameplay_time();
						fireball_input_time = get_gameplay_time();
						
						if(put_in_jump_substate) enter_jump_substate();
						var fireball = flotbox(ATTACKS_OBJ.fireball, x + spr_dir * 16, y - 26 + vsp);
						// var fireball = create_flotbox(AT_DSPECIAL, 1, x + spr_dir * 16, y - 26 + vsp);
						fireball.fx_particles = 1;
					}
					else {
						//throw the second fireball
						sound_play(sound_get("fireball")); voice("fireball");
						override_animstate("fireball", 9); if(face_dir != 0) spr_dir = face_dir;
						allow_fireballs_time = get_gameplay_time() + 46;
						first_fireball_time = -100;
						fireball_input_time = get_gameplay_time();
						
						if(put_in_jump_substate) enter_jump_substate();
						var fireball = flotbox(ATTACKS_OBJ.fireball, x + spr_dir * 16, y - 26 + vsp);
						fireball.fx_particles = 1;
					}
				}
				else if(get_gameplay_time() >= fireball_input_time + 9) {
					var found_fireballs = count_hitboxes(true, ATTACKS_OBJ.fireball);
					if(found_fireballs < 2) {
						if(get_gameplay_time() >= allow_fireballs_time - 25) {
							//throw an early fireball (no penalty)
							sound_play(sound_get("fireball")); voice("fireball");
							override_animstate("fireball", 9); if(face_dir != 0) spr_dir = face_dir;
							allow_fireballs_time = get_gameplay_time() + 9;
							first_fireball_time = get_gameplay_time();
							fireball_input_time = get_gameplay_time();
							
							if(put_in_jump_substate) enter_jump_substate();
							var fireball = flotbox(ATTACKS_OBJ.fireball, x + spr_dir * 16, y - 26 + vsp);
							fireball.fx_particles = 1;
						}
						else {
							//spam fireballs (opponent can resist them)
							sound_play(sound_get("fireball"), false, noone, 1.0, 1.1); //voice("fireball");
							override_animstate("fireball", 7); if(face_dir != 0) spr_dir = face_dir;
							allow_fireballs_time = get_gameplay_time() + 46;
							first_fireball_time = -100;
							fireball_input_time = get_gameplay_time();
							
							if(put_in_jump_substate) enter_jump_substate();
							var fireball = flotbox(ATTACKS_OBJ.fireball, x + spr_dir * 16, y - 26 + vsp);
							fireball.fx_particles = 1;
							fireball.hitpause = 0; fireball.damage = 1;
						}
						
						
					}
				}
			}
			
			//Iceballs
			if(neo_power.name == "Ice Flower") {
				if(get_gameplay_time() >= allow_fireballs_time) {
					if(phone_cheats[CHEAT_FIRESPAM] < 2) unbuffer_input("run");
					
					if(get_gameplay_time() >= first_fireball_time + 30) {
						//throw the first fireball
						sound_play(sound_get("iceball")); voice("fireball");
						override_animstate("fireball", 9); if(face_dir != 0) spr_dir = face_dir;
						allow_fireballs_time = get_gameplay_time() + 13;
						first_fireball_time = get_gameplay_time();
						fireball_input_time = get_gameplay_time();
						
						if(put_in_jump_substate) enter_jump_substate();
						var fireball = flotbox(ATTACKS_OBJ.iceball, x + spr_dir * 16, y - 26 + vsp);
						fireball.fx_particles = 1;
					}
					else {
						//throw the second fireball
						sound_play(sound_get("iceball")); voice("fireball");
						override_animstate("fireball", 9); if(face_dir != 0) spr_dir = face_dir;
						allow_fireballs_time = get_gameplay_time() + 60;
						first_fireball_time = -100;
						fireball_input_time = get_gameplay_time();
						
						if(put_in_jump_substate) enter_jump_substate();
						var fireball = flotbox(ATTACKS_OBJ.iceball, x + spr_dir * 16, y - 26 + vsp);
						fireball.fx_particles = 1;
					}
				}
			}
		}
		else {
			unbuffer_input("run");
		}
	}
	
	if(neo_power.name == "Tanooki Leaf") {
		if(override_anim_animstate == "tail" && override_anim_timer > 0) {
			override_anim_animstate = "tail";
			var override_timer_looped = override_anim_timer % 14;
			if(override_timer_looped == 9) {
				tail_hitbox = flotbox(ATTACKS_OBJ.tail_attack, x, y);
				tail_hitbox.fx_particles = 1;
				tail_hitbox.my_name = "power-2";
			}
		}
		else if(no_override && input_run_pressed && !down_down) {
			if(face_dir != 0) spr_dir = face_dir;
			unbuffer_input("run");
			sound_play(sound_get("mk7_tanookiattack"));
			override_animstate("tail", 14, true);
		}
		
		tail_hitbox_reflector();
	}

#define perform_spin_power_actions
/// perform_spin_power_actions(timing_source = id)
var timing_source = argument_count > 0 ? argument[0] : id;
	//TODO: Fix this it's really stupid
	switch(timing_source.neo_statetimer) {
		//Fireballs
		case 10:
			if(neo_power.name == "Fire Flower" && count_hitboxes(true, ATTACKS_OBJ.fireball) < 2) {
				sound_play(sound_get("fireball"));
				var fireball = flotbox(ATTACKS_OBJ.fireball, x + spr_dir * 16, y - 20 + vsp);
				fireball.fx_particles = 1;
			}
		break;
		case 16:
			if(neo_power.name == "Fire Flower" && count_hitboxes(true, ATTACKS_OBJ.fireball) < 2) {
				sound_play(sound_get("fireball"));
				var fireball = flotbox(ATTACKS_OBJ.fireball, x + hsp + spr_dir * -16, y - 20 + vsp);
				fireball.fx_particles = 1; fireball.spr_dir *= -1; fireball.hsp *= -1;
			}
		break;
		
		//Iceballs
		case 18:
			if(neo_power.name == "Ice Flower" && count_hitboxes(true, ATTACKS_OBJ.iceball) < 2) {
				sound_play(sound_get("iceball"));
				var fireball = flotbox(ATTACKS_OBJ.iceball, x + spr_dir * 16, y - 20 + vsp);
				fireball.fx_particles = 1;
			}
		break;
		case 28:
			if(neo_power.name == "Ice Flower" && count_hitboxes(true, ATTACKS_OBJ.iceball) < 2) {
				sound_play(sound_get("iceball"));
				var fireball = flotbox(ATTACKS_OBJ.iceball, x + spr_dir * -16, y - 20 + vsp);
				fireball.fx_particles = 1; fireball.spr_dir *= -1; fireball.hsp *= -1;
			}
		break;
	}
	
	if(timing_source.neo_image == 1.6 && neo_power.name == "Tanooki Leaf") {
		tail_hitbox = flotbox(ATTACKS_OBJ.tail_attack, x, y);
		tail_hitbox.fx_particles = 1;
		tail_hitbox.my_name = "power-2";
		tail_hitbox.image_xscale *= 0.5; 
	}
	if(timing_source.neo_image == 3.6 && neo_power.name == "Tanooki Leaf") {
		// tail_hitbox = create_flotbox(AT_DSPECIAL, 6, x, y);
		// tail_hitbox.fx_particles = 1;
		// tail_hitbox.my_name = "power-6";
		// tail_hitbox.image_xscale *= 0.5;
	}
	tail_hitbox_reflector();

#define attempt_tail_wag
	if((wall_jump_y == 0 || get_gameplay_time() > last_twirl_time + 24) && input_jump && vsp > 2 && !found_hitpause && !stomped_player && power_in_stack(id, "Tanooki Leaf")) {
		if(place_meeting(x, y + vsp * 2, asset_get("par_block")) || (!place_meeting(x, y, asset_get("par_jumpthrough")) && place_meeting(x, y + vsp * 2, asset_get("par_jumpthrough"))))
			return(false);
		
		
		unbuffer_input("jump");
		if(p_flashing) {
			switch(neo_state) {
				case "Grab Item Aerial": case "Grab Item Spin Jump":
					change_neostate("Grab Item Tail Wag", "Fly", "grab_flight");
				break;
				case "Lift Object Aerial": case "Lift Object Spin Jump":
					change_neostate("Lift Object Tail Wag", "Fly", "lift_flight");
				break;
				default:
					change_neostate("Tail Wag", "Fly", "flight");
				break;
			}
			sound_play(sound_get("smash4_tanookifly"), false, noone, 0.3, 0.95);
			vsp = -4;
			return(true);
		}
		else {
			switch(neo_state) {
				case "Grab Item Aerial": case "Grab Item Spin Jump":
					if(mask_stance == "duck_")
						change_neostate("Grab Item Tail Wag", "Duck Stall", "grab_stall_duck", true, true, true, false, true);
					else
						change_neostate("Grab Item Tail Wag", "Stall", "grab_stall", true, true, true, false, true);
				break;
				case "Lift Object Aerial": case "Lift Object Spin Jump":
					change_neostate("Lift Object Tail Wag", "Stall", "lift_stall", true, true, true, false, true);
				break;
				default:
					if(mask_stance == "duck_")
						change_neostate("Tail Wag", "Duck Stall", "stall_duck", true, true, true, false, true);
					else
						change_neostate("Tail Wag", "Stall", "stall", true, true, true, false, true);
				break;
			}
			
			sound_play(sound_get("smash4_tanookifly"), false, noone, 0.3, 0.95);
			vsp = (wall_jump_y == 0)?1.5:2.5;
			return(true);
		}
	}

#define attempt_tanooki_statue
	if(input_run_pressed && down_down && neo_power.name == "Tanooki Leaf") {
		unbuffer_input("run");
		sound_play(sound_get("mk8_tanookistatue"));
		change_neostate("Tanooki Statue", "Transform", "statue");
		unduck(); //neo_armor = true; knockback_adj = 0.1; //super_armor = true; damage_scaling = 0;
		spr_angle = 0; statue_was_hit = false; p_speed = 0;
		sound_stop(latest_voice_sfx_instance);
		
		hitpause = true; hitstop = 24; hitstop_full = 24;
		transition_to_statue = 2;
		old_hsp = 0; old_vsp = 0; vsp = 0; hsp = 0;
		neo_sprite_name = "statue_transform";
		return(true);
	}
	return(false);

#define enter_shell
/// enter_shell(reset_shell_data = false, ?shell_state = undefined, ?shell_substate = undefined, ?shell_animstate = undefined)
var reset_shell_data = argument_count > 0 ? argument[0] : false;
var shell_state = argument_count > 1 ? argument[1] : undefined;
var shell_substate = argument_count > 2 ? argument[2] : undefined;
var shell_animstate = argument_count > 3 ? argument[3] : undefined;
	neo_armor = true; in_shell = true; knockback_adj = 1.2; damage_scaling = 0.75;
	mask_override = sprite_get("mask_shell");
	char_height = neo_power.size_profile.height_duck;
	if(shell_state != undefined)
		change_neostate(shell_state, shell_substate, shell_animstate);
	if(reset_shell_data) {
		shell_points_owner = id; shell_player = 5; consecutive_hits = 0; shell_bounce_dir = 0;
	}

#define count_hitboxes
/// count_hitboxes(only_mine, attack_object, below_timer = 60)
var only_mine = argument[0], attack_object = argument[1];
var below_timer = argument_count > 2 ? argument[2] : 60;
	var found_val = 0;
	with(pHitBox)
		if((!only_mine || player_id == other) && player_id.url == other.url && attack == attack_object.attack && (hbox_num == attack_object.hbox_num || attack_object.hbox_num == -1) && hitbox_timer < below_timer)
			found_val++;
	return(found_val);

#define tail_hitbox_reflector
	if(instance_exists(tail_hitbox)) with(pHitBox) if(type == 2 && sign(hsp) == -1 * other.spr_dir && !does_not_reflect && place_meeting(x, y, other.tail_hitbox) && (player != other.player || can_hit_self)) {
		with(other) {
			spawn_hit_fx(0.5 * (tail_hitbox.x + other.x), 0.5 * (tail_hitbox.y + other.y), tail_hitbox.hit_effect);
			sound_play(sound_get("kick"));
		}
		
		can_hit[player] = true;
		hsp *= -1; vsp *= -1; spr_dir *= -1; hitbox_timer = 0;
		player = other.player; was_parried = true;
		
		in_hitpause = true; old_hsp = hsp; old_vsp = vsp;
		neo_hitstop = 16; neo_hitstop_full = 16;
		getting_bashed = true;
		
		other.hitpause = true; other.hitstop = 11; other.hitstop_full = 11;
		other.old_hsp = other.hsp; other.old_vsp = other.vsp; other.hsp = 0; other.vsp = 0;
		other.neo_image = 2;
	}
	
	// var encountered_obj = noone;
	// with(obj_article1) if(!disable_movement && "MorshuCanGrab" in self && MorshuCanGrab && place_meeting(x, y, other.tail_hitbox))
	// 	encountered_obj = id;
	// if(encountered_obj == noone) with(obj_article2) if(!disable_movement && "MorshuCanGrab" in self && MorshuCanGrab && place_meeting(x, y, other.tail_hitbox))
	// 	encountered_obj = id;
	// if(encountered_obj == noone) with(obj_article3) if(!disable_movement && player_id.url != other.url && "MorshuCanGrab" in self && MorshuCanGrab && place_meeting(x, y, other.tail_hitbox))
	// 	encountered_obj = id;
	// if(encountered_obj == noone) with(obj_article_solid) if(!disable_movement && player_id.url != other.url && "MorshuCanGrab" in self && MorshuCanGrab && place_meeting(x, y, other.tail_hitbox))
	// 	encountered_obj = id;
	// if(encountered_obj == noone) with(obj_article_platform) if(!disable_movement && player_id.url != other.url && "MorshuCanGrab" in self && MorshuCanGrab && place_meeting(x, y, other.tail_hitbox))
	// 	encountered_obj = id;
	// if(instance_exists(encountered_obj)) {
	// 	encountered_obj.spr_dir *= -1;
	// 	encountered_obj.hsp = -1 * spr_dir;
	// 	encountered_obj.vsp = -2;
		
	// 	spawn_hit_fx(0.5 * (tail_hitbox.x + encountered_obj.x), 0.5 * (tail_hitbox.y + encountered_obj.y), tail_hitbox.hit_effect);
	// 	sound_play(sound_get("kick"));
		
	// 	instance_destroy(tail_hitbox);
	// }

#define enter_jump_substate
	var move_dir = right_down - left_down;
	if(move_dir != 0) spr_dir = move_dir;
	change_neostate(neo_state, "Jump", "jump", true, true, true, false);

#define collect_power_ups()
	with(obj_article2) {
		if(
				player_id.url == other.url && variant == "power-up"
				&& (!exclusive || player_id == other)
				&& place_meeting(x, y, other)) {
			mark_for_destruction = true;
			with(other) obtain_power_up(other.subvariant, true, true);
			instance_destroy(id);
		}
	}

#define obtain_power_up
/// obtain_power_up(new_power, can_reserve = true, can_give_iframes = false)
var new_power = argument[0];
var can_reserve = argument_count > 1 ? argument[1] : true;
var can_give_iframes = argument_count > 2 ? argument[2] : false;
	if(new_power.value < neo_power.value || neo_power.name == new_power.name) {
		if(can_reserve) send_to_reserve(new_power);
	}
	else {
		
		if(neo_power != POWER_OBJ.depowered) {
			if(can_reserve && neo_power.can_save_reserve) send_to_reserve(neo_power);
		}
		
		if(new_power.value == neo_power.value) {
			instant_reserve_available = true;
		}
		
		
		voice("getpower");
		sound_play(new_power.transform_sfx);
		transition_to_power = new_power;
		transition_to_frames = 50;
		listening_for_hitpause = false; found_hitpause = false;
		hitpause = true; hitstop = 50; hitstop_full = 50;
		old_hsp = hsp; old_vsp = vsp; hsp = 0; vsp = 0;
		prohibit_stomp = true;
		
		if(can_give_iframes)
			give_flicker_frames = 30;
	}

#define send_to_reserve(new_power)
	if(new_power.value >= reserve_slot.value) {
		reserve_slot = new_power.reserve_entry;
		sound_play(sound_get("reserve_store"));
		reserve_scale = 2;
	}

#define earn_coins_for
/// earn_coins_for(x, y, give_to = id, asset_owner = id, quantity = 1, moving = false)
var x = argument[0], y = argument[1];
var give_to = argument_count > 2 ? argument[2] : id;
var asset_owner = argument_count > 3 ? argument[3] : id;
var quantity = argument_count > 4 ? argument[4] : 1;
var moving = argument_count > 5 ? argument[5] : false;
	if(!instance_exists(give_to) || give_to.url != asset_owner.url || quantity < 1) exit;
	if(moving) {
		for(var incrementeroo = 0; incrementeroo < quantity; incrementeroo++;) {
			var coin = instance_create(round(x), round(y), "obj_article2");
			coin.variant = "coin free";
			coin.sprite_index = asset_owner.spr_item_coin;
			coin.image_index = random_func(incrementeroo, 8, false);
			coin.collector = give_to;
			
			var coin_angle = random_func(incrementeroo, 180, false);
			var coin_magnitude = random_func(incrementeroo, 2, false) + 2;
			coin.hsp = lengthdir_x(coin_magnitude, coin_angle);
			coin.vsp = lengthdir_y(coin_magnitude, coin_angle) * 2;
			
			coin.can_be_grounded = true;
			coin.ignores_walls = false;
			
			coin.life = 240;
		}
	} 
	else if(quantity == 1) {
		var coin = instance_create(round(x), round(y), "obj_article2");
		coin.variant = "coin";
		coin.collector = give_to;
		coin.sprite_index = asset_owner.spr_item_coin;
		coin.image_index = random_func(0, 8, false);
		coin.vsp = -9.5; coin.life = 12; coin.depth = -2000;
	}
	else {
		var coin = instance_create(round(x), round(y), "obj_article2");
		
		coin.variant = "coin spawner";
		coin.collector = give_to;
		coin.sprite_index = asset_owner.spr_item_coin;
		coin.image_alpha = 0.0;
		coin.life = -1; coin.value = quantity;
		coin.subvariant = "Standard"; coin.frequency = 4;
	}

#define find_flotbox(xpos, ypos, max_distance, hitbox_obj, from_player)
	with(pHitBox)
		if(player == from_player && player_id.url == hitbox_obj.url && attack == hitbox_obj.attack && hbox_num == hitbox_obj.hbox_num && point_distance(x, y, xpos, ypos) < max_distance)
			return(id);
	return(noone);

#macro QMP_POINTS_ARRAY [200, 400, 800, 1000, 2000, 4000, 8000, 0]
#macro QMP_POINTS_IMAGES [[100, 0], [200, 1], [400, 2], [800, 3], [1000, 4], [2000, 5], [4000, 6], [8000, 7]]
#define earn_points_for
/// earn_points_for(x = self.x, y = self.y, give_to = id, asset_owner = id, value = consecutive_stomps)
var x = argument_count > 0 ? argument[0] : self.x;
var y = argument_count > 1 ? argument[1] : self.y;
var give_to = argument_count > 2 ? argument[2] : id;
var asset_owner = argument_count > 3 ? argument[3] : id;
var value = argument_count > 4 ? argument[4] : consecutive_stomps;
	if(!instance_exists(give_to) || give_to.url != asset_owner.url || value <= 0) exit;
	
	var value_image = -1;
	for(var incrementeroo = 0, total = array_length(QMP_POINTS_IMAGES); incrementeroo < total; incrementeroo++;) {
		if(value == QMP_POINTS_IMAGES[incrementeroo][0]) value_image = QMP_POINTS_IMAGES[incrementeroo][1];
	}
	
	if(value_image == -1) {
		give_to.neo_points += value;
		var reward_xoffset = -8, reward_yoffset = -8;
	}
	else {
		var reward_xoffset = 16, reward_yoffset = -8;
		var points_decal = instance_create(round(x), round(y), "obj_article1");
		points_decal.variant = "points";
		points_decal.sprite_index = asset_owner.spr_decal_points;
		points_decal.image_index = value_image;
		points_decal.depth = -1000 - value;
		
		points_decal.life = 60; points_decal.fake_vsp = -3;
		give_to.neo_points += value;
		
		if(update_points_icon_for(give_to)) {
			// print("reward notification!");
			var reward_decal = instance_create(round(x + 18), round(y - 10), "obj_article1");
			reward_decal.image_xscale = 1; reward_decal.image_yscale = 1;
			reward_decal.variant = "reward notification";
			reward_decal.sprite_index = give_to.points_reward.hud_sprite;
			reward_decal.depth = -1000 - value;
			
			points_decal.life = 60; reward_decal.fake_vsp = -3;
		}
	}

#define earn_life_for
/// earn_life_for(x = self.x, y = self.y, give_to = id, asset_owner = id, coin_life = false)
var x = argument_count > 0 ? argument[0] : self.x;
var y = argument_count > 1 ? argument[1] : self.y;
var give_to = argument_count > 2 ? argument[2] : id;
var asset_owner = argument_count > 3 ? argument[3] : id;
var coin_life = argument_count > 4 ? argument[4] : false;
	if(!instance_exists(give_to)) exit;
	// asset_owner.debug_match_analysis += `1up for ${give_to.player}/`;
	
	var life_decal = instance_create(round(x), round(y), "obj_article1");
	life_decal.sprite_index = asset_owner.spr_decal_1up;
	life_decal.image_blend = get_player_hud_color(give_to.player); life_decal.use_post_draw = true;
	life_decal.variant = "1up";
	life_decal.image_xscale = 3; life_decal.image_yscale = 3;
	life_decal.fake_vsp = -5;
	life_decal.depth = -2000;
	sound_play(coin_life?asset_owner.sfx_1up_coins:asset_owner.sfx_1up);
	set_player_stocks(give_to.player, get_player_stocks(give_to.player) + 1);
	if("fake_stock" in give_to) give_to.fake_stock++;

#define update_points_icon_for
/// update_points_icon_for(give_to = id, tally_context = false)
var give_to = argument_count > 0 ? argument[0] : id;
var tally_context = argument_count > 1 ? argument[1] : false;
	return(false); //TODO: remove to re-enable point reward icons
	queue_update_score = false;
	if(tally_context) {
		var previous_value = give_to.points_reward_preview;
		for(var incrementeroo = 0, total = array_length(give_to.REWARDS_ARRAY); incrementeroo < total; incrementeroo++;) {
			if(give_to.display_points >= give_to.REWARDS_ARRAY[incrementeroo].threshold)
				give_to.points_reward_preview = give_to.REWARDS_ARRAY[incrementeroo];
			else {
				give_to.points_reward_next = give_to.REWARDS_ARRAY[incrementeroo];
				var changed = give_to.points_reward_preview != previous_value;
				if(changed) score_flash_time = 1;
				give_to.prev_reward_value = give_to.REWARDS_ARRAY[max(0, incrementeroo - 2)].threshold;
				return(changed);
			}
		}
	}
	else {
		var previous_value = give_to.points_reward;
		for(var incrementeroo = 0, total = array_length(give_to.REWARDS_ARRAY); incrementeroo < total; incrementeroo++;) {
			if(give_to.neo_points >= give_to.REWARDS_ARRAY[incrementeroo].threshold)
				give_to.points_reward = give_to.REWARDS_ARRAY[incrementeroo];
			else {
				give_to.points_reward_next = give_to.REWARDS_ARRAY[incrementeroo];
				var changed = give_to.points_reward != previous_value;
				if(changed) score_flash_time = 1;
				give_to.prev_reward_value = give_to.REWARDS_ARRAY[max(0, incrementeroo - 2)].threshold;
				return(changed);
			}
		}
		return(give_to.points_reward != previous_value);
	}
	return(false);

#define create_burst_decal
/// create_burst_decal(burst_x = x, burst_y = y, rng_index = 0)
var burst_x = argument_count > 0 ? argument[0] : x;
var burst_y = argument_count > 1 ? argument[1] : y;
var rng_index = argument_count > 2 ? argument[2] : 0;
	var burst = instance_create(round(burst_x), round(burst_y), "obj_article1");
	burst.sprite_index = sprite_get("decal_burst");
	burst.image_angle = random_func(rng_index, 4, true) * 90;
	burst.life = 6; burst.variant = "burst";
	
	return(burst);

#define make_stars
/// make_stars(x_offset = spr_dir * 16, y_offset = char_height / -2)
var x_offset = argument_count > 0 ? argument[0] : spr_dir * 16;
var y_offset = argument_count > 1 ? argument[1] : char_height / -2;
	var star_hsp = 5, star_vsp = 5;
	repeat(4) {
		var star = instance_create(round(x + x_offset), round(y + y_offset), "obj_article1");
		star.variant = "star"; star.life = 16; star.sprite_index = sprite_get("decal_star");
		star.image_xscale = 2; star.image_yscale = 2;
		star.fake_hsp = star_hsp; star.fake_vsp = star_vsp;
		
		if(star_hsp > 0 && star_vsp > 0) star_vsp = -5;
		else if(star_hsp > 0 && star_vsp < 0) star_hsp = -5;
		else if(star_hsp < 0 && star_vsp < 0) { star_hsp = -5; star_vsp = 5; }
	}

#define flotbox(hitbox_obj, x, y)
	//Create a hitbox with fixed FX Particles
	var new_hitbox = create_hitbox(hitbox_obj.attack, hitbox_obj.hbox_num, round(x), round(y));
	new_hitbox.fx_particles = get_hitbox_value(hitbox_obj.attack, hitbox_obj.hbox_num, HG_HIT_PARTICLE_NUM);
	
	//Assign the hitbox object to the new hitbox
	new_hitbox.identity = hitbox_obj;
	
	//Assign Steve death message to the new hitbox
	new_hitbox.steve_death_message = string_replace(get_hitbox_value(hitbox_obj.attack, hitbox_obj.hbox_num, HG_FQF_STEVE_DEATH_MESSAGE), "%s", muno_char_name);
	
	//Innoculate players in stack against hitbox
	var examine_player = find_stack_bottom_recursive(id);
	while(instance_exists(examine_player) && (examine_player.object_index == oPlayer || examine_player.object_index == oTestPlayer) && examine_player.url == url) {
		new_hitbox.can_hit[examine_player.player + ((examine_player.clone || examine_player.custom_clone)?10:0)] = false;
		examine_player = examine_player.carry_obj;
	}
	return(new_hitbox);