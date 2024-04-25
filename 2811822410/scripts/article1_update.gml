//
switch(orb_attack) {
	case AT_NSPECIAL:
		//Cooldown
		orb_owner.move_cooldown[AT_NSPECIAL] = 2;
		orb_owner.move_cooldown[AT_NSPECIAL_AIR] = 2;
		//Window 1 - Beccome visible
		var _fade_in = 8;
		//Window 2 - Ease In
		var _move = 30; //Circle Movement
			var _smooth_move = _move * .5; //Linear Movement
		//Window 3 - Wait
		var _wait = 16;
		//Window 4 - Move Up
		var _attack = 40;	
		//Window 5 - Die
		var _fade_out = 8;
		//			
		//Animate
		var _anim_speed = .25;
		switch(state) {
			case 0:
			case "orb_start":
				image_alpha += .1;
				if (state_timer == _fade_in) {
					image_alpha = 1;
					set_state(1); 
				}
			break;
			case 1:
			case "orb_move":
				
				//x = ease_backIn( start_x, end_x, state_timer, _move, 8 );
				//x = ease_backInOut( start_x, end_x, state_timer, _move, 8 );
				//x = ease_circIn( start_x, end_x, state_timer, _move )
				//x = ease_cubeInOut( start_x, end_x, state_timer, _move )
				if (state_timer < _smooth_move) {
					x = ease_cubeOut( start_x, start_x - spr_dir * 32, state_timer, _smooth_move);
					last_x = floor(x);
					last_y = floor(y);	
				} else {
					depth = -36;
					x = ease_cubeIn( last_x, end_x, state_timer, _move);
				}
				y = ease_linear( start_y, end_y, state_timer, _move );
				if (state_timer >= _move) {
					set_state(2); 
				}			
			break;
			case 2:
			case "orb_wait":
				if (orb_owner.special_down && orb_owner.nspec_hold && orb_owner.state_cat != SC_HITSTUN) {
					orb_owner.nspec_hold--;
				} else {
					if (state_timer >= _wait)  {
						set_state(3); 
						//Hitbox
						orb_hitbox = create_hitbox(AT_NSPECIAL, 1, x, y);
						orb_hitbox.x = x + spr_dir * 81 + spr_dir * (orb_hitbox.image_xscale * 100);
						orb_hitbox.y = y;
						sound_play(asset_get("sfx_absa_jab1"));
					}
				}
			break;
			case 3:
			case "orb_attack":
				y = ease_cubeOut( end_y, start_y, state_timer, _attack );
				if instance_exists(orb_hitbox) {
					//print(orb_hitbox.image_xscale)
					orb_hitbox.x = x + spr_dir * 81 + spr_dir * (orb_hitbox.image_xscale * 100);
					orb_hitbox.y = y;
				}
				if (state_timer == _attack) {
					set_state(4); 					
				}
				image_index -= _anim_speed;
			break;			
			case 4:
			case "orb_fade":
				image_alpha -= .1;
				if (state_timer >= _wait) {
					instance_destroy(self);
					exit;
				}
			break;
		}
	break;
	case AT_DSPECIAL:
		//Cooldown
		orb_owner.move_cooldown[AT_DSPECIAL] = 60;
		//Window 1 - Beccome visible
		var _fade_in = 8;
		//Window 2 - Ease In
		var _attack = 40;	
		//Window 5 - Die
		var _fade_out = 8;
		//
		var _anim_speed = .25;
		//
		var _proj_height = 512;
		//
		switch(state) {
			case 0:
			case "orb_start":
				image_alpha += .1;
				if (state_timer == _fade_in) {
					image_alpha = 1;
					set_state(1); 
					if orb_special {
						orb_hitbox = create_hitbox(AT_DSPECIAL, 2, x, y);
						orb_hitbox.x = x;
						orb_hitbox.y = y - _proj_height;
					} else {
						orb_hitbox = create_hitbox(AT_DSPECIAL, 1, x, y);
						orb_hitbox.x = x;
						orb_hitbox.y = y - 81 - _proj_height//(orb_hitbox.image_yscale * 100);
						orb_hitbox.proj_angle = 90 * spr_dir;
					}
				}
			break;
			case 1:
			case "orb_attack":
				if (state_timer == _attack) {
					if orb_special {
						set_state(3);
						sound_play(asset_get("sfx_absa_jab1"));
					} else {
						set_state(2);
						
					}
				}
				image_index -= _anim_speed;
			break;			
			case 2:
			case "orb_fade":
				image_alpha -= .1;
				if (state_timer >= _fade_out) {
					instance_destroy(self);
					exit;
				}
			break;
			case 3:
			case "orb_special_attack":
				if (state_timer >= _fade_out) {
					orb_hitbox = create_hitbox(AT_DSPECIAL, 3, x, y);
					var _scanned = check_scanned();
					if (_scanned != -4) {
						orb_hitbox.x = _scanned.x;
						_scanned.scanned = false;
					} else {
						orb_hitbox.x = x + spr_dir * 256;
					}
					orb_hitbox.y = room_height;
					with orb_hitbox {
						var _limit = _proj_height * 2;
						while ((place_meeting(x, y, asset_get("par_block")) || place_meeting(x, y, asset_get("par_jumpthrough"))) && _limit ) {
							_limit--;
							y -= 2;							
						}
					}
					instance_destroy(self);
					exit;
				}
			break;
		}
		if orb_special {
			image_alpha = false;
		}
	break;
	case AT_USPECIAL:
		//Window 1 - Beccome visible
		var _fade_in = 8;
		//Window 2 - Ease In
		var _move = 30; //Circle Movement
			var _smooth_move = _move * .5; //Linear Movement
		//Window 3 - Wait
		var _wait = 16;
		//Window 4 - Move Up
		var _attack = 40;	
		//Window 5 - Die
		var _fade_out = 8;
		//			
		//Animate
		var _anim_speed = .25;
		switch(state) {
			case 0:
			case "orb_start":
				image_alpha += .1;
				if (state_timer == _fade_in) {
					image_alpha = 1;
					set_state(1); 
				}
				if (!orb_special && (state_timer >= floor(_fade_in / 2))) {
					x = ease_linear( start_x, end_x, state_timer - floor(_fade_in / 2), _fade_in );
					y = ease_linear( start_y, end_y, state_timer - floor(_fade_in / 2), _fade_in );
					sprite_index = sprite_get("nspecial_ball");
					image_angle = end_angle;
				}
			break;
			case 1:
			case "orb_attack":
				if (state_timer == _attack) {
					set_state(2); 					
				}
				image_index -= _anim_speed;
			break;			
			case 2:
			case "orb_fade":
				image_alpha -= .1;
				if (state_timer >= _wait) {
					instance_destroy(self);
					exit;
				}
			break;
		}
	break;
}

state_timer++;

#define set_state(_state) {
	state = _state;
	state_timer = 0;
}

#define check_scanned() {
	var _closest_player = -4;
	var _closest_dist = -4;
	var _scanned_opponents = [];
	with player_id {
		with oPlayer {
			if ("scanned" in self && scanned) {
				array_insert(_scanned_opponents, 0, self);
			}
		}
		//print(_scanned_opponents);
		for (var i = 0; i < array_length(_scanned_opponents); i++) {
			if (_scanned_opponents[i] != self) { //Self Check
				if (_closest_player == -4) {
					_closest_player = _scanned_opponents[i];
				}
			}
		}
	}
	return _closest_player;
}
