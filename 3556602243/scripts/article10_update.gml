//
/*
assist_num = 0;

assist_kragg = [
	{
		length : 12,
		anim_frames : 3,
		frame_start : 0
	}
]

assists = [
	assist_kragg
]
*/
if (window == 1 && window_timer = 0) {
	print(y)
	x += "x_offset" in assists[assist_num, 0] ? assists[assist_num, 0].x_offset * spr_dir : 0;
	y += "y_offset" in assists[assist_num, 0] ? assists[assist_num, 0].y_offset : 0;
}
var _can_die = true;
var _has_hit = false;

for (var i = 0; i < array_length(assist_hitboxes); i++) {
	//print(assist_hitboxes)
	if instance_exists(assist_hitboxes[i]) {
		_can_die = false;
		with assist_hitboxes[i] {
			//print(get_gameplay_time())
			var _assist = ror_assist;
			var _hbox = self;
			//			
			//Hitpause on Physicals
			if !("is_assist_proj" in _hbox && _hbox.is_assist_proj) {
				x = _assist.x + _assist.hsp + (x_offset * _assist.spr_dir);
				y = _assist.y + _assist.vsp + y_offset;
			}
			//
			/*
			if has_hit {
				has_hit = false;
				_assist.has_hit = true;
				_has_hit = true; //One Time
				with oPlayer {
					//print([last_hbox_num, last_attack, last_player])
					if (last_hbox_num == _hbox.hbox_num && last_attack == _hbox.attack && last_player == _hbox.player && hitpause) {
						//Burn
						//print(["Burn?", "ror_cause_burn" in _hbox])
						if "ror_cause_burn" in _hbox {
							burned = true;
							burnt_id = self;
							burn_timer = 0;
						}
						//Hitpause on Physicals
						if !("is_assist_proj" in _hbox && _hbox.is_assist_proj) {
							_assist.hitpause += floor(clamp(get_hitstop_formula(get_player_damage(player), _hbox.damage, _hbox.hitpause, _hbox.hitpause_growth, 0), 0, 20));
						}
					}
				}
				//Destroy Proj on hit
				if ("is_assist_proj" in _hbox && _hbox.is_assist_proj) {
					instance_destroy(_hbox);
				}
			}
			*/
		}
	}
}

if _has_hit {
	if "skip_on_hit" in assists[assist_num, window] {
		window = assists[assist_num, window].skip_on_hit;
		window_timer = 0;
		//
		kill_phys();
		//
	}
}

if (hitpause) {
	hitpause--;
	x -= hsp;
	y -= vsp;
	exit;
}

if (free) { vsp += assist_gravity };

var _curr_window = assists[assist_num, window];
var _end_lag = "whifflag" in _curr_window && !has_hit ? _curr_window.length * 1.5 : _curr_window.length
//print(_curr_window)

sprite_index = ("sprite_air" in assists[assist_num, 0] && free) ? assists[assist_num, 0].sprite_air : assists[assist_num, 0].sprite;
//mask_index = assists[assist_num, 0].hurt_sprite;
image_index = floor(window_timer / (_end_lag / _curr_window.anim_frames)) + _curr_window.frame_start;


//Hitboxes
//print(["hitboxes" in _curr_window, "hitboxes" in _curr_window && window_timer == _curr_window.hitboxes[hitbox_num, 0], window_timer])
if ("hitboxes" in _curr_window && window_timer == _curr_window.hitboxes[hitbox_num, 0]) {
	//print(_curr_window.hitboxes)
	var _player = player_id;
	var _attack = _curr_window.hitboxes[hitbox_num, 1]
	var _hbox_num = _curr_window.hitboxes[hitbox_num, 2]
	var _hit_x = _curr_window.hitboxes[hitbox_num, 3];
	var _hit_y = _curr_window.hitboxes[hitbox_num, 4];
	var _hitbox = create_hitbox(_attack, _hbox_num, floor(x + spr_dir * _hit_x), floor(y + _hit_y));
	_hitbox.player = _player.player;
	_hitbox.ror_assist = self;
	_hitbox.is_assist_proj = _curr_window.hitboxes[hitbox_num, 5] == "proj" ? true : false;
		_hitbox.ror_hitbox_type = _hitbox.is_assist_proj ? "proj" : "physical";
	_hitbox.spr_dir = spr_dir;
	_hitbox.x_offset = _hit_x;
	_hitbox.y_offset = _hit_y;
	_hitbox.ror_player_id = player_id;
	//
	if (_hitbox.is_assist_proj) { //Bullet Hell
		_hitbox.ror_stage_proj_bullet_hell = true;
	}
	//
		_hitbox.set_on_fire = true;
	
	
	array_push(assist_hitboxes, _hitbox);
	//Zetterburn Fire Crashes the game sorgy
	//if (_hitbox.effect == 1 && _player.url == CH_ZETTERBURN) {
	//	_hitbox.set_on_fire = true;
	//	_hitbox.effect = 0;
	//}
	
}

if "sfx" in _curr_window && window_timer == _curr_window.sfx[0] {
	sound_play(_curr_window.sfx[1]);
}	


if !free {
	hsp *= .5;
}

if "hsp" in _curr_window {
	switch(_curr_window.hsp[0]) {
		case 0: //Boost Once
			if (window_timer == 0) {
				hsp += spr_dir * _curr_window.hsp[1];
			}
		break;
		case 1: //Set All
			hsp = spr_dir * _curr_window.hsp[1];
		break;
		case 2: //Set Once
			if (window_timer == 0) {
				hsp = spr_dir * _curr_window.hsp[1];
			}
		break;
	}
}	

if "vsp" in _curr_window {
	switch(_curr_window.vsp[0]) {
		case 0: //Boost Once
			if (window_timer == 0) {
				vsp += _curr_window.vsp[1];
			}
		break;
		case 1: //Set All
			vsp = _curr_window.vsp[1];
		break;
		case 2: //Set Once
			if (window_timer == 0) {
				vsp = _curr_window.vsp[1];
			}
		break;
	}
}	
//Window Timer
window_timer++

var _looping = false;
var _next_window = false;
if ("loop_while" in assists[assist_num, window]) {
	//print(assists[assist_num, window])
	switch(assists[assist_num, window].loop_while) {
		case "air":
			if (free) {
				_looping = true;
				if (window_timer >= _end_lag) {
					window_timer = 0;
				}
			} else {
				_next_window = true;
				vsp = 0;
			}
			//Die off bottom
			if (y >= room_height * 2) {
				window = array_length(assists[assist_num]);
				window_timer = 0;
			}
		break;
		default:
			_looping = true;
			if (window_timer >= _end_lag) {
				window_timer = 0;
			}
		break;
	}	
}

if (!_looping && window_timer >= _end_lag) || _next_window {
	kill_phys()
	if ("skip_to_window" in _curr_window) {
		window = _curr_window.skip_to_window;
	} else {
		window++;
	}
	window_timer = 0;
}


if window >= array_length(assists[assist_num]) {
	window = array_length(assists[assist_num]) - 1
	window_timer = 0;
	spawn_hit_fx(x, y - 40, HFX_FOR_HIT_BIG);
	if _can_die {
		print("Man, I'm Dead")
		instance_destroy(self);
	} else {
		y = room_height * 2;
	}
}

#define kill_phys() {
	//
	for (var i = 0; i < array_length(assist_hitboxes); i++) {
		if instance_exists(assist_hitboxes[i]) {
			var _hbox = assist_hitboxes[i];
			//Destroy Physicals
			if !("is_assist_proj" in _hbox && _hbox.is_assist_proj) {
				instance_destroy(_hbox);
			}
		}			
	}
	//
}