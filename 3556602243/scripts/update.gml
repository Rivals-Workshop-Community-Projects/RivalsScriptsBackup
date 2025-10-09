ror_custom_seed += get_gameplay_time();
//print(ror_custom_seed)
user_event(7);

var _sfx_promote = sound_get("ror_promote");

if get_gameplay_time() == 3 {
	var _ssl_players = 0;
	for (var i = 0; i < array_length(main_players); i++) {
		if "ssl_death_sound" in main_players[i] {
			_ssl_players++;
		}
	}
	if (_ssl_players >= array_length(main_players)) { 
		print("Turning on SSL Graphics")
		ror_ssl_visuals = true;
		ssl_mode(); 		
	}
}



//debug get attack values
/*
if get_gameplay_time() == 150 {
	var _export = "";
	var _new_line = chr(10);
	var _tab = chr(9);
	with oPlayer {
		if player == 2 {
			for (var i = 0; i < array_length(ror_valid_attack_array); i++) {
				if (ror_valid_attack_array[i, 1] >= 20) {
					_export += _tab + _tab + "//array_push(ror_attacks_, " + string(ror_valid_attack_array[i, 1]) + ");" + _new_line;
				}
			}
		}
	}
	
	get_string("Rogue Item Data", string(_export));
}
*/

//print(["Teams: ", team_1, team_2])
//print(["Boss: ", ror_boss_mode, ror_boss_player])
/*
with oPlayer {
	if "ror_items" !in self {
		print("No");
		//ror_oplayer_clone = true;
	} else {
		print("Yes");
	}
}
*/
//Debug CPU Kill
/*
if round_state == "alive" {
	with oPlayer {
		if temp_level != 0 {
			y = room_height * 2;
		}
	}
} 
*/
//print(array_length(items_all))
//Sandstorm SFX
/*
if sandstorm_active {
	if (round_state_timer % 60 == 0) {
		sound_play(asset_get("sfx_spin_longer"), false, 0, .75, .25);
	}
} else {
	
}
*/

//Spawn Dragoon
//25% to Spawn a Dragoon Piece every 5 Seconds if someoen has one
var _can_dragoon = false;
//
with oPlayer {
	if ror_card_dragoon {
		_can_dragoon += ror_card_dragoon;
	}
	
	//print(["Item Counts: ", ror_item_count_commons, ror_item_count_rares, ror_item_count_epics, ror_item_count_legends])
}

//Debug 300
//Time Out Prevention Code
//if (round_state == "alive" && round_state_timer == 600 * 18) { //After 3 Minutes Nobody Wins
if (round_state == "alive" && round_state_timer == (600 * 18) + 120) { //After 3 Minutes Nobody Wins
	//sound_play(asset_get("sfx_orca_soak"));
	sound_play(asset_get("sfx_holy_tablet_spawning"));
	last_alive = -4;
	ror_state("choose_item");
	ror_timeout_detected = 300;
}
if ror_timeout_detected {
	ror_timeout_detected--;
}

//	
//if round_state == "alive" && round_state_timer && (round_state_timer % 300 == 0) && random_func_2(9, 4, true) == 0 {
//if round_state == "alive" && round_state_timer > 300 && (round_state_timer % 299 == 0) {
//if _can_dragoon && round_state == "alive" && (round_state_timer % 30 == 0) {
//print(clamp(299 - ((_can_dragoon - 1) * 60), 1, infinity))
if !dragoon_used && (_can_dragoon && round_state == "alive" && round_state_timer > 300 && (round_state_timer % clamp(299 - ((_can_dragoon - 1) * 60), 1, infinity) == 0)) {
	var _dragoon_rng = 4;
	for (var i = 0; i < array_length(dragoon_parts); i++) {
		if (dragoon_parts[i].piece_collected) {
			_dragoon_rng -= 2;
		}
	}
	//
	//print(_dragoon_rng);
	var _rng_roll = random_func(9, _dragoon_rng, true);
	//print(_rng_roll);
	//
	if (_rng_roll  == 0 || practice_mode) {
	//if (_rng_roll  == 0) || true { //DEBUG DRAGOON
		//print("KIRBY KIRBY KIRBY")
		//var _spawn_dragoon_piece = false;
		//with oPlayer {
		//	if (true) {
		//		_spawn_dragoon_piece = true;
		//	}
		//}
		//if _spawn_dragoon_piece {
		for (var i = 0; i < array_length(dragoon_parts); i++) {
			if !(dragoon_parts[i].piece_active || dragoon_parts[i].piece_collected) {
				dragoon_parts[i].should_spawn = true;
				i = array_length(dragoon_parts);
			}
		}
		//}
	} else {
		//print("NOT KIRBY KIRBY KIRBY");
	}
}

if (get_gameplay_time() == 6) {
	//sound_play(resource_get("music_wsair_loop_3"));
	//sound_play(resource_get("music_wsair_loop_4"));
	//sound_play(resource_get("music_wsair_loop_i"));
}
//music_play_file(string(resource_get("music_wsair_loop_i")));


//Platform Code
//if (get_gameplay_time() == 6) || get_gameplay_time() % 120 == 0 {
if (get_gameplay_time() == 6) {
	change_stage_layout();	
}
if get_gameplay_time() == 60 {
	//
	if (ror_ssl_visuals) {
		current_music_pack = ssl_pack; //Defaults to SSL Pack
		menu_options.stage_music[1] = music_packs[current_music_pack, 0];
	} else {
		current_music_pack = random_func_2(9, array_length(music_packs) - 2, true) + 2;
		menu_options.stage_music[1] = music_packs[current_music_pack, 0];
	}
	//
}
if (get_gameplay_time() >= 120 && change_music) && (get_local_setting(SET_MUSIC_VOL) > 0) {
	//print(["Music", change_music]);
	if (change_music == 1) {
		//print("Changing Music");
		//Base Cast Music Stop
		/*
		for (var i = 0; i < array_length(music_packs[1]); i++) {
			sound_stop(music_packs[1][1, i]);
			sound_stop(music_packs[1][1, i]);
		}
		*/
		//
		if music_basecast_current != -4 {
			sound_stop(music_basecast_current);
			music_basecast_current = -4;
		}
		//print(music_packs[current_music_pack][0]);
		var _music_track = round_state == "break_round" ? music_bazaar_num : stage_element
		if (music_packs[current_music_pack][0] == "Base Game" || music_packs[current_music_pack][0] == "Custom") {
			var _track = music_packs[current_music_pack][1, _music_track];	
			//var _track = resource_get("music_wsair_loop_i");
			//print(_track);
			with obj_stage_main.main_obj {
				sound_play(_track, true, noone, clamp(get_local_setting(SET_MUSIC_VOL) * 3, 0, 1), 1);
			}
			music_play_file(string(resource_get("")));
			music_basecast_current = _track;
		} else {
			music_play_file( "" );
			music_play_file( music_packs[current_music_pack][1, _music_track] );
			music_fade( 1, .01 );
		}
		
		//music_set_volume(stage_music_volume);
	}
	change_music--;
}

if (round_state == "game_over") {
	//Game Over Player State
	var _quit = false;
	with oPlayer {		
		x = room_width / 2;
		y = room_height / 2;
		set_state(PS_PRATFALL);
		sound_stop(land_sound);
		//hitpause = true;
		//hitstop = 2;
		//
		if (attack_down || special_down || jump_down || shield_down || taunt_down) {
			_quit = true;
		}
		//
		if (player == obj_stage_main.device_player) {
			if (left_pressed ^^ right_pressed) {
				sound_play(asset_get("mfx_forward"));
				obj_stage_main.selected_final_graph += -left_pressed + right_pressed
				if obj_stage_main.selected_final_graph < 0 {
					obj_stage_main.selected_final_graph = array_length(obj_stage_main.final_graph) - 1;
				}
				if obj_stage_main.selected_final_graph > array_length(obj_stage_main.final_graph) - 1 {
					obj_stage_main.selected_final_graph = 0;
				}
				//print(obj_stage_main.selected_final_graph)
				clear_button_buffer(PC_LEFT_HARD_PRESSED);
				clear_button_buffer(PC_RIGHT_HARD_PRESSED);
			}
		}
		//
	}
	
	if (_quit || (end_of_game_time == end_of_game_max)) {
		end_of_game_time++;
	} else {
		end_of_game_time--
	}
	end_of_game_time = clamp(end_of_game_time, 0, end_of_game_max)
	//
	
	//End of Game
	if (end_of_game_time == end_of_game_max ) {
		with oPlayer {
			//if (player != obj_stage_main.last_alive.player) {
			if (get_player_team( player ) != get_player_team(obj_stage_main.last_alive.player)) {
				set_player_stocks(player, 1);
				y = room_height * 2;
			}
		}
	}
	//	
	exit; 
}
//full_game_timer++;
var kirby_heal_sfx = sound_get("ror_kirbheal");
//Consume Nutrients
with oPlayer {
	if ror_will_consume_buddy {
		ror_will_consume_buddy--
		//set_player_damage(player, clamp(get_player_damage(player) - ror_consume_amount * (ror_card_bamboo + 1), 0, 999));
		set_player_damage(player, clamp(get_player_damage(player) - ror_consume_amount * (ror_card_bamboo + 1), 0, 999));
		sound_play(kirby_heal_sfx)
		spawn_hit_fx(x, y - char_height / 2, 109);
		//var _random = random_func_2(9, array_length(ror_items), true)
		var _pul_self = 0;
		for (var i = 0; i < array_length(ror_items); i++) {
			if (ror_items[i].name == "Consume Nutrients") {
				_pul_self = i;
			}
		}
		if array_length(ror_items) {
			remove_item(self, _pul_self);
			card_choice(obj_stage_main.card_common_luck);
			//(self, _pul_self)
		}
	}
}

var _is_online = game_online;
with oPlayer {
	set_player_stocks(player, 99);
}


#region //Practice Mode / Debug
if (practice_mode) {
	with oPlayer {
		if (special_down && taunt_pressed) {
			clear_button_buffer(PC_TAUNT_PRESSED)
			remove_item(self, 0);
		}
		
		//Export and Import
		/*
		if (shield_down && taunt_pressed) {
			clear_button_buffer(PC_TAUNT_PRESSED)
			with obj_stage_main {
				var _new_data = ror_savedata();
				//print(_new_data)
				ror_loaddata(_new_data)
			}
		}
		*/
	}
}
#endregion

#region //Lightweight Check
total_fps += fps
var _avg_fps = total_fps / (get_gameplay_time() + 1)
//print(_avg_fps)
if (light_weight_mode != "Off") { //FPS
	with obj_stage_article {
		if ( get_article_script( id ) == 2 ) {
			instance_destroy(self);
		}
	}
}
#endregion

#region //Menu BABIES
if (!game_paused && should_make_buddies) {
	should_make_buddies = false;
	//CREATE BABIES
	with oPlayer {
		ror_followers = [];
		for (var i = 0; i < array_length(ror_items); i++) {
			//print(ror_items[i].name)
			if (i == 0) {
				var _follower = create_little_buddy(self, ror_items[i], 32);
			} else {
				var _follower = create_little_buddy(ror_followers[i - 1], ror_items[i], 16);
			}
			array_push(ror_followers, _follower);
		}										
	}
	//
}
#endregion

#region Initial Stats
if (get_gameplay_time() <= 60) {
	with oPlayer {
		//Positional Stats
		ror_x = x;
		ror_y = y;
		ror_spr_dir = spr_dir;
		//Wall Jump
		ror_starts_with_cling = can_wall_cling
		
		if (get_gameplay_time() == 60) {
			ror_stats = {
				//Char Height
				char_height : char_height,
				small_sprites : small_sprites,
				//Weight
				knockback_adj : knockback_adj,
				//Walk
				walk_speed : walk_speed,
				walk_accel : walk_accel,
				walk_turn_time : walk_turn_time,
				//Dash
				initial_dash_time : initial_dash_time,
				initial_dash_speed : initial_dash_speed,
				dash_speed : dash_speed,
				dash_turn_time : dash_turn_time,
				dash_turn_accel : dash_turn_accel,
				dash_stop_time : dash_stop_time,
				dash_stop_percent : dash_stop_percent,
				//Grounded
				ground_friction : ground_friction,
				moonwalk_accel : moonwalk_accel,
				//Aerial
				max_djumps :	max_djumps,
				jump_start_time: jump_start_time,
				jump_speed: jump_speed,
				short_hop_speed: short_hop_speed,
				djump_speed: djump_speed,
				jump_change: jump_change,
				djump_accel: djump_accel,
				djump_accel_start_time: djump_accel_start_time,
				djump_accel_end_time: djump_accel_end_time,
				leave_ground_max: leave_ground_max,
				air_max_speed: air_max_speed,
				max_jump_hsp: max_jump_hsp,
				air_accel: air_accel,
				air_friction: air_friction,
				double_jump_time: double_jump_time,
				//Gravity
				gravity_speed: gravity_speed,
				hitstun_grav: hitstun_grav,
				//Fall
				max_fall: max_fall,
				fast_fall: fast_fall,
				//Land
				land_time: land_time,
				prat_land_time: prat_land_time,
				prat_fall_accel: prat_fall_accel,
				//Walljump
				walljump_hsp: walljump_hsp,
				walljump_vsp: walljump_vsp,
				walljump_time: walljump_time,
				//Rolls
				roll_forward_max: roll_forward_max,
				roll_backward_max: roll_backward_max,
				//Wavedash
				wave_land_time: wave_land_time,
				wave_land_adj: wave_land_adj,
				wave_friction: wave_friction,
				techroll_speed: techroll_speed,
				air_dodge_speed: air_dodge_speed
			}
			//print(ror_stats)
			ror_modified_stats = {
				//Char Height
				char_height : char_height,
				small_sprites : small_sprites,
				//Weight
				knockback_adj : knockback_adj,
				//Walk
				walk_speed : walk_speed,
				walk_accel : walk_accel,
				walk_turn_time : walk_turn_time,
				//Dash
				initial_dash_time : initial_dash_time,
				initial_dash_speed : initial_dash_speed,
				dash_speed : dash_speed,
				dash_turn_time : dash_turn_time,
				dash_turn_accel : dash_turn_accel,
				dash_stop_time : dash_stop_time,
				dash_stop_percent : dash_stop_percent,
				//Grounded
				ground_friction : ground_friction,
				moonwalk_accel : moonwalk_accel,
				//Aerial
				max_djumps :	max_djumps,
				jump_start_time: jump_start_time,
				jump_speed: jump_speed,
				short_hop_speed: short_hop_speed,
				djump_speed: djump_speed,
				jump_change: jump_change,
				djump_accel: djump_accel,
				djump_accel_start_time: djump_accel_start_time,
				djump_accel_end_time: djump_accel_end_time,
				leave_ground_max: leave_ground_max,
				air_max_speed: air_max_speed,
				max_jump_hsp: max_jump_hsp,
				air_accel: air_accel,
				air_friction: air_friction,
				double_jump_time: double_jump_time,
				//Gravity
				gravity_speed: gravity_speed,
				hitstun_grav: hitstun_grav,
				//Fall
				max_fall: max_fall,
				"fast_fall": fast_fall,
				//Land
				land_time: land_time,
				prat_land_time: prat_land_time,
				prat_fall_accel: prat_fall_accel,
				//Walljump
				walljump_hsp: walljump_hsp,
				walljump_vsp: walljump_vsp,
				walljump_time: walljump_time,
				//Rolls
				roll_forward_max: roll_forward_max,
				roll_backward_max: roll_backward_max,
				//Wavedash
				wave_land_time: wave_land_time,
				wave_land_adj: wave_land_adj,
				wave_friction: wave_friction,
				techroll_speed: techroll_speed,
				air_dodge_speed: air_dodge_speed
			}
		}
	}
}
#endregion

//Rounds
//print([round_state, round_state_timer])
switch(round_state) {
	#region //Game End	
	case "game_over":
	
	break;
	#endregion
	#region //Loading
	case "loading":
		//
		if (round_state_timer <= 50) {
			with oPlayer {
				set_hitbox_changes(obj_stage_main.round_state_timer - 1);
				visible = true;
			}
		}
		if (round_state_timer == 50) {
			//Testing
			if (practice_mode) {
				/*
				with oPlayer {
					card_choice(obj_stage_main.items_commons[0])
					card_choice(obj_stage_main.items_commons[1])
					card_choice(obj_stage_main.items_commons[2])
					card_choice(obj_stage_main.items_rares[0])
					card_choice(obj_stage_main.items_rares[1])
					card_choice(obj_stage_main.items_rares[2])
					card_choice(obj_stage_main.items_epics[0])
					card_choice(obj_stage_main.items_epics[1])
					card_choice(obj_stage_main.items_epics[2])
					card_choice(obj_stage_main.items_legends[0])
					card_choice(obj_stage_main.items_legends[1])
					card_choice(obj_stage_main.items_legends[2])
				}	
				*/
			}
			ror_state((can_bazaar && (bazaar_count && round_number % bazaar_count == 0)) || force_bazaar ? "break_round" : "alive");
		}

		//
	break;
	#endregion //Loading
	#region //Break Round
	case "break_round":
		create_printers(0);
		
		pause_menu();
		//Camera
		set_view_position(bazaar_cam_x, bazaar_cam_y);
		
		if game_paused {
			exit;
		}
		
		with oPlayer {
			//Kaboom caused an issue
			if (url == 2149325219) {
				fuse = 120;
				if (state == PS_ATTACK_AIR || state == PS_ATTACK_GROUND) && attack == AT_EXTRA_1 {
					set_state(PS_IDLE);
				}
			}
			if url == 2390163800 { //Segerak
				if (up_down) {
					set_state(PS_CROUCH);
				}
			}
			//taunt_menu()
			if (obj_stage_main.round_state_timer >= obj_stage_main.bazaar_skip_timer) {
				//if (shield_down && taunt_down) {
				if (special_down) {
					bazaar_skip_hold++;
					if (bazaar_skip_hold >= bazaar_skip_hold_max) {
						for (var i = 0; i < array_length(obj_stage_main.main_players); i++) {
							obj_stage_main.main_players[i].bazaar_ready = true;
							with oPlayer {
								ror_scrapper_mode = false;
								bazaar_skip_hold = 0;
							}
						}
					}
				} else {
					if bazaar_skip_hold {
						bazaar_skip_hold--;
					}
				}
			}
			//Mega Print 
			var _new_line = chr(10);
			var _tab = chr(9);
			/*
			var _print = "Hello This is DinoBros. Please Take a Clip of this if there is an issue + Hold Jump+Taunt+Shield while Landing";
			_print += _new_line + "Player: " + string(player);
			_print += _new_line + "Clinging: " + string(clinging);
			_print += _new_line + "State: " + string(get_state_name(state)) + _tab + " | State Timer: " + string(state_timer);
			_print += _new_line + "Hitpause: " + string(hitpause) + _tab + " | Hitstop: " + string(hitstop);
			_print += _new_line + "Was Parried: " + string(was_parried) + _tab + " | Parry Lag: " + string(parry_lag);
			print(_print);
			if (jump_down && taunt_down && shield_down) && state == PS_LAND {
				get_string("Rogue Item Data", string(_print));
			}
			*/
			//End of Mega Print
			#region Taunt Menu Stats Stuff (Copy Between Taunt Menu)
			if taunt_down {
				//
				if taunt_pressed {
					with oPlayer {
						//In bounds
						ror_taunt_item_array = [];
						for (var i = 0; i < array_length(ror_items); i++) {
							var _name = ror_items[i].name;
							//
							var _push_value = [ror_items[i], 1];
							while (i + 1 < array_length(ror_items) && ror_items[i + 1].name == _name) {
								i++;
								_push_value[1]++;
							}
							array_push(ror_taunt_item_array, _push_value);
						}
					}
					//
				}
				//
				//Item Inventory
				if (obj_stage_main.stat_pages[obj_stage_main.stats_page_num[_is_online ? player : 1]] == "Item Inventory") && array_length(ror_taunt_item_array) {
					//
					//var _max = array_length(ror_taunt_item_array);
					//SFX
					if up_pressed || down_pressed { 
						if (player == obj_stage_main.device_player || !_is_online) {
							sound_play(asset_get("mfx_forward"));
						}
					}
					//Control
					//Cursor Pos
					if up_pressed { ror_up_hold_timer = 0 } else { if up_down ror_up_hold_timer++ };
					if down_pressed { ror_down_hold_timer = 0 } else { if down_down ror_down_hold_timer++ };
					//
					var _up = up_pressed || (!up_pressed && (up_down && ror_up_hold_timer && ror_up_hold_timer % ror_hold_buffer == 0));
					var _down = down_pressed || (!down_pressed && (down_down && ror_down_hold_timer && ror_down_hold_timer % ror_hold_buffer == 0));
					//	
					//print(_up)
					//
					if (_up) {
						//
						ror_taunt_item_value--;
						/*
						if ror_taunt_item_value < 0 {
							ror_taunt_item_value = _max - 1;
						}
						*/
						//
						clear_button_buffer(PC_UP_HARD_PRESSED);
					}					
					if (_down) {
						//
						ror_taunt_item_value++;
						/*
						if ror_taunt_item_value >= _max {
							ror_taunt_item_value = 0;
						}
						*/
						//
						clear_button_buffer(PC_DOWN_HARD_PRESSED);
					}
				}
				//
				//
				if (right_pressed) {
					//
					if (player == obj_stage_main.device_player || !_is_online) {
						sound_play(asset_get("mfx_forward"));
					}
					//
					obj_stage_main.stats_page_num[_is_online ? player : 1]++;
					clear_button_buffer(PC_RIGHT_HARD_PRESSED);
					if (obj_stage_main.stats_page_num[_is_online ? player : 1] >= array_length(obj_stage_main.stat_pages)) {
						obj_stage_main.stats_page_num[_is_online ? player : 1] = 0;
					}
				}
				//
				if (left_pressed) {
					//
					if (player == obj_stage_main.device_player || !_is_online) {
						sound_play(asset_get("mfx_forward"));
					}
					//
					obj_stage_main.stats_page_num[_is_online ? player : 1]--;
					clear_button_buffer(PC_LEFT_HARD_PRESSED);
					if (obj_stage_main.stats_page_num[_is_online ? player : 1] < 0) {
						obj_stage_main.stats_page_num[_is_online ? player : 1] = array_length(obj_stage_main.stat_pages) - 1;
					}
				}
				//Attack Info
				if (obj_stage_main.stat_pages[obj_stage_main.stats_page_num[_is_online ? player : 1]] == "Attack Info") {
					//
					//Cursor Pos
					if up_pressed { ror_up_hold_timer = 0 } else { if up_down ror_up_hold_timer++ };
					if down_pressed { ror_down_hold_timer = 0 } else { if down_down ror_down_hold_timer++ };
					//
					var _up = up_pressed || (!up_pressed && (up_down && ror_up_hold_timer && ror_up_hold_timer % ror_hold_buffer == 0));
					var _down = down_pressed || (!down_pressed && (down_down && ror_down_hold_timer && ror_down_hold_timer % ror_hold_buffer == 0));
					//	
					//
					if (_up) {
						//
						if (player == obj_stage_main.device_player || !_is_online) {
							sound_play(asset_get("mfx_forward"));
						}
						//
						obj_stage_main.ror_taunt_attack_display[player]--;
						clear_button_buffer(PC_UP_HARD_PRESSED);
						if (obj_stage_main.ror_taunt_attack_display[player] < 0) {
							obj_stage_main.ror_taunt_attack_display[player] = array_length(ror_valid_attack_array) - 1;
						}
					}
					//
					if (_down) {
						//
						if (player == obj_stage_main.device_player || !_is_online) {
							sound_play(asset_get("mfx_forward"));
						}
						//
						obj_stage_main.ror_taunt_attack_display[player]++;
						clear_button_buffer(PC_DOWN_HARD_PRESSED);
						if (obj_stage_main.ror_taunt_attack_display[player] >= array_length(ror_valid_attack_array)) {
							obj_stage_main.ror_taunt_attack_display[player] = 0;
						}
					}
				}
				//				
			}	
			#endregion

			invince_time = 2;
			invicible = true;
			
			if (bazaar_ready) {
				y = room_height / 2;
				x = room_width / 2;
				visible = false;
				can_fast_fall = false;
				//continue;
				if (shield_pressed || up_pressed) {
					bazaar_ready = false;
					y = room_height / 2;
					x = room_width / 2;
					visible = true;
					sound_play(asset_get("mfx_back"));
					clear_button_buffer(PC_SHIELD_PRESSED);
					set_state(PS_IDLE_AIR);
				}
			} else {

			}
		
			#region //Scrapper
			if (ror_scrapper_mode) {
				if (shield_pressed || up_pressed) {
					ror_scrapper_mode = false;
					clear_button_buffer(PC_SHIELD_PRESSED);
					clear_button_buffer(PC_UP_STICK_PRESSED);
				}
				if (array_length(ror_scrap_draw_array)) {
					if (left_pressed || right_pressed) {
						ror_scrap_pos += left_pressed ? -1 : 1 
						if (ror_scrap_pos < 0) {
							ror_scrap_pos = array_length(ror_scrap_draw_array) - 1;
						} else if (ror_scrap_pos >= array_length(ror_scrap_draw_array)) {
							ror_scrap_pos = 0;
						}
						
						//print(["Scrap", ror_scrap_draw_array[ror_scrap_pos, 0].name, ror_scrap_draw_array[ror_scrap_pos, 1]])
					}
					if (attack_pressed) {
						//
						if instance_exists(ror_scrapper_id) {
							ror_scrapper_id.scrapper_play_sfx = true;
						}
						//
						clear_button_buffer(PC_ATTACK_PRESSED);
						//var _rarity = ror_items[ror_scrap_pos].rarity;
						var _rarity = ror_scrap_draw_array[ror_scrap_pos, 0].rarity;
						//Deletes
						remove_item(self, ror_scrap_draw_array[ror_scrap_pos, 1]);
						//Luck
						//Give Luck Item or Great Asset
						switch(_rarity) {
							case "C": //Common
								if ror_card_great_asset {
									ror_luck += obj_stage_main.ror_luck_c * obj_stage_main.luck_point_scaling * (ror_card_great_asset + 1);
								} else {
									card_choice(obj_stage_main.items_commons[0])
								}
							break;
							case "R": //Rares
								if ror_card_great_asset {
									ror_luck += obj_stage_main.ror_luck_r * obj_stage_main.luck_point_scaling * (ror_card_great_asset + 1);
								} else {
									card_choice(obj_stage_main.items_rares[0])
								}
							break;
							case "E": //Epic
								if ror_card_great_asset {
									ror_luck += obj_stage_main.ror_luck_e * obj_stage_main.luck_point_scaling * (ror_card_great_asset + 1);
								} else {
									card_choice(obj_stage_main.items_epics[0])
								}
							break;
							case "L": //Legendaries
								if ror_card_great_asset {
									ror_luck += obj_stage_main.ror_luck_l * obj_stage_main.luck_point_scaling * (ror_card_great_asset + 1);
								} else {
									card_choice(obj_stage_main.items_legends[0])
								}
							break;
						}
						//In bounds
						ror_scrap_draw_array = [];
						for (var i = 0; i < array_length(ror_items); i++) {
							var _name = ror_items[i].name;
							//Scrappables
							if !("can_scrap" in ror_items[i] && !ror_items[i].can_scrap) {
								//_scrap = true;
								//ror_scrap_pos = i;
								//i = array_length(ror_items);
								//
								var _push_value = [ror_items[i], i, 1];
								while (i + 1 < array_length(ror_items) && ror_items[i + 1].name == _name) {
									i++;
									_push_value[2]++;
								}
								array_push(ror_scrap_draw_array, _push_value);
							}
							//
						}
						//
						ror_scrap_pos = clamp(ror_scrap_pos, 0, array_length(ror_scrap_draw_array) - 1);
						
						if !(array_length(ror_scrap_draw_array)) {
							ror_scrapper_mode = false;
						}
					}
				}
				state_timer = 0; //5 is to make some characters not kill my ears
				old_vsp = 0;
				old_hsp = 0;
				vsp = 0;
				hsp = 0;
				//Anti Annoying Sound from falling
				sound_stop(land_sound);
				sound_stop(landing_lag_sound);
				//
				if !(state == PS_PRATLAND || state == PS_PRATFALL) {
					was_parried = true;
					parry_lag = 3;
					set_state(free ? PS_PRATFALL : PS_PRATFALL)
				}
			} else {
				if (state == PS_PRATLAND) { //Safety Check
					was_parried = false;
					parry_lag = 0;
					set_state(PS_IDLE);
				}
				//Clones kill your attack buffer
				if (!ror_clone) {
					clear_button_buffer(PC_ATTACK_PRESSED);
				}
			}
			#endregion
			
			#region //Button Buffers
			//Strongs
			clear_button_buffer(PC_LEFT_STRONG_PRESSED);
			clear_button_buffer(PC_RIGHT_STRONG_PRESSED);
			clear_button_buffer(PC_UP_STRONG_PRESSED);
			clear_button_buffer(PC_DOWN_STRONG_PRESSED);				
			clear_button_buffer(PC_STRONG_PRESSED);				
			//Sticks
			clear_button_buffer(PC_LEFT_STICK_PRESSED);
			clear_button_buffer(PC_RIGHT_STICK_PRESSED);
			clear_button_buffer(PC_UP_STICK_PRESSED);
			clear_button_buffer(PC_DOWN_STICK_PRESSED);
			//Other
			clear_button_buffer(PC_SPECIAL_PRESSED);			
			//
			if (state == PS_ATTACK_GROUND || state == PS_ATTACK_AIR) {
				set_state(free ? PS_IDLE_AIR : PS_IDLE);
			}
			#endregion
			
			if (x < 0 || x > room_width || y > room_height) {
				x = room_width / 2;
				y = 0;
			}
		}
		#region //Exit
		var _next_round = true;
		for (var i = 0; i < array_length(main_players); i++) {
			if !(main_players[i].bazaar_ready) {
				_next_round = false;
			}
		}
		//
		if _next_round {
			//
			brook_plat_left.y = room_height * 4;
			brook_plat_right.y = room_height * 4;
			//Brook Test
			//
			ror_state("loading");
		}
		#endregion
	break;
	#endregion //Break Round
	#region //Regular Round
	case "alive":
		//SFX
		if 
			(round_state_timer == 30) ||
			(round_state_timer == 60) ||
			(round_state_timer == 90)
		{
			sound_play(asset_get("sfx_321"));
		}
		if (round_state_timer == 120) {
			sound_play(asset_get("sfx_go"));
		}
		/*
		if (round_state_timer < 120) {
			//Brute Force Bug Fix
			with oPlayer {
				if !(state == PS_PRATLAND || state == PS_PRATFALL) {
					was_parried = true;
					parry_lag = 2;	
					set_state(PS_PRATFALL);
					x = ror_x;
					y = ror_y;
					spr_dir = ror_spr_dir;
					visible = true;
					state_timer = 0;
				}
			}
		}
		*/
		if round_state_timer == 3 {
			var _waluigi_time = false;
			with oPlayer {
				if (ror_card_fair_play) {
					if state == PS_PRATLAND {
						set_state(PS_IDLE);
						_waluigi_time = true;
					}
				}
			}
			if _waluigi_time {
				sound_play(sound_get("ror_waluigi_time"), false, 0, 1, 1);
			}
		}
		
		#region //Eggs
		var _spawn_offset = 32;
		var _range = 10;
		var _flame_body_easter_egg = false;
		with oPlayer {
			if ror_card_flame_body {
				_flame_body_easter_egg = true;
			}
		}
		//if (ror_eggs && round_state_timer == 120 + 900) {
		if (round_state_timer == 120 + (practice_mode || _flame_body_easter_egg ? 60 : 600)) { //Time to Spawn Egg
			for (var i = 0; i < array_length(main_players); i++) {
				ror_eggs += main_players[i].ror_eggs;
				main_players[i].ror_eggs = 0;
			}
			_spawn_offset = 32;
			_range = 10;
			//
			var _spawned_eggs = 0;
			var _egg_pos = array_create(2 * _range + 1, 0);
			while (ror_eggs && _spawned_eggs < (_range * 2 + 1)) {
				//Spawns
				_spawned_eggs++
				var _egg = instance_create(room_width / 2, -room_height, "obj_stage_article", 11);
				//1 Per Tile
				var _rng = (ror_rng_call(ror_eggs, 1 + _range * 2)) - _range;
				var _spawn_attempt = 0;
				while (_egg_pos[_rng + _range]) {
					_spawn_attempt++
					_rng = (ror_rng_call(ror_eggs + _spawn_attempt, 1 + _range * 2)) - _range;
				}
				_egg_pos[_rng + _range] = true;
				//Egg Offsets
				_egg.x += _rng * _spawn_offset;
				_egg.y -= _spawned_eggs * _spawn_offset;
				_egg.death_offset = 3 * _spawned_eggs;
				//Remove
				ror_eggs--
			}
		}
		
		with oPlayer {
            if ror_update_stats {
                set_ror_variables();
                ror_update_stats = false;
            }
			
			if ror_cracked_eggs {
				//print("Egg Cracked")
				//
				var _roll = ror_rng_call(player, 100) + 1;				
				//generate_item(player, ror_card_belt - 1);
				var _rates = luck_math(ror_luck);
				var _common_rate = _rates[0];
				var _rare_rate = _rates[1];
				var _epic_rate = _rates[2];
				var _legend_rate = _rates[3];
				//		
				var _egg_array = 2;
				//
				if obj_stage_main.egg_only {
					_egg_array = ror_rng_call(player + get_gameplay_time(), 4);
				}
				//
				generate_item(player, _egg_array);
				//
				ror_cracked_eggs--;
				//
				set_ror_variables()
			}
		}
		#endregion
		//
		#region dead_players
		var _dead_players = 0
		var _dead_1 = 0
		var _dead_2 = 0
		for (var i = 0; i < array_length(main_players); i++) {
			var _player = main_players[i];
			//print(get_state_name( _player.state));
			//Extra Life Shenron
			with _player {
				if (ror_has_extra_life && state == PS_RESPAWN) {
					set_ror_variables();
					ror_has_extra_life = false;
					set_state(PS_IDLE);		
					visible = true;			
					invince_time = 150;
					invicible = true;					
				}				
			}
			if (_player.state == PS_RESPAWN || _player.state == PS_DEAD) || _player.ror_is_ghost {
				_dead_players++
				//Teams Mode
				if (get_player_team(_player.player) == 1) {
					_dead_1++;
				} else if (get_player_team(_player.player) == 2) {
					_dead_2++;
				}
				//
				if !(_player.ror_is_ghost || _player.ror_can_ghost) {
					_player.state_timer = 0;
				} else {
					//Ghost Mode
					
					//When a player Dies
					with _player { //Vengeful Spirit Sound
						ror_ghost_timer--
						if (ror_can_ghost) {
							//print("One Time Death Message")
							//basically death.init
							ror_death_time = floor(obj_stage_main.round_state_timer / 60);
							//
							ror_freeze_stacks = 0;
							ror_decay_health = 0;
							ror_is_ghost = true;
							ror_can_ghost = false;							
							//Vengeful Spirits
							ror_ghost_timer = ror_card_ghost * 180; //5 seconds -> 3 Seconds
							if (ror_ghost_timer) {
								sound_play(asset_get("sfx_syl_dspecial_howl"));
							}
							//Showstopper
							if (ror_card_showstopper) {
								sound_play(asset_get("sfx_sand_yell"));
								with oPlayer {
									if get_player_team(player) != get_player_team(other.player) && !(state == PS_RESPAWN || state == PS_DEAD) {
										spawn_hit_fx(x, y - char_height / 2, HFX_POM_MUSIC)
										set_state(PS_PRATFALL);
										was_parried = true;
										parry_lag = 60;
									}
								}
							}
							//Vengeful Spirit Initiate		
							if (ror_card_ghost) {
								set_state(PS_IDLE_AIR);
								visible = true;
							}
						}	
						if (ror_card_showstopper || ror_card_ghost) { //Ghost Cards
							invincible = true;
							invince_time = 3;
							//Shovel Knight - Double Death Protection Bug
							if !(ror_ghost_timer) {
								y = room_height * 2;	
								ror_is_ghost = false;
							}
						}
					}
				}
				if  (_player.state == PS_RESPAWN || _player.state == PS_DEAD) {
					_player.ror_is_ghost = false;
				}
			} else {
				last_alive = floor(main_players[i]);
				//last_alive.ror_death_time = floor(obj_stage_main.round_state_timer / 60);
				last_alive.ror_death_time = 0;
			}
		}
		//
		//print(_dead_players)
		//print(array_length(main_players) - 1)
		if (_dead_players >= array_length(main_players) - 1) ||
			(
				//Teams Mode
				(obj_stage_main.teams_mode) && (
					_dead_1 >= obj_stage_main.team_1 ||
					_dead_2 >= obj_stage_main.team_2
				)			
			)
		{
			//Kill Players for a new round
			//Egg Resets
			var _gift_eggs = obj_stage_main.ror_eggs;
			obj_stage_main.ror_eggs = 0;
			with oPlayer {
				_gift_eggs += obj_stage_main.main_players[player - 1].ror_eggs;
				obj_stage_main.main_players[player - 1].ror_eggs = 0;			
			}
			//
			//Points
			with oPlayer {		
				//1 Frame Visible after Death bug
				visible = false;
				//Parasite
				if (ror_card_parasite) {
					var _parasite_check = floor(ror_card_parasite / 10) + 1;					
					//Parasite will remove 1 item for every 10 you have
					for (var p = 0; p < _parasite_check; p++) {
						var _parasite_array = []
						for (var i = 0; i < array_length(ror_items); i++) {
							if !(
									ror_items[i].name == "Parasite"
								||	("can_scrap" in ror_items[i] && !ror_items[i].can_scrap)
							) {
								array_push(_parasite_array, i);
							}
						}
						//
						//print(array_length(_parasite_array));
						if (array_length(_parasite_array)) {
							var _rand = ror_rng_call(player, array_length(_parasite_array))
							remove_item(self, _parasite_array[_rand]);
							card_choice(obj_stage_main.card_parasite);
							sound_play(asset_get("mfx_star"));
						}
					}
				}
				
				//Championship Belt
				if (get_player_team( player ) == get_player_team(obj_stage_main.last_alive.player)) {
					//
					ror_points++;
					//obj_stage_main.round_number++;					
					//
					ror_threw_game = false;
					//eggs
					if _gift_eggs {
						sound_play(asset_get("sfx_oly_crystal_cracking"));
						ror_cracked_eggs += _gift_eggs;
					}
					//Championship Belt
					if ror_card_belt {
						var _kill_count = 0;
						var	_other_player_count = array_length(obj_stage_main.main_players) - 1;
						//
						for (var i = 0; i < array_length(obj_stage_main.main_players); i++) {
							if (obj_stage_main.main_players[i].last_player == player && obj_stage_main.main_players[i] != self) {
								_kill_count++;
							}
						}
						//print([_kill_count, _other_player_count])
						//if _kill_count == _other_player_count {						
						if _kill_count {
							var _play_sfx = false;
							for (var i = 1; i <= _kill_count; i++) {
								var _roll = ror_rng_call(i, 100) + 1;
								//var _roll2 = ror_rng_call(10 + i, 100) + 1;
								var _roll2 = rogue_rng_outcome(100, ror_card_star, "higher");
								//
								//print(["Champion", _roll2])
								//
								if (_roll2 >= (100 - ror_card_belt * 20)) {									
									//generate_item(player, ror_card_belt - 1);
									var _rates = luck_math(ror_luck);
									var _common_rate = _rates[0];
									var _rare_rate = _rates[1];
									var _epic_rate = _rates[2];
									var _legend_rate = _rates[3];
									//			
									var _champ_array = -4;
									if (_roll <= _common_rate) { //Common
										_champ_array = 0;
									} else if (_roll <= _common_rate + _rare_rate) { //Rare
										_champ_array = 1;
									} else if (_roll <= _common_rate + _rare_rate + _epic_rate) { //Epic
										_champ_array = 2;	
									} else { //Legendaries
										_champ_array = 3;	
									}
									
									//_poolarray = picky_eater_check(main_players[_num - 1], "C", items_commons);
									generate_item(player, _champ_array);
									_play_sfx = true;
								}
							}
							if (_play_sfx) {
								sound_play(asset_get("mfx_ring_bell"));
							}
						}
					}
					//Pawn Promotion
					for (var i = 0; i < array_length(ror_items); i++) {
						if ("ror_pawn_rank" in ror_items[i]) {
							if ror_items[i].ror_pawn_rank {
								ror_items[i].ror_pawn_rank--;
							}
							//
							if (ror_items[i].ror_pawn_rank <= 0) {
								remove_item(self, i);
								i--;
								generate_item(player, 3);
								sound_play(_sfx_promote);
								sound_play(asset_get("sfx_shovel_knight_fanfare"));
							}
						}
					} 
					
					//
				} else {
					if !(ror_previous_damage) {
						//print("Nice Throw!");
						ror_threw_game = true;
					}
				}
				#region//Final Graph
				//Points
				if !ror_clone {
					var _final_array = obj_stage_main.final_graph_points[player];
					array_insert(_final_array, array_length(_final_array), ror_points);
					//Luck
					_final_array = obj_stage_main.final_graph_luck[player];
					array_insert(_final_array, array_length(_final_array), ror_luck);	
					//Items
					_final_array = obj_stage_main.final_graph_items[player];
					array_insert(_final_array, array_length(_final_array), array_length(ror_items));
					//Items
					_final_array = obj_stage_main.final_graph_time[player];
					array_insert(_final_array, array_length(_final_array), ror_death_time);
					#endregion
				}
			}
			//Kill
			if (last_alive.ror_points >= obj_stage_main.points_to_win) {
				/*
				with oPlayer {					
					//if (player != obj_stage_main.last_alive.player) {
					if (get_player_team( player ) != get_player_team(obj_stage_main.last_alive.player)) {
						set_player_stocks(player, 1);
						y = room_height * 2;
					}
				}
				*/
				ror_state("game_over")
				//round_state = "game_over";
				exit;
			}
			last_alive.y = room_height * 2;
			//Rogue Asylum
			if (obj_stage_main.rogue_insanity) {
				print("Rogue Asylum")
				with oPlayer {
					x = ror_x;
					y = ror_y;
				}
				for (var i = 0; i < array_length(obj_stage_main.main_players); i++) {
					with main_players[i] {
						//Remove Items
						while array_length(ror_items) {
							remove_item(self, 0);
						}
						//
						ror_luck = 0;
						//Give Items
						//Common
						ror_temp_clones = 5;
						generate_item(player, 0);
						//generate_item(player, 0);
						//Rare
						ror_temp_clones = 3;
						generate_item(player, 1);
						//generate_item(player, 1);
						//Epic
						ror_temp_clones = 2;
						generate_item(player, 2);
						//generate_item(player, 2);
						//Legendaries
						ror_temp_clones = 1;
						generate_item(player, 3);
						//generate_item(player, 3);
						//
					}
				}
			}
			//
			ror_state(obj_stage_main.disable_item_picks ? "loading" : "choose_item");
			//Create Pools
			for (var i = 0; i < array_length(main_players); i++) {					
				item_select[i + 1] = create_item_pool(i + 1, main_players[i].ror_luck, "normal");
			}
			//print(last_alive.player)
		}
		#endregion
	break;
	#endregion
	#region //Bug
	case "css_bug":
		with oPlayer {
			#region //Keep players still
			if (get_gameplay_time() >= 120) { //Round Start
				if (state != PS_PRATLAND) {
					ror_previous_damage = 0;
					set_player_damage(player, 0)
					was_parried = true;
					parry_lag = 175; //170 when state_timer = 0;
					set_state(PS_PRATLAND);
					visible = true;
				}
				state_timer = 5; //5 is to make some characters not kill my ears
				invince_time = 170
				invincible = true;
				//Anti Annoying Sound from falling
				sound_stop(land_sound);
				sound_stop(landing_lag_sound);
				//
			}
			#endregion //Keep players still
			
			if (attack_pressed) && get_gameplay_time() >= 120 {
				end_match(player);
			}
		}
	break;
	#endregion
	#region //Title Screen
	case "title_screen":
		pause_menu();
		/*
		if get_gameplay_time() == 180 {
			ror_state("game_start");
		}
		*/
		//updates
		var _start_play = false;
		var _skip_items = false;
		if (get_gameplay_time() >= 15) {
			with oPlayer {
				#region //Keep players still
				if (get_gameplay_time() >= 120) { //Round Start
					if (state != PS_PRATLAND) {
						ror_previous_damage = 0;
						set_player_damage(player, 0)
						was_parried = true;
						parry_lag = 175; //170 when state_timer = 0;
						set_state(PS_PRATLAND);
						visible = true;
					}
					state_timer = 5; //5 is to make some characters not kill my ears
					invince_time = 170
					invincible = true;
					//Anti Annoying Sound from falling
					sound_stop(land_sound);
					sound_stop(landing_lag_sound);
					//
				}
				#endregion //Keep players still
				
				//Player Stuff
				if (temp_level == 0) {
					var _title_array = [];
					switch(obj_stage_main.ror_title_depth) {
						case 0:	
							_title_array = obj_stage_main.ror_title_menu;
						break;	
						case 1: //Gamemode
							_title_array = obj_stage_main.ror_gamemodes;
							if (special_pressed || shield_pressed) {
								obj_stage_main.game_paused = false;
								obj_stage_main.ror_patch_note_show = false;
								obj_stage_main.ror_title_option = obj_stage_main.ror_title_prev_option;
								obj_stage_main.ror_title_depth = 0;
								obj_stage_main.ror_patch_note_scroll = 0;
								sound_play(asset_get("mfx_back"));
								clear_button_buffer(PC_SPECIAL_PRESSED);
								clear_button_buffer(PC_SHIELD_PRESSED);
							}
						break;
						case -1: //Notes
						default:
							if array_length(obj_stage_main.ror_patch_note_show_array) {
								//ror_patch_note_scroll
								if (up_pressed ^^ down_pressed) {
									obj_stage_main.ror_patch_note_scroll += up_pressed ? -1 : 1;
									if obj_stage_main.ror_patch_note_scroll >= array_length(obj_stage_main.ror_patch_note_show_array) {
										obj_stage_main.ror_patch_note_scroll = 0;
									} else if (obj_stage_main.ror_patch_note_scroll < 0) {
										obj_stage_main.ror_patch_note_scroll = array_length(obj_stage_main.ror_patch_note_show_array) - 1;
									}
									sound_play(asset_get("mfx_forward"));
									clear_button_buffer(PC_UP_HARD_PRESSED);
									clear_button_buffer(PC_DOWN_HARD_PRESSED);
								}
							}
							//
							_title_array = [];
						break;
					}
					//print([obj_stage_main.ror_title_depth, _title_array])
					#region //Controls
					if array_length(_title_array) && !obj_stage_main.game_paused {
						if (up_pressed ^^ down_pressed) {
							obj_stage_main.ror_title_option += up_pressed ? -1 : 1;
							if (obj_stage_main.ror_title_option > array_length(_title_array) - 1) {
								obj_stage_main.ror_title_option = 0;
							} else if (obj_stage_main.ror_title_option < 0) {
								obj_stage_main.ror_title_option = array_length(_title_array) - 1;
							}
							sound_play(asset_get("mfx_forward"));
							clear_button_buffer(PC_UP_HARD_PRESSED);
							clear_button_buffer(PC_DOWN_HARD_PRESSED);
						}
						
						if (attack_pressed) {						
							switch(_title_array[obj_stage_main.ror_title_option, 0]) {
								case "Skip":
									with obj_stage_main {
										ror_state("loading");
									}
								break;
								case "Play Rogue":
									_start_play = true;
									sound_play(asset_get("mfx_confirm"));
									//									
									reset_item_pools();
								break;
								case "Gamemode Selection":
									sound_play(asset_get("mfx_forward"));
									obj_stage_main.ror_title_depth = 1;
								break;
								//Gamemodes
									case "Exit":
										obj_stage_main.game_paused = false;
										obj_stage_main.ror_patch_note_show = false;
										obj_stage_main.ror_title_option = obj_stage_main.ror_title_prev_option;
										obj_stage_main.ror_title_depth = 0;
										obj_stage_main.ror_patch_note_scroll = 0;
										sound_play(asset_get("mfx_back"));
									break;
									case "5x No Limit":
										_start_play = true;
										sound_play(asset_get("mfx_confirm"));
										with obj_stage_main {
											item_multi = true;
											no_limits = true;
											//
											menu_options.mode_multi = ["5x Item Multiplier", item_multi ? "On" : "Off", "When this is Enabled, Players will get 5 copies of an Item when they get one."];
											menu_options.mode_no_limit = ["No Limits (Experimental)", no_limits ? "On" : "Off", "When this is Enabled, There are no Max limits to an Item you can choose."];
										}
									break;									
									case "Tis The Season":
										_start_play = true;
										sound_play(asset_get("mfx_confirm"));
										with obj_stage_main {
											//
											ror_tis_the_season = true;
											menu_options.mode_season = ["Jolly Festivities Only", ror_tis_the_season ? "On" : "Off", "Replaces the Item Pool with all Jolly Festivities. 'Gain 3 random items and give random 1 item to every other player'."];
										
											if (round_state == "game_start" || round_state == "title_screen") {
												//choose_amount = ror_tis_the_season ? [1, 1, 1, 1, 1] : [3, 3, 3, 3, 3];
												choices_on_start = ror_tis_the_season ? 1 : 3;
												choices_on_loss = ror_tis_the_season ? 1 : 2;
												choices_on_win = ror_tis_the_season ? 0 : 0;
											}
										}
										//Reset CPUs
										reset_item_pools();
										//
									break;
									case "Creative Mode":
										_start_play = true;
										sound_play(asset_get("mfx_confirm"))
										//
										with obj_stage_main {
											creative_mode_only = true;
											menu_options.mode_creative = ["Creative Mode Only", creative_mode_only ? "On" : "Off", "Replaces All Items with Creative Modes that give Items of the same Rarity."]
										}
										//
										reset_item_pools();
									break;									
									case "Rogue Asylum":
										_start_play = true;
										_skip_items = true;
										sound_play(asset_get("mfx_confirm"))
										//
										with obj_stage_main {
											rogue_insanity = true;
											disable_item_picks = true;
											obj_stage_main.bazaar_count = 0;
											//Particles
											show_particles = false;
											menu_options.light_particle = ["Display Item Particles", "Off", "Disables showing the items chosen each rounds."]
											//
											for (var i = 0; i < array_length(obj_stage_main.main_players); i++) {
												with main_players[i] {
													//Remove Items
													while array_length(ror_items) {
														remove_item(self, 0);
													}
													//
													ror_luck = 0;
													//Give Items
													//Common
													ror_temp_clones = 5;
													generate_item(player, 0);
													//generate_item(player, 0);
													//Rare
													ror_temp_clones = 3;
													generate_item(player, 1);
													//generate_item(player, 1);
													//Epic
													ror_temp_clones = 2;
													generate_item(player, 2);
													//generate_item(player, 2);
													//Legendaries
													ror_temp_clones = 1;
													generate_item(player, 3);
													//generate_item(player, 3);
													//
												}
											}
										}
										//

										//
										reset_item_pools();
									break;
									case "Boss":
										_start_play = true;
										sound_play(asset_get("mfx_confirm"));
										if obj_stage_main.ror_boss_player == -4 {
											with obj_stage_main {
												team_1 = 0;
												team_2 = 0;
												boss_team_pos = [-4, -4, -4, -4, -4];
												//Boss Choice
												var _boss_player = other.player;
												//Team Positioning
												var _team_pos = 0;
												with oPlayer {
													//Main Players
													if "ror_team_orig" in self {
														if _boss_player == player {
															set_player_team(player, 1);
															obj_stage_main.team_1++;
														} else {
															set_player_team(player, 2);
															obj_stage_main.team_2++;
															obj_stage_main.boss_team_pos[player] = _team_pos;	
															_team_pos++;
														}
													}
												}
												//
											}
											obj_stage_main.ror_boss_mode = true;
											obj_stage_main.ror_boss_player = _boss_player;		
											//					
											obj_stage_main.menu_options.mode_boss[1] = _boss_player;
										}
									break;									
									case "CPU Boss":
										with obj_stage_main {
											var _boss_player = -4;
											for (var i = array_length(main_players) - 1; i >= 0; i--) {
												if main_players[i].temp_level != 0 {
													_boss_player = main_players[i].player;
													i = -1;
												}
											}
											//
											if _boss_player != -4 {
												//Confirmation
												_start_play = true;
												sound_play(asset_get("mfx_confirm"));
												//
												team_1 = 0;
												team_2 = 0;
												boss_team_pos = [-4, -4, -4, -4, -4];
												//Team Positioning
												var _team_pos = 0;
												with oPlayer {
													//Main Players
													if "ror_team_orig" in self {
														if _boss_player == player {
															set_player_team(player, 1);
															obj_stage_main.team_1++;
														} else {
															set_player_team(player, 2);
															obj_stage_main.team_2++;
															obj_stage_main.boss_team_pos[player] = _team_pos;	
															_team_pos++;
														}
													}
												}
												//
												ror_boss_mode = true;
												ror_boss_player = _boss_player;		
													
												menu_options.mode_boss[1] = _boss_player;
											} else {
												sound_play(sound_get("no cpu"));
											}
											//
										}
									break;
								//
								case "Advanced Settings":
									obj_stage_main.game_paused = true;
									obj_stage_main.pause_player = player;
									obj_stage_main.ror_title_depth = -1;
								break;
								case "Change Music":
									obj_stage_main.current_music_pack++;
									if obj_stage_main.current_music_pack >= array_length(obj_stage_main.music_packs) {
										obj_stage_main.current_music_pack = 0;
									}
									_option_value = obj_stage_main.music_packs[obj_stage_main.current_music_pack, 0]
									sound_play(asset_get(_option_value = "Off" ? "mfx_back" : "mfx_forward"));
									//
									with obj_stage_main {
										change_music = 30;
										music_fade( 0, .05 );
									}
								break;
								case "Patch Notes":
									obj_stage_main.ror_patch_note_show = true;
									obj_stage_main.ror_patch_note_show_array = obj_stage_main.ror_patch_notes;
									obj_stage_main.ror_title_depth = -1;
								break;
								case "Credits":
									obj_stage_main.ror_patch_note_show = true;
									obj_stage_main.ror_patch_note_show_array = obj_stage_main.ror_credits_page;
									obj_stage_main.ror_title_depth = -1;
								break;
								case "How to Play":
									obj_stage_main.ror_patch_note_show = true;
									obj_stage_main.ror_patch_note_show_array = obj_stage_main.ror_tutorial_page;
									obj_stage_main.ror_title_depth = -1;
								break;
								case "Quit Rogue":
									end_match(player);
								break;
								default:
									sound_play(sound_get("PICK SOMETHING ELSE"));
								break;
							}
							obj_stage_main.ror_title_prev_option = obj_stage_main.ror_title_option;
							if obj_stage_main.ror_title_depth != 0 {
								obj_stage_main.ror_title_option = 0;
							}
							clear_button_buffer(PC_ATTACK_PRESSED);
						}
						#endregion //
					} else {
						if (special_pressed) {
							obj_stage_main.game_paused = false;
							obj_stage_main.ror_patch_note_show = false;
							obj_stage_main.ror_title_option = obj_stage_main.ror_title_prev_option;
							obj_stage_main.ror_title_depth = 0;
							obj_stage_main.ror_patch_note_scroll = 0;
							sound_play(asset_get("mfx_back"));
							clear_button_buffer(PC_SPECIAL_PRESSED);
							clear_button_buffer(PC_SHIELD_PRESSED);
						}
					}
				}
			}	
		}
		#region //Player Spawn Locations
		/*
		with oPlayer {
			if obj_stage_main.ror_boss_mode {
				if (obj_stage_main.ror_boss_player == player) {
					x = get_marker_x(53);
					y = get_marker_y(53);
					spr_dir = -1;
				} else {
					x = get_marker_x(50 + obj_stage_main.boss_team_pos[player]);
					y = get_marker_y(50 + obj_stage_main.boss_team_pos[player]);
					spr_dir = 1;
				}
			} else {
				x = ror_x;
				y = ror_y;
				spr_dir = ror_spr_dir;
			}
		}
		*/
		#endregion
		
		
		//
		if (_start_play) {
			reset_item_pools();
			
			//ror_state("game_over");
			
			//REMEMBER TO UNCOMMENT THIS
			ror_state(_skip_items ? "loading" : "game_start");
			//ror_state("test");			
		}
	break;
	#endregion
	#region //Item Choice
	case "game_start":
		if (get_gameplay_time() == 20) {
			//Create Pools
			for (var i = 0; i < array_length(main_players); i++) {					
				item_select[i + 1] = create_item_pool(i + 1, main_players[i].ror_luck, "normal");
			}
		}
		if (get_gameplay_time() <= 10) {
			exit;
		}
		if get_gameplay_time() == 25 {
			ror_state(ror_css_bug ? "css_bug" : "title_screen");
			//ror_state("loading");
		}
	case "choose_item":
		pause_menu();
		
		choose_timer--;
	
		with oPlayer {	
			//if (taunt_down && !_is_online) {
			if (taunt_down && !_is_online) {
				obj_stage_main.choose_timer = obj_stage_main.choose_timer_seconds * 60;
			}
			#region Taunt Menu Stats Stuff (Copy Between Taunt Menu)
			if taunt_down {
				//
				if taunt_pressed {
					with oPlayer {
						//In bounds
						ror_taunt_item_array = [];
						for (var i = 0; i < array_length(ror_items); i++) {
							var _name = ror_items[i].name;
							//
							var _push_value = [ror_items[i], 1];
							while (i + 1 < array_length(ror_items) && ror_items[i + 1].name == _name) {
								i++;
								_push_value[1]++;
							}
							array_push(ror_taunt_item_array, _push_value);
						}
					}
					//
				}
				//
				//Item Inventory
				if (obj_stage_main.stat_pages[obj_stage_main.stats_page_num[_is_online ? player : 1]] == "Item Inventory") && array_length(ror_taunt_item_array) {
					//
					//var _max = array_length(ror_taunt_item_array);
					//SFX
					if up_pressed || down_pressed { 
						if (player == obj_stage_main.device_player || !_is_online) {
							sound_play(asset_get("mfx_forward"));
						}
					}
					//Control
					//Cursor Pos
					if up_pressed { ror_up_hold_timer = 0 } else { if up_down ror_up_hold_timer++ };
					if down_pressed { ror_down_hold_timer = 0 } else { if down_down ror_down_hold_timer++ };
					//
					var _up = up_pressed || (!up_pressed && (up_down && ror_up_hold_timer && ror_up_hold_timer % ror_hold_buffer == 0));
					var _down = down_pressed || (!down_pressed && (down_down && ror_down_hold_timer && ror_down_hold_timer % ror_hold_buffer == 0));
					//	
					//print(_up)
					//
					if (_up) {
						//
						ror_taunt_item_value--;
						/*
						if ror_taunt_item_value < 0 {
							ror_taunt_item_value = _max - 1;
						}
						*/
						//
						clear_button_buffer(PC_UP_HARD_PRESSED);
					}					
					if (_down) {
						//
						ror_taunt_item_value++;
						/*
						if ror_taunt_item_value >= _max {
							ror_taunt_item_value = 0;
						}
						*/
						//
						clear_button_buffer(PC_DOWN_HARD_PRESSED);
					}
				}
				//
				//
				if (right_pressed) {
					//
					if (player == obj_stage_main.device_player || !_is_online) {
						sound_play(asset_get("mfx_forward"));
					}
					//
					obj_stage_main.stats_page_num[_is_online ? player : 1]++;
					clear_button_buffer(PC_RIGHT_HARD_PRESSED);
					if (obj_stage_main.stats_page_num[_is_online ? player : 1] >= array_length(obj_stage_main.stat_pages)) {
						obj_stage_main.stats_page_num[_is_online ? player : 1] = 0;
					}
				}
				//
				if (left_pressed) {
					//
					if (player == obj_stage_main.device_player || !_is_online) {
						sound_play(asset_get("mfx_forward"));
					}
					//
					obj_stage_main.stats_page_num[_is_online ? player : 1]--;
					clear_button_buffer(PC_LEFT_HARD_PRESSED);
					if (obj_stage_main.stats_page_num[_is_online ? player : 1] < 0) {
						obj_stage_main.stats_page_num[_is_online ? player : 1] = array_length(obj_stage_main.stat_pages) - 1;
					}
				}
				//Attack Info
				if (obj_stage_main.stat_pages[obj_stage_main.stats_page_num[_is_online ? player : 1]] == "Attack Info") {
					//
					//Cursor Pos
					if up_pressed { ror_up_hold_timer = 0 } else { if up_down ror_up_hold_timer++ };
					if down_pressed { ror_down_hold_timer = 0 } else { if down_down ror_down_hold_timer++ };
					//
					var _up = up_pressed || (!up_pressed && (up_down && ror_up_hold_timer && ror_up_hold_timer % ror_hold_buffer == 0));
					var _down = down_pressed || (!down_pressed && (down_down && ror_down_hold_timer && ror_down_hold_timer % ror_hold_buffer == 0));
					//	
					//
					if (_up) {
						//
						if (player == obj_stage_main.device_player || !_is_online) {
							sound_play(asset_get("mfx_forward"));
						}
						//
						obj_stage_main.ror_taunt_attack_display[player]--;
						clear_button_buffer(PC_UP_HARD_PRESSED);
						if (obj_stage_main.ror_taunt_attack_display[player] < 0) {
							obj_stage_main.ror_taunt_attack_display[player] = array_length(ror_valid_attack_array) - 1;
						}
					}
					//
					if (_down) {
						//
						if (player == obj_stage_main.device_player || !_is_online) {
							sound_play(asset_get("mfx_forward"));
						}
						//
						obj_stage_main.ror_taunt_attack_display[player]++;
						clear_button_buffer(PC_DOWN_HARD_PRESSED);
						if (obj_stage_main.ror_taunt_attack_display[player] >= array_length(ror_valid_attack_array)) {
							obj_stage_main.ror_taunt_attack_display[player] = 0;
						}
					}
				}
				//				
			}	
			#endregion
	
			#region //Egg Cracking
			if ror_cracked_eggs {
				//print("Egg Cracked")
				//
				var _roll = ror_rng_call(player, 100) + 1;				
				//generate_item(player, ror_card_belt - 1);
				var _rates = luck_math(ror_luck);
				var _common_rate = _rates[0];
				var _rare_rate = _rates[1];
				var _epic_rate = _rates[2];
				var _legend_rate = _rates[3];
				//		
				var _egg_array = 2;
				//
				if obj_stage_main.egg_only {
					_egg_array = ror_rng_call(player + get_gameplay_time(), 4);
				}
				//
				generate_item(player, _egg_array);
				//
				ror_cracked_eggs--;
				//
				set_ror_variables()
			}
			#endregion
			
			#region //Player Spawn Locations
			if obj_stage_main.ror_boss_mode {
				if (obj_stage_main.ror_boss_player == player) {
					x = get_marker_x(53);
					y = get_marker_y(53);
					spr_dir = -1;
				} else {
					x = get_marker_x(50 + obj_stage_main.boss_team_pos[player]);
					y = get_marker_y(50 + obj_stage_main.boss_team_pos[player]);
					spr_dir = 1;
				}
			} else {
				x = ror_x;
				y = ror_y;
				spr_dir = ror_spr_dir;
			}
			#endregion
			
			
			if (get_gameplay_time() >= 120) { //Round Start
				if (state != PS_PRATLAND) {
					ror_previous_damage = 0;
					set_player_damage(player, 0)
					was_parried = true;
					parry_lag = 175; //170 when state_timer = 0;
					set_state(PS_PRATLAND);
					visible = true;
				}
				state_timer = 5; //5 is to make some characters not kill my ears
				invince_time = 170
				invincible = true;
				//Anti Annoying Sound from falling
				sound_stop(land_sound);
				sound_stop(landing_lag_sound);
				//
			}

			//Cursor
			//if (obj_stage_main.last_alive != self && !obj_stage_main.ready_players[player]) && get_gameplay_time() >= 120 && (obj_stage_main.round_state_timer >= 60) {
			//Teams Mode
			//if obj_stage_main.last_alive != -4 && (get_player_team(obj_stage_main.last_alive) != get_player_team(player) && !obj_stage_main.ready_players[player]) && get_gameplay_time() >= 120 && (obj_stage_main.round_state_timer >= 60) {
			//if !obj_stage_main.ready_players[player] && get_gameplay_time() >= 120 && (obj_stage_main.round_state_timer >= 60) {
			if (
					//obj_stage_main.winner_chooses || //Gamemode
					obj_stage_main.choices_on_win || //Gamemode
					obj_stage_main.last_alive == -4 || //First Round
					get_player_team(obj_stage_main.last_alive.player) != get_player_team(player) //Not winner of the round
				)	&& (get_gameplay_time() >= 120 && obj_stage_main.round_state_timer >= 60) {
				#region //Practice Mode
				if (obj_stage_main.practice_mode || obj_stage_main.artifact_of_command) {
					if (shield_down && !obj_stage_main.game_paused) {
						obj_stage_main.choose_timer = obj_stage_main.choose_timer_seconds * 60;
						
						var _min_player = 1;
						var _max_player = 4;
						if (obj_stage_main.artifact_of_command) {
							_min_player = player;
							_max_player = player;
						}
						//Up
						if (up_pressed) {
							clear_button_buffer(PC_UP_HARD_PRESSED)
							sound_play(asset_get("mfx_forward"));
							//Common
							switch(obj_stage_main.cursor_pos[player]) {
								case 0:
								case 4:
									obj_stage_main.prac_common[player]++;
									if (obj_stage_main.prac_common[player] >= array_length(obj_stage_main.items_commons)) {
										obj_stage_main.prac_common[player] = 0;
									}
									for (var i = _min_player; i <= _max_player; i++) {
										obj_stage_main.item_select[i, obj_stage_main.cursor_pos[player]] = obj_stage_main.items_commons[obj_stage_main.prac_common[player]];
									}
								break;
								//Rares
								case 1:
									obj_stage_main.prac_rare[player]++;
									if (obj_stage_main.prac_rare[player] >= array_length(obj_stage_main.items_rares)) {
										obj_stage_main.prac_rare[player] = 0;
									}
									for (var i = _min_player; i <= _max_player; i++) {
										obj_stage_main.item_select[i, obj_stage_main.cursor_pos[player]] = obj_stage_main.items_rares[obj_stage_main.prac_rare[player]];
									}
								break;
								//Epics
								case 2:
									obj_stage_main.prac_epic[player]++;
									if (obj_stage_main.prac_epic[player] >= array_length(obj_stage_main.items_epics)) {
										obj_stage_main.prac_epic[player] = 0;
									}
									for (var i = _min_player; i <= _max_player; i++) {
										obj_stage_main.item_select[i, obj_stage_main.cursor_pos[player]] = obj_stage_main.items_epics[obj_stage_main.prac_epic[player]];
									}
								break;
								//Legendaries
								case 3:
									obj_stage_main.prac_legend[player]++;
									if (obj_stage_main.prac_legend[player] >= array_length(obj_stage_main.items_legends)) {
										obj_stage_main.prac_legend[player] = 0;
									}
									for (var i = _min_player; i <= _max_player; i++) {
										obj_stage_main.item_select[i, obj_stage_main.cursor_pos[player]] = obj_stage_main.items_legends[obj_stage_main.prac_legend[player]];
									}
								break;
							}
						}	
						//Down
						if (down_pressed) {
							clear_button_buffer(PC_DOWN_HARD_PRESSED)
							sound_play(asset_get("mfx_forward"));
							//Common
							switch(obj_stage_main.cursor_pos[player]) {
								case 0:
								case 4:
									obj_stage_main.prac_common[player]--;
									if (obj_stage_main.prac_common[player] < 0) {
										obj_stage_main.prac_common[player] = array_length(obj_stage_main.items_commons) - 1;
									}
									for (var i = _min_player; i <= _max_player; i++) {
										obj_stage_main.item_select[i, obj_stage_main.cursor_pos[player]] = obj_stage_main.items_commons[obj_stage_main.prac_common[player]];
									}
								break;
								//Rares
								case 1:
									obj_stage_main.prac_rare[player]--;
									if (obj_stage_main.prac_rare[player] < 0) {
										obj_stage_main.prac_rare[player] = array_length(obj_stage_main.items_rares) - 1;
									}
									for (var i = _min_player; i <= _max_player; i++) {
										obj_stage_main.item_select[i, obj_stage_main.cursor_pos[player]] = obj_stage_main.items_rares[obj_stage_main.prac_rare[player]];
									}
								break;
								//Epics
								case 2:
									obj_stage_main.prac_epic[player]--;
									if (obj_stage_main.prac_epic[player] < 0) {
										obj_stage_main.prac_epic[player] = array_length(obj_stage_main.items_epics) - 1;
									}
									for (var i = _min_player; i <= _max_player; i++) {
										obj_stage_main.item_select[i, obj_stage_main.cursor_pos[player]] = obj_stage_main.items_epics[obj_stage_main.prac_epic[player]];
									}
								break;
								//Legendaries
								case 3:
									obj_stage_main.prac_legend[player]--;
									if (obj_stage_main.prac_legend[player] < 0) {
										obj_stage_main.prac_legend[player] = array_length(obj_stage_main.items_legends) - 1;
									}
									for (var i = _min_player; i <= _max_player; i++) {
										obj_stage_main.item_select[i, obj_stage_main.cursor_pos[player]] = obj_stage_main.items_legends[obj_stage_main.prac_legend[player]];
									}
								break;
							}
						}
					}
				}
				#endregion
				if !(ror_clone || temp_level != 0) && check_choice_count(player) {
					#region //Item Selection
					if !(taunt_down || obj_stage_main.game_paused) { //Disabled during taunt menu
						if (left_pressed) { //Left
							clear_button_buffer(PC_LEFT_HARD_PRESSED)
							obj_stage_main.cursor_pos[player]--;
							if (player == obj_stage_main.device_player || !_is_online) {
								sound_play(asset_get("mfx_forward"));
							}
							if (obj_stage_main.cursor_pos[player] < 0) {
								obj_stage_main.cursor_pos[player] = 4;
							}
						}
						if (right_pressed) { //Right
							clear_button_buffer(PC_RIGHT_HARD_PRESSED)
							obj_stage_main.cursor_pos[player]++;
							if (player == obj_stage_main.device_player || !_is_online) {					
								sound_play(asset_get("mfx_forward"));
							}
							if (obj_stage_main.cursor_pos[player] > 4) {
								obj_stage_main.cursor_pos[player] = 0;
							}
						}
						if (attack_pressed) { //Selection
							clear_button_buffer(PC_ATTACK_PRESSED);
							if (obj_stage_main.item_choice[player, obj_stage_main.cursor_pos[player]] == false && !card_count(player)) {
								obj_stage_main.item_choice[player, obj_stage_main.cursor_pos[player]] = true;
								if (player == obj_stage_main.device_player || !_is_online) {	
									sound_play(asset_get("mfx_confirm"));
								}
							} else {
								//sound_play(sound_get("error_sfx"));
								obj_stage_main.item_choice[player, obj_stage_main.cursor_pos[player]] = false;
								if (player == obj_stage_main.device_player || !_is_online) {	
									sound_play(asset_get("mfx_back"));
								}
							}

							//Ready?
							obj_stage_main.ready_players[player] = card_count(player) ? true : false;
						}
					}
					//print(obj_stage_main.ready_players)
					//print(special_down)
					if (special_down && !obj_stage_main.game_paused) { //Cancel
						if !(ror_cancel) && !obj_stage_main.ready_players[player] {
							clear_button_buffer(PC_SPECIAL_PRESSED)
							sound_play(asset_get("mfx_confirm"));
							obj_stage_main.ready_players[player] = true;
						} else {
							ror_cancel--;
						}
					} else {
						ror_cancel = ror_cancel_max;
					}
					#endregion
					#region //Item Reroll
					if (!taunt_down && jump_pressed) { //Rerolls
						//print(["Reroll?", ror_rerolls])
						if !obj_stage_main.ready_players[player] {
							clear_button_buffer(PC_JUMP_PRESSED)
							if (ror_rerolls && (!ror_threw_game || obj_stage_main.disable_throws)) {
								//
								obj_stage_main.choose_timer = obj_stage_main.choose_timer_seconds * 60;
								//
								ror_rerolls--;
								sound_play(asset_get("sfx_forsburn_cape_swipe"));
								var _num = player;
								var _luck = ror_luck;
							
								//Normal Rerolls
								with obj_stage_main {
									item_select[_num] = create_item_pool(_num, _luck, "reroll");
								}
							} else {
								sound_play(sound_get("I have no rerolls and I must gamble"))
							}
						} 
					}
					#endregion
				}
				#region //CPU Item Choice
				if (temp_level != 0 && !ror_clone) {
					if !(obj_stage_main.ready_players[player]) {	
						print("CPU is Ready")
						//for (var i = 0; i < obj_stage_main.choose_amount[player]; i++) {
						for (var i = 0; i < check_choice_count(player); i++) {
							obj_stage_main.item_choice[player, i] = true;
						}
						obj_stage_main.ready_players[player] = true;
					}
				}
				#endregion
			}
		}
		var _ready = true
		//print("Ready Players: " + string(obj_stage_main.ready_players));
		for (var i = 1; i <= 4; i++) {
			if (!obj_stage_main.ready_players[i]) {
				_ready = false;
			}
		}
		if !obj_stage_main.game_paused && ((_ready) || !(choose_timer)) {
			var _curr_counts = [];
			/*
			for (var i = 0; i < array_length(choose_amount); i++) {
				array_push(_curr_counts, choose_amount[i]);
			}		
			*/
			for (var i = 0; i < array_length(choose_amount); i++) {
				array_push(_curr_counts, check_choice_count(i));
			}
			//
			give_buddies();
			if (frontload_items && frontload_count) {
				frontload_count--;
				//
				for (var i = 0; i < array_length(main_players); i++) {					
					item_select[i + 1] = create_item_pool(i + 1, main_players[i].ror_luck, "normal");
				}
				//
				ror_state("choose_item");
			} else {
				frontload_count = -4;
				ror_state("loading", _curr_counts);
			}
		}
	break;
	case "countdown":
		if (round_reset_timer) {
			round_reset_timer--;
		} else {
			round_reset_timer = round_reset_timer_max;
			ror_state("loading")
		}
	break;
	#endregion

	#region //Creative
	case "creative":
		with oPlayer {
			if (get_gameplay_time() >= 120) { //Round Start
				//
				x = ror_x;
				y = ror_y;
				spr_dir = ror_spr_dir;
				//Player Control Stuff
				visible = false;
				if (state != PS_PRATLAND) {
					ror_previous_damage = 0;
					set_player_damage(player, 0);
					was_parried = true;
					parry_lag = 175; //170 when state_timer = 0;
					set_state(PS_PRATLAND);				
				} 
				state_timer = 5; //5 is to make some characters not kill my ears
				invince_time = 170
				invincible = true;
				//Anti Annoying Sound from falling
				sound_stop(land_sound);
				sound_stop(landing_lag_sound);
				//
				
				//
			}
		}
		
		with ror_creative_player {
			//ror_creative_pos++;
			//Cursor Pos
			if left_pressed { ror_left_hold_timer = 0 } else { if left_down ror_left_hold_timer++ };
			if right_pressed { ror_right_hold_timer = 0 } else { if right_down ror_right_hold_timer++ };
			if up_pressed { ror_up_hold_timer = 0 } else { if up_down ror_up_hold_timer++ };
			if down_pressed { ror_down_hold_timer = 0 } else { if down_down ror_down_hold_timer++ };
			//
			var _left = left_pressed || (!left_pressed && (left_down && ror_left_hold_timer && ror_left_hold_timer % ror_hold_buffer == 0));
			var _right = right_pressed || (!right_pressed && (right_down && ror_right_hold_timer && ror_right_hold_timer % ror_hold_buffer == 0));
			var _up = up_pressed || (!up_pressed && (up_down && ror_up_hold_timer && ror_up_hold_timer % ror_hold_buffer == 0));
			var _down = down_pressed || (!down_pressed && (down_down && ror_down_hold_timer && ror_down_hold_timer % ror_hold_buffer == 0));
			//			
			
			//if (left_pressed ^^ right_pressed) {
			if (_left ^^ _right) {
				obj_stage_main.ror_creative_pos += (_left ? -1 : 1);
				sound_play(asset_get("mfx_forward"));
				clear_button_buffer(PC_LEFT_STICK_PRESSED);
				clear_button_buffer(PC_RIGHT_STICK_PRESSED);
			}			
			//Cursor Pos
			//if (up_pressed ^^ down_pressed) {
			if (_up ^^ _down) {
				obj_stage_main.ror_creative_pos += (_up ? -1 : 1) * (obj_stage_main.ror_creative_size);
				sound_play(asset_get("mfx_forward"));
				clear_button_buffer(PC_UP_STICK_PRESSED);
				clear_button_buffer(PC_DOWN_STICK_PRESSED);
			}
			
			//Confirmation
			//print(obj_stage_main.ror_creative_pos);
			if (attack_pressed || temp_level != 0) {
				clear_button_buffer(PC_ATTACK_PRESSED);
				var _is_succesful = false;
				var _cursor_pos = obj_stage_main.ror_creative_pos;
				var _array = obj_stage_main.ror_creative_array;			
				_cursor_pos = _cursor_pos >= 0 ? _cursor_pos % array_length(_array) : array_length(_array) + (_cursor_pos % array_length(_array)); //There must be a better way
				//print([obj_stage_main.ror_creative_pos, _cursor_pos, array_length(_array)])
				//print(obj_stage_main.ror_creative_array[_cursor_pos].name);
				var _item = obj_stage_main.ror_creative_array[_cursor_pos];
				var _item_count = 0;
				for (var i = 0; i < array_length(ror_items); i++) {
					if (ror_items[i].name == _item.name) {
						_item_count++;
					}
				}
				if (_item_count < _item.max) || (obj_stage_main.no_limits || ror_limitless_max) {					
					_is_succesful = true;
				}				
				if _is_succesful {
					sound_play(asset_get("mfx_confirm"));
					card_choice(_item);
					obj_stage_main.ror_choose_count--;
					with obj_stage_main {
						if ror_choose_count == 0 {
							ror_state("loading");
						}
					}
				} else {
					sound_play(sound_get("PLAY ERROR"));
				}				
			}
		}
	break;
	#endregion //Creative
	
	#region //Reconstruct
	case "reconstruct":
		var _layout = [];
		with oPlayer {
			if (get_gameplay_time() >= 120) { //Round Start
				//
				x = ror_x;
				y = ror_y;
				spr_dir = ror_spr_dir;
				//			
			
				if (state != PS_PRATLAND) {
					ror_previous_damage = 0;
					set_player_damage(player, 0);
					was_parried = true;
					parry_lag = 175; //170 when state_timer = 0;
					set_state(PS_PRATLAND);				
				} else {
					state_timer--;
				}
				
				if (obj_stage_main.round_state_timer >= 30 && obj_stage_main.ror_reconstruct_player == floor(self)) {
					if (up_pressed || right_pressed) ^^ (left_pressed || down_pressed) {
						clear_button_buffer(PC_RIGHT_STICK_PRESSED);
						clear_button_buffer(PC_LEFT_STICK_PRESSED);
						var _left = left_pressed || down_pressed;
						var _vert = (up_pressed || down_pressed) ? -5 : 1;
						with obj_stage_main {	
							switch(ror_reconstruct_step) {
								case 0:
									if (plat_sides_pos == "Off") {
										if (_vert == -5) {
											plat_sides_pos = _left ? 7 : 2;
										} else {
											plat_sides_pos = _left ? 0 : 9;
										}
									} else {
										plat_sides_pos += _left ? 1 * _vert: -1 * _vert;
										if (plat_sides_pos > 9) || (plat_sides_pos < 0) {
											plat_sides_pos = "Off";
										}
									}
									menu_options.stage_side[2] = plat_sides_pos;
								break;								
								case 1:
									if (plat_center_pos == "Off") {
										plat_center_pos = _left ? 0 : 1;
									} else {
										plat_center_pos += _left ? 1 : -1;
										if (plat_center_pos > 1) || (plat_center_pos < 0) {
											plat_center_pos = "Off";
										}
									}
									menu_options.stage_center[2] = plat_center_pos;
								break;								
								case 2:
									stage_element += _left ? 1 : -1;
									if (stage_element < 0) {
										stage_element = practice_mode ? array_length(stage_art) - 1 : array_length(stage_art) - 2;
									}
									if (stage_element >= array_length(stage_art) || (stage_art[stage_element] == "Finale" && !practice_mode)) { //You can't go to Finale unless it's actually Finale (outside of practice mode)
										stage_element = 0;
									}
									menu_options.stage_stage_art[2] = stage_art[stage_element];
								break;
							}							
							//
							change_stage_layout(plat_sides_pos, plat_center_pos, stage_element)
							sound_play(asset_get("mfx_forward"));
						}
					}
					
					if (attack_pressed || temp_level != 0) {
						ror_change_stage = 0;
						//obj_stage_main.ror_stage_chosen = true;
						sound_play(asset_get("mfx_confirm"));
						clear_button_buffer(PC_ATTACK_PRESSED);
						//Final Confirmation
						with obj_stage_main {
							ror_reconstruct_step++;
							if ror_reconstruct_step >= 3 {
								ror_stage_chosen = true;
							}
						}
					}
					
				}				
			}			
		}
		if ror_stage_chosen {
			ror_stage_chosen = false;
			//#define change_stage_layout
			change_stage_layout(plat_sides_pos, plat_center_pos, stage_element);
			ror_state("loading");
		}
	break;
	#endregion

	#region //Shenron
	case "shenron":
		with oPlayer {
			if (get_gameplay_time() >= 120) { //Round Start
				if (state != PS_PRATLAND) {
					ror_previous_damage = 0;
					set_player_damage(player, 0);
					was_parried = true;
					parry_lag = 175; //170 when state_timer = 0;
					set_state(PS_PRATLAND);				
				}
				//print([obj_stage_main.ror_shenron_player, self])
				if (obj_stage_main.ror_shenron_player == floor(self)) {
					visible = true;
					x = get_marker_x(96);
					y = get_marker_y(96);
					//
					if (obj_stage_main.ror_wish_chosen) {
						with obj_stage_main {
							if (round_state_timer >= 180) {
								//with oPlayer {
								//	visible = true;
								//}
								ror_state("loading");
							}
						}
					} else {
						//
						var _sfx = obj_stage_main.ror_shenron_choice;
						
						if (down_down ^^ up_down) {
							obj_stage_main.ror_shenron_choice = down_down ? 2 : 6;
						}
						if (left_down ^^ right_down) {
							if (left_down) {
								obj_stage_main.ror_shenron_choice = 0;
								if (down_down ^^ up_down) {
									obj_stage_main.ror_shenron_choice = down_down ? 1 : 7;
								}
							}
							if (right_down) {
								obj_stage_main.ror_shenron_choice = 4;
								if (down_down ^^ up_down) {
									obj_stage_main.ror_shenron_choice = down_down ? 3 : 5;
								}
							}
						}

						
						//print([_sfx, obj_stage_main.ror_shenron_choice])
						if (obj_stage_main.round_state_timer >= 180) {
							if _sfx != obj_stage_main.ror_shenron_choice {
								sound_play(asset_get("mfx_forward"));
							}		
						}						
						//
						
						if (attack_pressed || temp_level != 0) {
							if (obj_stage_main.round_state_timer >= 180) {
								switch(obj_stage_main.ror_shenron_wishes[obj_stage_main.ror_shenron_choice, 0]) {
									case "Endless Wealth": //10 of each Crazy Luck
										for (var i = 0; i < 15; i++) {
											card_choice(obj_stage_main.card_common_luck);
											card_choice(obj_stage_main.card_rare_luck);
											card_choice(obj_stage_main.card_epic_luck);
											card_choice(obj_stage_main.card_legend_luck);
										}
									break;
									case "Ultimate Power": //2x Size and 3 Armor ()
										ror_card_mega += 2;
										ror_card_toughguy += 3;
									break;
									case "Limitless Potential":	//Items have No Max Limit
										ror_limitless_max = true;
										//obj_stage_main.choose_amount[player] = 999;
									break;
									case "More Time": //Increse the Points to Win by 10
										obj_stage_main.points_to_win += 10;
									break;						
									case "Rewind Time": //Reset Wins to 0
										//obj_stage_main.points_to_win += 10;
										with oPlayer {
											ror_points = 0;
										}
									break;
									case "Extra Life": //When you would die respawn with invincibility
										ror_extra_life = true;
									break;					
									case "Better Bazaars": //When you would die respawn with invincibility
										//ror_extra_life = true;
										obj_stage_main.bazaar_count = 3;
										obj_stage_main.ror_better_bazaar++;
										obj_stage_main.force_bazaar = true;
									break;
									case "Quick Finale":
										with oPlayer {
											ror_points = obj_stage_main.points_to_win - 1;
										}
									break;
									default:
									
									break;
								}
								sound_play(asset_get("mfx_confirm"));
								ror_dragon_ball_count -= 7;
								with obj_stage_main {
									ror_wish_chosen = true;
									round_state_timer = 0;
								}
							} else {
								sound_play(asset_get("mfx_back"));
							}
							clear_button_buffer(PC_ATTACK_PRESSED);
						}
					}
					//
				} else {
					visible = false;
				}
				state_timer = 5; //5 is to make some characters not kill my ears
				invince_time = 170
				invincible = true;
				//Anti Annoying Sound from falling
				sound_stop(land_sound);
				sound_stop(landing_lag_sound);
				//
			}
		}
	break;
	#endregion
}
round_state_timer++


//Card Stuff
//user_event(10)

//Testing Meter
/*
if practice_mode {
	with oPlayer {
		if taunt_pressed {
			ror_install_meter = ror_install_meter_max;
			clear_button_buffer(PC_TAUNT_PRESSED);
		}
	}
}
*/
//

#region //Printer
with oPlayer {
	if ror_print_item != -4 {
		var _rarity = ror_print_item.rarity 
		var _name = ror_print_item.name 
		var _removable_items = [];
		var _force_luck = -4;
		var _max_item_count = 0;
		for (var i = 0; i < array_length(ror_items); i++) {
			if (ror_items[i].name != _name && ror_items[i].rarity == _rarity) {	
				//Skip List
				if !("printer_safe" in ror_items[i] && !ror_items[i].printer_safe) {
					array_push(_removable_items, [ror_items[i], i]);
				} 	
				//Prioritize Crazy Luck
				if (
					ror_items[i].name == "Crazy Luck" ||
					ror_items[i].name == "Crazy Luck+" ||
					ror_items[i].name == "Crazy Luck++" ||
					ror_items[i].name == "Crazy Luck+++"
				) {
					_force_luck = array_length(_removable_items) - 1;
				}
			}
			//Cannot go over Max
			if (ror_items[i].name == _name) {
				_max_item_count++
			}
		}
				
		if (array_length(_removable_items) && (_max_item_count < ror_print_item.max || obj_stage_main.no_limits || ror_limitless_max)) {
			var _rng = _force_luck != -4 ? _force_luck : ror_rng_call(10 + player * 5, array_length(_removable_items));
			var _removed_item =  _removable_items[_rng, 1];
			
			remove_item(self, _removed_item);
				
			card_choice(ror_print_item);		
		}		
		ror_print_item = -4;
	}	
}
#endregion
/*
//End of Game Stats
with oPlayer {
	print(ror_final);
}
*/
//Stat Edits
with oPlayer {
	//Item Removals
	if (ror_item_removed >= 0) {
		set_hitbox_changes(ror_item_removed);
		ror_item_removed--;
	}
	//
	
	ror_display_stats = [
		["Weight", knockback_adj],
		["Gravity", gravity_speed],
		["Hitstun Gravity", hitstun_grav],
		["Air Friction", air_friction],
		["Walk Speed", walk_speed],
		["Dash Speed", dash_speed],
		["Jump Height", jump_speed],
		["Double Jump Height", djump_speed],
		["Double Jump Count", max_djumps],
		["Air Speed", air_max_speed],
		["(Fast) Fall Speed", string(max_fall) + " (" + string(fast_fall) + ")"],
		["Roll Length", roll_forward_max],
		["Air Dodge Length", air_dodge_speed],
		["Airdodge Count", 0 + ror_card_airdodge_plus + 1],
		["Parry Length", 8 + (ror_card_parry_masher * 4)],
		["Pratfall", prat_land_time]
	];
	
	//Offsets
	item_display_offset = 0;
}

#region Little Buddies
#define create_little_buddy(_player, _info, _dist) {
	//print("wittle baby boy")
	if (obj_stage_main.light_weight_mode != "Off") {
		return -4;
	}
	var buddy = instance_create(_player.x, _player.y, "obj_stage_article", 2);
	buddy.buddy_owner = _player;
	buddy.x = _player.x
	buddy.y = _player.y;
	buddy.sprite_index = _info.sprite;
	buddy.image_index = _info.icon;
	buddy.x_goal = _dist;
	return buddy;
}
#endregion

#define ror_state() {
	obj_stage_main.game_paused = false;
	//Music Reset
	if round_state == "break_round" {
		change_music = 30;
		music_fade( 0, .05 )
	}
	
	//Dragoon Reset
	for (var i = 0; i < array_length(dragoon_parts); i++) {
		dragoon_parts[i].piece_active = false;
		dragoon_parts[i].piece_collected = false;
		dragoon_parts[i].should_spawn = false;
	}
	dragoon_used = false;
	//Meter Resets
	with oPlayer {
		ror_install_meter = ror_card_install_fast_food * 20; //Install Meter //INSTALL STUFF
		ror_install_timer = 0; //Install Timer
		ror_install_active = false;
		ror_install_total_time = 0;
		//
		ror_roman_meter = 0;
		ror_assist_cooldown = 0;
		//Dragoon
		ror_dragoon_parts = [false, false, false];
		ror_dragoon_state = -4;
		//
		ror_card_dance_break_count = 0;
	}
	//
	with pHitBox {
		hitbox_timer = length;
	}
	//
	if obj_stage_main.refresh_rerolls {
		with oPlayer {
			ror_rerolls = ror_max_rerolls;
		}
	}
	//Bazaar Plats
	brook_plat_left.y = room_height * 4;
	brook_plat_right.y = room_height * 4;
	//Pre
	/*
	if round_state == "alive" {
		with oPlayer {
			ror_eggs = 0;
		}
	}
	*/
	//
	menu_text[_menu_data, 0] = "Export Data";
	if !argument_count { exit; }
	var _state = argument[0];
	
	#region //Creative Mode
	if (_state == "loading") {
		for (var i = 0; i < array_length(main_players); i++) {
			//print(main_players[i].ror_dragon_balls)
			//if main_players[i].ror_dragon_ball_count >= 7 {
			/*
			ror_card_creative_mode = true;
				ror_creative_types = [1, 0, 0, 0, 0]; //All, Common, Rare, Epic, Legendaries
			*/
			var _player = main_players[i];
			var _creative_type = -4;
			obj_stage_main.ror_creative_pos = 0
			if (_player.ror_creative_types[0]) {
				_creative_type = "Any";
				ror_choose_count = _player.ror_creative_types[0];
				_player.ror_creative_types[0] = 0;
			} else if (_player.ror_creative_types[1]) {
				_creative_type = "Common";
				ror_choose_count = _player.ror_creative_types[1];
				_player.ror_creative_types[1] = 0;
			} else if (_player.ror_creative_types[2]) {
				_creative_type = "Rare";
				ror_choose_count = _player.ror_creative_types[2];
				_player.ror_creative_types[2] = 0;
			} else if (_player.ror_creative_types[3]) {
				_creative_type = "Epic";
				ror_choose_count = _player.ror_creative_types[3];
				_player.ror_creative_types[3] = 0;
			} else if (_player.ror_creative_types[4]) {
				_creative_type = "Legendary";
				ror_choose_count = _player.ror_creative_types[4];
				_player.ror_creative_types[4] = 0;
			}
			if _creative_type != -4 {
				ror_creative_player = _player;
				//Reset Array
				ror_creative_type = _creative_type;
				ror_creative_array = [];
				//Array Pushes
				//var _creative_type = "all";
				//var _creative_type = "Any";
				switch(_creative_type) {
					case "Common":
						push_creative_array(obj_stage_main.items_custom_commons);
						#region //Dragon Balls
						if main_players[i].ror_card_goku && !practice_mode {
							push_creative_array(
								[
									[card_dragon_ball_1, true],
									[card_dragon_ball_2, true]
								]
							)
						}
						#endregion
					break;					
					case "Rare":
						push_creative_array(obj_stage_main.items_custom_rares);
						#region //Dragon Balls
						if main_players[i].ror_card_goku && !practice_mode {
							push_creative_array(
								[
									[card_dragon_ball_3, true],
									[card_dragon_ball_5, true]
								]
							)
						}
						#endregion
					break;					
					case "Epic":
						push_creative_array(obj_stage_main.items_custom_epics);
						#region //Dragon Balls
						if main_players[i].ror_card_goku && !practice_mode {
							push_creative_array(
								[
									[card_dragon_ball_6, true],
									[card_dragon_ball_7, true]
								]
							)
						}
						#endregion
					break;					
					case "Legendary":
						push_creative_array(obj_stage_main.items_custom_legends);
						#region //Dragon Balls
						if main_players[i].ror_card_goku && !practice_mode {
							push_creative_array(
								[
									[card_dragon_ball_4, true]
								]
							)
						}
						#endregion
					break;					
					default:
						push_creative_array(obj_stage_main.items_custom_commons);
						push_creative_array(obj_stage_main.items_custom_rares);
						push_creative_array(obj_stage_main.items_custom_epics);
						push_creative_array(obj_stage_main.items_custom_legends);
						#region //Dragon Balls
						if main_players[i].ror_card_goku && !practice_mode {
							push_creative_array(
								[
									[card_dragon_ball_1, true],
									[card_dragon_ball_2, true],
									[card_dragon_ball_3, true],
									[card_dragon_ball_4, true],
									[card_dragon_ball_5, true],
									[card_dragon_ball_6, true],
									[card_dragon_ball_7, true]
								]
							)
						}
						#endregion
					break;
				}
				//
				_state = "creative";
				i = array_length(main_players);
			}
		}
	}	
	#endregion
	
	#region //Shenron
	if (_state == "loading") {
		for (var i = 0; i < array_length(main_players); i++) {
			//print(main_players[i].ror_dragon_balls)
			if main_players[i].ror_dragon_ball_count >= 7 {
				//print("test");
				ror_wish_chosen = false;
				ror_shenron_player = floor(main_players[i]);
				_state = "shenron";
			}
		}
	}
	#endregion
	
	#region //Nate
	if (_state == "loading") {
		for (var i = 0; i < array_length(main_players); i++) {
			//print(main_players[i].ror_dragon_balls)
			if main_players[i].ror_change_stage {	
				ror_stage_chosen = false;
				ror_reconstruct_player = floor(main_players[i]);
				ror_reconstruct_step = 0;
				_state = "reconstruct";
			}
		}
	}
	#endregion
	
	//
	sound_stop(asset_get("sfx_syl_dspecial_howl"));
	//One Time Choose Amount decay
	var _subtract_items = (round_state == "game_start" && _state != "title_screen") && !(frontload_items || ror_tis_the_season);
	//
	round_state = _state;
	round_state_timer = 0;	
	with oPlayer {		
		ror_cancel = ror_cancel_max;
		ror_is_ghost = false;
		ror_can_ghost = true;
		ror_jail_escapes = 0;
	}
	//Resets
	switch(_state) {
		#region //Shenron
		case "shenron":
			/*
			if instance_exists(ror_shenron_obj) {
				instance_destroy(ror_shenron_obj);
			}
			*/
			ror_shenron_obj = instance_create(get_marker_x(96), get_marker_y(96), "obj_stage_article", 30);
		break;
		#endregion
		#region //Game End	
		case "game_over":
			with oPlayer {
				x = room_width / 2;
				y = room_height / 2;
				set_state(PS_PRATFALL);
			}
		break;
		#endregion
		case "game_start":
			reset_ready_players();
		break;
		case "choose_item":
			if (bazaar_only) {
				force_bazaar++;
			}
			//
			with oPlayer {
				ror_item_removed = 49;
				//Micro Manage
				if ror_card_single_reroll {
					ror_rerolls = clamp(ror_rerolls + ror_card_single_reroll, 0, ror_max_rerolls);
				}
			}
			//
			choose_timer = (obj_stage_main.choose_timer_seconds * 60) + 60;
			cursor_pos = [2, 2, 2, 2, 2];
			//Item Choice Array
			reset_ready_players();
			//print(ready_players)
			//
			with oPlayer {
				for (var i = 0; i < array_length(ror_items_from_round); i++) {
					if "new_item" in ror_items_from_round[i] {
						//print("ah")
						ror_items_from_round[i].new_item = false;
					}
				}
				ror_items_from_round = [];
			}
		break;
		case "break_round":
			//print(["Layout / Location", ror_layout_change, ror_location_change]);
			if (ror_layout_change && ror_location_change) {
				change_stage_layout();
			} else if (ror_layout_change ^^ ror_location_change) {
				var _old_stage_data = [plat_sides_pos, plat_center_pos, stage_element];
				change_stage_layout();
				var _new_stage_data = [plat_sides_pos, plat_center_pos, stage_element];
				//
				change_stage_layout(
					ror_layout_change 	? _new_stage_data[0] : _old_stage_data[0],
					ror_layout_change 	? _new_stage_data[1] : _old_stage_data[1],
					ror_location_change ? _new_stage_data[2] : _old_stage_data[2]
				);
			}
			//
			brook_plat_left.y = brook_plat_height;
			brook_plat_right.y = brook_plat_height
			//
			if !(force_bazaar) { //Force Bazaar Cheat
				can_bazaar = false;
				var _must_scrapper = false;
			} else {
				var _must_scrapper = true;
				force_bazaar--;
			}
			for (var i = 0; i < array_length(main_players); i++) {
				bazaar_ready = temp_level == 0 ? false : true;
			}
			with oPlayer {
				if ror_card_great_asset {
					_must_scrapper = true;
					//print("Great, Great Asset");
				}
			}
			var _rng_obj = 0;
			ror_printers = 0;
			ror_scrappers = 0;
			//print(["Must Scrapper?", _must_scrapper])
			for (var k = 1; k <= 6; k++) {
				_rng_obj = ror_rng_call(k * k, 10);
				//print(_rng_obj);
				if (_rng_obj == 0 && !ror_scrappers) {
					ror_scrappers++;
				} else {
					ror_printers++;
				}
			}
			if (practice_mode || always_scrapper || _must_scrapper || ror_better_bazaar) {
				ror_printers = 5;
				ror_scrappers = 1;
			}
			//
			//ror_printers = 3;
			//ror_scrappers = 1;
			if obj_stage_main.blackout_draft {
				ror_printers = 0;
				ror_scrappers = 0;
			}
			//ror_dupe_pools = 1;
			parry_lag = 30;
			was_parried = true;
		break;
		//Round Start Sets
		case "alive":	
			can_bazaar = true;
			//loading_text_num = random_func(10, array_length(quirky_dia), true)
			obj_stage_main.round_number++;
			loading_text_num = ror_rng_call(obj_stage_main.round_number + 3, array_length(quirky_dia));
			//Clean Slate
			with oPlayer {
				if ror_card_clean_sweep {
					invincible = true;
					invince_time = parry_lag + (30 * (1 + ror_card_ghoul * .2));
				}
			}
		break;
		case "loading":
			var _change_stage = false;
			var _match_point = false;
			var _cause_sandstorm = false;

			with oPlayer {
				//set_ror_variables();	
				bazaar_ready = temp_level == 0 ? false : true;
				//Position
				#region //Player Spawn Locations
				if obj_stage_main.ror_boss_mode {
					if (obj_stage_main.ror_boss_player == player) {
						x = get_marker_x(53);
						y = get_marker_y(53);
						spr_dir = -1;
					} else {
						x = get_marker_x(50 + obj_stage_main.boss_team_pos[player]);
						y = get_marker_y(50 + obj_stage_main.boss_team_pos[player]);
						spr_dir = 1;
					}
				} else {
					x = ror_x;
					y = ror_y;
					spr_dir = ror_spr_dir;
				}
				#endregion
				hsp = 0;
				vsp = 0;	
				old_hsp = 0;
				old_vsp = 0;
				//
				ror_previous_damage = 0;
				set_player_damage(player, 0);
				was_parried = true;
				parry_lag = 175; //170 when state_timer = 0;
				set_state(free ? PS_PRATFALL : PS_PRATLAND);
				visible = true;
				//
				state_timer = 5; //5 is to make some characters not kill my ears
				invince_time = 170
				invincible = true;
				//Anti Annoying Sound from falling
				sound_stop(land_sound);
				sound_stop(landing_lag_sound);
				//	
				//if (argument_count >= 2 && self != obj_stage_main.last_alive) {
				#region //Reconstruct
				if (argument_count >= 2 && (obj_stage_main.last_alive == -4 || get_player_team(obj_stage_main.last_alive.player) != get_player_team(player))) {		
					print("Item Skipped")
					//Skips
					var _num_chosen = 0;
					for (var i = 0; i < array_length(obj_stage_main.item_choice[player]); i++) {
						_num_chosen += obj_stage_main.item_choice[player, i]
					}			
					//Skip Item
					//var _choice_limit = clamp(obj_stage_main.choose_amount[player], 1, 5);
					//var _choice_limit = clamp(argument[1][player], 1, 5);
					var _choice_limit = check_choice_count(player);
					//print([_num_chosen, _choice_limit])
					if (_num_chosen < _choice_limit) {
						if (ror_card_change_stage) {
							//_change_stage = true;
							//ror_change_stage++;
							if !ror_clone {
								ror_change_stage++;
								with obj_stage_main {
									ror_stage_chosen = false;
									ror_reconstruct_player = other;
									ror_reconstruct_step = 0;
									round_state = "reconstruct";
								}
							}
						}
						//if (ror_card_scam) {
						//	print(ror_scam_amount * ror_card_scam * abs(_choice_limit - _num_chosen));
						//	ror_luck += ror_scam_amount * ror_card_scam * abs(_choice_limit - _num_chosen) * obj_stage_main.luck_point_scaling;
						//}
						/*
						if (ror_card_growth) {
							knockback_adj -= ror_growth_amount * ror_card_growth * abs(_choice_limit - _num_chosen);
							knockback_adj = clamp(knockback_adj, .1, infinity);						
						}
						*/
						//print(knockback_adj)
					}				
				}
				#endregion
				//
				/*
				if ror_change_stage { 
					ror_change_stage--;
					_change_stage = true;
				}
				*/
				//
				//print(ror_points)
				if (ror_points == obj_stage_main.points_to_win - 1) {
					_match_point = true;
				}
				//Sandstorm Cards (Winning causes a sandstorm)
				if (obj_stage_main.last_alive != -4 && get_player_team(obj_stage_main.last_alive.player) == get_player_team(player)) && (
					//Items
						ror_card_pocket_sand
					|| 	ror_card_gold_rush
				) {
					_cause_sandstorm = true;
				}				
			}
			
			if (_change_stage || obj_stage_main.random_stages) { //changing Layout
				change_stage_layout();
			}
			
			if (_match_point && stage_element != array_length(stage_art) - 1) {
				//print("Match Point")
				change_stage_layout(plat_sides_pos, plat_center_pos, array_length(stage_art) - 1); //Always the final stage
			}			
			
			//Sandstorm
			sandstorm_active = _cause_sandstorm;
			if (_cause_sandstorm) {
				stage_fade.image_blend = stage_sandstorm_color;
				//Sandstorm On
				if show_weather {
					set_bg_data(8, BG_LAYER_REPEAT, 1);
				} else {
					set_bg_data(8, BG_LAYER_REPEAT, 0);
				}				
				//				
			} else {
				stage_fade.image_blend = stage_colors[obj_stage_main.stage_element, 1];
				//Sandstorm Off
				set_bg_data(8, BG_LAYER_REPEAT, 0);
			}
			
			//Biome Items
			/*
			waves_active = false;
			switch(stage_art[stage_element]) {
				//waves_active
				case "Seafloor":
					var _cause_waves = false;
					with oPlayer {
						if (ror_card_floatation_device) {
							_cause_waves = true;
						}
					}
					waves_active = _cause_waves;
				break;
				default:
					print(stage_art[stage_element]);
				break;
			}
			*/
			
			//Post Loading Variables
			with oPlayer {
				set_ror_variables();
			}
			
			
			if (quirky_dia[loading_text_num] == "Weezer Guitar Riff") {
				sound_play(sound_get("ror_buddy_holly"));
			}
			
		break;
	}
	//
	//if obj_stage_main.egg_only {
	//	with oPlayer {
	//		ror_eggs = 2;
	//	}
	//	ready_players = [1, 1, 1, 1, 1];
	//}
	//
	/*
	if (_subtract_items) {
		for (var i = 0; i < array_length(choose_amount) i++) {
			choose_amount[i]--;
		}
	}
	*/
	//
}

#define card_count(_player) {
	var _count = 0;
	for (var j = 0; j < array_length(obj_stage_main.item_choice[_player]); j++) { //Goes through item list to see what amount has been chosen
		_count += obj_stage_main.item_choice[_player, j];
	}
	//if (_count >= clamp(obj_stage_main.choose_amount[_player], 1, 5)) { //Only ready up if the chosen count is correct
	if (_count >= check_choice_count(player)) { //Only ready up if the chosen count is correct
		return true;
	}
	return false;
}

#define players_ready() { //Function to see which players are ready
	var _ready = 0;
	for (var i = 1; i <= 4; i++) { //
		if (is_player_on(i) && (last_alive == -4 || get_player_team(last_alive.player) != get_player_team(i))) { //Active Players, First Round, Only players who lost can choose items
			if (card_count(i)) {
				_ready++
			}
		} else {
			_ready++;
		}
	}
	//print(_ready)
	if (_ready == 4) { return true } else { return false } //Only return true if every player is ready
}

#define create_item_pool(_num, _luck, _type) {
	/*
	Rates
	Common - 60 %
	Rares - 30 %
	Epics - 9%
	Legendaries - 1%

	Luck Stat increases the minimum by Luck
	*/
	var _previous_reroll = obj_stage_main.item_select[_num]; //[obj_stage_main.cursor_pos[_num]]
	obj_stage_main.item_select[_num] = [-4, -4, -4, -4, -4]//Reset Array
	//print("Luck: " + string(_luck))
	var _return = [];
	//print(["Prev: " _previous_reroll])
	//if ((obj_stage_main.round_state != "game_start" && main_players[_num - 1].ror_card_single_reroll) && _type == "reroll") {
	//	_return = _previous_reroll;
	//}
	var _ditto_item = false;
	
	if (obj_stage_main.bazaar_only) {
		_luck = 0;
	}
	//print(["Luck", _luck]);
	
	var _practice_item_debug = false; //For testing items while debugging
	if !_practice_item_debug && (obj_stage_main.practice_mode || obj_stage_main.artifact_of_command) {
		array_push(_return, items_commons[obj_stage_main.prac_common[_num]])
		array_push(_return, items_rares[obj_stage_main.prac_rare[_num]])
		array_push(_return, items_epics[obj_stage_main.prac_epic[_num]])
		array_push(_return, items_legends[obj_stage_main.prac_legend[_num]])
		array_push(_return, items_commons[obj_stage_main.prac_common[_num]])
	} else {
		for (var j = 0; j <= 4; j++) {
			var _roll = ror_rng_call(j + _num * 10, 100) + 1;
			// var _roll =random_func_2(j + _num * 10, 100, true) + 1;
			//var _roll = random_func_2(j + _num * 10, 100, true) + 1 + _luck;
			//_roll = 100;
			/*
				Defaults:
				50% Common
				30% Rare
				16% Epic
				4% Legendary
			*/
			
			//Luck Math
			var _rates = luck_math(_luck);
			var _common_rate = _rates[0];
			var _rare_rate = _rates[1];
			var _epic_rate = _rates[2];
			var _legend_rate = _rates[3];
			//			
			var _poolarray = -4;
			if (_roll <= _common_rate) { //Common
				//Picky Eater Check
				_poolarray = picky_eater_check(main_players[_num - 1], "C", items_commons);
			} else if (_roll <= _common_rate + _rare_rate) { //Rare
				//Picky Eater Check
				_poolarray = picky_eater_check(main_players[_num - 1], "R", items_rares);
			} else if (_roll <= _common_rate + _rare_rate + _epic_rate) { //Epic
				//Picky Eater Check
				_poolarray = picky_eater_check(main_players[_num - 1], "E", items_epics);
			} else { //Legendaries
				//Picky Eater Check
				_poolarray = picky_eater_check(main_players[_num - 1], "L", items_legends);
			}
			//Spam Mail
			var _spam_mail = false;
			if (j == 4 && main_players[_num - 1].ror_card_spam) {
				_spam_mail = true;
			}
			//Legendary Pity
			if ((floor(last_alive) != floor(main_players[_num - 1]) || obj_stage_main.choices_on_win) && !_spam_mail && _ditto_item == false) {
				if (main_players[_num - 1].ror_yuuko_pity) {
					//print("Yuuko had pity on you");
					//_poolarray = items_legends;	
					_poolarray = picky_eater_check(main_players[_num - 1], "L", items_legends);
					main_players[_num - 1].ror_yuuko_pity--;
				}
			}		
			
			//Card Selections
			//var _roll2 = random_func_2(j + 5 + _num * 10, array_length(_poolarray), true);
			var _roll2 = ror_rng_call(j + 5 + _num * 10, array_length(_poolarray));
			//No Duplicates
			var _roll_attempt = 15;
			
			if ((obj_stage_main.round_state != "game_start" && main_players[_num - 1].ror_card_single_reroll) && _type == "reroll") {
				var _dupe_array = _previous_reroll;
			} else {
				var _dupe_array = _return;
			}
			
			while 
					(
						!(no_dupes(_num, _poolarray[_roll2], _dupe_array)) //No cards passed Max
						|| blocked_items(_num, _poolarray[_roll2]) //No Blacklisted Cards
					) && _roll_attempt //Above 15 rerolls
			{ //Negates certain items
			//while !no_dupes(_num, _poolarray[_roll2], _return) {
				//if (j + 5 + _num * 10 + _roll_attempt) >= 200 { exit; }
				//_roll2 = random_func_2(j + 5 + _num * 10 + _roll_attempt, array_length(_poolarray), true);
				_roll2 = ror_rng_call(j + 5 + _num * 10 + _roll_attempt, array_length(_poolarray));
				_roll_attempt--;
				if !(_roll_attempt) {
					//print("Force Luck Item")
					_roll2 = 0;
				}
			}
			
			//Post Random Item Selecion
			
		
			//Transform Item
			if (main_players[_num - 1].ror_card_transform && j == 0) {
				_ditto_item = _poolarray[_roll2];
			}

			//Spam Mail Item
			if _spam_mail {
				//print("Be a Big Shot");
				for (var s = 0; s < array_length(items_commons); s++) {
					if (items_commons[s].name == "Spam Mail") {
						_roll2 = s;
					}
				}
				_poolarray = items_commons;
			}
			if (array_length(_poolarray)) {
				array_push(_return, _poolarray[_roll2])
			} else {
				array_push(_return, -4)
			}
			//
		}
	}
	
	//Transform
	if (_ditto_item != false) {
		_return = [
			_ditto_item,
			_ditto_item,
			_ditto_item,
			_ditto_item,
			(_return[4].name == "Spam Mail" && _spam_mail) ? _return[4] : _ditto_item
		]
	}
	//Throwing
	/*
	if (main_players[_num - 1].ror_threw_game && !practice_mode) && !obj_stage_main.disable_throws {
		//print("You don't want items")
		_return = [
			card_nice_throw,
			card_nice_throw,
			card_nice_throw,
			card_nice_throw,
			card_nice_throw
		]
		//main_players[_num - 1].ror_threw_game = false;
	}
	*/
	//
	//Egg Only mode
	if obj_stage_main.egg_only {
		//print("Surprise")
		//
		card_mystery_egg.desc = "Next Round: Drop a Mystery Egg after 10 Seconds";
		card_mystery_egg.small_desc = "Next Round: Drop a Mystery Egg";
		//
		_return = [
			card_mystery_egg,
			card_mystery_egg,
			card_mystery_egg,
			card_mystery_egg,
			card_mystery_egg
		]
	}	
	//Jolly Festivities Only
	if obj_stage_main.ror_tis_the_season {
		//print("Surprise")
		//
		card_jolly.max = 999;
		//card_jolly.small_desc = "Next Round: Drop a Mystery Egg";
		//
		_return = [
			card_jolly,
			card_jolly,
			card_jolly,
			card_jolly,
			card_jolly
		]
	} else {
		card_jolly.max = 1;
	}
	//Creative Mode Only
	if obj_stage_main.creative_mode_only {
		for (var i = 0; i < array_length(_return); i++) {
			switch(_return[i].rarity) {
				default:
				case "C": _return[i] = card_creative_c break;
				case "R": _return[i] = card_creative_r break;
				case "E": _return[i] = card_creative_e break;
				case "L": _return[i] = card_creative_l break;
			}
		}
	}
	//
	if obj_stage_main.bazaar_only {
		for (var i = 0; i < array_length(_return); i++) {
			switch(_return[i].rarity) {
				case "C":
					_return[i] = card_common_luck;
				break;
				case "R":
					_return[i] = card_rare_luck;
				break;
				case "E":
					_return[i] = card_epic_luck;
				break;
				case "L":
					_return[i] = card_legend_luck;
				break;
			}
		}
	}
	//Single Reroll
	if (main_players[_num - 1].ror_card_single_reroll) && _type == "reroll" {
		//print("Single Reroll")
		if (obj_stage_main.round_state != "game_start") {
			for (var i = 0; i < array_length(_return); i++) {
				if (i != obj_stage_main.cursor_pos[_num]) {
					_return[i] = _previous_reroll[i];
				}
			}
		}
	}
	#region //Dragon Ball
	var _dbs = [0, 0, 0, 0, 0, 0, 0];
	for (var i = 0; i < array_length(main_players[_num - 1].ror_dragon_balls); i++) {
		_dbs[i] = main_players[_num - 1].ror_dragon_balls[i];
	}
	//Back Up check for Dragon Balls
	for (var i = 0; i < array_length(_return); i++) {
		switch(_return[i].name) {
			case "1 Star Dragon Ball": _dbs[0] = true; break;
			case "2 Star Dragon Ball": _dbs[1] = true; break;
			case "3 Star Dragon Ball": _dbs[2] = true; break;
			case "4 Star Dragon Ball": _dbs[3] = true; break;
			case "5 Star Dragon Ball": _dbs[4] = true; break;
			case "6 Star Dragon Ball": _dbs[5] = true; break;
			case "7 Star Dragon Ball": _dbs[6] = true; break;
			default: break;
		}
	}
	//print(["Dragon Balls", _dbs])
	if !practice_mode && (main_players[_num - 1].ror_card_goku) {
		for (var i = 0; i < array_length(_return); i++) {
			var _ball_rng = ror_rng_call(i, 4); 
			//print(["Reroll Attempt", _ball_rng, main_players[_num - 1].ror_card_single_reroll, _type, i == obj_stage_main.cursor_pos[_num]])
			if _ball_rng == 0 &&
			   !((main_players[_num - 1].ror_card_single_reroll) && _type == "reroll" && i != obj_stage_main.cursor_pos[_num]) //Very Nice Spider Bug
			{	
				switch(_return[i].rarity) {
					case "C":
						if !(_dbs[0]) {
							_return[i] = card_dragon_ball_1;
							_dbs[0] = true;
						} else if !(_dbs[1]) {
							_return[i] = card_dragon_ball_2;
							_dbs[1] = true;
						}
					break;				
					case "R":
						if !(_dbs[2]) {
							_return[i] = card_dragon_ball_3;
							_dbs[2] = true;
						} else if !(_dbs[4]) {
							_return[i] = card_dragon_ball_5;
							_dbs[4] = true;
						}
					break;				
					case "E":
						if !(_dbs[5]) {
							_return[i] = card_dragon_ball_6;
							_dbs[5] = true;
						} else if !(_dbs[6]) {
							_return[i] = card_dragon_ball_7;
							_dbs[6] = true;
						}
					break;				
					case "L":
						if !(_dbs[3]) {
							_return[i] = card_dragon_ball_4;
							_dbs[3] = true;
						}
					break;
				}
			}
		}
		//print(["Dragon Balls: ", _dbs])
	}
	#endregion
	//
	return _return;
}

#define blocked_items(_num, _item) {
	//Result
	var _result = false;
	var _player = _num - 1;
	//All Opponents at Match Point so don't pick items that benefit losing
	if (
			_item.name == "Extra Selection"
		||	_item.name == "Scammed Artist"
		||	_item.name == "Lottery Loser"
		||	_item.name == "Clone Buddy Delivery"
		||	_item.name == "New Adventure"
		||	_item.name == "Streamer Luck"
		||	_item.name == "Transform"
		||	_item.name == "Great Asset"
	) {
		var _other_player_count = array_length(obj_stage_main.main_players) - 1;
		var _other_match_point = 0;
		for (var z = 0; z < array_length(obj_stage_main.main_players); z++) {
			//print([z, main_players[z].ror_points, obj_stage_main.points_to_win - 1])
			if (z != _player && main_players[z].ror_points == obj_stage_main.points_to_win - 1) {
				_other_match_point++
			}
		}
		//print([_other_match_point, _other_player_count])
		if (_other_match_point == _other_player_count) { _result = true; }
	}
	
	//Random game breaking Bug Fix?
	if "prat_land_time" !in main_players[_player].ror_modified_stats { return _result}
	
	var _ror_is_boss = (obj_stage_main.ror_boss_mode && obj_stage_main.ror_boss_player == main_players[_player].player);
	
	//print(["Sweetspots Count: ", array_length(main_players[_player].ror_sweet_spots)])
	
	if ( //Character specific blacklist / black list
			(_item.name == "Neutral" && main_players[_player].url == CH_ETALUS) //Etalus JC Dash Attack
		||	(_item.name == "Plasmic Precision" && main_players[_player].url == CH_CLAIREN) //Clairen Stun on Sweetspots (Fspecial is the only one)
		||	(_item.name == "OOOHHHHHH" && main_players[_player].url == 1889891464) //Mordecai
		||	(_item.name == "Levitate" && main_players[_player].url == 2669669576) //Gengar
		||	(_item.name == "Lower Pratland" && main_players[_player].ror_modified_stats.prat_land_time <= 3) //Base Pratland at 3
		||	(_item.name == "Blob Expansion" && !array_length(main_players[_player].ror_sweet_spots)) //Must have Sweetspots for Sweetspot Items
		||	(_item.name == "Sweet Pearlfection" && !array_length(main_players[_player].ror_sweet_spots)) //Must have Sweetspots for Sweetspot Items
		||  (_item.name == "Plasmic Precision" && !array_length(main_players[_player].ror_sweet_spots)) //Must have Sweetspots for Sweetspot Items
		||	(_item.name == "Express Shipping" && !array_length(main_players[_player].ror_info_speed)) //Must have a Movement Attack
		//||	(_item.name == "Floaty Double Jump" && main_players[_player].ror_modified_stats.djump_accel < 0) //Absa Double Jump
		//Very Specific Interaction
		||	(_item.name == "Pawn" && main_players[_player].ror_points >= (obj_stage_main.points_to_win - 5)) //Pawn
		//SSL Interactions
		|| (
			"ror_is_ssl" in main_players[_player] && main_players[_player].ror_is_ssl && !main_players[_player].ror_card_strong_parry &&
			(
					_item.name == "Green Thumb"
				||	_item.name == "Parry Masher"
			)
		)
		|| (
			"ror_is_ssl" in main_players[_player] && main_players[_player].ror_is_ssl &&
			(
					_item.name == "Dark Reflection"
				||	_item.name == "Defensive Shield"
				||	_item.name == "Aerial Evasion"
				||	_item.name == "Better Rolls"
				||	_item.name == "Shifting Strongs"
				||	_item.name == "Night Seclusion"
				||	_item.name == "Fast Wavedash"
				||	_item.name == "Regenerative Shell"
				||	_item.name == "Quicker Charging"
				||	_item.name == "Air Dodge Plus"
				||	_item.name == "Air Dash"
				||	_item.name == "Infinite Wind Up"
				||	_item.name == "Techsplosion"
				||	_item.name == "Invisible Strongs"
				||	_item.name == "Possession"
				//||	_item.name == ""
			)
		)

		//Game Mode Specific Blacklist
			//Random Stage
			||	(_item.name == "Reconstruct" && obj_stage_main.random_stages) //	
			//Bazaar Only
			||	(_item.name == "Great Asset" && obj_stage_main.bazaar_only) //
			//Blackout Gamemode
			||	(obj_stage_main.blackout_draft && "blackout_draft" in _item && _item.blackout_draft) //
			//5x - No Limits
			||	(_item.name == "Miss-tery Bag" && (obj_stage_main.no_limits && obj_stage_main.item_multi)) //
			||	(_item.name == "Clone Buddy Delivery" && (obj_stage_main.no_limits && obj_stage_main.item_multi)) //
			||	(_item.name == "Jolly Festivities" && (obj_stage_main.no_limits && obj_stage_main.item_multi)) //
			||	(_item.name == "Free Download" && (obj_stage_main.no_limits && obj_stage_main.item_multi)) //
			//Boss Mode
			||	(_item.name == "Vengeful Spirit" && (_ror_is_boss)) //
			||	(_item.name == "Showstopper" && (_ror_is_boss)) //
	) {
		_result = true;
	}
	//
	
	return _result;	
}

#define no_dupes(_num, _item, _curr_array) { //Despite the name this function is about creating no extra copies of a card with max results
	var _name = _item.name;
	var _max = _item.max;
	var _amount = 0;
	
	if obj_stage_main.no_limits || obj_stage_main.main_players[_num - 1].ror_limitless_max {
		_max = 999;
	}
	
	//Items Collected
	for(var r = 0; r < array_length(obj_stage_main.main_players[_num - 1].ror_items); r++) {
		if (obj_stage_main.main_players[_num - 1].ror_items[r].name == _name) {
			_amount++
		}
	}
	//Item Selects (The current cards)
	for(var s = 0; s < array_length(_curr_array); s++) {
		if (_curr_array[s].name == _name) {
			_amount++
		}
	}
	//
	if (_amount < _max) { //Returns true if not a max amount
		return true;
	} else {
		return false;
	}
}

#define picky_eater_check(_player, _rarity, _prev_pool) {
	//Picky Eating requires the item you roll to be an item you have. Otherwise it becomes Crazy Luck
	//Rarity of Luck
	switch(_rarity) {
		case "C":
			var _new_array = [obj_stage_main.card_common_luck];
		break;
		case "R":
			var _new_array = [obj_stage_main.card_rare_luck];
		break;
		case "E":
			var _new_array = [obj_stage_main.card_epic_luck];
		break;
		case "L":
			var _new_array = [obj_stage_main.card_legend_luck];
		break;
		default:
			var _new_array = [obj_stage_main.card_common_luck];
		break;
	}
	//If you have Picky Eater and a Safety Check
	if (_player.ror_card_picky_eater && array_length(_player.ror_items)) {
		//Special Arrays
		if _rarity == -4 {
			var _items = _player.ror_items;
			for (var i = 0; i < array_length(_items); i++) {
				if (
					!("picky_eater_safe" in _items[i] && !_items[i].picky_eater_safe)	
				) {
					for (var j = 0; j < array_length(_prev_pool); j++) {
						if _prev_pool[j].name == _items[i].name {
							array_push(_new_array, _items[i]);
						}
					}
				}
			}
		} else {
			var _items = _player.ror_items;
			for (var i = 0; i < array_length(_items); i++) {
				if (
					(_items[i].rarity == _rarity) &&
					!("picky_eater_safe" in _items[i] && !_items[i].picky_eater_safe)	
				) {
					array_push(_new_array, _items[i]);
				}
			}
		}
	} else { //Otherwise don't change the pool
		_new_array = _prev_pool;
	}

	return _new_array;
}

#define remove_item(_player, _num) { //Delete an item from your items
	if (!array_length(_player.ror_items)) {
		//print("Whoops. I can't delete a little buddy")
		exit;
	}
	var _return_array = [];
	var _item = -4
	
	for (var i = 0; i < array_length(_player.ror_items); i++) {
		if (i != _num) {
			array_push(_return_array, _player.ror_items[i])
		} else {
			_item = _player.ror_items[i];
		}
	}
	
	//Item Counts
	
	//
	
	
	//Delete Buddies
	with obj_stage_article {
		if ( get_article_script( id ) == 2 ) {
			instance_destroy(self);
		}
	}
	//
	ror_addition_type = -1;
	obj_stage_main.ror_temp = _player;
	obj_stage_main.ror_temp_item_name = _item.name;
	obj_stage_main.ror_temp_item_rarity = _item.rarity;
	with obj_stage_main { user_event(11) };
	//
	ror_items = _return_array
	//
	//print("Removed " + string(_item.name))
	//Note to self idk if this was here before
	set_ror_variables();
	//REMOVE LAG EXPLOSION
	ror_item_removed = 49;
	//CREATE BABIES
	with oPlayer {
		ror_followers = [];
		for (var i = 0; i < array_length(ror_items); i++) {
			//print(ror_items[i].name)
			if (i == 0) {
				var _follower = create_little_buddy(self, ror_items[i], 32);
			} else {
				var _follower = create_little_buddy(ror_followers[i - 1], ror_items[i], 16);
			}
			array_push(ror_followers, _follower);
		}										
	}
	//
	buddy_particle(self, 0, _item, "remove");
	//
	return _return_array;
}

#define generate_item(_num, _pool_num) { //From the POV of a player
	var _other = !ror_clone ? self : ror_clone;
	with obj_stage_main {
		var _arrays = [
			[items_commons, "C"],
			[items_rares, "R"],
			[items_epics, "E"],
			[items_legends, "L"]
		]
		//var _gen_array = _arrays[_pool_num, 0];
		var _gen_array = picky_eater_check(main_players[_num - 1], _arrays[_pool_num, 1], _arrays[_pool_num, 0]);
		
		//_gen_array = picky_eater_check(main_players[_num - 1], "C", _gen_array);
		
		var _roll2 = ror_rng_call(_num * 5, array_length(_gen_array));
		//No Duplicates
		var _roll_attempt = 15;
		while !no_dupes(_num, _gen_array[_roll2], []) || blocked_items(_num, _gen_array[_roll2]) { //Negates certain items	
			_roll2 = ror_rng_call(5 + _num * 10 + _roll_attempt, array_length(_gen_array));
			_roll_attempt--;
			if !(_roll_attempt) {
				_roll2 = 0;
			}
		}
		//
		with _other {
			for (var m = 0; m < ror_temp_clones; m++) {
				card_choice(_gen_array[_roll2]);
			}
		}
	}	
}

#define card_choice(_item) { //Adds an item
	if ror_clone { exit; };
	//Adding items is always a positive
	ror_addition_type = 1;
	//
	if !no_dupes(player, _item, []) {
		//Just in case of dupes give a luck item
		//if obj_stage_main.rogue_insanity {
		//	print("No Daves in Rogue Asylum")
		//	exit;
		//}
		
		
		if (_item.name != "Clone Buddy Delivery") { //Brook doesn't give extra luck card
			//print("You're bugged. Here have a luck item on the house.")
			switch(_item.rarity) {
				case "C": //Common
					card_choice(obj_stage_main.items_commons[0])
				break;
				case "R": //Rares
					card_choice(obj_stage_main.items_rares[0])
				break;
				case "E": //Epic
					card_choice(obj_stage_main.items_epics[0])
				break;
				case "L": //Legendaries
					card_choice(obj_stage_main.items_legends[0])
				break;
			}
			}
		//
		exit;
	}
	//
	var _num = 0;

	//Super's Struct copy code
	//Creates a copy of a struct
	var _new_item = {}
	var names = variable_instance_get_names(_item)
	for (var i = 0; i < array_length(names); i++) {
		var name = names[i]
		variable_instance_set(_new_item, name, variable_instance_get(_item, name));
	}
	/*
	if (true) {
		_new_item.ror_pawn_rank = 1;
	}
	*/
	_new_item.new_item = true;
	//Add Items to Arrays
	var _has_card = false; //Orders cards by order obtained
	for (var i = 0; i < array_length(ror_items) && !_has_card; i++) {
		if (ror_items[i].name == _new_item.name) {
			_has_card = true;
			array_insert(ror_items, i + 1, _new_item);
		}
	}
	if (!_has_card) {
		array_push(ror_items, _new_item);
		//Followers (Now creates only 1 copy of the buddy)
		if (obj_stage_main.light_weight_mode == "Off") {
			if !(array_length(ror_followers)) {
				var _follower = create_little_buddy(self, _item, 32);
			} else {
				var _follower = create_little_buddy(ror_followers[array_length(ror_followers) - 1], _item, 16);
			}
			array_push(ror_followers, _follower);
		}
	}
	//
	//array_push(ror_items_from_round, _new_item);
	//Item Buffs
	#region //Mrs. Sandbert
	if (_new_item.name == "Miss-tery Bag") {
		//print("Mrs. Sandbert")
		with obj_stage_main {
			for (var i = 0; i <= 3; i++) {
				switch(i) {
					case 0: //Common
						var _sandbert_array = picky_eater_check(other, "C", items_commons);
					break;
					case 1: //Rares
						var _sandbert_array = picky_eater_check(other, "R", items_rares);
					break;
					case 2: //Epics
						var _sandbert_array = picky_eater_check(other, "E", items_epics);
					break;
					case 3: //Legends
						var _sandbert_array = picky_eater_check(other, "L", items_legends);
					break;
				}
				//Card Selections
				//var _roll2 = random_func_2(i + other.player * 5, array_length(_sandbert_array), true);
				var _roll2 = ror_rng_call(i + other.player * 5, array_length(_sandbert_array));
				//No Duplicates
				var _roll_attempt = 15;
				//while !no_dupes(other.player, _sandbert_array[_roll2], []) {
				while !no_dupes(other.player, _sandbert_array[_roll2], []) || blocked_items(other.player, _sandbert_array[_roll2]) { //Negates certain items	
				//while !(no_dupes(_num, _poolarray[_roll2], _return)) || blocked_items(_num, _poolarray[_roll2]) { //Negates certain items	
					//if (j + 5 + _num * 10 + _roll_attempt) >= 200 { exit; }
					//_roll2 = random_func_2(j + 5 + _num * 10 + _roll_attempt, array_length(_sandbert_array), true);
					_roll2 = ror_rng_call(j + 5 + _num * 10 + _roll_attempt, array_length(_sandbert_array));
					_roll_attempt--;
					if !(_roll_attempt) {
						_roll2 = 0;
					}
				}
				//
				with other {
					for (var m = 0; m < ror_temp_clones; m++) {
						card_choice(_sandbert_array[_roll2]);
					}
				}
			}
		}
	}
	#endregion	
	#region //Free Download
	if (_new_item.name == "Free Download") {
		var _download_rng = ror_rng_call(9, 4);
		print(["Free Download", _download_rng]);
		
		with obj_stage_main.main_obj {
			if _download_rng == 0 {
				sound_play(sound_get("ror_goodluck"));
			} else {
				sound_play(sound_get("ror_badluck"));
			}
		}
		/*
		//Lists all names
		for (var d = 0; d < array_length(obj_stage_main.items_bad_pool); d++) {
			print(obj_stage_main.items_bad_pool[d].name);
		}
		*/
		with obj_stage_main {
			if _download_rng == 0 {
				var _sandbert_array = picky_eater_check(other, "L", items_legends);
			} else {
				var _sandbert_array = picky_eater_check(other, -4, items_bad_pool);
			}
			
			//Card Selections
			//var _roll2 = random_func_2(i + other.player * 5, array_length(_sandbert_array), true);
			var _roll2 = ror_rng_call(other.player * 5, array_length(_sandbert_array));
			//No Duplicates
			var _roll_attempt = 15;
			//while !no_dupes(other.player, _sandbert_array[_roll2], []) {
			while !no_dupes(other.player, _sandbert_array[_roll2], []) || blocked_items(other.player, _sandbert_array[_roll2]) { //Negates certain items	
			//while !(no_dupes(_num, _poolarray[_roll2], _return)) || blocked_items(_num, _poolarray[_roll2]) { //Negates certain items	
				//if (j + 5 + _num * 10 + _roll_attempt) >= 200 { exit; }
				//_roll2 = random_func_2(j + 5 + _num * 10 + _roll_attempt, array_length(_sandbert_array), true);
				_roll2 = ror_rng_call(j + 5 + _num * 10 + _roll_attempt, array_length(_sandbert_array));
				_roll_attempt--;
				if !(_roll_attempt) {
					_roll2 = 0;
				}
			}
			//
			with other {
				for (var m = 0; m < ror_temp_clones; m++) {
					card_choice(_sandbert_array[_roll2]);
				}
			}
		}
	}
	#endregion
	#region //Festive
	if (_new_item.name == "Jolly Festivities") {
        var _player_thingy = player; //the player who took the item

        with obj_stage_main {
			//
			sound_stop(sound_get("ror_padoru"));
			sound_play(sound_get("ror_padoru"), false, 0, 0.8, 1);
			//
            for (var i = 0; i < 3; i++) {
                with (oPlayer){
                    var _roll = ror_rng_call(i + player, 100) + 1;
                    var _rates = luck_math(ror_luck);
                    var _common_rate = _rates[0];
                    var _rare_rate = _rates[1];
                    var _epic_rate = _rates[2];
                    var _legend_rate = _rates[3];
                    //            
                    var _sandbert_array = -4;
                    if (_roll <= _common_rate) { //Common
                        _sandbert_array = picky_eater_check(self, "C", obj_stage_main.items_commons);
                    } else if (_roll <= _common_rate + _rare_rate) { //Rare
                        _sandbert_array = picky_eater_check(self, "R", obj_stage_main.items_rares);
                    } else if (_roll <= _common_rate + _rare_rate + _epic_rate) { //Epic
                        _sandbert_array = picky_eater_check(self, "E", obj_stage_main.items_epics);    
                    } else { //Legendaries
                        _sandbert_array = picky_eater_check(self, "L", obj_stage_main.items_legends);    
                    }
                    
                    with obj_stage_main {
                        //Card Selections
                        //var _roll2 = random_func_2(i + other.player * 5, array_length(_sandbert_array), true);
                        var _roll2 = ror_rng_call(i + other.player * 5, array_length(_sandbert_array));
                        //No Duplicates
                        var _roll_attempt = 15;
                        //while !no_dupes(other.player, _sandbert_array[_roll2], []) {
                        while !no_dupes(other.player, _sandbert_array[_roll2], []) || blocked_items(other.player, _sandbert_array[_roll2]) || _sandbert_array[_roll2].name == "Jolly Festivities" { //Negates certain items    
                        //while !(no_dupes(_num, _poolarray[_roll2], _return)) || blocked_items(_num, _poolarray[_roll2]) { //Negates certain items    
                            //if (j + 5 + _num * 10 + _roll_attempt) >= 200 { exit; }
                            //_roll2 = random_func_2(j + 5 + _num * 10 + _roll_attempt, array_length(_sandbert_array), true);
                            _roll2 = ror_rng_call(j + 5 + _num * 10 + _roll_attempt, array_length(_sandbert_array));
                            _roll_attempt--;
                            if !(_roll_attempt) {
                                _roll2 = 0;
                            }
                        }
                        //
                    }
                    
                    if (player == _player_thingy || i == 0){
                        for (var m = 0; m < ror_temp_clones; m++) {
                            card_choice(_sandbert_array[_roll2]);
                        }
                    }
                }
            }
        }
    }
	#endregion
	//
	obj_stage_main.ror_temp = self;
	obj_stage_main.ror_temp_item_name = _new_item.name;
	obj_stage_main.ror_temp_item_rarity = _new_item.rarity;
	with obj_stage_main { user_event(11) };
	//
	buddy_particle(self, obj_stage_main.game_paused ||  obj_stage_main.round_state == "alive" ? 0 : array_length(ror_items_from_round), _item, "add");
	array_push(ror_items_from_round, _new_item);
	//Blackout Gamemode
	if obj_stage_main.blackout_draft {
		_item.blackout_draft = player;
		//print("Blackout?")
	}
	//
	return true;
}

#define give_buddies() {
	for (var i = 0; i < array_length(main_players); i++) {
		//main_players[i].ror_temp_clones = main_players[i].ror_card_clone_buddy;
		//Cheat Multi
		main_players[i].ror_temp_clones = obj_stage_main.item_multi ? obj_stage_main.item_multi_value : 1;
		//
		main_players[i].ror_temp_clones *= main_players[i].ror_card_clone_buddy + 1;
		//
		for (var j = 0; j < array_length(item_choice[main_players[i].player]); j++) {
			if (item_choice[main_players[i].player, j]) {
				with main_players[i] { 
					for (var k = 0; k < ror_temp_clones; k++) {
						//card_choice(obj_stage_main.item_select[obj_stage_main.game_online ? obj_stage_main.main_players[i].player : obj_stage_main.device_player, j]) 
						card_choice(obj_stage_main.item_select[obj_stage_main.main_players[i].player, j]) 
					}
				}
			}
		}
	}
}

#define luck_math(_luck) {
	//
	//Luck Math
	var _common_rate = 50;
	var _rare_rate = 30;
	var _epic_rate = 16;

	var _total_luck = _luck
	var _luck_sign = sign(_luck) 
	for (var L = abs(_luck); L > 0; L--) {
		if (_common_rate > 12) {
			_common_rate -= 1 * _luck_sign;
			_rare_rate += .5 * _luck_sign;
			_epic_rate += .3 * _luck_sign;
			//_legend_rate += .2
		} else if (_rare_rate > 6) {
			_common_rate = 12;
			_rare_rate -= 1;
			_epic_rate += .75;
		} else if (_epic_rate > 2) {
			_rare_rate = 6;
			_epic_rate -= 1;
			if (_epic_rate < 2) {
				_epic_rate = 2;
			}
		} else {
			_epic_rate = 2;
			L = 0;
		}
	}
	
	var _legend_rate = 100 - (_common_rate + _rare_rate + _epic_rate);
	//
	_common_rate = clamp(_common_rate, 0, 100);
	_rare_rate = clamp(_rare_rate, 0, 100);
	_epic_rate = clamp(_epic_rate, 0, 100);
	_legend_rate = clamp(_legend_rate, 0, 100);
	//print([_total_luck, "Total: " + string(_common_rate + _rare_rate + _epic_rate + _legend_rate), _common_rate, _rare_rate, _epic_rate, _legend_rate])
	
	return [_common_rate, _rare_rate, _epic_rate, _legend_rate];
}

#define set_poolset(_array, _full_array) {
	for (var i = 0; i < array_length(_full_array); i++) {
		var _enabled = false;
		for (var j = 0; j < array_length(_array); j++) {
			if (_array[j].name == _full_array[@i, 0].name) {
				_enabled = true;
			}
		}
		_full_array[@i, 1] = _enabled;
	}	
}

#define set_ror_variables() { //ror_set_variable
	var _reverse_floaty_dj = (ror_absa_djump && ror_modified_stats.djump_speed < 0);
	//
	var _ror_is_boss = (obj_stage_main.ror_boss_mode && obj_stage_main.ror_boss_player == player);
	//print(ror_luck)
	//Rivals Stats
	#region //Char Height Stats
	var _mushroom_size = ror_card_mega - ror_card_mini;
	//Boss Stuff
	_mushroom_size += (2 * _ror_is_boss);
	//Boss Stuff
	char_height = clamp(
			(ror_modified_stats.char_height)
		+	(ror_modified_stats.char_height * (_mushroom_size * .5))
	, 0, infinity);
	#endregion
	#region //Weight Stats
	knockback_adj = clamp(
			clamp(ror_modified_stats.knockback_adj, .05, _ror_is_boss ? 1 : infinity) //Base Stat (Being a Boss forces base to 1 at highest)
		+ 	(ror_card_weight_up * -.1) //Weight Up - .1 Per Card
		//+   (ror_install_timer && ror_card_install_sturdy ? -.2 + ror_card_install_sturdy * (ror_card_install_slow_start + 1) * -.1 : 0) //Sturdy Buildup (Install)
		+   (ror_install_timer && ror_card_install_sturdy ? (-.2 + (ror_card_install_sturdy - 1) * -.1) * (ror_card_install_slow_start + 1) : 0) //Sturdy Buildup (Install)
		+   (_mushroom_size > 0 ? _mushroom_size * -.1 :0) //Mega Mushroom
	, .05, infinity);
	//
	if (_mushroom_size < 0) {
		knockback_adj *= power(2, abs(_mushroom_size));
	}
	#endregion
    #region//Walk Stats
    walk_speed = clamp(
		(
				(ror_modified_stats.walk_speed) //Base Stat
			+   (ror_card_fast_movement * 1) //Fast Movement + 1 Per Card
			+   ((ror_card_install_black_jack && ror_install_timer) && ror_luck && ror_luck % 21 == 0 ? 3 * (ror_card_install_slow_start + 1) : 0) //Black Jack + 3 Per Card
			+   (ror_install_timer && ror_card_install_burst ? ror_card_install_burst * (ror_card_install_slow_start + 1) : 0) //Burst of Speed (Install)
		)
        *   (1 + (ror_tidal_mult)) //Tidal Flow Multiplier
        *   (1 + ((obj_stage_main.sandstorm_active && ror_card_gold_rush) ? ror_card_gold_rush * .1 : 0)) //Gold Rush
    , -infinity, infinity)
    #endregion
    #region//Walk Accel    
    walk_accel = clamp(
		(
				(ror_modified_stats.walk_accel) //Base Stat
			+   (ror_card_fast_movement * 0.1) //Fast Movement + .1 Per Card
			+   ((ror_card_install_black_jack && ror_install_timer) && ror_luck && ror_luck % 21 == 0 ? .3 * (ror_card_install_slow_start + 1) : 0) //Black Jack + .3 Per Card
		)
		*   (1 + (ror_tidal_mult * 0.1)) //Tidal Flow Multiplier
		*   (1 + ((obj_stage_main.sandstorm_active && ror_card_gold_rush) ? ror_card_gold_rush * .1 : 0)) //Gold Rush
        //+   (ror_tidal_mult * 0.1) //Tidal Flow Multiplier
    , -infinity, infinity) //Bounds Check
    #endregion
	#region//Dash Speed
    dash_speed = clamp( 
		(
				(ror_modified_stats.dash_speed) //Base Stat
			+   (ror_card_fast_movement * 1) //Fast Movement + 1 Per Card
			+   ((ror_card_install_black_jack && ror_install_timer) && ror_luck && ror_luck % 21 == 0 ? 3 * (ror_card_install_slow_start + 1) : 0) //Black Jack + 3 Per Card
			//+   (ror_tidal_mult * 1) //Tidal Flow Multiplier
			+   (ror_install_timer && ror_card_install_burst ? ror_card_install_burst * (ror_card_install_slow_start + 1) : 0) //Burst of Speed (Install)
        ) 
		*   (1 + ror_card_funny_dash * 0.25) //Funny Run Multiplier
		*   (1 + (ror_tidal_mult)) //Tidal Flow Multiplier
		*   (1 + ((obj_stage_main.sandstorm_active && ror_card_gold_rush) ? ror_card_gold_rush * .1 : 0)) //Gold Rush
    , -infinity, infinity) //Bounds Check
    #endregion
    #region//Initial Dash Speed    
    initial_dash_speed = clamp( 
		(
				(ror_modified_stats.initial_dash_speed) //Base Stat
			+   (ror_card_fast_movement * 1) //Fast Movement + 1 Per Card
			+   ((ror_card_install_black_jack && ror_install_timer) && ror_luck && ror_luck % 21 == 0 ? 3 * (ror_card_install_slow_start + 1) : 0) //Black Jack + 3 Per Card
			+   (ror_install_timer && ror_card_install_burst ? ror_card_install_burst * (ror_card_install_slow_start + 1) : 0) //INSTALL STUFF
        ) 
		*   (ror_card_funny_dash > 0 ? 0 : 1) //Funny Run
		*   (1 + (ror_tidal_mult)) //Tidal Flow Multiplier
		*   (1 + ((obj_stage_main.sandstorm_active && ror_card_gold_rush) ? ror_card_gold_rush * .1 : 0)) //Gold Rush
    , -infinity, infinity) //Bounds Check
    #endregion
	#region//Dash Speed
    dash_speed = clamp( 
		(
				(ror_modified_stats.dash_speed) //Base Stat
			+   (ror_card_fast_movement * 1) //Fast Movement + 1 Per Card
			+   ((ror_card_install_black_jack && ror_install_timer) && ror_luck && ror_luck % 21 == 0 ? 3 * (ror_card_install_slow_start + 1) : 0) //Black Jack + 3 Per Card
			+   (ror_install_timer && ror_card_install_burst ? ror_card_install_burst * (ror_card_install_slow_start + 1) : 0) //Burst of Speed (Install)
        ) 
		*   (1 + ror_card_funny_dash * 0.25) //Funny Run Multiplier
		*   (1 + (ror_tidal_mult)) //Tidal Flow Multiplier
		*   (1 + ((obj_stage_main.sandstorm_active && ror_card_gold_rush) ? ror_card_gold_rush * .1 : 0)) //Gold Rush
    , -infinity, infinity) //Bounds Check
    #endregion
    #region//Initial Dash Speed    
    initial_dash_speed = clamp( 
		(
				(ror_modified_stats.initial_dash_speed) //Base Stat
			+   (ror_card_fast_movement * 1) //Fast Movement + 1 Per Card
			+   ((ror_card_install_black_jack && ror_install_timer) && ror_luck && ror_luck % 21 == 0 ? 3 * (ror_card_install_slow_start + 1) : 0) //Black Jack + 3 Per Card
			+   (ror_install_timer && ror_card_install_burst ? ror_card_install_burst * (ror_card_install_slow_start + 1) : 0) //INSTALL STUFF
        ) 
		*   (ror_card_funny_dash > 0 ? 0 : 1) //Funny Run
		*   (1 + (ror_tidal_mult)) //Tidal Flow Multiplier
		*   (1 + ((obj_stage_main.sandstorm_active && ror_card_gold_rush) ? ror_card_gold_rush * .1 : 0)) //Gold Rush
    , -infinity, infinity) //Bounds Check
    #endregion
	#region//Ground Friction
	ground_friction = clamp( (
			(ror_modified_stats.ground_friction) //Base Stat
		* 	(power(0.75, ror_card_lower_friction)) //Lower Friction * 0.75 Per Card with Diminishing returns
	) 	*   (ror_install_timer && ror_card_install_slide ? 0 : 1) //INSTALL STUFF
	, 0, infinity) //Bounds Check
	#endregion
	#region//Fall Speed
	max_fall = clamp(
			ror_modified_stats.max_fall //Base Stat
		- 	(ror_card_floaty_faller * 1) //Floaty Faller - 1 Per Card
	, 1, infinity) //Bounds Check
	#endregion
	#region//Gravity
	gravity_speed = clamp(
			ror_modified_stats.gravity_speed //Base Stat
		-	((ror_modified_stats.gravity_speed >= .2) ? ror_card_lower_gravity * .075 : 0) //Lower Gravity - .075 if gravity greater than .2
	, .05, infinity) //Bounds Check
	#endregion
	#region//Hitstun Gravity
	hitstun_grav = clamp(
			ror_modified_stats.hitstun_grav //Base Stat
		+	ror_card_vert_weight * .02 //Vertical Weight - .02 Per Card
	, -infinity, infinity) //Bounds Check
	#endregion
	#region//Air Friction
	air_friction = clamp(
			ror_modified_stats.air_friction //Base Stat
		+	ror_card_hori_weight * .01 //Horizontal - .01 Per Card
	, -infinity, infinity) //Bounds Check
	#endregion
	#region//Jump Heights
	jump_speed = clamp(
			ror_modified_stats.jump_speed //Base Stat
		+ 	(ror_card_jump_man * 1) //Jump Man + 1 Per Card
		-	((gravity_speed >= .2) ? ror_card_lower_gravity * .8 : 0) //Lower Gravity - .8 if gravity greater than .2
	, -infinity, infinity) //Bounds Check
	#endregion
    #region//Double Jump Heights
    djump_speed = clamp(
		(
				//(_reverse_floaty_dj) ? jump_speed * (1 + gravity_speed) : ror_modified_stats.djump_speed //Base Stat
				(_reverse_floaty_dj) ? jump_speed : ror_modified_stats.djump_speed //Base Stat
			+   (ror_card_jump_man * 1) //Jump Man + 1 Per Card
			-   ((ror_modified_stats.gravity_speed >= .2) ? ror_card_lower_gravity * .8 : 0) //Lower Gravity - .8 if gravity greater than .2
		)	* (ror_card_xanne ? .75 : 1) //Xanne Double Jump (Halves per Card)
    , -infinity, infinity) //Bounds Check
	var _djump_speed = djump_speed;
	//print(["Gravity: ", gravity_speed])
    #endregion
    #region//Double Jump Accel Start
    djump_accel_start_time = (ror_absa_djump > 0) ? 4 : ror_modified_stats.djump_accel_start_time; //set to 4 if absa djump card is active
    #endregion
    #region//Double Jump Accel End
    djump_accel_end_time = (ror_absa_djump > 0) ? 15 : ror_modified_stats.djump_accel_end_time; //set to 4 if absa djump card is active
    #endregion
    #region//Double Jump Accel
    djump_accel = clamp(
            ror_modified_stats.djump_accel //Base Stat
        -   (ror_card_jump_man * .1) //Jump Man + 1 Per Card
        -   ((ror_modified_stats.gravity_speed >= .2 && djump_accel <= -0.2) ? ror_card_lower_gravity * .1 : 0) //Lower Gravity - .1 if gravity greater than .2 && djump accel is less than -.2
    , -infinity, infinity) //Bounds Check
    djump_accel = (ror_absa_djump > 0) ? -0.17 * djump_speed : djump_accel; //overwrite if absa djump card is active
    djump_speed = (ror_absa_djump > 0) ? -1 : djump_speed; //set djump speed to -1 if absa djump card is active (im doing this here because the djump accel is based on your djump speed and setting this beforehand would mess that up)
    #endregion
	#region //Remove Absa Double Jump
	if _reverse_floaty_dj {
		//Accels
		djump_accel = 0;
		djump_accel_start_time = 0;
		djump_accel_end_time = 0;
		djump_speed = _djump_speed;
	}
	#endregion
	#region//Short Hop Heights
	short_hop_speed = clamp(
			ror_modified_stats.short_hop_speed //Base Stat
		-	((ror_modified_stats.gravity_speed >= .2) ? ror_card_lower_gravity * .5 : 0) //Lower Gravity - .5 if gravity greater than .2
	, -infinity, infinity) //Bounds Check
	#endregion
	#region//Wall Jump VSP
	walljump_vsp = clamp(
			ror_modified_stats.walljump_vsp //Base Stat
		-	((ror_modified_stats.gravity_speed >= .2) ? ror_card_lower_gravity * .8 : 0) //Lower Gravity - .8 if gravity greater than .2
	, -infinity, infinity) //Bounds Check
	#endregion
	#region//Roll Forward
	roll_forward_max = clamp(
			ror_modified_stats.roll_forward_max //Base Stat
		+	(ror_card_better_rolls * 1) //Better Rolls + 1 Per Card
	, -infinity, infinity) //Bounds Check
	#endregion
	#region//Roll Backwards
	roll_backward_max  = clamp(
			ror_modified_stats.roll_backward_max //Base Stat
		+	(ror_card_better_rolls * 1) //Better Rolls + 1 Per Card
	, -infinity, infinity) //Bounds Check
	#endregion
	#region//Tech Roll
	techroll_speed  = clamp(
			ror_modified_stats.techroll_speed //Base Stat
		+	(ror_card_better_rolls * 2) //Better Rolls + 1 Per Card
	, -infinity, infinity) //Bounds Check
	#endregion
	#region//Pratland
	prat_land_time  = clamp(
			ror_modified_stats.prat_land_time //Base Stat
		-	(ror_card_lower_pratland * 3) //Lower Pratland - 3 Per Card
	, 3, infinity) //Bounds Check (Min 3, Max Infinity)
	#endregion
	#region//Waveland Adj
	wave_land_adj  = clamp(
			ror_modified_stats.wave_land_adj //Base Stat
		+	(ror_card_fast_waveland * .2) //Fast Waveland + .2 Per Card
		-	(ror_card_aerial_evasion  * .18) //Aerial Evasion + .18 Per Card
	, -infinity, infinity) //Bounds Check
	#endregion
	#region //Wave Friction
	//wave_friction  = clamp(
	//		ror_modified_stats.wave_friction //Base Stat
	//	-	(ror_card_fast_waveland * .04) //Fast Waveland + .1 Per Card
	//, 0, infinity) //Bounds Check
	#endregion
	#region//Fast fall
	fast_fall  = clamp(
			ror_modified_stats.fast_fall //Base Stat
		+	(ror_card_quick_drop * 3) //Quick Drop + 2 Per Card
		+ 	((ror_card_install_black_jack && ror_install_timer) && ror_luck && ror_luck % 21 == 0 ? 5 * (ror_card_install_slow_start + 1) : 0) //Black Jack + 5 Per Card
	, -infinity, infinity) //Bounds Check 
	#endregion
	#region//Air Accel
	air_accel  = clamp(
			ror_modified_stats.air_accel //Base Stat
		+	(ror_card_air_control * .1) //Air Control + .1 Per Card
		+ 	((ror_card_install_black_jack && ror_install_timer) && ror_luck && ror_luck % 21 == 0 ? 1 * (ror_card_install_slow_start + 1) : 0) //Black Jack + 1 Per Card
		+   (ror_install_timer && ror_card_install_burst ? ror_card_install_burst * 0.1 * (ror_card_install_slow_start + 1) : 0) //Burst of Speed (Install)
	, -infinity, infinity) //Bounds Check 
	#endregion
	#region//Max Double Jumps
	max_djumps  = clamp(
		(
				ror_modified_stats.max_djumps //Base Stat
			+	(ror_card_extra_jumps * 1) //Extra Jumps + 1 Per Card
			+ 	((ror_card_install_black_jack && ror_install_timer) && ror_luck && ror_luck % 21 == 0 ? 2 * (ror_card_install_slow_start + 1) : 0) //Black Jack + 2 Per Card
		)	* power(2, ror_card_xanne) //Xanne Double Jump (Doubles per Card)
	, 0, infinity) //Bounds Check 
	#endregion
	#region//Max Air Speed
    air_max_speed  = clamp(
		(
				ror_modified_stats.air_max_speed //Base Stat
			+   (ror_card_higher_airspeed * 1) //Higher Airspeed + 1 Per Card
			+   ((ror_card_install_black_jack && ror_install_timer) && ror_luck && ror_luck % 21 == 0 ? 3 * (ror_card_install_slow_start + 1) : 0) //Black Jack + 3 Per Card
			+   (ror_install_timer && ror_card_install_burst ? ror_card_install_burst * 0.5 * (ror_card_install_slow_start + 1) : 0) //Burst of Speed (Install)
		)
		*   (1 + (ror_tidal_mult)) //Tidal Flow Multiplier
		*   (1 + ((obj_stage_main.sandstorm_active && ror_card_gold_rush) ? ror_card_gold_rush * .1 : 0)) //Gold Rush
    , -infinity, infinity) //Bounds Check 
    #endregion
    #region//Leave Ground Speed
    leave_ground_max  = clamp(
		(
				ror_modified_stats.leave_ground_max //Base Stat
			+   (ror_card_higher_airspeed * 1) //Higher Airspeed + 1 Per Card
			+  	((ror_card_install_black_jack && ror_install_timer) && ror_luck && ror_luck % 21 == 0 ? 3 * (ror_card_install_slow_start + 1) : 0) //Black Jack + 3 Per Card
			+   (ror_install_timer && ror_card_install_burst ? ror_card_install_burst * 0.5 * (ror_card_install_slow_start + 1) : 0) //Burst of Speed (Install)
		)
		*   (1 + (ror_tidal_mult)) //Tidal Flow Multiplier
		*   (1 + ((obj_stage_main.sandstorm_active && ror_card_gold_rush) ? ror_card_gold_rush * .1 : 0)) //Gold Rush
    , -infinity, infinity) //Bounds Check 
    #endregion
    #region//Max Jump HSP
    max_jump_hsp  = clamp(
		(
				ror_modified_stats.max_jump_hsp //Base Stat
			+   (ror_card_higher_airspeed * 1) //Higher Airspeed + 1 Per Card
			+   ((ror_card_install_black_jack && ror_install_timer) && ror_luck && ror_luck % 21 == 0 ? 3 * (ror_card_install_slow_start + 1) : 0) //Black Jack + 3 Per Card
			+   (ror_install_timer && ror_card_install_burst ? ror_card_install_burst * 0.5 * (ror_card_install_slow_start + 1) : 0) //Burst of Speed (Install)
		)
		*   (1 + (ror_tidal_mult)) //Tidal Flow Multiplier
		*   (1 + ((obj_stage_main.sandstorm_active && ror_card_gold_rush) ? ror_card_gold_rush * .1 : 0)) //Gold Rush
    , -infinity, infinity) //Bounds Check 
    #endregion
	#region//Airdodge Speed
	air_dodge_speed  = clamp(
			ror_modified_stats.air_dodge_speed //Base Stat
		+	(ror_card_aerial_evasion * 1) //Aerial Evasion + 1 Per Card
		+ 	((ror_card_install_black_jack && ror_install_timer) && ror_luck && ror_luck % 21 == 0 ? 3 * (ror_card_install_slow_start + 1) : 0) //Black Jack + 3 Per Card
		+ 	(ror_card_air_dash >= 2 ? (ror_card_air_dash - 1) * 2 : 0) //Air Dash >= 2 is 2 Per Card
	, -infinity, infinity) //Bounds Check 
	#endregion
	#region//Wall Jump Height
	walljump_vsp = clamp(
			(ror_modified_stats.walljump_vsp) //Base Stat
		+ 	(ror_card_wj_height ? 3 * ror_card_wj_height : 0) //3 Per Card
	, -infinity, infinity)
	#endregion
	//Can't be changed mid round due to egg stuff
	if (obj_stage_main.round_state != "alive" || state == PS_RESPAWN) {
		//
		if obj_stage_main.round_state != "alive" {
			ror_has_extra_life = ror_extra_life;
		}
		//That bug that I hate
		clinging = false;
		//Other Variables
		last_player = 0;
		last_attack = 0;
		last_hbox_num = 0;
		//Ror Stats
		ror_one_hundred = false;
		ror_relocation_count = 0;
		ror_discord_buff = false;
		ror_master_attack = -4; //Master of One Attack gets Reset each Round
		ror_roman_meter = 0; //Reset Romans
		ror_assist_cooldown = 0; //Assist item cooldown
		//Air Parry
		ror_has_air_parried = false;
		//Cold Embrace
		ror_was_embraced = false;
		//Install
		//ror_install_meter = 0; //Install Meter //INSTALL STUFF
		ror_install_meter = ror_card_install_fast_food * 20; //Install Meter //INSTALL STUFF
		ror_install_timer = 0; //Install Timer
		ror_install_active = false;
		ror_install_total_time = 0;
		//Burn
		burnt_id = -4;
		burned = false;
		burn_timer = 0;
		//Bazaar hold to quit
		bazaar_skip_hold = 0;
		//Infection
		poison = 0;
		/*
		for (var i = 0; i < array_length(poison_ids) && i < ror_card_infection; i++) {
			poison_ids[i] = self;
			poison++;
		}
		*/
		//Freeze
		ror_freeze_stacks = 0;
		ror_decay_health = 0;
		//Throwing
		ror_threw_game = false
		//
	}
}

#define set_hitbox_changes(_num) {
	//print(["Mushroom", _mushroom_size])
	//print(array_length(ror_valid_attack_array))
	//print("HELLO")
	//print( ror_valid_attack_array[_attack, 0])
	if (_num >= array_length(ror_valid_attack_array)) || _num < 0 {
		return;
	}
	
	//Boss Stuff
	var _ror_is_boss = (obj_stage_main.ror_boss_mode && obj_stage_main.ror_boss_player == player);
	
	var _mushroom_size = ror_card_mega - ror_card_mini;
	//Boss Stuff
	_mushroom_size += (2 * _ror_is_boss);
	//Boss Stuff
	var _scale_math = (_mushroom_size >= 0) ? 1 + (_mushroom_size * .5) : power(2, _mushroom_size);
	
	var _attack = ror_valid_attack_array[_num, 1];
	//Perma Buffs
	var _buff_dmg = 0;
	var _buff_start = 0;
	var _buff_whiff = false;
	for (var m = 0; m < array_length(ror_items); m++) {
		//Damage
		if ("buff_dmg_attack" in ror_items[m] && ror_items[m].buff_dmg_attack == _attack) {
			_buff_dmg += ror_items[m].buff_dmg_amount;
			//print(_buff_dmg)
		}		
		//Start Up
		if ("buff_start_attack" in ror_items[m] && ror_items[m].buff_start_attack == _attack) {
			_buff_start += ror_items[m].buff_start_amount;
			//print(_buff_start)
		}
		//Whiff
		if ("buff_whiff_attack" in ror_items[m] && ror_items[m].buff_whiff_attack == _attack) {
			_buff_whiff = true;
			//print(_buff_whiff)
		}	
	}	
	//if _buff_dmg { print(_buff_dmg) };
	//Hitboxes
	for (var j = 0; j <= ror_valid_attack_array[_num, 2]; j++) { //Hitboxes	
		//Otherwise Game Breaks
		reset_hitbox_value(_attack, j, HG_HITSTUN_MULTIPLIER);
		//
		//if (get_hitbox_value(_attack, j, 78) == true) { //78 is the variable of attacks modified by rivals rogue
		//	
		#region //Reversi
		reset_hitbox_value(_attack, j, HG_ANGLE);
		reset_hitbox_value(_attack, j, HG_ANGLE_FLIPPER);
		if (ror_card_reversi && check_attack_array(_attack, ror_attacks_ustrong)) {
			//if (player == 1) {
			//Angle
			if (get_hitbox_value(_attack, j, HG_ANGLE) != 361) {
				set_hitbox_value(_attack, j, HG_ANGLE, -(180 - get_hitbox_value(_attack, j, HG_ANGLE)));
			} else {
				set_hitbox_value(_attack, j, HG_ANGLE, -135);
			}
			//					
			var _flipper = get_hitbox_value(_attack, j, HG_ANGLE_FLIPPER);
			//print(["Flipper: "_flipper])
			switch(get_hitbox_value(_attack, j, HG_ANGLE_FLIPPER)) {
				//
				case 3:
					_flipper = 4;					
				break;					
				case 4:
					_flipper = 3;					
				break;			
				//
				case 6:
					_flipper = 7;					
				break;					
				case 7:
					_flipper = 6;					
				break;
				//
				case 8:
					_flipper = 9;					
				break;					
				case 9:
					_flipper = 8;					
				break;
				//
				default:
					//
				break;
			}
			set_hitbox_value(_attack, j, HG_ANGLE_FLIPPER, _flipper)
		}
		#endregion

		
		//}
		//Vars
		var hitbox_angle = get_hitbox_value(_attack, j, HG_ANGLE) mod 360;
		var sakurai_angle = get_hitbox_value(_attack, j, HG_ANGLE) == 361;
			var _hitbox_spike = (hitbox_angle >= 200 && hitbox_angle <= 340);
			var _hitbox_upward = (hitbox_angle >= 70 && hitbox_angle <= 110);
			var _hitbox_horizontal = ((hitbox_angle >= 25 && hitbox_angle < 70) || (hitbox_angle <= 155 && hitbox_angle > 110) || sakurai_angle)
		var hitbox_kbs = get_hitbox_value(_attack, j, HG_KNOCKBACK_SCALING);
			var _hitbox_strong = hitbox_kbs >= 0.6;
		var hitbox_flipper = get_hitbox_value(_attack, j, HG_ANGLE_FLIPPER);
		var hitstun_multi = get_hitbox_value(_attack, j, HG_HITSTUN_MULTIPLIER);
		var _sweetspot_enum = 79;
			var _hitbox_sweetspot = (get_hitbox_value(_attack, j, _sweetspot_enum) == true); 
			var _sweetspot_scale = 2;
			//Do not reposition the sweetspot
		var _type = get_hitbox_value(_attack, j, HG_HITBOX_TYPE);


		//Replacements (I'm going to complicated math and stuff later on stuff with extra hitpause and width)

		//Don't use any card variables optimization checks
		#region//Knockback	
		//if (_hitbox_horizontal || _hitbox_spike || _hitbox_upward) { //Slight Optimization (Put one of the checks in here)
		ror_hitbox_change(
			_attack, j, HG_BASE_KNOCKBACK
			, "+", _hitbox_horizontal && _hitbox_strong ? 	0.5 * ror_card_rough_guy : 0 //Rough Guy + .5 Per Card
			, "+", _hitbox_upward && _hitbox_strong ? 		0.5 * ror_card_doc_orders : 0 //Doc's Orders + .5 Per Card
			, "+", _hitbox_spike ? 							0.5 * ror_card_meteor_master : 0 //Meteor Master + .5 Per Card
			, "+", _hitbox_sweetspot ? 						0.5 * ror_card_pearl : 0 //Sweet Pearlfection + .5 Per Card
			, "multi", (_mushroom_size > 0) ? 1 + (_mushroom_size * .2) : 1 //Mega or Mini Mushroom
			//, "multi", (ror_card_master_of_one && _attack == ror_master_attack) ? 1.2 : 1 //Master of One 20% Base Knockback on Singular Attack
		)
		ror_hitbox_change(
			_attack, j, HG_KNOCKBACK_SCALING
			, "+", _hitbox_horizontal && _hitbox_strong ?	 	0.1 * ror_card_rough_guy : 0 //Rough Guy + .1 Per Card
			, "+", _hitbox_upward && _hitbox_strong ? 			0.1 * ror_card_doc_orders : 0 //Doc's Orders + .1 Per Card
			, "+", _hitbox_spike ? 								0.25 * ror_card_meteor_master : 0 //Meteor Master + .25 Per Card
			, "+", _hitbox_sweetspot ? 							0.1 * ror_card_pearl : 0 //Sweet Pearlfection + .1 Per Card
			, "multi", (_mushroom_size > 0) ? 1 + (_mushroom_size * .2) : 1 //Mega or Mini Mushroom
			//, "+", (ror_card_master_of_one && _attack == ror_master_attack) ? .25 : 0 //Master of One +.25 On Singular Attack
		)		
		//}				
		#endregion
		#region //Hitbox Size and Position
		//if (ror_card_fools_gold || _hitbox_sweetspot || _type != 2) { //Slight Optimization (Put one of the checks in here)
		ror_hitbox_change(
			_attack, j, HG_WIDTH
			, "power", 2, _hitbox_sweetspot ? ror_card_blob_expansion : 0 //Blob Expansion + Power of 2 each
			, "multi", (ror_card_fools_gold && _type != 2) ? ror_card_fools_gold * 1.35 : 1 //Fool's Gold 1.35 if acquired
			, "multi", (_mushroom_size != 0 && _type != 2) ? _scale_math : 1 //Mega or Mini Mushroom
		)				
		ror_hitbox_change(
			_attack, j, HG_HEIGHT
			, "power", 2, _hitbox_sweetspot ? ror_card_blob_expansion : 0 //Blob Expansion + Power of 2 each
			, "multi", (ror_card_fools_gold && _type != 2) ? ror_card_fools_gold * 1.35 : 1 //Fool's Gold 1.35 if acquired
			, "multi", (_mushroom_size != 0 && _type != 2) ? _scale_math : 1 //Mega or Mini Mushroom
		)						
		ror_hitbox_change(
			_attack, j, HG_HITBOX_X
			, "multi", (ror_card_fools_gold && _type != 2) ? ror_card_fools_gold * 1.35 : 1 //Fool's Gold 1.35 if acquired
			, "multi", (_mushroom_size != 0) ? _scale_math : 1 //Mega or Mini Mushroom
		)
		ror_hitbox_change(
			_attack, j, HG_HITBOX_Y
			, "multi", (ror_card_fools_gold && _type != 2) ? ror_card_fools_gold * 1.35 : 1 //Fool's Gold 1.35 if acquired
			, "multi", (_mushroom_size != 0) ? _scale_math : 1 //Mega or Mini Mushroom
		)	
		//}					
		#endregion		
		#region //Active Time
		if (_type == 2) {
			ror_hitbox_change(
				_attack, j, HG_LIFETIME
				, "multi", (ror_card_active_proj) ? (ror_card_active_proj * .2) + 1 : 1 //20% Active Time on all hitboxes
			)
		}			
		#endregion
		#region //Fire Effect Projectiles
		reset_hitbox_value( _attack, j, HG_EFFECT);
		var _fire_black_list = (
			//(url = 2537548361 && (_attack == AT_NSPECIAL || _attack == AT_USPECIAL || _attack == AT_DSPECIAL)) //Kragg With Cargo
			//(url == 2537548361) //Kragg With Cargo
				("advanced_skin" in self && advanced_skin)
			//||
		)
		//print(string_lower(string_lower(get_char_info(player, INFO_STR_NAME))))
		//print(string_lower(string_lower(get_char_info(player, INFO_STR_AUTHOR))))
		//print(advanced)
		//print(advanced_skin);
		//print(_fire_black_list);
		if (_type == 2) {			
			if (ror_card_fire_proj) && !_fire_black_list && get_hitbox_value( _attack, j, HG_EFFECT) == 0 {
				//print(attack_to_name(_attack));
				set_hitbox_value(_attack, j, HG_EFFECT, 1);
			}
		}			
		#endregion
        #region //Plasma Stun Sweetspots
        if (_type == 1) {
            if (ror_card_plasmic_precision) && get_hitbox_value( _attack, j, HG_EFFECT) == 0 {
                ror_hitbox_change(
                    _attack, j, HG_EFFECT
                    , "set", _hitbox_sweetspot ? 11 : 0 //Sweet Pearlfection + .1 Per Card
                )    
            }
        }            
        #endregion
		#region//All Other Hitboxes
		//Hitstun on All
		ror_hitbox_change(
			_attack, j, HG_HITSTUN_MULTIPLIER
			, "+", (ror_card_more_hitstun && hitstun_multi == 0) ? 1 : 0 //More Hitstun + Set's a min to atleast one?
			, "+", .1 * ror_card_more_hitstun//More Hitstun + .1 Per Card
		)
		//
		#endregion
		#region //Hitpause
		if (check_attack_array(_attack, ror_attacks_dstrong)) { //Slight Optimization (Put one of the checks in here)
			ror_hitbox_change(
				_attack, j, HG_BASE_HITPAUSE
				, "set", (check_attack_array(_attack, ror_attacks_dstrong) && ror_card_mordecai) ? 0 : "skip" //Mordecai
			)
			ror_hitbox_change(
				_attack, j, HG_HITPAUSE_SCALING
				, "set", (check_attack_array(_attack, ror_attacks_dstrong) && ror_card_mordecai) ? 0 : "skip" //Mordecai
			)
		}
		if (_type == 2) { //Slight Optimization (Put one of the checks in here)
			ror_hitbox_change(
				_attack, j, HG_EXTRA_HITPAUSE
				, "+", ((ror_card_stunning_projectiles && _type == 2) ? 7 * ror_card_stunning_projectiles : 0) //Stunning Projectiles + 7 to Projectile Per Card
			)	
		}
		#endregion
		#region //Transcendence
		if (_type == 2) {			
			//Transcendent Projectiles
			reset_hitbox_value(_attack, j, HG_PROJECTILE_IS_TRANSCENDENT);
			if ror_card_trans_proj && !get_hitbox_value(_attack, j, HG_PROJECTILE_IS_TRANSCENDENT) {
				set_hitbox_value(_attack, j, HG_PROJECTILE_IS_TRANSCENDENT, true)
			}
		}
		#endregion	
		#region //Projectile Bounce
		if (_type == 2) {			
			//Transcendent Projectiles
			reset_hitbox_value(_attack, j, HG_PROJECTILE_WALL_BEHAVIOR);
			reset_hitbox_value(_attack, j, HG_PROJECTILE_GROUND_BEHAVIOR);
			if ror_card_proj_bounce {
				if get_hitbox_value(_attack, j, HG_PROJECTILE_WALL_BEHAVIOR) != 2 {
					set_hitbox_value(_attack, j, HG_PROJECTILE_WALL_BEHAVIOR, 2)
				}
				if get_hitbox_value(_attack, j, HG_PROJECTILE_GROUND_BEHAVIOR) != 2 {
					set_hitbox_value(_attack, j, HG_PROJECTILE_GROUND_BEHAVIOR, 2)
				}
			}
		}
		#endregion
		#region //Angle Flipper
		if (_type == 2 && hitbox_flipper < 8) { //Slight Optimization (Put one of the checks in here)
			ror_hitbox_change(
				_attack, j, HG_ANGLE_FLIPPER
				, "set", (ror_card_get_over_here && _type == 2 && hitbox_flipper < 8 ? 7 : hitbox_flipper) //Stunning Projectiles + 7 to Projectile Per Card
			)
		}
		#endregion
		#region //Damage
		/*
			This is big and important so remember to change the damage buff item in user_event10.gml whenever you modify this part of the code
			
			Search : "Update This Section"
		*/
		ror_hitbox_change(
			_attack, j, HG_DAMAGE
			, "+", (_buff_dmg) //Additional Damage based on  Bobs / Perma Buff for Damage
			, "multi", (ror_card_clock && _type == 2) ? (ror_card_clock * (ror_clock_buff - 1)) + 1 : 1 //Clockwork 1.5x Damage to projectiles and they gain damage fall off
			//, "multi", (ror_card_master_of_one && _attack == ror_master_attack) ? 1.5 : 1 //Master of One 1.5x Damage on Singular Attack
		)
		#endregion
		#region Perma Buffs
		//All Attacks

		//Damage
		//set_attack_value(_attack, AG_STRONG_CHARGE_WINDOW, 1);
		/*
		//Start Up
		reset_window_value(_attack, 1, AG_WINDOW_LENGTH);
		reset_window_value(_attack, 1, AG_WINDOW_SFX_FRAME);
		set_window_value(_attack, 1, AG_WINDOW_LENGTH, 		clamp(get_window_value(_attack, 1, AG_WINDOW_LENGTH) 	- _buff_start, 1, infinity));
		set_window_value(_attack, 1, AG_WINDOW_SFX_FRAME,	clamp(get_window_value(_attack, 1, AG_WINDOW_SFX_FRAME) - _buff_start, 0, infinity));
		//Whifflag / Endlag
		if (_attack != AT_JAB) { //I could add a check later but jabs shouldn't have whifflag
			reset_window_value(_attack, j, AG_WINDOW_HAS_WHIFFLAG);
			if get_window_value(_attack, j, AG_WINDOW_HAS_WHIFFLAG) {
				//2x Invis Endlag
				print(attack_to_name(_attack))
				if (ror_card_invis && get_attack_value(_attack, AG_STRONG_CHARGE_WINDOW)) {
					reset_window_value(_attack, j, AG_WINDOW_LENGTH);
					set_window_value(_attack, j, AG_WINDOW_LENGTH, get_window_value(_attack, j, AG_WINDOW_LENGTH) * 2);
					//print([attack_to_name(_attack), get_window_value(_attack, j, AG_WINDOW_LENGTH)]);
				}
				//Whifflag Removal
				if (_buff_whiff) {
					set_window_value(_attack, j, AG_WINDOW_HAS_WHIFFLAG, false);
				}
			}
		}
		*/
		#endregion
	}
	//Attacks
	var _landing_lag_change = 1;
	
	//Landing Lag
	ror_attack_change(
		_attack, AG_LANDING_LAG
		, "-", 1 * ror_card_light_landing //Light Landing - 1 Per Card
	)
	set_attack_value(_attack, AG_LANDING_LAG, clamp(get_attack_value(_attack, AG_LANDING_LAG), 1, infinity)) //Inbounds Check
	
	#region Attack Grids
	//All Attacks
	//Reset Attack Cooldowns
	move_cooldown[_attack] = 0;
	reset_attack_value(_attack, AG_CATEGORY);
	//Start Up
	reset_window_value(_attack, 1, AG_WINDOW_LENGTH);
	reset_window_value(_attack, 1, AG_WINDOW_SFX_FRAME);
	//print([attack_to_name(_attack), "Pre", _buff_start, get_window_value(_attack, 1, AG_WINDOW_LENGTH)])
	set_window_value(_attack, 1, AG_WINDOW_LENGTH, 		clamp(get_window_value(_attack, 1, AG_WINDOW_LENGTH) 	- _buff_start, 1, infinity));
	set_window_value(_attack, 1, AG_WINDOW_SFX_FRAME,	clamp(get_window_value(_attack, 1, AG_WINDOW_SFX_FRAME) - _buff_start, 0, infinity));
	//print([attack_to_name(_attack),  "Post", _buff_start, get_window_value(_attack, 1, AG_WINDOW_LENGTH), clamp(get_window_value(_attack, 1, AG_WINDOW_LENGTH) 	- _buff_start, 1, infinity)]);
	//Attack Grids
	for (var j = 1; j <= get_attack_value(_attack, AG_NUM_WINDOWS); j++) {
		//Whifflag / Endlag
		if (_attack != AT_JAB) { //I could add a check later but jabs shouldn't have whifflag
			reset_window_value(_attack, j, AG_WINDOW_HAS_WHIFFLAG);
			//reset_window_value(_attack, j, AG_WINDOW_LENGTH);
			//
			if get_window_value(_attack, j, AG_WINDOW_HAS_WHIFFLAG) {
				//2x Invis Endlag
				//print(attack_to_name(_attack))
				/*
				if (ror_card_invis && get_attack_value(_attack, AG_STRONG_CHARGE_WINDOW)) {
					set_window_value(_attack, j, AG_WINDOW_LENGTH, get_window_value(_attack, j, AG_WINDOW_LENGTH) * ror_invis_multi); //Invisibility Endlag Multi
					//print([attack_to_name(_attack), get_window_value(_attack, j, AG_WINDOW_LENGTH)]);
				}
				*/
				//Whifflag Removal
				if (_buff_whiff) {
					set_window_value(_attack, j, AG_WINDOW_HAS_WHIFFLAG, false);
				}
				//
			}
		}
		
		//Express Shipping
		reset_window_value(_attack, j, AG_WINDOW_HSPEED);
		reset_window_value(_attack, j, AG_WINDOW_VSPEED);
		if (ror_card_express) && (get_window_value(_attack, j, AG_WINDOW_HSPEED) || get_window_value(_attack, j, AG_WINDOW_VSPEED)) {
			//print(["Pre Express", attack_to_name(_attack), get_window_value(_attack, j, AG_WINDOW_HSPEED), get_window_value(_attack, j, AG_WINDOW_VSPEED)]);
			set_window_value(_attack, j, AG_WINDOW_HSPEED, get_window_value(_attack, j, AG_WINDOW_HSPEED) * (1 + ror_card_express * .2));
			set_window_value(_attack, j, AG_WINDOW_VSPEED, get_window_value(_attack, j, AG_WINDOW_VSPEED) * (1 + ror_card_express * .2));
			//print(["Post Express", attack_to_name(_attack), get_window_value(_attack, j, AG_WINDOW_HSPEED), get_window_value(_attack, j, AG_WINDOW_VSPEED)]);
		}
	}
	#endregion
	//Taunt Display
	ror_valid_attack_array[_num, 3] = _buff_dmg;
	ror_valid_attack_array[_num, 4] = _buff_start;
	ror_valid_attack_array[_num, 5] = _buff_whiff;
	//print(ror_valid_attack_array[_num])
}


#define ror_hitbox_change() {
	var _attack_being_changed = argument[0]
	var _hitbox_being_changed = argument[1]
	var _hitbox_value = argument[2]
	
	reset_hitbox_value( _attack_being_changed, _hitbox_being_changed, _hitbox_value )
	
	var _step_1 = 1; //Multiplication and Division
	var _step_2 = 0; //Addiction and Subtraction
	var _base = get_hitbox_value(_attack_being_changed, _hitbox_being_changed, _hitbox_value);
	var _do_set = false;
	var _set_value = false;
	var _new_value = _base * _step_1 + _step_2;
	var _min_args = 3;
	if (argument_count > _min_args) {
		for (var m = _min_args; m < argument_count; m+=2) {
			//I LOVE PEMDAS I LOVE IT SO MUCH
			//print([argument[m], argument[m + 1]])
			var _value = argument[m];
			//
			switch(argument[m]) {
				case "+":
				case "add":
					_step_2 += argument[m + 1]; //Addition
				break;
				case "-":
				case "minus":
					_step_2 -= argument[m + 1]; //Addition
				break;			
				case "*":
				case "x":
				case "multi":
					_step_1 *= argument[m + 1]; //Multiplication
				break;
				case "/":
				case "divide":
					_step_1 /= argument[m + 1]; //Division
				break;
				case "power": //Note: This one takes 3 arguments
					_step_1 *= power(argument[m + 1], argument[m + 2]) 
					m++;
				break;		
				case "set": //No matter what set the value to this number (unless skipped)
					if (argument[m + 1] != "skip") {
						_set_value = argument[m + 1];
						_do_set = true;
						m = argument_count;
					}					
				break;
			}
		}
		//if (_hitbox_value == HG_WIDTH && _attack_being_changed == AT_USPECIAL) {
		//	print(string(_base) + " * " + string(_step_1) + " + " + string(_step_2) + " = " + string(_base * _step_1 + _step_2))
		//}
		_new_value = (_base + _step_2) * _step_1; 
		if (_do_set) {
			_new_value = _set_value;
		}
		//if (_attack_being_changed == AT_FSPECIAL) {
		//	print([_base, _step_2, _step_1])
		//}
	}
	//print([_base, _new_value])
	set_hitbox_value(_attack_being_changed, _hitbox_being_changed, _hitbox_value, _new_value);
}

#define ror_attack_change() {
	var _attack_being_changed = argument[0]
	var _hitbox_value = argument[1]
	
	reset_attack_value( _attack_being_changed, _hitbox_value)
	
	var _step_1 = 1; //Multiplication and Division
	var _step_2 = 0; //Addiction and Subtraction
	var _base = get_attack_value(_attack_being_changed , _hitbox_value);
	var _new_value = _base * _step_1 + _step_2;
	var _min_args = 2;
	if ((argument_count - _min_args) % 2 == 0) && (argument_count > _min_args) {
		for (var m = _min_args; m < argument_count; m+=2) {
			//I LOVE PEMDAS I LOVE IT SO MUCH
			//print([argument[m], argument[m + 1]])
			var _value = argument[m];
			//
			switch(argument[m]) {
				case "+":
				case "add":
					_step_2 += argument[m + 1]; //Addition
				break;
				case "-":
				case "minus":
					_step_2 -= argument[m + 1]; //Addition
				break;			
				case "*":
				case "x":
				case "multi":
					_step_1 *= argument[m + 1]; //Multiplication
				break;
				case "/":
				case "divide":
					_step_1 /= argument[m + 1]; //Division
				break;				
			}
		}
		//print(string(_base) + " * " + string(_step_1) + " + " + string(_step_2) + " = " + string(_base * _step_1 + _step_2))
		_new_value = (_base + _step_2) * _step_1; 
	}
	//print([_base, _new_value])
	set_attack_value(_attack_being_changed , _hitbox_value, _new_value);
}

#define change_stage_layout() {
	//
	var _last_element = stage_element;
	var _stage_element = ror_rng_call(5, array_length(stage_colors) - 1); //Denies Finale
	var _num = 0;
	while _last_element == _stage_element {
		_stage_element = ror_rng_call(5 + _num, array_length(stage_colors) - 1);
		_num++;
	}
	//Match Point Stage Layout
	var _match_point = false;
	with oPlayer {
		if (ror_points == obj_stage_main.points_to_win - 1) {
			_match_point = true;
		}
	}
	if _match_point {
		_stage_element = array_length(stage_colors) - 1;
	}
	//
	//print("Changing Layout")
	var _sides = ror_rng_call(1, 10);
	var _create_sides = ror_rng_call(2, 10) == 0 ? false : true;
	//Middle Platform
	var _top = ror_rng_call(3, 2);
	var _create_top = ror_rng_call(2, 10) <= 4 ? false : true;
	//print(_create_top)
	if argument_count {
		var _sides = argument[0] == "Off" ? 0 : argument[0];
		var _top = argument[1] == "Off" ? 0 : argument[1];
		var _create_sides = argument[0] != "Off";
		var _create_top = argument[1] != "Off";
		_stage_element = argument[2];
		
		menu_options.stage_side[1] = argument[0];
		menu_options.stage_center[1] = argument[1];
		menu_options.stage_art[1] = stage_art[argument[2]];
		
		plat_sides_pos = argument[0];
		plat_center_pos = argument[1];
		stage_element = argument[2];
	} else {
		menu_options.stage_side[1] = _sides;
		menu_options.stage_center[1] = _top;
		menu_options.stage_art[1] = stage_art[_stage_element];
		/*
		menu_text[_menu_sides_plat , 1] = _sides;
		menu_text[_menu_center_plat , 1] = _top;
		menu_text[_menu_stage_art , 1] = stage_art[_stage_element];
		*/
		
		plat_center_pos = _create_top ? _top : "Off" ;
		plat_sides_pos = _create_sides ? _sides : "Off" ;
		stage_element = _stage_element;
	}
	//Platforms
	stage_plat_left.x = get_marker_x(10 + _sides)
	stage_plat_left.dest_y = get_marker_y(10 + _sides)
	stage_plat_left.y = get_marker_y(96);
		stage_plat_left.image_index = _stage_element;
	stage_plat_right.x = get_marker_x(20 + _sides)
	stage_plat_right.dest_y = get_marker_y(20 + _sides)
	stage_plat_right.y = get_marker_y(96);
		stage_plat_right.image_index = _stage_element;
	stage_plat_center.x = get_marker_x(_top == 0 ? 1 : 30)
	stage_plat_center.dest_y = get_marker_y(_top == 0 ? 1 : 30)
	stage_plat_center.y = get_marker_y(96);
		stage_plat_center.image_index = _stage_element;
	//Bazaar Platforms
	brook_plat_left.image_index = _stage_element;
	brook_plat_right.image_index = _stage_element;
	//Ground
	stage_ground_sides.image_index = _stage_element;
	stage_ground_sides.image_blend = stage_colors[_stage_element, 0];
	stage_fade.image_blend = stage_colors[_stage_element, 1];
	//stage_bg.image_blend = stage_colors[_stage_element, 1];	
	stage_ground_main.image_index = _stage_element;
	stage_ground_bg.image_index = _stage_element
	stage_bg.image_index = _stage_element;
	
	//On / Off
	if !_create_sides {
		stage_plat_left.y = room_height * 8;
		stage_plat_right.y = room_height * 8;
		stage_plat_left.dest_y = room_height * 8;
		stage_plat_right.dest_y = room_height * 8;
	}
	if !_create_top {
		stage_plat_center.y = room_height * 8;
		stage_plat_center.dest_y = room_height * 8;
	}
	//Music
	//print(music_packs[current_music_pack][1, stage_element]);
	//music_play_file( music_packs[current_music_pack][1, stage_element] );
	if !(round_state == "reconstruct" && ror_reconstruct_step < 2) {
		change_music = 30;
		music_fade( 0, .05 );
	}
	//music_fade( 0.1, 0.025 );
	//
	
	//
	if (ror_ssl_visuals) {
		stage_bg.sprite_index = sprite_get("ssl_holo_bg");
		stage_ground_bg.sprite_index = sprite_get("ssl_holo_ground_bg");
		stage_plat_left.sprite_index = sprite_get("ssl_holo_plat");
		stage_plat_right.sprite_index = sprite_get("ssl_holo_plat");
		stage_plat_center.sprite_index = sprite_get("ssl_holo_plat");
		stage_ground_sides.sprite_index = sprite_get("ssl_holo_color");
			stage_ground_sides.image_blend = c_white;
		stage_ground_main.sprite_index = sprite_get("ssl_holo_ground");
		stage_table.sprite_index = sprite_get("ssl_holo_table");
		stage_fade.sprite_index = sprite_get("empty");
		//stage_fade.sprite_index = sprite_get("ssl_holo_fadebg");
		brook_plat_left.sprite_index = sprite_get("ssl_holo_plat");
		brook_plat_right.sprite_index = sprite_get("ssl_holo_plat");
	}
	//
}

#define rogue_rng_outcome(_range, _rerolls, _type) {
	var _attempts = 1;
	var _return_value = ror_rng_call(_attempts, _range);
	var _values = [_return_value];
	if (obj_stage_main.disable_star) {
		return _return_value;
	}
	for (var _i = 0; _i < _rerolls; _i++) {
		_attempts++;
		switch(_type) {
			case "lower":
				var _new = ror_rng_call(_attempts, _range);
				if (_return_value > _new) {
					_return_value = _new;
				}
			break;	
			default:
			case "higher":
				var _new = ror_rng_call(_attempts, _range);
				if (_return_value < _new) {
					_return_value = _new;
				}
			break;
			case "once":
				i = _rerolls;
			break;
		}
		array_push(_values, _new);
	}
	//print(["5 Leaf Clover Results: ", player, string(_type), _return_value, _values])
	return _return_value;
}

#define ror_rng_call(_offset, _mod) {
	if _offset == 0 {
		_offset = 1;
	}
	if (_mod == 0) {
		_mod = 1;
	}
	obj_stage_main.ror_custom_seed += get_gameplay_time() + round(get_gameplay_time() * sin(get_gameplay_time())) + get_gameplay_time() * _offset;
	obj_stage_main.ror_custom_seed += random_func_2(_offset % 200, 99, true);
	obj_stage_main.ror_custom_seed %= 999999;
	var _rng_call = obj_stage_main.ror_custom_seed % power(_offset, _mod);
	//for (var _l = 0; _l <= _offset; _l++) {
	//	obj_stage_main.ror_custom_seed += _offset * random_func_2(_offset, 99, true) * random_func_2(_offset * 2, 99, true);
	//}
	//print(_rng_call % _mod);
	return obj_stage_main.ror_custom_seed % _mod;
}

#define ror_savedata() { //Export Data
	var _data = ""
	for (var i = 0; i < array_length(main_players); i++) {
		_data += "[" + string(i);
		for (j = 0; j < array_length(main_players[i].ror_items); j++) {
			_data += "|" + string(main_players[i].ror_items[j].name);
		}
		_data += "]"
	}	

	var _message = menu_text[_menu_data , 0] == "Import Data" ? "Paste Exported Data in here (All Players must import the same Data Set)" : "Copy and Save this Data for another Rogue Game (Give to all Players)"
	var _return = get_string(_message, _data);
	
	return _return;
}

#define ror_loaddata(_data) { //Import Data
	var _index = 0;
	//for (var i = 0; i < array_length(main_players); i++) {
	//	
	//}
	var _curr_item = "";
	var _curr_player = 0;
	while _index <= string_length(_data) {
		//print(string_char_at(_data, _index));
		var _char = string_char_at(_data, _index);
		switch(_char) {
			case "[": //Beginning of Player
				//
				_index += 3;
			break;
			case "]": //Ending of Player / Increases player when it ends
			case "|": //Item Break
				//print(_curr_item)
				//Find Item
				with main_players[_curr_player] {
					card_choice(get_item_from_name(_curr_item));
				}
				//
				_curr_item = "";
			break;
			default:
				_curr_item += _char;
			break;
		}
		if (_char == "]") {
			_curr_player++;
			_index += 3;
		}
		_index += 1;
	}	
	//print(_curr_item)
}

#define get_item_from_name(_name) {
	var _item = -4;
	//print(obj_stage_main.items_all)
	for (var n = 0; n < array_length(obj_stage_main.items_all); n++) {
		//print([_name, obj_stage_main.items_all[n].name])
		if (obj_stage_main.items_all[n].name == _name) {
			return obj_stage_main.items_all[n];
		}
	}
	return _item
}

#define attack_to_name(_attack) {
	switch(_attack) {
		case AT_JAB: return "Jab" break;
		case AT_DATTACK: return "Dash Attack" break;
		case AT_TAUNT: return "Taunt" break;
		case AT_TAUNT_2: return "Taunt 2" break;
		//Tilts
		case AT_FTILT: return "Forward Tilt" break;
		case AT_DTILT: return "Down Tilt" break;
		case AT_UTILT: return "Up Tilt" break;
		//Strong
		case AT_FSTRONG: return "Forward Strong" break;
		case AT_FSTRONG_2: return "Forward Strong 2" break;
		case AT_DSTRONG: return "Down Strong" break;
		case AT_DSTRONG_2: return "Down Strong 2" break;
		case AT_USTRONG: return "Up Strong" break;
		case AT_USTRONG_2: return "Up Strong 2" break;
		//Specials
		case AT_NSPECIAL: return "Neutral Special" break;
		case AT_NSPECIAL_2: return "Neutral Special 2" break;
		case AT_NSPECIAL_AIR: return "Neutral Special (Air)" break;
		case AT_FSPECIAL: return "Forward Special" break;
		case AT_FSPECIAL_2: return "Forward Special 2" break;
		case AT_FSPECIAL_AIR: return "Forward Special (Air)" break;
		case AT_DSPECIAL: return "Down Special" break;
		case AT_DSPECIAL_2: return "Down Special 2" break;
		case AT_DSPECIAL_AIR: return "Down Special (Air)" break;
		case AT_USPECIAL: return "Up Special" break;
		case AT_USPECIAL_2: return "Up Special 2" break;
		case AT_USPECIAL_GROUND: return "Up Special (Grounded)" break;
		//Aerials
		case AT_NAIR: return "Neutral Aerial" break;
		case AT_FAIR: return "Forward Aerial" break;
		case AT_DAIR: return "Down Aerial" break;
		case AT_BAIR: return "Back Aerial" break;
		case AT_UAIR: return "Up Aerial" break;
		//Throws
		case AT_NTHROW: return "Neutral Throw" break;
		case AT_FTHROW: return "Forward Throw" break;
		case AT_DTHROW: return "Down Throw" break;
		case AT_UTHROW: return "Up Throw" break;
		//Extras
		case AT_EXTRA_1: return "Extra 1" break;
		case AT_EXTRA_2: return "Extra 2" break;
		case AT_EXTRA_3: return "Extra 3" break;
		default: return _attack break;
	}	
}

#define buddy_particle(_player_id, _num, _card, _type) {
	if !(obj_stage_main.show_particles) { exit; }
	
	if (obj_stage_main.round_state == "alive" || obj_stage_main.round_state == "break_round") {
		_num = item_display_offset;
		item_display_offset++;
	}
	with obj_stage_main {
		var _particle = instance_create(floor(_player_id.x - _player_id.spr_dir * 32 * (_num % 5)), floor(_player_id.y - _player_id.char_height * 1.5) - floor(_num / 5) * 32, "obj_stage_article", 6);
		_particle.card_icon = _card.icon;
		_particle.card_sprite = _card.sprite;
		_particle.player_owner = _player_id;
		_particle.delay = 3;
		_particle.visible = false;
		//
		_particle.offset_x = (_num % 5) * -_player_id.spr_dir;
		_particle.offset_y = floor(_num / 5); 
		//
		if _type == "remove" {
			_particle.card_color = c_red;
		}
	}
	//print(["Buddy Particle", _card.name, _num])
}

#define create_printers(_offset) {
	//if (ror_printers && round_state_timer == 120 + (practice_mode ? 60 : 900)) {
	if (round_state_timer == 120 + _offset) {
		//OBJECTS
		_spawn_offset = 134; //144
		_range = 3;
		var _spawned_objects = 0;
		var _object_pos = array_create(2 * _range + 1, 0);
		
		var _spawn_pos = -160; //160
		//End Break Object
		_object_pos[_range] = true;
		_spawned_objects++;
		var _brook = instance_create(room_width / 2, _spawn_pos, "obj_stage_article", 12);
		_brook.object_type = "exit"
		//_brook.sprite_index = sprite_get("ror_brook");
		//Brook Anims
		var _random_quote = ror_rng_call(10, 5);
		switch(obj_stage_main.stage_element) {
			case 0://Mountain
				_brook.sprite_index = sprite_get("brook_mountain");
				_brook.bazaar_quote = obj_stage_main.brook_quote_mount[_random_quote];
			break;
			case 1://Volcano
				_brook.sprite_index = sprite_get("brook_volcano");
				_brook.bazaar_quote = obj_stage_main.brook_quote_volcano[_random_quote];
			break;
			case 2://Seafloor
				_brook.sprite_index = sprite_get("brook_seafloor");
				_brook.bazaar_quote = obj_stage_main.brook_quote_seafloor[_random_quote];
			break;
			case 3://Cityscape
				_brook.sprite_index = sprite_get("brook_city");
				_brook.bazaar_quote = obj_stage_main.brook_quote_city[_random_quote];
			break;
			case 4://Forest
				_brook.sprite_index = sprite_get("brook_forest");
				_brook.bazaar_quote = obj_stage_main.brook_quote_forest[_random_quote];
			break;
			case 5://Finale
				_brook.sprite_index = sprite_get("brook_finale");
				_brook.bazaar_quote = obj_stage_main.brook_quote_finale[_random_quote];
			break;
		}
		//Bazaar Easter Egg
		if (obj_stage_main.ror_game_has_brook) {
			_brook.sprite_index = sprite_get("brook_cardboard");
			_brook.bazaar_quote = "...";
		}
		//
		if (obj_stage_main.ror_ssl_visuals) {
			_brook.sprite_index = sprite_get("brook_ssl")
		}
		_brook.mask_index = sprite_get("ror_printer_mask");
		#region //Printers
		var _printer_items = [];
		//
		if ror_printers {
			while (ror_printers && _spawned_objects < (_range * 2 + 1)) {
				//Spawns
				_spawned_objects++;
				var _printer = instance_create(room_width / 2, _spawn_pos, "obj_stage_article", 12);
				//RNG
				var _rng = (ror_rng_call(ror_printers, 1 + _range * 2)) - _range;
				var _spawn_attempt = 0;
				//print(_object_pos)
				while (_object_pos[_rng + _range]) {
					_spawn_attempt++
					_rng = (ror_rng_call(ror_printers + _spawn_attempt, 1 + _range * 2)) - _range;
				}
				_object_pos[_rng + _range] = true;
				//Offsets
				_printer.x += _rng * _spawn_offset;
				_printer.y -= _spawned_objects * _spawn_offset;
				_printer.death_offset = 5 * _spawned_objects;
				var _okay_to_print = false;
				var _print_count = 0;
				while (!_okay_to_print && _print_count < 10) {
					//Printer Item Creation
					var _roll = ror_rng_call(11 + 10 * ror_printers + _print_count, 100 + _print_count) + 1;
						_roll += (30 * obj_stage_main.ror_better_bazaar); //Dragon Ball Wish
								
					var _rates = luck_math(0);
					var _common_rate = _rates[0];
					var _rare_rate = _rates[1];
					var _epic_rate = _rates[2];
					var _legend_rate = _rates[3];
					//			
					var _print_array = -4;
					if (_roll <= _common_rate) { //Common
						_print_array = obj_stage_main.items_commons;
						_printer.rarity = 0;
					} else if (_roll <= _common_rate + _rare_rate) { //Rare
						_print_array = obj_stage_main.items_rares;
						_printer.rarity = 1;
					} else if (_roll <= _common_rate + _rare_rate + _epic_rate) { //Epic
						_print_array = obj_stage_main.items_epics;	
						_printer.rarity = 2;
					} else { //Legendaries
						_print_array = obj_stage_main.items_legends;	
						_printer.rarity = 3;
					}
					
					//Etalus Test
					//_print_array = obj_stage_main.items_legends;	
					//_printer.rarity = 3;
					//
					
					var _roll2 = ror_rng_call(7 + ror_printers, array_length(_print_array));

					_printer.card_info =  _print_array[_roll2];
					
					//No Repeats
					var _not_in_printer_list = true;
					for (var i = 0; i < array_length(_printer_items); i++) {
						if (
							_print_array[_roll2].name == _printer_items[i]						
						) {
							_not_in_printer_list = false;
							_print_count++;							
							i = array_length(_printer_items);
							//print(["Skip Print Check", _print_array[_roll2].name])
						}
					}	
					//Blacklist
					//_print_array[_roll2] = card_etalus_jc;
					//
					if (
						ror_scrappers &&
						(
							_print_array[_roll2].name == "Crazy Luck"	 ||
							_print_array[_roll2].name == "Crazy Luck+"	 ||
							_print_array[_roll2].name == "Crazy Luck++"	 ||
							_print_array[_roll2].name == "Crazy Luck+++"
						)
					) || (//Gamemode Blacklists
							//Random Stage
								(_print_array[_roll2].name == "Reconstruct" && obj_stage_main.random_stages) //	
							//Bazaar Only
							||	(_print_array[_roll2].name == "Great Asset" && obj_stage_main.bazaar_only) //
					) {
						//_not_in_printer_list = false;
						//print(["Black List", _print_count]);
						_not_in_printer_list = false;
						_print_count++;
					}
					
					var _black_list_check = 0
					for (var i = 0; i < array_length(main_players); i++) {
						if blocked_items(main_players[i].player, _print_array[_roll2]) {
							_black_list_check++;
						}
					}
					if (_black_list_check >= array_length(main_players)) {
						_not_in_printer_list = false;
						_print_count++;
					}
					//picky_eater_check
					//
					
					if (_not_in_printer_list) {
						//print([_print_array[_roll2].name, _print_count])
						array_insert(_printer_items, array_length(_printer_items), _print_array[_roll2].name);
						_okay_to_print = true;
					}
				}
				
				//Final Max
				if (_print_count >= 10) {
					_roll2 = 0;
					//print(["Forced Luck", print(_printer.card_info.name)]);
					//print(["Forced Luck", _print_array[_roll2].name, _print_count, array_length(_printer_items)])
					_printer.card_info = _print_array[0]
				}
				//print([_print_count >= 10 ? "Forced Luck" : "Regular Pick", _print_count, print(_printer.card_info.name)]);
				
				//Use this to change what printer appears in the bazaar
				//_printer.card_info = obj_stage_main.card_misstery;
				
				_printer.sprite_index = obj_stage_main.ror_ssl_visuals ? sprite_get("ror_printer_ssl") : sprite_get("ror_printer");
				_printer.mask_index = sprite_get("ror_printer_mask");
				_printer.object_type = "printer";
				_printer.image_index = obj_stage_main.ror_better_bazaar ? 1 : 0;
				//
				ror_printers--;
			}
		}
		//print(["Items", _printer_items])
		#endregion
		#region //Scrapper
		if ror_scrappers {
			while (ror_scrappers && _spawned_objects < (_range * 2 + 1)) {
				//Spawns
				_spawned_objects++;
				var _printer = instance_create(room_width / 2, _spawn_pos, "obj_stage_article", 12);
				//RNG
				var _rng = (ror_rng_call(ror_scrappers, 1 + _range * 2)) - _range;
				var _spawn_attempt = 0;
				//print(_object_pos)
				while (_object_pos[_rng + _range]) {
					_spawn_attempt++
					_rng = (ror_rng_call(ror_scrappers + _spawn_attempt, 1 + _range * 2)) - _range;
				}
				_object_pos[_rng + _range] = true;
				//Offsets
				_printer.x += _rng * _spawn_offset;
				_printer.y -= _spawned_objects * _spawn_offset;
				_printer.death_offset = 5 * _spawned_objects;
				
				_printer.sprite_index = obj_stage_main.ror_ssl_visuals ? sprite_get("ror_scrapper_ssl") : sprite_get("ror_scrapper");
				_printer.mask_index = sprite_get("ror_small_obj_mask");
				_printer.object_type = "scrapper";
				_printer.image_index = obj_stage_main.ror_better_bazaar ? 1 : 0;
				//
				ror_scrappers--;
			}
		}
		#endregion
	}
}


#define rogue_export_info(_array) {
	var _export = "";
	var _new_line = chr(10);
	var _tab = chr(9);
	var _quot = chr(39);
	
	for(var i = 0; i < array_length(_array); i++) {
		//Name
		_export += _array[i].name;
		_export += _tab;
		//Icon (Empty)
		_export += _tab;	
		//Rarity
		switch (_array[i].rarity) {
			case "C": _export += "Common"; break;
			case "R": _export += "Rare"; break;
			case "E": _export += "Epic"; break;
			case "L": _export += "Legendary"; break;
		}
		_export += _tab;
		//Max
		_export += string(_array[i].max);
		_export += _tab;
		//Description
		_export += _quot + _array[i].desc;
		_export += _tab;
		//Scrappable
		_export += "can_scrap" in _array[i] && !_array[i].can_scrap ? "No" : "Yes";
		_export += _tab;
		//Synergy
		//
		//Specific Details
		//
		
		//Next
		_export += _new_line
	}

	
	get_string("Rogue Item Data", string(_export));
}

#define pause_menu() {
		#region Pause Menu
		//Pause Game Menu
		with oPlayer {
			if (shield_down && taunt_pressed) && get_gameplay_time() >= 120 {
				clear_button_buffer(PC_TAUNT_PRESSED)
				obj_stage_main.game_paused = !obj_stage_main.game_paused;
				obj_stage_main.ror_patch_note_show = false;
				obj_stage_main.pause_player = obj_stage_main.game_paused ? player : -4;
				//
				obj_stage_main.menu_pos = 0;
				obj_stage_main.menu_page = 0;
				//Title Stuff
				obj_stage_main.ror_title_option = obj_stage_main.ror_title_prev_option;
				obj_stage_main.ror_title_depth = 0;
				obj_stage_main.ror_patch_note_scroll = 0;
				//
			}
		}
		//
		if (game_paused) {
			choose_timer = obj_stage_main.choose_timer_seconds * 60;
			//choose_timer = 180;
			with oPlayer {
				
				#region //Movement Removal
				#region //Player Spawn Locations
				if obj_stage_main.ror_boss_mode {
					if (obj_stage_main.ror_boss_player == player) {
						x = get_marker_x(53);
						y = get_marker_y(53);
						spr_dir = -1;
					} else {
						x = get_marker_x(50 + obj_stage_main.boss_team_pos[player]);
						y = get_marker_y(50 + obj_stage_main.boss_team_pos[player]);
						spr_dir = 1;
					}
				} else {
					x = ror_x;
					y = ror_y;
					spr_dir = ror_spr_dir;
				}
				#endregion
				if (state != PS_PRATLAND && get_gameplay_time() >= 120) {
					ror_previous_damage = 0;
					set_player_damage(player, 0);
					was_parried = true;
					parry_lag = 175; //170 when state_timer = 0;
					set_state(free ? PS_PRATFALL : PS_PRATLAND);
					visible = true;
				}
				state_timer = 5; //5 is to make some characters not kill my ears
				invince_time = 170
				invincible = true;
				//Anti Annoying Sound from falling
				sound_stop(land_sound);
				sound_stop(landing_lag_sound);
				//
				#endregion
				
				#region //Pause Menu
				if (player == obj_stage_main.pause_player) { //Pause Player
				//if (player == obj_stage_main.pause_player) || (obj_stage_main.menu_pages[obj_stage_main.menu_page, 0] == "Items") { //Pause Player
					//
					#region //Option Position Movement
					var _options = 	array_length(obj_stage_main.menu_pages[obj_stage_main.menu_page, 1]);
					var _pages = 	array_length(obj_stage_main.menu_pages);
					obj_stage_main.menu_pos = clamp(obj_stage_main.menu_pos, 0, _options - 1);
					//Page Select
					//if shield_down && (left_pressed ^^ right_pressed) && (obj_stage_main.round_state == "game_start") { //Can only use page 1 mid match
					var _item_mode = obj_stage_main.menu_pages[obj_stage_main.menu_page, 1][obj_stage_main.menu_pos, 0] == "";
					//print(obj_stage_main.menu_options.item_dictionary[1]);
					
					var _dict_rarity = obj_stage_main.menu_options.item_dictionary[1];
					//Item Dictionary
					if _item_mode {
						#region //New Item Browser
						var _row_size = 20;
						var _pos = obj_stage_main.pool_cursor[0];
						switch (_dict_rarity) {
							case "Commons":
								var _pool_array = obj_stage_main.items_custom_commons;
							break;							
							case "Rares":
								var _pool_array = obj_stage_main.items_custom_rares;
							break;							
							case "Epics":
								var _pool_array = obj_stage_main.items_custom_epics;
							break;							
							case "Legendaries":
								var _pool_array = obj_stage_main.items_custom_legends;
							break;
						}
						//Controls
						//print(obj_stage_main.pool_cursor)
						if left_pressed { ror_left_hold_timer = 0 } else { if left_down ror_left_hold_timer++ };
						if right_pressed { ror_right_hold_timer = 0 } else { if right_down ror_right_hold_timer++ };
						var _left = left_pressed || (!left_pressed && (left_down && ror_left_hold_timer && ror_left_hold_timer % ror_hold_buffer == 0));
						var _right = right_pressed || (!right_pressed && (right_down && ror_right_hold_timer && ror_right_hold_timer % ror_hold_buffer == 0));
						
						if (_left ^^ _right) {
							_pos += _left ? -1 : 1;
							sound_play(asset_get("mfx_forward"));
							if (_pos == -1) {
								_pos = 19;
							}
						}
						if (up_pressed ^^ down_pressed) {
							_pos += up_pressed ? -20 : 20;
							sound_play(asset_get("mfx_forward"));
						}
						
						if (_pos < 0) {
							_pos = _row_size + _pos;
							obj_stage_main.menu_pos--;
						} else if (_pos >= array_length(_pool_array)) {
							_pos = abs(_pos % _row_size);
						}
						
						//Item Gifting
						if (obj_stage_main.menu_dictionary) { //Practice Mode / Cheats Item Gifting
							if (attack_pressed) {
								clear_button_buffer(PC_ATTACK_PRESSED);
								sound_play(asset_get("mfx_star"));
								var _buddy = _pool_array[_pos, 0];
								//print(["Gifted", _buddy.name]);
								card_choice(_buddy)
							}
						}
						//
						obj_stage_main.pool_cursor[0] = _pos;
						#endregion
					} else {
						#region //Normal Menu Selection											
						if shield_down && (left_pressed ^^ right_pressed) { //Can only use page 1 mid match
							obj_stage_main.menu_pos = 0;
							obj_stage_main.menu_page += right_pressed ? 1 : -1;
							sound_play(asset_get("mfx_forward"));
							if (obj_stage_main.menu_page < 0 || obj_stage_main.menu_page >= _pages) {
								obj_stage_main.menu_page = obj_stage_main.menu_page < 0 ? _pages - 1 : 0;
							}
							//print([obj_stage_main.menu_page, _pages])
							//Buffers
							clear_button_buffer(PC_UP_HARD_PRESSED);
							clear_button_buffer(PC_DOWN_HARD_PRESSED);
						}
						//Option Select
						if (up_pressed ^^ down_pressed) { //Can only use page 1 mid match
							obj_stage_main.menu_pos += down_pressed ? 1 : -1;
							sound_play(asset_get("mfx_forward"));
							if (obj_stage_main.menu_pos < 0 || obj_stage_main.menu_pos >= _options) {
								obj_stage_main.menu_pos = obj_stage_main.menu_pos < 0 ? _options - 1 : 0;
							}
							//Buffers
							clear_button_buffer(PC_UP_HARD_PRESSED);
							clear_button_buffer(PC_DOWN_HARD_PRESSED);
						}
						#endregion
					}
					#endregion

					//
					#region Option Activation
					var _option_name = obj_stage_main.menu_pages[obj_stage_main.menu_page, 1][obj_stage_main.menu_pos, 0];
					var _option_value = obj_stage_main.menu_pages[@obj_stage_main.menu_page, 1][@obj_stage_main.menu_pos, 1];
					if (attack_pressed) {
						switch(_option_name) {
							#region //Menuing
							case "Scroll Page":
								obj_stage_main.menu_pos = 0;
								obj_stage_main.menu_page += left_down ? -1 : 1;
								sound_play(asset_get("mfx_forward"));
								if (obj_stage_main.menu_page < 0 || obj_stage_main.menu_page >= _pages) {
									obj_stage_main.menu_page = obj_stage_main.menu_page < 0 ? _pages - 1 : 0;
								}
							break;
							case "Exit Menu":
								obj_stage_main.game_paused = !obj_stage_main.game_paused;
								obj_stage_main.pause_player = obj_stage_main.game_paused ? player : -4;
								//
								obj_stage_main.ror_patch_note_show = false;
								obj_stage_main.ror_title_option = obj_stage_main.ror_title_prev_option;
								obj_stage_main.ror_title_depth = 0;
								obj_stage_main.ror_patch_note_scroll = 0;
								sound_play(asset_get("mfx_back"));
								//
							break;
							#endregion
							#region //On Off Toggles
							case "Music Pack":
								obj_stage_main.current_music_pack++;
								if obj_stage_main.current_music_pack >= array_length(obj_stage_main.music_packs) {
									obj_stage_main.current_music_pack = 0;
								}
								_option_value = obj_stage_main.music_packs[obj_stage_main.current_music_pack, 0]
								sound_play(asset_get(_option_value = "Off" ? "mfx_back" : "mfx_forward"));
								//
								with obj_stage_main {
									change_music = 30;
									music_fade( 0, .05 );
								}
								//
							break;	
							//Light Modes
							case "Light Weight Mode":
								obj_stage_main.show_icons = 	_option_value == "On";
								obj_stage_main.show_rares = 	_option_value == "On";
								obj_stage_main.show_numbers = 	_option_value == "On";
								obj_stage_main.show_weather = 	_option_value == "On";
								//
								_option_value = _option_value == "On" ? "Off" : "On";
								sound_play(asset_get(_option_value = "On" ? "mfx_confirm" : "mfx_back"));
								//
								with obj_stage_main {
									menu_options.light_icons[1] = _option_value == "On" ? "Off" : "On"
									menu_options.light_rares[1] = _option_value == "On" ? "Off" : "On"
									menu_options.light_numbers[1] = _option_value == "On" ? "Off" : "On"
									menu_options.light_weather[1] = _option_value == "On" ? "Off" : "On"
								}
							break;
							case "Display all Icons":
								_option_value = _option_value == "On" ? "Off" : "On";
								obj_stage_main.show_icons = _option_value == "On";
								sound_play(asset_get(_option_value = "On" ? "mfx_confirm" : "mfx_back"));
							break;	
							case "Display all Rarities":
								_option_value = _option_value == "On" ? "Off" : "On"
								obj_stage_main.show_rares = _option_value == "On";
								sound_play(asset_get(_option_value = "On" ? "mfx_confirm" : "mfx_back"));
							break;	
							case "Display Counts":
								_option_value = _option_value == "On" ? "Off" : "On";
								obj_stage_main.show_numbers = _option_value == "On";
								sound_play(asset_get(_option_value = "On" ? "mfx_confirm" : "mfx_back"));
							break;								
							case "Display Damage":
								_option_value = _option_value == "On" ? "Off" : "On";
								obj_stage_main.show_damage = _option_value == "On";
								sound_play(asset_get(_option_value = "On" ? "mfx_confirm" : "mfx_back"));
							break;								
							case "Display Meter Gain":
								_option_value = _option_value == "On" ? "Off" : "On";
								obj_stage_main.show_meter_gain = _option_value == "On";
								sound_play(asset_get(_option_value = "On" ? "mfx_confirm" : "mfx_back"));
							break;								
							case "Display Hitboxes":
								_option_value = _option_value == "On" ? "Off" : "On";
								obj_stage_main.show_hitbox = _option_value == "On";
								sound_play(asset_get(_option_value = "On" ? "mfx_confirm" : "mfx_back"));
							break;								
							case "Display Weather":
								_option_value = _option_value == "On" ? "Off" : "On";
								obj_stage_main.show_weather = _option_value == "On";
								sound_play(asset_get(_option_value = "On" ? "mfx_confirm" : "mfx_back"));
								//
								if !obj_stage_main.show_weather {
									set_bg_data(8, BG_LAYER_REPEAT, 0);
								}		
							break;	
							case "Display Item Particles":
								_option_value = _option_value == "On" ? "Off" : "On";
								obj_stage_main.show_particles = _option_value == "On";
								sound_play(asset_get(_option_value = "On" ? "mfx_confirm" : "mfx_back"));
								//
							break;						
							//Gamemodes
							case "Eggs Only":
								_option_value = _option_value == "On" ? "Off" : "On";
								obj_stage_main.egg_only = _option_value == "On";
								with oPlayer {
									var _num = player;
									var _luck = ror_luck;
									with obj_stage_main {
										item_select[_num] = create_item_pool(_num, _luck, _option_value == "On" ? "egg" : "normal");
									}
								}
								sound_play(asset_get(_option_value = "On" ? "mfx_confirm" : "mfx_back"));
							break;							
							case "Star Effects Opponents":
								_option_value = _option_value == "On" ? "Off" : "On";
								obj_stage_main.ror_luck_effects_opponent = _option_value == "On";
								sound_play(asset_get(_option_value = "On" ? "mfx_confirm" : "mfx_back"));
							break;								
							case "Always Scrapper":
								_option_value = _option_value == "On" ? "Off" : "On";
								obj_stage_main.always_scrapper = _option_value == "On";
								sound_play(asset_get(_option_value = "On" ? "mfx_confirm" : "mfx_back"));
							break;				
							case "5x Item Multiplier":
								_option_value = _option_value == "On" ? "Off" : "On";
								obj_stage_main.item_multi = _option_value == "On";
								sound_play(asset_get(_option_value = "On" ? "mfx_confirm" : "mfx_back"));
							break;			
							case "No Limits (Experimental)":
								_option_value = _option_value == "On" ? "Off" : "On";
								obj_stage_main.no_limits = _option_value == "On";
								sound_play(asset_get(_option_value = "On" ? "mfx_confirm" : "mfx_back"));
							break;							
							case "Disable Throwing":
								_option_value = _option_value == "On" ? "Off" : "On";
								obj_stage_main.disable_throws = _option_value == "On";
								sound_play(asset_get(_option_value = "On" ? "mfx_confirm" : "mfx_back"));
							break;	
							case "Refresh Rerolls":
								_option_value = _option_value == "On" ? "Off" : "On";
								obj_stage_main.refresh_rerolls = _option_value == "On";
								sound_play(asset_get(_option_value = "On" ? "mfx_confirm" : "mfx_back"));
							break				
							case "Winner Chooses Too":
								_option_value = _option_value == "On" ? "Off" : "On";
								obj_stage_main.winner_chooses = _option_value == "On";
								sound_play(asset_get(_option_value = "On" ? "mfx_confirm" : "mfx_back"));
							break;	
							/*							
							case "More Bazaars":
								_option_value = _option_value == "On" ? "Off" : "On";
								obj_stage_main.bazaar_count = _option_value == "On" ? 5 : 10;
								sound_play(asset_get(_option_value = "On" ? "mfx_confirm" : "mfx_back"));
								//
							break;	
							*/
								#region //Item Choices
								case "Items on Start":
									var _count = obj_stage_main.choices_on_start;
									if _count == 5 {
										_count = 0;
										sound_play(asset_get("mfx_back"));
									} else {
										_count += 1;
										sound_play(asset_get("mfx_confirm"));
									}
									obj_stage_main.choices_on_start = _count;
									_option_value = _count;
									//
									reset_ready_players();
								break;
								case "Items on Loss":
									var _count = obj_stage_main.choices_on_loss;
									if _count == 5 {
										_count = 0;
										sound_play(asset_get("mfx_back"));
									} else {
										_count += 1;
										sound_play(asset_get("mfx_confirm"));
									}
									obj_stage_main.choices_on_loss = _count;
									_option_value = _count;
									//
									reset_ready_players();
								break;
								case "Items on Win":
									var _count = obj_stage_main.choices_on_win;
									if _count == 5 {
										_count = 0;
										sound_play(asset_get("mfx_back"));
									} else {
										_count += 1;
										sound_play(asset_get("mfx_confirm"));
									}
									obj_stage_main.choices_on_win = _count;
									_option_value = _count;
									//
									reset_ready_players();
								break;
								#endregion
								//
							case "Bazaar Frequency":
								switch(_option_value) {
									case "Normal (10)":
										_option_value = "More (5)";
										obj_stage_main.bazaar_count = 5;
										sound_play(asset_get("mfx_back"));
									break;
									case "More (5)":
										_option_value = "Never (0)";
										obj_stage_main.bazaar_count = 0;
										sound_play(asset_get("mfx_back"));
									break;
									case "Never (0)":
										_option_value = "Less (20)";
										obj_stage_main.bazaar_count = 20;
										sound_play(asset_get("mfx_confirm"));
									break;									
									case "Less (20)":
										_option_value = "Normal (10)";
										obj_stage_main.bazaar_count = 10;
										sound_play(asset_get("mfx_back"));
									break;
									default:									
									break;
								}
							break;						
							case "Starting Rerolls":
								if (obj_stage_main.round_state == "game_start" || obj_stage_main.round_state == "title_screen") {
									switch(_option_value) {
										case "Default (5)":
											_option_value = "More (10)";
											with oPlayer {
												ror_rerolls = 10;
												ror_max_rerolls = ror_rerolls;
											}
											sound_play(asset_get("mfx_confirm"));
										break;
										case "More (10)":
											_option_value = "Too Many (20)";
											with oPlayer {
												ror_rerolls = 20;
												ror_max_rerolls = ror_rerolls;
											}
											sound_play(asset_get("mfx_confirm"));
										break;
										case "Too Many (20)":
											_option_value = "None (0)";
											with oPlayer {
												ror_rerolls = 0;
												ror_max_rerolls = ror_rerolls;
											}
											sound_play(asset_get("mfx_back"));
										break;
										case "None (0)":
											_option_value = "Minimal (1)";
											with oPlayer {
												ror_rerolls = 1;
												ror_max_rerolls = ror_rerolls;
											}
											sound_play(asset_get("mfx_confirm"));
										break;									
										case "Minimal (1)":
											_option_value = "Default (5)";
											with oPlayer {
												ror_rerolls = 5;
												ror_max_rerolls = ror_rerolls;
											}
											sound_play(asset_get("mfx_confirm"));
										break;
										default:									
										break;
									}
								} else {
									sound_play(sound_get("nuh uh"));
								}
							break;
							case "Bazaar Only":
								_option_value = _option_value == "On" ? "Off" : "On";
								obj_stage_main.bazaar_only = _option_value == "On";
								obj_stage_main.force_bazaar = _option_value == "On";
								sound_play(asset_get(_option_value = "On" ? "mfx_confirm" : "mfx_back"));
								//
								with oPlayer {
									var _num = player;
									var _luck = ror_luck;
									with obj_stage_main {
										item_select[_num] = create_item_pool(_num, _luck, "normal");
									}
								}
								//
							break;		
							case "Random Stages":
								_option_value = _option_value == "On" ? "Off" : "On";
								obj_stage_main.random_stages = _option_value == "On";
								sound_play(asset_get(_option_value = "On" ? "mfx_confirm" : "mfx_back"));
							break;
							case "Choose Items":
								_option_value = _option_value == "On" ? "Off" : "On";
								obj_stage_main.artifact_of_command = _option_value == "On";
								with oPlayer {
									var _num = player;
									var _luck = ror_luck;
									with obj_stage_main {
										item_select[_num] = create_item_pool(_num, _luck, "normal");
									}
								}
								sound_play(asset_get(_option_value = "On" ? "mfx_confirm" : "mfx_back"));
							break;	
							case "Blackout Draft": //Blackout Gamemode
								_option_value = _option_value == "On" ? "Off" : "On";
								obj_stage_main.blackout_draft = _option_value == "On";
								sound_play(asset_get(_option_value = "On" ? "mfx_confirm" : "mfx_back"));
							break;
							case "Item Dictionary": //Item Dictionary
								switch(_option_value) {
									case "Info":
										_option_value = "Bans";
									break;									
									case "Bans":
										_option_value = "Cheats";
									break;									
									case "Cheats":
										_option_value = "Info";
									break;
								}
								//_option_value = _option_value == "Cheats" ? "Info" : "Cheats";
								obj_stage_main.menu_dictionary = _option_value == "Cheats";
								obj_stage_main.item_set_can_ban = _option_value == "Bans";
								//sound_play(asset_get(_option_value = "Cheats" ? "mfx_confirm" : "mfx_back"));
								sound_play(asset_get("mfx_confirm"));
							break;
							case "Allow Midgame Bans": //Allow New Item Bans
								_option_value = _option_value == "On" ? "Off" : "On";
								obj_stage_main.item_set_can_ban = _option_value == "On";
								sound_play(asset_get(_option_value = "On" ? "mfx_confirm" : "mfx_back"));
							break;				
							case "Disable Item Picking": //Disable Item Picks
								_option_value = _option_value == "On" ? "Off" : "On";
								obj_stage_main.disable_item_picks = _option_value == "On";
								sound_play(asset_get(_option_value = "On" ? "mfx_confirm" : "mfx_back"));
							break;
							case "Quick Draft": //Disable Item Picks
								_option_value = _option_value == "On" ? "Off" : "On";
								obj_stage_main.frontload_items = _option_value == "On";
								sound_play(asset_get(_option_value = "On" ? "mfx_confirm" : "mfx_back"));
								//
								with obj_stage_main {
									if (round_state == "game_start" || round_state == "title_screen") {
										//choose_amount = frontload_items ? [1, 1, 1, 1, 1] : [3, 3, 3, 3, 3];	
										choices_on_start = frontload_items ? 1 : 3;		
										choices_on_loss = ror_tis_the_season ? 0 : 2;
										choices_on_win = ror_tis_the_season ? 0 : 0;
										//Frontload Draft
										if frontload_items {
											if (get_match_setting( SET_STOCKS ) == 3) {
												points_to_win = 5;
											} else {
												points_to_win = practice_mode ? 999 : get_match_setting( SET_STOCKS )
											}
											//
										} else {
											if get_match_setting( SET_STOCKS ) == 3 {
												//Defaults
												if (teams_mode) {
													points_to_win = 20;
												} else {
													switch(array_length(main_players)) {
														case 3:
															points_to_win = 15;
														break;
														case 4:
															points_to_win = 10;
														break;
														default:
															points_to_win = 20;
														break;
													}
												}
											} else {
												points_to_win = practice_mode ? 999 : get_match_setting( SET_STOCKS )
											}
											//
										}
									}
								}
								//Reset CPUs
								with obj_stage_main {
									item_choice = [];
									for (var i = 0; i <= 4; i++) {
										ready_players[i] = false;
										array_push(item_choice, [0, 0, 0, 0, 0]);
										if 	i > 0 && 
											(
												!is_player_on(i) ||
												(instance_exists(last_alive) && get_player_team(last_alive.player) == get_player_team(i) && !choices_on_win)
											) {
											ready_players[i] = true;
										}
									}
								}
							break;
							case "Boss Player": //Boss 1v3 Gamemode
								with obj_stage_main {
									//Resets
									team_1 = 0;
									team_2 = 0;
									boss_team_pos = [-4, -4, -4, -4, -4];
									//Boss Choice
									if _option_value == "Off" {
										var _boss_player = 1;
									} else {
										var _boss_player = ror_boss_player + 1;
									}								
									for (var i = 0; i < 4; i++) {
										if is_player_on(_boss_player) {
											i = infinity;
											_option_value = string(_boss_player)
											ror_boss_player = _boss_player;
										} else {
											_boss_player++;
										}										
									}
									if _boss_player > 4 {
										ror_boss_player = -4;
										_option_value = "Off";
									}
									//
									if _option_value == "Off" {
										with oPlayer {
											//Original Teams
											if "ror_team_orig" in self {
												set_player_team(player, ror_team_orig);
												if (get_player_team(player) == 1) {
													obj_stage_main.team_1++;
												} else if (get_player_team(player) == 2) {
													obj_stage_main.team_2++;
												}
											}
										}
									} else {
										var _team_pos = 0;
										with oPlayer {
											//Main Players
											if "ror_team_orig" in self {
												if _boss_player == player {
													set_player_team(player, 1);
													obj_stage_main.team_1++;
												} else {
													set_player_team(player, 2);
													obj_stage_main.team_2++;
													obj_stage_main.boss_team_pos[player] = _team_pos;	
													_team_pos++;
												}
											}
										}
										//print(obj_stage_main.boss_team_pos);
									}
									//
								}
								obj_stage_main.ror_boss_mode = _option_value != "Off";
								sound_play(asset_get(_option_value = "On" ? "mfx_confirm" : "mfx_back"));
							break;
							case "Jolly Festivities Only": //All Padoru
								_option_value = _option_value == "On" ? "Off" : "On";
								obj_stage_main.ror_tis_the_season = _option_value == "On";
								sound_play(asset_get(_option_value = "On" ? "mfx_confirm" : "mfx_back"));
								//1 Item Per
								with obj_stage_main {
									if (round_state == "game_start" || round_state == "title_screen") {
										//choose_amount = ror_tis_the_season ? [1, 1, 1, 1, 1] : [3, 3, 3, 3, 3];
										choices_on_start = ror_tis_the_season ? 1 : 3;
										choices_on_loss = ror_tis_the_season ? 1 : 2;
										choices_on_win = ror_tis_the_season ? 0 : 0;
									}
								}
								//Reset CPUs
								reset_item_pools();
								//
							break;	
							case "Creative Mode Only":
								_option_value = _option_value == "On" ? "Off" : "On";
								obj_stage_main.creative_mode_only = _option_value == "On";
								sound_play(asset_get(_option_value = "On" ? "mfx_confirm" : "mfx_back"));
								reset_item_pools();
							break;
							
							//Visuals
							case "Bazaar Changes Platforms": //Disable Item Picks
								_option_value = _option_value == "On" ? "Off" : "On";
								obj_stage_main.ror_layout_change = _option_value == "On";
								sound_play(asset_get(_option_value = "On" ? "mfx_confirm" : "mfx_back"));
							break;								
							
							case "Bazaar Changes Location": //Disable Item Picks
								_option_value = _option_value == "On" ? "Off" : "On";
								obj_stage_main.ror_location_change = _option_value == "On";
								sound_play(asset_get(_option_value = "On" ? "mfx_confirm" : "mfx_back"));
							break;		
							
							
							#endregion
							#region //Cheats
							case "Change Display Rarity":	//Dictionary Viewer
								obj_stage_main.pool_cursor = [0, 0];
								switch(_option_value) {
									case "Commons":
										_option_value = "Rares";
									break;							
									case "Rares":
										_option_value = "Epics";
									break;							
									case "Epics":
										_option_value = "Legendaries";
									break;							
									case "Legendaries":
										_option_value = "Commons";
									break;
								}
								//
								sound_play(asset_get("mfx_forward"));
							break;
							case "Item Set": //Item Sets
								with obj_stage_main {
									item_pool_selected++;
									if (item_pool_selected >= array_length(item_pool_sets)) {
										item_pool_selected = 0;
									}
									item_pool_set = item_pool_sets[item_pool_selected];
									
									_option_value = item_pool_sets[item_pool_selected];
									
									items_commons = [];
									items_rares = [];
									items_epics = [];
									items_legends = [];
									
									user_event(1) //Commons
									user_event(2) //Rares
									user_event(3) //Epics
									user_event(4) //Legendary
									
									//
									set_poolset(items_commons, items_custom_commons);
									set_poolset(items_rares, items_custom_rares);
									set_poolset(items_epics, items_custom_epics);
									set_poolset(items_legends, items_custom_legends);
									//Delete Item Arrays							
									if (item_pool_set == "empty") {								
										item_pool_set = "custom";
										_option_value = string(item_pool_set);
									}
									//Rerolls
									prac_common =	[0, 0, 0, 0, 0];
									prac_rare = [0, 0, 0, 0, 0];
									prac_epic = [0, 0, 0, 0, 0];
									prac_legend = [0, 0, 0, 0, 0];
									for (var i = 0; i < array_length(main_players); i++) {					
										item_select[i + 1] = create_item_pool(i + 1, main_players[i].ror_luck, "normal");
									}
									//SFX
									sound_play(asset_get("mfx_forward"));
								}
								
							break;
							case "Import Data":
							case "Export Data":
								with obj_stage_main {										
									if (_option_name == "Import Data") {
										if (!has_imported_data) {
											var _new_data = ror_savedata();
											//print(_new_data)
											ror_loaddata(_new_data)
											sound_play(asset_get("mfx_confirm"));
											has_imported_data = true;
										} else {
											sound_play(sound_get("error"));
										}
									} else {
										var _new_data = ror_savedata();
									}
									_option_name = "Export Data";
								}
							break;
							case "FIX ONLINE DOUBLES / PLAY TOGGLE ONLINE/OFFLINE MODE ONLINE":
							case "Toggle Offline/Online Mode":
								with obj_stage_main {							
									if (teams_mode) {
										game_online = true;
										with oPlayer {
											if ((get_local_player() + 1) == player) {
												other.device_player = player;
											}
										}
									} else {
										game_online = !game_online;
										sound_play(sound_get("MAKE IT DOUBLE"));
									}
								}
							break;
							case "Toggle SSL Visuals":
								with obj_stage_main {							
									ror_ssl_visuals = !ror_ssl_visuals
									ssl_mode();
									sound_play(sound_get(ror_ssl_visuals ? "mfx_confirm" : "mfx_back"));
									//sound_play(sound_get("MAKE IT DOUBLE"));
								}
							break;
							case "Local Player Function":
								with oPlayer {
									print(["Local Player", player, get_local_player()]);
								}
							break;
							case "Reroll All Pools":
								//Rerolls Pool
								with obj_stage_main {
									sound_play(asset_get("sfx_forsburn_cape_swipe"));
									//
									prac_common = [0, 0, 0, 0, 0];
									prac_rare = [0, 0, 0, 0, 0];
									prac_epic = [0, 0, 0, 0, 0];
									prac_legend = [0, 0, 0, 0, 0];
									for (var i = 0; i < array_length(main_players); i++) {					
										item_select[i + 1] = create_item_pool(i + 1, main_players[i].ror_luck, "normal");
									}
								}
								//
							break;
							case "Skip Bazaar":
								with obj_stage_main {
									ror_state("alive");
								}
							break;
							case "5 More Rounds":
								sound_play(asset_get("sfx_holy_tablet"));
								with obj_stage_main {
									points_to_win += 5;
									if (stage_element == array_length(stage_art) - 1) {
										change_stage_layout(plat_sides_pos, plat_center_pos, random_func_2(9, array_length(stage_art) - 1, true));
									}
								}
							break;							
							case "5 Less Rounds":
								sound_play(asset_get("sfx_holy_tablet"));
								var _most_points = 0;
								with oPlayer {
									if (ror_points >= _most_points) {
										_most_points = ror_points;
									}
								}
								with obj_stage_main {
									points_to_win = clamp(points_to_win - 5, _most_points + 1, infinity);
								}
								//
								var _match_point = false;
								with oPlayer {
									if (ror_points == obj_stage_main.points_to_win - 1) {
										_match_point = true;
									}
								}
								//
								with obj_stage_main {
									if _match_point {
										change_stage_layout(plat_sides_pos, plat_center_pos, array_length(stage_art) - 1);
									}
								}
							break;
							case "Spawn Bazaar":
								sound_play(asset_get("sfx_ori_charged_flame_release"));
								with obj_stage_main {
									force_bazaar = true;
								}
							break;							
							case "Spawn Shenron":
								sound_play(asset_get("sfx_ori_charged_flame_release"));
								ror_dragon_ball_count = 7;
							break;
							case "Give Everything":
								sound_play(asset_get("sfx_ori_charged_flame_release"));
								var _array = obj_stage_main.items_all;
								print(["Giving ", array_length(_array)]);
								for (var _c = 0; _c < array_length(_array); _c++) {
									card_choice(_array[_c]);
								}
							break;
							case "End Rogue Session":
								with obj_stage_main {
									if end_rogue_count == "End Rogue" {
										if instance_exists(last_alive) {
											ror_state("game_over");
										} else {
											end_match(other.player);											
										}
									} else {
										end_rogue_count--;
										sound_play(asset_get("mfx_confirm"));
										if !end_rogue_count {
											end_rogue_count = "End Rogue";
										}
										//
										//menu_options.end_rogue = ["End Rogue Session", end_rogue_count, "Click this button until it reaches 0 to end the Rogue game"]
										_option_value = string(end_rogue_count);
									}
								}
							break;
							#endregion							
							#region //Stage Options
							case "Side Platforms":
								with obj_stage_main {
									if (plat_sides_pos == "Off") {
										plat_sides_pos = 0
									} else {
										plat_sides_pos++
										if (plat_sides_pos >= 10) {
											plat_sides_pos = "Off";
										}
									}
									_option_value = string(plat_sides_pos);
									change_stage_layout(plat_sides_pos, plat_center_pos, stage_element)
								}
								sound_play(asset_get("mfx_confirm"));
							break;
							case "Middle Platform": //Center
								with obj_stage_main {							
									if (plat_center_pos == "Off") {
										plat_center_pos = 0
									} else {
										plat_center_pos++
										if (plat_center_pos >= 2) {
											plat_center_pos = "Off";
										}
									}
									_option_value = string(plat_center_pos);
									change_stage_layout(plat_sides_pos, plat_center_pos, stage_element);		
								}
								sound_play(asset_get("mfx_confirm"));
							break;
							case "Stage Art":
								with obj_stage_main {
									stage_element++
									if (stage_element >= array_length(stage_art) || (stage_art[stage_element] == "Finale" && !practice_mode)) { //You can't go to Finale unless it's actually Finale (outside of practice mode)
										stage_element = 0;
									}
									_option_value = string(stage_art[stage_element]);
									change_stage_layout(plat_sides_pos, plat_center_pos, stage_element);	
								}
								sound_play(asset_get("mfx_confirm"));
							break;
							case "Random Stage":
								with obj_stage_main {
									change_stage_layout();
									//
								}
							break;							
							#endregion
							#region //Item Toggles
							case "": //Item Ban Toggles
								if (obj_stage_main.round_state == "game_start" || obj_stage_main.round_state == "title_screen" || obj_stage_main.item_set_can_ban) { //Can only change item pool during the beginning or if enabled
									with obj_stage_main {	
										//print(["Stupid Thing", pool_cursor])
										
										var _dict_rarity = obj_stage_main.menu_options.item_dictionary[1];
										
										if (pool_cursor[0] != 0) {	
											if (item_pool_set != "custom") {								
												item_pool_set = "custom";
												//menu_text[_menu_item_set, 1] = string(item_pool_set);
												menu_options.item_set[1] = string(item_pool_set)
											}
											switch(_dict_rarity) {
												case 0:
												case "Commons":
													items_custom_commons[pool_cursor[0], 1] = !items_custom_commons[pool_cursor[0], 1];
													sound_play(
														asset_get(items_custom_commons[pool_cursor[0], 1] ? "mfx_confirm" : "mfx_back")
													)
												break;
												case 1:
												case "Rares":
													items_custom_rares[pool_cursor[0], 1] = !items_custom_rares[pool_cursor[0], 1];
													sound_play(
														asset_get(items_custom_rares[pool_cursor[0], 1] ? "mfx_confirm" : "mfx_back")
													)
												break;
												case "Epics":
												case 2:
													items_custom_epics[pool_cursor[0], 1] = !items_custom_epics[pool_cursor[0], 1];
													sound_play(
														asset_get(items_custom_epics[pool_cursor[0], 1] ? "mfx_confirm" : "mfx_back")
													)
												break;
												case "Legendaries":
												case 3:
													items_custom_legends[pool_cursor[0], 1] = !items_custom_legends[pool_cursor[0], 1];
													sound_play(
														asset_get(items_custom_legends[pool_cursor[0], 1] ? "mfx_confirm" : "mfx_back")
													)
												break;
											}
										} else {
											sound_play(sound_get("ERROR PLEASE AHHH"))
										}
									}
									//
									with obj_stage_main {								
										items_commons = [];
										items_rares = [];
										items_epics = [];
										items_legends = [];
										//
										user_event(1) //Commons
										user_event(2) //Rares
										user_event(3) //Epics
										user_event(4) //Legendary									
										//
										set_poolset(items_commons, items_custom_commons);
										set_poolset(items_rares, items_custom_rares);
										set_poolset(items_epics, items_custom_epics);
										set_poolset(items_legends, items_custom_legends);
										//Rerolls Pool
											prac_common = [0, 0, 0, 0, 0];
											prac_rare = [0, 0, 0, 0, 0];
											prac_epic = [0, 0, 0, 0, 0];
											prac_legend = [0, 0, 0, 0, 0];
											for (var i = 0; i < array_length(main_players); i++) {					
												item_select[i + 1] = create_item_pool(i + 1, main_players[i].ror_luck, "normal");
											}
										//
									}
									//
								}
							break;
							#endregion
							#region //Dev Tools
							case "Destroy Everything":
								print("Destroying Everything")
								with obj_stage_main {
									for (var i = 0; i < array_length(destroy_array); i++) {
										var _destroy_count = 0;
										with destroy_array[i] {
											instance_destroy(self);
											_destroy_count++;
										}
										if _destroy_count {
											print("Destroyed " + string(_destroy_count) + " of " + string(destroy_array[i]));
										}
									}								
								}
							break;							
							case "Export Commons":
								with obj_stage_main {
									rogue_export_info(items_commons);
								}
							break;
							case "Export Rares":
								with obj_stage_main {
									rogue_export_info(items_rares);
								}
							break;
							case "Export Epics":
								with obj_stage_main {
									rogue_export_info(items_epics);
								}
							break;
							case "Export Legends":
								with obj_stage_main {
									rogue_export_info(items_legends);
								}
							break;							
							case "Export Cards":
								export_buddy_text("");
							break;										
							case "Export Raw Names":
								export_buddy_text_raw("Name");
								//export_buddy_text(".raw =");
							break;											
							case "Export Raw Descriptions":
								export_buddy_text_raw("Desc");
								//export_buddy_text(".raw =");
							break;											
							case "Export Raw Small Descriptions":
								export_buddy_text_raw("Small Desc");
								//export_buddy_text(".raw =");
							break;											
							case "Export Raw Flavor":
								export_buddy_text_raw("Flavor");
								//export_buddy_text(".raw =");
							break;						
							case "Export Names":
								export_buddy_text(".name =");
							break;							
							case "Export Descriptions":
								export_buddy_text(".desc =");
							break;
							case "Export Small Descriptions":
								export_buddy_text(".small_desc =");
							break;
							case "Export Flavor Text":
								export_buddy_text(".flavor =");
							break;
							#endregion
							
							default:							
							break;
						}

						obj_stage_main.menu_pages[@obj_stage_main.menu_page, 1][@obj_stage_main.menu_pos, 0] = _option_name;
						obj_stage_main.menu_pages[@obj_stage_main.menu_page, 1][@obj_stage_main.menu_pos, 1] = _option_value;
						//
						clear_button_buffer(PC_ATTACK_PRESSED);
					}
					#endregion					
				}
			}
			//
			exit;
		}
		#endregion Pause Menu	
}

#define reset_item_pools() {									
	with obj_stage_main {
		//
		item_choice = [];
		for (var i = 0; i <= 4; i++) {
			ready_players[i] = false;
			array_push(item_choice, [0, 0, 0, 0, 0]);
			if 	i > 0 && 
				(
					!is_player_on(i) ||
					(instance_exists(last_alive) && get_player_team(last_alive.player) == get_player_team(i) && !choices_on_win)
				) {
				ready_players[i] = true;
			}
		}
		//
		//sound_play(asset_get("sfx_forsburn_cape_swipe"));
		//
		prac_common = [0, 0, 0, 0, 0];
		prac_rare = [0, 0, 0, 0, 0];
		prac_epic = [0, 0, 0, 0, 0];
		prac_legend = [0, 0, 0, 0, 0];
		for (var i = 0; i < array_length(main_players); i++) {					
			item_select[i + 1] = create_item_pool(i + 1, main_players[i].ror_luck, "normal");
		}
	}
}

#define push_creative_array(_array) {
	for (var _i = 0; _i < array_length(_array); _i++) {
		if (_array[_i, 1]) {
			array_push(obj_stage_main.ror_creative_array, _array[_i, 0]);
		}
	}
	return;	
}

#define export_buddy_text(_temp) {
	with obj_stage_main {
		var names = variable_instance_get_names(self)
		var _string = "";
		var _new_line = chr(10);
		var _tab = chr(9);
		var _quot = _temp == "" ? "" : chr(34);
		array_sort(names, true)
		//for (var i = 0; i <= 4; i++) {
		//	print([string_char_at(names[0], i)])
		//}
		for (var i = 0; i < array_length(names); i++) {
			if (
				string_char_at(names[i], 1) == "c" &&
				string_char_at(names[i], 2) == "a" &&
				string_char_at(names[i], 3) == "r" &&
				string_char_at(names[i], 4) == "d"
			) {
				_string += names[i] + string(_temp) + _quot + _quot + _new_line;											
			}
		}
		get_string("Rogue Item Template", string(_string));
	}
}

#define export_buddy_text_raw(_temp) {
	with obj_stage_main {
		var names = variable_instance_get_names(self)
		var _string = "";
		var _new_line = chr(10);
		var _tab = chr(9);
		var _quot = _temp == "" ? "" : chr(34);
		var _single_quot = chr(39);
		array_sort(names, true)

		var _sorted_array = []
		for (var i = 0; i < array_length(names); i++) {
			if (
				string_char_at(names[i], 1) == "c" &&
				string_char_at(names[i], 2) == "a" &&
				string_char_at(names[i], 3) == "r" &&
				string_char_at(names[i], 4) == "d"
			) {
				array_push(_sorted_array, names[i])
			}
		}
		//print(_sorted_array)


		var _count = 0;
		for (var j = 0; j < ceil(array_length(_sorted_array) / 100); j++) {
			var _string = "";
			for (var i = j * 100; i < ((j + 1) * 100) && i < array_length(_sorted_array); i++) {
				var _value = variable_instance_get(self, _sorted_array[i]);
				switch(_temp) {
					default:
					case "Name":
						_string += _single_quot + string(_value.name) + _new_line;
					break;
					case "Desc":
						_string += _single_quot + string(_value.desc) + _new_line;
					break;
					case "Small Desc":
						if "small_desc" in _value {
							_string += _single_quot + string(_value.small_desc) + _new_line;
						} else {
							_string += _single_quot + _new_line;
						}
					break;
					case "Flavor":
						if "flavor" in _value {
							_string += _single_quot + string(_value.flavor) + _new_line;
						} else {
							_string += _single_quot + _new_line;
						}
					break;
				}		
				
				/*
				if (
					string_char_at(_sorted_array[i], 1) == "c" &&
					string_char_at(_sorted_array[i], 2) == "a" &&
					string_char_at(_sorted_array[i], 3) == "r" &&
					string_char_at(_sorted_array[i], 4) == "d"
				) {
					var _value = variable_instance_get(self, _sorted_array[i]);
					switch(_temp) {
						case "Name":
							_string += _single_quot + string(_value.name) + _new_line;
						break;
						case "Desc":
							_string += _single_quot + string(_value.desc) + _new_line;
						break;
						case "Small Desc":
							if "small_desc" in _value {
								_string += _single_quot + string(_value.small_desc) + _new_line;
							} else {
								_string += _single_quot + _new_line;
							}
						break;
						case "Flavor":
							if "flavor" in _value {
								_string += _single_quot + string(_value.flavor) + _new_line;
							} else {
								_string += _single_quot + _new_line;
							}
						break;
					}															
				}
				*/
			}
			_count += 100;
			get_string("Rogue Item Template: " + string(j + 1) + " of " + string(ceil(array_length(_sorted_array) / 100)), string(_string));
		}		
	}
}

#define check_attack_array(_value, _array) {
	//_value is usually attack
	for (var _i = 0; _i < array_length(_array); _i++) {
		if (_array[_i] == _value) {
			return true;
		}
	}
	return false;
}

#define ssl_mode() {
	if (ror_ssl_visuals) {
		stage_bg.sprite_index = sprite_get("ssl_holo_bg");
		stage_ground_bg.sprite_index = sprite_get("ssl_holo_ground_bg");
		stage_plat_left.sprite_index = sprite_get("ssl_holo_plat");
		stage_plat_right.sprite_index = sprite_get("ssl_holo_plat");
		stage_plat_center.sprite_index = sprite_get("ssl_holo_plat");
		stage_ground_sides.sprite_index = sprite_get("ssl_holo_color");
			stage_ground_sides.image_blend = c_white;
		stage_ground_main.sprite_index = sprite_get("ssl_holo_ground");
		stage_table.sprite_index = sprite_get("ssl_holo_table");
		stage_fade.sprite_index = sprite_get("empty");
		//stage_fade.sprite_index = sprite_get("ssl_holo_fadebg");
	} else {
		stage_bg.sprite_index = sprite_get("holo_bg");
		stage_ground_bg.sprite_index = sprite_get("hyu_holo_ground_bg");
		stage_plat_left.sprite_index = sprite_get("hyu_holo_plat");
		stage_plat_right.sprite_index = sprite_get("hyu_holo_plat");
		stage_plat_center.sprite_index = sprite_get("hyu_holo_plat");
		stage_ground_sides.sprite_index = sprite_get("hyu_holo_color");
			stage_ground_sides.image_blend = stage_colors[stage_element, 0];
		stage_ground_main.sprite_index = sprite_get("hyu_holo_ground");
		stage_table.sprite_index = sprite_get("holo_table");
		stage_fade.sprite_index = sprite_get("holo_fadebg");
	}
}

#define check_choice_count(_player) {
	with obj_stage_main {
		//print(choose_extra);
		var _amount = 0;
		if obj_stage_main.round_state == "game_start" || obj_stage_main.round_state == "title_screen" {
			_amount = obj_stage_main.choices_on_start;
		} else if (instance_exists(last_alive) && get_player_team(_player) == get_player_team(last_alive.player)) {
			_amount = obj_stage_main.choices_on_win;
		} else {
			_amount = obj_stage_main.choices_on_loss;
		}
		if _amount {
			for (var _c = 0; _c < array_length(main_players); _c++) {
				if main_players[_c].player == _player {	
					//Dragon Balls
					if main_players[_c].ror_limitless_max { _amount = 999; }
					//
					//print(["Choices: ", clamp(_amount + choose_extra[i], 1, 5)]);
					//print(["Extra Choices: ", choose_extra[i]]);
					return clamp(_amount + choose_extra[_player], 1, 5);
				}
			}
		}
		//print(["Choices: ", clamp(_amount + choose_extra[_player], 1, 5)]);
	}	
	return 0;
}

#define reset_ready_players() {
	with obj_stage_main {
		ready_players = [1, 0, 0, 0, 0];
		item_choice = [];
		//
		for (var i = 0; i <= 4; i++) {
			array_push(item_choice, [0, 0, 0, 0, 0]);
			if 	i > 0 && 
				(
					!is_player_on(i) ||
					!check_choice_count(i)
				) {
				ready_players[i] = true;
			}
			array_push(item_choice, [0, 0, 0, 0, 0]);
		}
	}
}