//
switch(state) {
	case 0: //Initial State
		y = start_y + sin(state_timer / 20) * y_direction * max_y;
		if (state_timer >= 300) {
			set_state(2);
		}
		var _spr_dir = sign(hsp);
		with pHitBox {
			if !(player == other.player && attack == AT_FSTRONG) && place_meeting(x, y, other) {
				if (player == other.player) {
					//Create hitbox
					with other {
						set_state(2);
						var _hitbox = create_hitbox(AT_FSTRONG, 2, floor(x), floor(y));
						_hitbox.hsp = abs(_hitbox.hsp) * _spr_dir;
						_hitbox.spr_dir = _spr_dir;
					}
				} else {
					with other {
						set_state(2);
					}
				}
			}
		}
	break;
	case 2: //Die
	case "die": //Die
		sprite_index = sprite_get("fstrong_burst")
		image_index = floor(state_timer / 3) % 5;
		hsp = 0;
		if (state_timer >= 15) {
			instance_destroy(self)
			exit;
		}
	break; 
}

state_timer++;

#define set_state(_state) {
	if (_state == 2 || _state == "die") {
		sound_play(asset_get("sfx_bubblepop"));
	}
	state = _state;
	state_timer = 0;
}