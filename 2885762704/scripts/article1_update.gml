//
//Testing Zone
if (fps <= 55 && !low_fps_mode && get_gameplay_time() >= 180) {
	low_fps_mode = true;
	print("Low FPS Enabled")
}

if (vb_menu) {
	with oPlayer {
		hitstop = 3;
	}
}

//Smoke Particles
if ((get_gameplay_time() % 5 == 0 && (abs(vsp) > 0 || abs(hsp) > 0)) && !low_fps_mode) {
	smoke_particles = smoke_grey;
	if (blue_hits > red_hits) {
		smoke_particles = smoke_blue;
	} else if (red_hits > blue_hits) {
		smoke_particles = smoke_red;
	}
	var _smoke = spawn_hit_fx(x - hsp, y - vsp, smoke_particles);
}

//Background Stuff
obj_stage_main.stage_ground.image_speed = stage_list[curr_stage, 3];
obj_stage_main.stage_bg.image_speed = stage_list[curr_stage, 3];
#region //Aether Mode
image_xscale = base_size;
image_yscale = base_size;

if (is_aether_stage() || aether_choice) {
	//Resets
	if !(aether_mode_1 == "Platforms" || aether_mode_2 == "Platforms") {
		platform_left.y = 1000;
		platform_right.y = 1000; 		
	}
	max_hits = orig_max_hits;
	image_xscale = base_size;
	image_yscale = base_size;
	aether_ball_speed = 1;
	aether_ball_weight = 1;
	ball_grav = orig_grav;
	score_modifier = 1;

	party_mode(aether_mode_1);
	party_mode(aether_mode_2);
}
#endregion


//Colors
if (blue_hits) {
	image_blend = c_blue;
} else if (red_hits) {
	image_blend = c_red;
} else if (score_delay) {
	image_blend = c_yellow;
} else {
	image_blend = c_white;
}

if (get_gameplay_time() <= 30) {
	reset_players()
} 

#region Ball Movement Stuff
ball_timer += 1;
if (ball_timer >= 120 || ball_hit) {
	if (ball_hitstop) {
		ball_hitstop -= 1;
	}
	if (!ball_hitstop && hitpause && live_ball) {
		vsp = old_vsp;
		hsp = old_hsp;
		old_vsp = 0;
		old_hsp = 0;
		hitpause = false;
	}
}

if foul_timer {
	foul_timer -= 1;
}
if score_timer {
	score_timer -= 1;
}


if live_ball {
	if (!hitpause && free) {
		vsp += ball_grav;
	}
	if (hitlock) {
		hitlock -= 1;
	}
}
	
if !hitpause { //Bounce Code and Collisions
	has_bounced = false; //One bounce per frame to try to reduce weird bounces
	
	if (y < 0) {
		print(hsp)
		while (y < 0 || place_meeting(x, y, asset_get("par_block"))) {
			y += 1;
			vsp = abs(vsp)
			print("ceiling")
			has_bounced = true;
		}
		hsp *= -1;
	}

	/*
	* Trying to see if bouncing horizontally first and not allowing vertical bounces but allow scoring is fine or not
	*
	*
	*/
	//Wall
	//if place_meeting(x + hsp, y, asset_get("par_block")) && (!has_bounced || y < get_marker_x(7)) { //Checks are used for ceiling bug and net bugs respectfully (why did I have _x instead of _y)
	if place_meeting(x + hsp, y, asset_get("par_block")) && (abs(hsp) != 0) && !has_bounced { //Checks are used for ceiling bug and net bugs respectfully
		while !(place_meeting(x, y, asset_get("par_block"))) {
			x = floor(x + sign(hsp));
			print(x)
		}
		x -= sign(hsp)
		while (place_meeting(x, y, asset_get("par_block"))) {
			y = floor(y) - 1;
		}
		
		has_bounced = true;
		hsp *= (-bounce_friction);
		//x += hsp;
		sound_play(asset_get("sfx_land"));
		//print("H")
	}

	//Ground
	if place_meeting(x, y + vsp, asset_get("par_block")) {
		//print("V")
		if (!has_bounced || score_delay) {
			if vsp >= 0 {
				vsp *= (-bounce_friction);
			} else {
				vsp *= -1;
			}
			
			while !(place_meeting(x, y, asset_get("par_block"))) {
				y = floor(y) - sign(vsp);
				//print(y)
			}
			y = floor(y) + sign(vsp);
		}
		
		if (y > get_marker_y(7) && (x < get_marker_x(3) + ((image_xscale - 1) * 16)) && (x > get_marker_x(2) - ((image_xscale - 1) * 16)) && vsp < 0 && hsp == 0) {
			if (x > get_marker_x(1)) {
				hsp = 2;
			} else if (x < get_marker_x(1)) {
				hsp = -2;
			}
		}

		sound_play(asset_get("sfx_land"));
		//Score
		//if (y > get_marker_y(7) && (x >= get_marker_x(3) - abs((image_xscale - 1) * 8)) || (x <=  get_marker_x(2) + abs((image_xscale - 1) * 8)) && vsp <= 0) && (x >= get_marker_x(8) && x <= get_marker_x(9)) { //Score Collision //Wall Bug
		if ((y > get_marker_y(7) && (vsp <= 0)) && ((x >= get_marker_x(3) + (image_xscale - 1) * 16) || (x <=  get_marker_x(2) - (image_xscale - 1) * 16)) && (x >= get_marker_x(8) && x <= get_marker_x(9))) { //Score Collision //Wall Bug
			//vsp = 0;
			//hsp = 0;
			if (x < get_marker_x(1)) {
				point_scored(-1);
			} else {
				point_scored(1);
			}	
		}
		
		y += sign(vsp);
	}
	

	//In the ground and score
	if ((y + 16) > get_marker_y(11)) {
		if (x < get_marker_x(1)) {
			point_scored(-1);
		} else {
			point_scored(1);
		}
	}
	
	if place_meeting(x + hsp, y, asset_get("par_block")) && has_bounced {
		print("BUG?!?! BUG!?!?!")
	}
	
} 
//print(instance_number(pHitBox))
#endregion

#region Inbounds and Hitbox Group resets
with oPlayer {
	//debugger
	/*
	if taunt_pressed {
		other.y = -64;
		other.vsp = 4;
		other.hsp = 4;
	}
	*/

	//Hitbox  Group resets
	if (!(state == PS_ATTACK_AIR || state == PS_ATTACK_GROUND) || (attack != prev_attack)) && !clone && (attack != 0) { //Attack being 0 is for Miku :) Dev Priviledge
		volleyball_last_hit = -4;
		for (i = 0; i < array_length(other.hitbox_groups[player]); i++) {
			other.hitbox_groups[player, i] = 0;
		}
	}
	prev_attack = attack;
	
	//Inbounds Checks
	if !(other.aether_mode_1 == "Free Roaming" ||other.aether_mode_2 == "Free Roaming") {
		if (get_player_team(player) == 2) {
			if (x > get_marker_x(2) - 16) {
				x = get_marker_x(2) - 16;
				hsp = 0;
			}
		}
		if (get_player_team(player) == 1) {
			if (x < get_marker_x(3) + 16) {
				x = get_marker_x(3)  + 16;
				hsp = 0;
			}
		}
	}
	
	if ("ball_hitlock" in self && ball_hitlock) {
		ball_hitlock -= 1;
	}
	
	if ((!other.blue_score && !other.red_score && !other.blue_hits && !other.red_hits) || (get_training_cpu_action() != CPU_FIGHT)) {
		if (shield_pressed && taunt_pressed) {
			clear_button_buffer( PC_TAUNT_PRESSED);
			clear_button_buffer( PC_SHIELD_PRESSED);
			set_state(PS_IDLE);
			with other { //Fixes a bug with dust effects stuff
				menu_toggle(other.player);
			}
		}
	}
	if !other.live_ball { //Disables Accidents
		clear_button_buffer( PC_TAUNT_PRESSED);
		clear_button_buffer( PC_SHIELD_PRESSED);
	}
	if other.solo_mode {
		if (taunt_pressed) {
			clear_button_buffer( PC_TAUNT_PRESSED )
			if (other.solo_mode == 1) {
				other.solo_mode = 2;
				set_player_team(player, 2);
				other.spawn_locations[0, player] = 11;
				other.point_scored(1)
			} else {
				other.solo_mode = 1;
				set_player_team(player, 1);
				other.spawn_locations[0, player] = 12;
				other.point_scored(1)
			}
		}
		if (state == PS_PARRY) {
			clear_button_buffer( PC_SHIELD_PRESSED )
			set_state(PS_IDLE)
			switch(other.training_mode) {
				case "Serve":
					other.training_mode = other.training_types[1];
				break;
				case "Receive":
					other.training_mode = other.training_types[2];
				break;
				case "Free Play":
					other.training_mode = other.training_types[0];
				break;
				default:
					other.training_mode = other.training_types[0];
				break;
			}
			other.point_scored(1)
		}
	}
}

//Inbounds Checks
//Projectiles
with pHitBox {
	if !(other.aether_mode_1 == "Free Roaming" ||other.aether_mode_2 == "Free Roaming") {
		if (get_player_team(player) == 2) {
			if (x > get_marker_x(1)) {
				destroyed = true;
				hitbox_timer = length;
			}
		}
		if (get_player_team(player) == 1) {
			if (x < get_marker_x(1)) {
				destroyed = true;
				hitbox_timer = length;
			}
		}
	}
}
//WS Articles
in_bounds_check(obj_article1);
in_bounds_check(obj_article2);
in_bounds_check(obj_article3);
in_bounds_check(obj_article_platform);
in_bounds_check(obj_article_solid);
//Basecast Articles
in_bounds_check_destroy(asset_get("moth_bomb_obj"));
in_bounds_check_count(asset_get("smoke_obj"), 3);



//in_bounds_check(asset_get("moth_bomb_obj"))
//print(variable_instance_get_names(self));

#endregion

#region Hitbox Checks
//Hitbox Priority Test
var _high_pri = -4;
var _curr_pri = -4;
for (i = 0; i < instance_number(pHitBox); i++) {
	_curr_pri = instance_find( pHitBox, i);
	//print(_curr_pri)
	//print(_curr_pri.hit_priority)
	if (
		place_meeting(x, y, _curr_pri) && //Touching Ball
		"hitball" !in _curr_pri && //Has not hit ball
		(_curr_pri.hbox_group == -1 || ((array_length(hitbox_groups[_curr_pri.player]) < _curr_pri.hbox_group + 1) || !hitbox_groups[_curr_pri.player, _curr_pri.hbox_group])) &&//Hbox Group is -1 or another hitbox in the group has hit the ball
		(_high_pri == -4 || _curr_pri.hit_priority > _high_pri.hit_priority) && //Empty priority or is the highest priority hitbox currently touching ball
		_curr_pri.can_hit[5] && //Multi Hitting
		!_curr_pri.player_id.ball_hitlock //Hitlock bugs
	) {
		_high_pri = _curr_pri;
	}
}
//print("Highest Pri: " + string(_high_pri))

if (_high_pri != -4) { //Only the highest Priority Hitbox should hit
	with _high_pri {
		var _ball = other;
		if (!other.hitlock && can_hit[5] && _ball.live_ball) {
			can_hit[5] = 0;
			_ball.ball_hit = true;
			//Hitbox Group
			if (hbox_group != -1) {
				if (array_length(_ball.hitbox_groups[player]) < hbox_group + 1) {
					for (i = 0; i < hbox_group; i++) {
						if (i >= array_length(_ball.hitbox_groups[player])) {
							array_insert(_ball.hitbox_groups[player], array_length(_ball.hitbox_groups[1]), 0);
						}
					}
				} 
				_ball.hitbox_groups[player, hbox_group] = 1;
			}		
			hitball = true;
			//print("Hitbox: " + string(hbox_group))
			_ball.ball_damage += damage;
			var _hitpause = get_hitstop_formula(damage, _ball.ball_damage, hitpause, hitpause_growth, extra_hitpause);
			var _temp_angle = get_hitbox_angle( self );
			var _force = get_kb_formula(_ball.ball_damage, 1, get_match_setting( SET_SCALING ) * _ball.ball_kb_multi * _ball.aether_ball_weight, damage, kb_value, kb_scale) * _ball.aether_ball_speed;
			//print(_force);
			if (type == 1) {
				with player_id {
					old_hsp = hsp;
					old_vsp = vsp;
					vsp = 0;
					hsp = 0;
					hitpause = true;
					hitstop =  _hitpause;
					has_hit = true;
				}
			}
			//Launch Code	
			print("Filpper: " + string(hit_flipper))
			var _center = (player_id.y - player_id.char_height / 2);
			//I genuinely don't know if I got any of the flippers correct
			switch(hit_flipper) {
				case 1: //Zetter Shine
					_temp_angle = point_direction(player_id.x, _center, _ball.x, _ball.y);
					_ball.old_hsp = lengthdir_x( _force, _temp_angle );
					_ball.old_vsp = lengthdir_y( _force, _temp_angle );
				break;
				case 2: //
					_temp_angle = point_direction(player_id.x, _center, _ball.x, _ball.y) - 180;
					_ball.old_hsp = lengthdir_x( _force, _temp_angle );
					_ball.old_vsp = lengthdir_y( _force, _temp_angle );
				break;
				case 3: //Away Hor
					_ball.old_hsp = lengthdir_x( _force, _temp_angle) * sign((_ball.x - x));
					_ball.old_vsp = lengthdir_y( _force, _temp_angle);
				break;
				case 4: //In Hor
					_ball.old_hsp = lengthdir_x( _force, _temp_angle) * sign((_ball.x + x));
					_ball.old_vsp = lengthdir_y( _force, _temp_angle);
				break;
				case 5: //Reverse HSP (Same as 0)
					_ball.old_hsp = lengthdir_x( _force, _temp_angle );
					_ball.old_vsp = lengthdir_y( _force, _temp_angle );
				break;
				case 6: //Away Player Hor
					_ball.old_hsp = abs(lengthdir_x( _force, _temp_angle)) * sign((_ball.x - player_id.x));
					_ball.old_vsp = lengthdir_y( _force, _temp_angle);
				break;
				case 7: //In Player Hor
					_ball.old_hsp = abs(lengthdir_x( _force, _temp_angle)) * sign((_ball.x + player_id.x));
					_ball.old_vsp = lengthdir_y( _force, _temp_angle);
				break;
				case 8: //Horn
					_temp_angle = point_direction(x, player_id.y, _ball.x, _ball.y);
					_ball.old_hsp = lengthdir_x( _force, _temp_angle );
					_ball.old_vsp = lengthdir_y( _force, _temp_angle );
				break;
				case 9: //Inverse Horn
					_temp_angle = point_direction(x, player_id.y, _ball.x, _ball.y) - 180;
					_ball.old_hsp = lengthdir_x( _force, _temp_angle );
					_ball.old_vsp = lengthdir_y( _force, _temp_angle );
				break;
				case 10: //Same direction as player
					//_temp_angle = point_direction(0, 0, player_id.old_hsp, player_id.old_vsp);
					_ball.old_hsp = lengthdir_x( _force, _temp_angle );
					_ball.old_vsp = lengthdir_y( _force, _temp_angle );
				break;
				default: //0
					_ball.old_hsp = lengthdir_x( _force, _temp_angle );
					_ball.old_vsp = lengthdir_y( _force, _temp_angle );
				break;
			}
			//print("Angle: " + string(_temp_angle))
			
			_ball.vsp = 0;
			_ball.hsp = 0;
			sound_play(sound_effect, 0, noone, 1, 1 + ((_ball.blue_hits + _ball.red_hits) * .05));
			sound_play(asset_get("sfx_tetherball_hit"));
			
			spawn_hit_fx(x + hit_effect_x, y + hit_effect_y, hit_effect);
			other.ball_hitstop = _hitpause;
			other.hitpause = true;
			
			if (player_id.volleyball_last_hit != attack) {
				player_id.volleyball_last_hit = attack;
				with _ball {
					hit_ball(get_player_team(other.player), get_char_info(other.player, INFO_STR_NAME), other.attack, other.hbox_num, other.player_id, other.damage);
				}
			}
			_ball.curr_damage += damage;

			player_id.ball_hitlock = no_other_hit + _hitpause;//
		}
	}
}

//print(hitbox_groups[1]);
#endregion

//Score Delay
if score_delay {
	score_delay -= 1
	if !score_delay {
		point_scored_2(scored_team)
	}
}

if !live_ball { //Menuing
	hitpause = true;
	with oPlayer {
		hitpause = true;
		invincible = true;
		invince_time = 2;
		vsp = 0;
		hsp = 0;
		old_vsp = 0;
		old_hsp = 0;
		can_fast_fall = false;
		if (other.menu_player == player) {
			if (attack_pressed) {
				sound_play(asset_get("mfx_confirm"))
				clear_button_buffer( PC_ATTACK_PRESSED )
				with other {
					reset_ball(ball_start_side);
					menu_toggle(other.player)
				}
			}
			if (right_pressed) { //Right
				sound_play(asset_get("mfx_forward"))
				clear_button_buffer( PC_RIGHT_STICK_PRESSED )
				switch(other.menu_options[other.menu_selection, 0]) {
					case "Ball Starting Side":
						other.ball_start_side += 1;
						if (other.ball_start_side > 2) {
							other.ball_start_side = 0;
						}
					break;					
					case "Music Track":
						other.curr_music += 1;
						if (other.curr_music >= array_length(other.music_list)) {
							other.curr_music = 0;
						}
					break;
					case "Stage Select":
						other.curr_stage += 1;
						if (other.curr_stage >= array_length(other.stage_list)) {
							other.curr_stage = 0;
						}
					break;
					case "First to":
						other.first_to_x += 1;
						if (other.first_to_x > 99) {
							other.first_to_x = 0;
						}
					break;
					case "Gamemode 1":
						other.aether_mode_1_choice += 1;
						if (other.aether_mode_1_choice >= array_length(other.aether_modes)) {
							other.aether_mode_1_choice = 0;
						}
					break;
					case "Gamemode 2":
						other.aether_mode_2_choice += 1;
						if (other.aether_mode_2_choice >= array_length(other.aether_modes)) {
							other.aether_mode_2_choice = 0;
						}
					break;
					case "Solo Mode":
						other.solo_mode += 1;
						if (other.solo_mode > 2) {
							other.solo_mode = 0;
						}
					break;
					case "Should Randomise Teams":
						other.should_make_teams_random = !other.should_make_teams_random;
					break;
				}
			}
			if (left_pressed) { //Left
				sound_play(asset_get("mfx_forward"))
				clear_button_buffer( PC_LEFT_STICK_PRESSED )
				switch(other.menu_options[other.menu_selection, 0]) {
					case "Ball Starting Side":
						other.ball_start_side -= 1;
						if (other.ball_start_side < 0) {
							other.ball_start_side = 2;
						}
					break;
					case "Music Track":
						other.curr_music -= 1;
						if (other.curr_music < 0) {
							other.curr_music = array_length(other.music_list) - 1;
						}
					break;
					case "Stage Select":
						other.curr_stage -= 1;
						if (other.curr_stage < 0) {
							other.curr_stage = array_length(other.stage_list) - 1;
						}
					break;
					case "First to":
						other.first_to_x -= 1;
						if (other.first_to_x < 0) {
							other.first_to_x = 99;
						}
					break;
					case "Gamemode 1":
						other.aether_mode_1_choice -= 1;
						if (other.aether_mode_1_choice < 0) {
							other.aether_mode_1_choice = array_length(other.aether_modes) - 1;
						}
					break;
					case "Gamemode 2":
						other.aether_mode_2_choice -= 1;
						if (other.aether_mode_2_choice < 0) {
							other.aether_mode_2_choice = array_length(other.aether_modes) - 1;
						}
					break;
					case "Solo Mode":
						other.solo_mode -= 1;
						if (other.solo_mode < 0) {
							other.solo_mode = 2;
						}
					break;
					case "Should Randomise Teams":
						other.should_make_teams_random = !other.should_make_teams_random;
					break;
				}
			}		
			if (up_pressed) { //Up
				sound_play(asset_get("mfx_option"))
				clear_button_buffer( PC_UP_STICK_PRESSED )
				other.menu_selection -= 1;
				if (other.menu_selection < 0) {
					other.menu_selection = array_length(other.menu_options) - 1;
				}
			}	
			if (down_pressed) { //Down
				sound_play(asset_get("mfx_option"))
				clear_button_buffer( PC_DOWN_STICK_PRESSED )
				other.menu_selection += 1;
				if (other.menu_selection >= array_length(other.menu_options)) {
					other.menu_selection = 0;
				}
			}	
		}
	}
}

//Menu
switch(ball_start_side) {
	case 1:
		menu_options[0, 1] = "Red"
	break;
	case 2:
		menu_options[0, 1] = "Blue"
	break;
	default:
		menu_options[0, 1] = "Neutral/Random"
	break;
}
menu_options[1, 1] = stage_list[curr_stage, 0];
menu_options[2, 1] = music_list[curr_music, 0];
//Stage
obj_stage_main.stage_bg.sprite_index = stage_list[curr_stage, 1];
obj_stage_main.stage_ground.sprite_index = stage_list[curr_stage, 2];
//Music
music_play_file( music_list[curr_music, 1] );
//Score
menu_options[3, 1] = first_to_x;
//Gamemode
if (aether_mode_1_choice != 0 || aether_choice) {
	aether_choice = true;
	aether_mode_1 = aether_modes[aether_mode_1_choice];
	menu_options[4, 1] = aether_modes[aether_mode_1_choice];
}
if (aether_mode_2_choice != 0 || aether_choice) {
	aether_choice = true;
	aether_mode_2 = aether_modes[aether_mode_2_choice];
	menu_options[5, 1] = aether_modes[aether_mode_2_choice];
}
menu_options[6, 1] = solo_mode;
menu_options[7, 1] = should_make_teams_random;
if should_make_teams_random {
	should_make_teams_random = false;
	random_teams();
	reset_players()
}

#define point_scored(_side) {
	//
	var _vsp = abs(vsp);
	var _hsp = hsp;
	//Spawn Sand Particles 
	if (curr_stage == 7 && !(blue_hits > orig_max_hits || red_hits > orig_max_hits)) { //Sand Stage
		for (i = -floor(_vsp); i <= floor(_vsp); i++) {
			
			var _sand = instance_create(x, y - 2, "obj_stage_article", 4)
			_sand.hsp = (i + _hsp * (random_func(i + 9, 10, true) + 1)) * .1;
			_sand.vsp = -_vsp * (random_func(i + 18, 10, true) + 1) * (1/20);
			if (abs(_sand.vsp) <= 1 && _vsp >= 4) {
				_sand.sprite_index = sprite_get("sand_large");
			}
			//_sand.hsp = (random_func(i, floor(abs(_hsp)) * 2 + 5, true) - abs(_hsp) - 2) ;
			//_sand.vsp = -random_func(i, floor(_vsp), true) * 2;
		}
	}
	print("Point Function")
	//First part of scoring
	if (!score_delay) {	
		//shake_camera(8, 3)
		score_delay = score_full_delay;
		scored_team = _side;

		if (array_length(red_team) > 1) {
			spawn_alt[1] = !spawn_alt[1];
		}
		if (array_length(blue_team) > 1) {
			spawn_alt[2] = !spawn_alt[2];
		}

		var _rand = (random_func(1, 1000, true));
		if _rand >= 666 { //Bird
			sound_play(asset_get("sfx_bird_cheer"));
		} else if (_rand > 333) {	//Ring
			sound_play(asset_get("sfx_ring_crowd"));
		} else if (_rand == 0) { //Goat
			sound_play(asset_get("sfx_gote_scream"));
		} else if (_rand == 1) { //Wolf Crowd
			for(i = 0; i < 5; i++) {
				sound_play(asset_get("sfx_syl_dspecial_howl"), false, false, .5, random_func(1 + i, 9, true) * .05 + .8);
			}
		} else if (_rand <= 12) { //Sandbert Crowd Yell
			for(i = 0; i < 6; i++) {
				sound_play(asset_get("sfx_sand_yell"), false, false, .5, random_func(1 + i, 16, true) * .1 + .5);
			}
		} else { //Idk
			sound_play(asset_get("sfx_pom_cheer"));
		}
		sound_play(asset_get("mfx_ring_bell"));
		
		#region Variable resets
		score_timer = 90;
		
		ball_damage = ball_starting_damage;
		ball_hit = true;
		ball_timer = 0;
		blue_hits = 0;
		red_hits = 0;
		ball_last_hit = -4;
		ball_last_player = -4;
		
		old_vsp = vsp;
		old_hsp = hsp;
		hsp = 0;
		vsp = 0;
		
		ball_hitstop = 30;
		hitpause = true;
		hitlock = 60;
		#endregion
		
		#region Scoring
		if !solo_mode {
			if (_side == 1) {
				blue_score += 1 * score_modifier;
			} else {
				red_score += 1 * score_modifier;
			}
		} else {
			if (_side != solo_mode) {
				points_success += 1;
			} else {
				points_fail += 1;
			}
		}
		#endregion	
		//Ball Stuck in ground
		while (place_meeting(x, y, asset_get("par_block"))) {
			y = floor(y) - 1;
		}
		//Solo Mode
		if !solo_mode {
			if ((blue_score >= first_to_x  || red_score >= first_to_x ) && (abs(blue_score - red_score) >= 2)) {
				if (blue_score > red_score) {
					var _rand_winner = random_func(1, array_length(blue_team), true);
					sound_play(asset_get("mfx_ring_bell2"));
					end_match(blue_team[_rand_winner])
				} else {
					var _rand_winner = random_func(1, array_length(red_team), true);
					sound_play(asset_get("mfx_ring_bell2"));
					end_match(red_team[_rand_winner])
				} 
			}
		}
		//Aether Mode
		if (aether_mode_1 == "Sudden Death" || aether_mode_2 == "Sudden Death") {
			if (_side == 1) {
				var _rand_winner = random_func(1, array_length(blue_team), true);
				sound_play(asset_get("mfx_ring_bell2"));
				end_match(blue_team[_rand_winner])
			} else {
				var _rand_winner = random_func(1, array_length(red_team), true);
				sound_play(asset_get("mfx_ring_bell2"));
				end_match(red_team[_rand_winner])
			} 
		}
	}
}

#define point_scored_2(_side) {
	//Practice Mode
	if is_practice_mode { 
		if (curr_damage >= max_damage && (_side != solo_mode)) { //Max Score
			max_damage = curr_damage;
			max_combo = last_combo;
		}
	}
	//Second Part of scoring
	spawn_hit_fx(x, y, 143);
	
	#region Variable resets
	score_timer = 90;
	
	ball_damage = ball_starting_damage;
	ball_hit = false;
	ball_timer = 0;
	blue_hits = 0;
	red_hits = 0;
	ball_last_hit = -4;
	ball_last_player = -4;
	
	old_vsp = start_vsp;
	old_hsp = 0;
	hsp = 0;
	vsp = 0;
	
	ball_hitstop = ball_serve_timer;
	hitpause = true;
	hitlock = 60;
	#endregion
	
	#region Position Resets
	y = get_marker_y(5)
	if !solo_mode {
		if (_side == 1) {
			x = get_marker_x(5)
		} else {
			x = get_marker_x(4)
		}
	} else {
		var _solo_wait = (random_func_2(7, 7, true) * 5) + 30;
		ball_hitstop = _solo_wait
		//Score
		//Training
		if (training_mode = "Serve") {
			if (solo_mode == 1) {
				x = get_marker_x(5)
			} else {
				x = get_marker_x(4)
			}
			ball_hitstop = 300;
		} else if (training_mode =="Receive") {
			var _solo_angle = random_func_2(5, 9, true) * 5 + 30;
			ball_damage = (random_func_2(7, 17, true) * 5) + ball_starting_damage;
			//var _solo_force = (random_func_2(6, 11, true)) + 12;
			var _solo_force = get_kb_formula(ball_damage, 1, get_match_setting( SET_SCALING ) * ball_kb_multi * aether_ball_weight, 0, 9, .9) * aether_ball_speed;
			//
			if (solo_mode == 1) {
				x = get_marker_x(4)
				old_hsp = lengthdir_x(_solo_force, _solo_angle);
			} else {
				x = get_marker_x(5)
				old_hsp = -lengthdir_x(_solo_force, _solo_angle);
			}
			old_vsp = lengthdir_y(_solo_force, _solo_angle);
		} else if (training_mode =="Free Play") {
			if (solo_mode == 1) {
				x = get_marker_x(5)
			} else {
				x = get_marker_x(4)
			}
			ball_hitstop = 9999999
		}
		
		/*
		print("Angle: " + string(_solo_angle));
		print("Damage: " + string(ball_damage));
		print("Force: " + string(_solo_force));
		print("Wait: " + string(_solo_wait));
		*/
	}
	#endregion	
	
	//Aether Mode
	if (is_aether_stage()) {
		new_party();
	}
	
	//Ball Out of Bounds
	while place_meeting(x, y, asset_get("par_block")) {
		if (x > get_marker_x(1)) {
			x += 1;
		} else if (x < get_marker_x(1)) {
			x -= 1;
		}
		y -= 1;
	}
	
	if (x < 0 || x > room_width || y < 0 || y > room_height) {
		//aether_mode_1 = "No Modifier"
		//aether_mode_2 = "No Modifier"	
		x = get_marker_x(1);
		y = get_marker_y(1);
	}
		
	reset_players();
	sound_play(asset_get("sfx_shop_buy"))
	spawn_hit_fx( x, y, HFX_ORI_BLUE_SMALL );
}

#define reset_players() {
	//aether resets
	aether_ball_spike = judgement_num;
	//
	with oPlayer {
		ball_hitlock = 0;
		if (get_player_team(player) == 2) { //Blue
			spr_dir = 1;
		} else if (get_player_team(player) == 1) { //Red
			spr_dir = -1;
		}
		hsp = 0;
		old_hsp = 0;
		vsp = 0;
		old_vsp = 0;
		if get_gameplay_time() >= 120 {
			state_timer = 0;
			attack = 0;
			window = 0;
			window_timer = 0;
			hitpause = true;
			hitstop = 60;
			was_parried = true;
			set_state(PS_PRATFALL);
			invincible = true;
			invince_time = 45;
		}
		visible = true;
		//Base Cast Resets
		bubbled = false;
		bubbled_id = -4;
		bubble_time = 9999;
		has_rock = false;
		marked = false;
		burned = false;
		poison = 0;
		wrap_time = 0
		stuck = false;
		hitstun = 0;
		//Position Resets
		x = get_marker_x(other.spawn_locations[other.spawn_alt[get_player_team(player)], player])
		y = get_marker_y(other.spawn_locations[other.spawn_alt[get_player_team(player)], player])
	}
	//Projectiles and Articles
	with pHitBox {
		destroyed = true;
	}
	
	reset_articles(); //Destroys all articles
}

#define reset_ball(_side) {
	with oPlayer {
		set_player_damage(player, 0);
	}
	switch(_side) {
		case 1: //Red Side
			y = get_marker_y(5)
			x = get_marker_x(5)
			old_hsp = 0;
			ball_hitstop = ball_serve_timer;
		break;
		case 2: //Blue Side
			y = get_marker_y(5)
			x = get_marker_x(4)
			old_hsp = 0;
			ball_hitstop = ball_serve_timer;
		break;
		default: //Middle
			y = get_marker_y(1)
			x = get_marker_x(1)
			
			if (random_func(1, 2, true) == 0) {
				old_hsp = 2;
			} else {
				old_hsp = -2;
			}			
			ball_hitstop = 60;
		break;
	}
	//Reset Ball
	ball_damage = ball_starting_damage;
	ball_hit = false;
	ball_timer = 0;
	blue_hits = 0;
	red_hits = 0;
	ball_last_hit = -4;
	ball_last_player = -4;
	
	old_vsp = start_vsp;
	//Old_HSP based on _side
	hsp = 0;
	vsp = 0;
	

	hitpause = true;
	hitlock = 60;
	//Reset Player
	reset_players();
}

#define hit_ball(_team, _name, _attack, _hbox_num, _player_id, _damage) {
	//Practice Mode
	if is_practice_mode { 
		if !(abs(blue_hits + red_hits)) { //Resets
			curr_damage = 0
			last_combo = [];
		}
		
		if (abs(blue_hits + red_hits)) < 5 { //Counter
			array_insert(last_combo, array_length(last_combo), get_attack_name(_attack) + " (" + string(_hbox_num) + ")");
		}
	}
	//Hardcoded Stuff
	//hard_coded_interaction(_name, _attack, _hbox_num, _player_id);
	_player_id.has_hit_ball = true; //Sets the opponent's hit ball variable to true;
	//Aether
	aether_ball_spike = judgement_num;
	//
	ball_last_hit = _attack;
	ball_last_player = _player_id.player;
	if (_team == 1) {
		blue_hits = 0;
		red_hits += 1;
		if (red_hits >= max_hits + 1) {
			sound_play(asset_get("sfx_mol_huge_explode"))
			spawn_hit_fx(x, y, 143);
			point_scored(1)
			foul_timer = 90;
		}
	} else {
		red_hits = 0;
		blue_hits += 1;
		if (blue_hits >= max_hits + 1) {
			sound_play(asset_get("sfx_mol_huge_explode"))
			spawn_hit_fx(x, y, 143);
			point_scored(2)
			foul_timer = 90;
		}
	}
}

#define party_mode(_party) {
	switch(_party) {
		case "Large Ball":
			image_xscale *= 2;
			image_yscale *= 2;
		break;
		case "Big Ball":
			image_xscale *= 1.5;
			image_yscale *= 1.5;
		break;
		case "Small Ball":
			image_xscale *= .5;
			image_yscale *= .5;
		break;
		case "Tiny Ball":
			image_xscale *= .25;
			image_yscale *= .25;
		break;
		case "Heavy Ball":
			aether_ball_weight -= .1;
		break;
		case "Light Ball":
			aether_ball_weight += .1;
		break;
		case "Three Hits":
			max_hits = 3;
		break;
		case "One Hit":
			max_hits = 1;
		break;
		case "Ten Hit":
			max_hits = 10;
		break;
		case "No Gravity":
			ball_grav = 0;
		break;
		case "Low Gravity":
			ball_grav *= .5;
		break;
		case "High Gravity":
			ball_grav *= 2;
		break;
		case "Player Fly":
			with oPlayer {
				if !joy_pad_idle {
					hsp = lengthdir_x(air_max_speed, joy_dir);
					vsp = lengthdir_y(air_max_speed, joy_dir);
				} else {
					hsp = 0;
					vsp = 0;
				}
			}
		break;
		case "Pogo":
			with oPlayer {
				if (!free && state_cat == SC_GROUND_NEUTRAL) {
					set_state(PS_JUMPSQUAT);
				}
			}
		break;
		case "Judgement":
			if !hitpause {
				if (aether_ball_spike) {
					aether_ball_spike -= 1;
				} else {
					aether_ball_spike = judgement_num;
					hitstop = 5;
					hitpause = true;
					old_hsp = 0;
					old_vsp = 15;
					sound_play(asset_get("sfx_war_horn"))
					spawn_hit_fx(x, y, HFX_SHO_HORN_HIT);
				}
			}
		break;
		case "Foosball":
			with oPlayer {
				hsp = 0;
				old_hsp = 0;
				x = get_marker_x(other.spawn_locations[other.spawn_alt[get_player_team(player)], player])
			}
		break;
		case "NAIR":
			with oPlayer {
				if (state == PS_ATTACK_GROUND) {
					set_state(PS_IDLE);
				}
				if (state == PS_ATTACK_AIR) {
					if (attack != AT_NAIR) {
						set_attack(AT_NAIR);
					}
				}
			}
		break;
		case "Don't Whiff":
			with oPlayer {
				if (prev_state == PS_ATTACK_AIR || prev_state == PS_ATTACK_GROUND) && !has_hit {
					was_parried = true;
					set_state(PS_PRATFALL);
				}
			}
		break;
		case "Free Roaming":
		break;
		case "Double Points":
			 score_modifier *= 2;
		break;
		case "Triple Points":
			 score_modifier *= 3;
		break;
		case "Infinite Jumps":
			with oPlayer {
				djumps = 0;
			}
		break;
		case "Platforms":
			platform_left.y = get_marker_y(25);
			platform_right.y = get_marker_y(26); 		
		break;
	}
}

#define new_party() {
	aether_mode_1 = aether_modes[random_func_2(10, array_length(aether_modes), true)];
	aether_mode_2 = aether_modes[random_func_2(11, array_length(aether_modes), true)];
	party_mode(aether_mode_1);
	party_mode(aether_mode_2);
}

#define in_bounds_check(_obj) {
	with _obj {
		if !(other.aether_mode_1 == "Free Roaming" ||other.aether_mode_2 == "Free Roaming") {
			if (get_player_team(player) == 2) {
				if (x > get_marker_x(2)) {
					x = get_marker_x(2);
				}
			}
			if (get_player_team(player) == 1) {
				if (x < get_marker_x(3)) {
					x = get_marker_x(3);
				}
			}
		}
	}
}

#define in_bounds_check_destroy(_obj) {	
	with _obj {
		if !(other.aether_mode_1 == "Free Roaming" ||other.aether_mode_2 == "Free Roaming") {
			if (get_player_team(get_instance_player(self)) == 2) {
				if (get_instance_x(self) > get_marker_x(2)) {
					//move_towards_point(get_marker_x(2) , get_instance_y(self), 10);
					article_destroy(self);
				}
			}
			if (get_player_team(get_instance_player(self)) == 1) {
				if (get_instance_x( self) < get_marker_x(3)) {
					//move_towards_point(get_marker_x(2) , get_instance_y(self), 10);
					article_destroy(self);
				}
			}
		}
	}
}

#define bc_article_destroy(_obj) {	
	with _obj {
		article_destroy(self);
	}
}

#define in_bounds_check_count(_obj, _obj_num) {
	//Smoke Check
	var _obj_count = [0, 0, 0, 0, 0];
	var _curr_obj = 0;
	for (i = instance_number(_obj) - 1; i >= 0; i--) {
		_curr_obj = get_instance_player(instance_find(_obj, i ));
		if (_obj_count[_curr_obj] < _obj_num) { //Checks if the num of object is less than max per player
			_obj_count[_curr_obj] += 1;
		} else {
			article_destroy(instance_find(_obj, i )); //Destroy the obj
		}
	}
}

#define menu_toggle(_player) {
	menu_player = _player;
	vb_menu = !vb_menu;
	if (vb_menu) {
		old_hsp = hsp;
		old_vsp = vsp;
		hsp = 0;
		vsp = 0;
		live_ball = false;
	} else {
		if (menu_player == _player) {
			live_ball = true;
		}
	}
	reset_players()
}

#define hard_coded_interaction( _name, _attack, _hbox_num, _player_id) {
	//Function is used for grab stuff
	print(_name)
	switch(_name) {
		case "Daora":
			switch(_attack) {
				case AT_FSPECIAL:
					with _player_id {
						attack_end(); 
						set_attack(AT_FSPECIAL_2);
						grabbed_player_obj = other;
					}
				break;
				case AT_USPECIAL:
					with _player_id {
						attack_end(); 
						set_attack(AT_USPECIAL_2);
						grabbed_player_obj = other;
					}
				break;
				case AT_DSPECIAL:
					with _player_id {
						if (_hbox_num == 2) { //2
							attack_end(); 
							set_attack(AT_DSPECIAL_2);
							window = 1;
							window_timer = 1;
							grabbed_player_obj = other;
						}
					}
				break;
				case AT_NSPECIAL:
					with _player_id {
						attack_end(); 
						set_attack(AT_EXTRA_2);
						grabbed_player_obj = other;
					}
				break;
			}
		break;
		case "Maverick":
			if (_attack == AT_NSPECIAL && _player_id.cargo_grab == false) {
				if _hbox_num == 3 {
					with _player_id {
						hit_player_obj = other;
						grab_timer = other.ball_damage + 90;
						cargo_grab = true;
						window = 5;
						window_timer = 1;
						other.x = x+40*spr_dir;
						other.y = y;
					}				
				} else {
					//cargo_hit_left = false;
					//cargo_hit_right = false;
					with _player_id {
						cargo_hit_left = true;
						cargo_hit_right = true;
						window = 4;
						window_timer = 1;
					}
				}
			}
		break;
	}
}

#define get_attack_name(_val) {
	switch (_val) {
		case 1  : return "AT_JAB" break;
		case 4  : return "AT_FTILT" break;
		case 5  : return "AT_DTILT" break;
		case 6  : return "AT_UTILT" break;
		case 7  : return "AT_FSTRONG" break;
		case 8  : return "AT_DSTRONG" break;
		case 9  : return "AT_USTRONG" break;
		case 10: return "AT_DATTACK" break;
		case 11: return "AT_FAIR" break;
		case 12: return "AT_BAIR" break;
		case 13: return "AT_DAIR" break;
		case 14: return "AT_UAIR" break;
		case 15: return "AT_NAIR" break;
		case 16: return "AT_FSPECIAL" break;
		case 17: return "AT_DSPECIAL" break;
		case 18: return "AT_USPECIAL" break;
		case 19: return "AT_NSPECIAL" break;
		case 20: return "AT_FSTRONG_2" break;
		case 21: return "AT_DSTRONG_2" break;
		case 22: return "AT_USTRONG_2" break;
		case 23: return "AT_USPECIAL_GROUND" break;
		case 24: return "AT_USPECIAL_2" break;
		case 25: return "AT_FSPECIAL_2" break;
		case 26: return "AT_FTHROW" break;
		case 27: return "AT_UTHROW" break;
		case 28: return "AT_DTHROW" break;
		case 29: return "AT_NTHROW" break;
		case 30: return "AT_DSPECIAL_2" break;
		case 31: return "AT_EXTRA_1" break;
		case 32: return "AT_DSPECIAL_AIR" break;
		case 33: return "AT_NSPECIAL_2" break;
		case 34: return "AT_FSPECIAL_AIR" break;
		case 35: return "AT_TAUNT" break;
		case 36: return "AT_TAUNT_2" break;
		case 37: return "AT_EXTRA_2" break;
		case 38: return "AT_EXTRA_3" break;
		case 41: return "AT_NSPECIAL_AIR" break;
	}
}

#define reset_articles() {
	//HFX
	bc_article_destroy(hit_fx_obj);
	//WS Articles
	bc_article_destroy(obj_article1);
	bc_article_destroy(obj_article2);
	bc_article_destroy(obj_article3);
	bc_article_destroy(obj_article_platform);
	bc_article_destroy(obj_article_solid);
	//Zetter
	bc_article_destroy(asset_get("pBurnBox"));
	//Orcane
	bc_article_destroy(asset_get("bubble_obj"));	
	bc_article_destroy(asset_get("big_bubble_obj"));
	bc_article_destroy(asset_get("puddle_obj"));
	//	Wrastor
	bc_article_destroy(asset_get("wind_obj"));
	//Krrag
	bc_article_destroy(asset_get("pillar_obj"));	
	//bc_article_destroy(asset_get("rock_obj"));
	//Forsburn
	bc_article_destroy(asset_get("smoke_obj"));	
	//Maypul
	bc_article_destroy(asset_get("plant_obj"));
	bc_article_destroy(asset_get("mark_leaf_obj"));	
	//Absa
	bc_article_destroy(asset_get("cloud_obj"));	
	bc_article_destroy(asset_get("penguin_ball_obj"));
	//Etalus
	bc_article_destroy(asset_get("ice_obj"));	
	//Ori
	//Ranno
	bc_article_destroy(asset_get("frog_bubble_obj"));	
	//Clairen
	bc_article_destroy(asset_get("plasma_field_obj"));
	//Sylvanos
	bc_article_destroy(asset_get("wolf_grass_obj"));	
	//Eliana
	bc_article_destroy(asset_get("steam_particle_obj"));	
	bc_article_destroy(asset_get("steam_bubble_obj"));
	bc_article_destroy(asset_get("steam_bomb_obj"));	
	bc_article_destroy(asset_get("steam_claw_obj"));	
	//SK
	bc_article_destroy(asset_get("gus_gem"));
	bc_article_destroy(asset_get("moneybag_obj"));	
	bc_article_destroy(asset_get("gus_rock_obj"));
	bc_article_destroy(asset_get("treasure_rock_obj"));	
	bc_article_destroy(asset_get("mobile_gear_obj"));
	//Mollo
	bc_article_destroy(asset_get("moth_bomb_obj"));	
	//Hodan
	bc_article_destroy(asset_get("hodan_whirl_obj"));
	bc_article_destroy(asset_get("hodan_spirit_obj"));	
	bc_article_destroy(asset_get("mud_pop_obj"));
	//Pomme
	bc_article_destroy(asset_get("pomme_field_obj"));	
	bc_article_destroy(asset_get("pomme_guard_obj"));
	//Olympia
	bc_article_destroy(asset_get("olymp_gem_obj"));	
	bc_article_destroy(asset_get("olymp_crystal_shatter_obj"));
	bc_article_destroy(asset_get("olymp_dsmash_crystal_obj"));	
}

#define random_teams() {
	blue_team = [];
	red_team = [];
	spawn_locations = [[-4, -4, -4, -4, -4], [-4, -4, -4, -4, -4]];
	spawn_alt = [0, 0, 0]; //Red and Blue spawn allts

	//Random Teams
	var _red_count = 0;
	var _blue_count = 0;
	var team_max = 2;

	if (total_count <= 2) {
		team_max = 1;
	}
	for (i = 1; i <= 4; i++) {
		if (random_func(i, 2, true) == true && _blue_count < team_max) {
			set_player_team(i, 2);
			_blue_count += 1;
		} else {
			if (_red_count < team_max) {
				set_player_team(i, 1);
				_red_count += 1;
			} else {
				set_player_team(i, 2);
				_blue_count += 1;
			}
		}
		print(random_func(i, 2, true))
	}

	//Normal Teams
	for (i = 1; i <= 4; i++) {
		if is_player_on(i) {
			if (get_player_team(i) == 2) { //Blue
				array_insert(blue_team, array_length(blue_team), i);
				if (array_length(blue_team) == 1) {
					spawn_locations[0, i] = 11;
					spawn_locations[1, i] = 13;
				} else {
					spawn_locations[0, i] = 13;
					spawn_locations[1, i] = 11;
				}
			} else if (get_player_team(i) == 1) { //Red
				array_insert(red_team, array_length(red_team), i);
				if (array_length(red_team) == 1) {
					spawn_locations[0, i] = 12;
					spawn_locations[1, i] = 14;
				} else {
					spawn_locations[0, i] = 14;
					spawn_locations[1, i] = 12;
				}
			}
		}
	}
}