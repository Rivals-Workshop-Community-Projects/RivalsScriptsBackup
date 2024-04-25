//
if ("rise_proj" in self) {
	if (attack == AT_USPECIAL && hbox_num == 1) {
		if (!free) {
			hitbox_timer = length;
		}
		if (hitbox_timer == length) {
			spawn_hit_fx(x, y, destroy_fx );
		}
	}
	if (attack == AT_FTILT && hbox_num == 2) {
		if (proj_hitpause) {
			hsp = 0;
			vsp = 0;
			hitbox_timer--;
			proj_hitpause--;
			if (!proj_hitpause) {
				hsp = old_hsp;
				vsp = old_vsp;
			}
		}
		if (hitbox_timer == length || !free) {
			spawn_hit_fx(x, y, destroy_fx );
			if (!free && !has_hit) {
				sound_play(sound_effect);
			}
			instance_destroy(self);
			exit;
		}
	}
	//Platinum Disc
	if (attack == AT_FSPECIAL && hbox_num == 1) {
		player_id.move_cooldown[AT_FSPECIAL] = 15;
		//Multi Hit
		if (hitbox_timer %  8 == 0) {
			for (var i = 0; i <= 20; i++) {
				if (i == player) {
					can_hit[i] = false;
				} else {
					can_hit[i] = true;
				}
			}
		}
		//Movement
		_scanned_player = check_scanned();
		if (_scanned_player != -4) { //Scanned Code
			damage = 2;
			length = 60;
			var _disc_speed = 12;
			var _disc_dir = point_direction(x, y, _scanned_player.x, _scanned_player.y - _scanned_player.char_height / 2)
			hsp = lengthdir_x(_disc_speed, _disc_dir);
			vsp = lengthdir_y(_disc_speed, _disc_dir);
		} else {
			hsp -= spr_dir * .85;
		}
	}
	if (attack == AT_DSPECIAL && hbox_num == 3) {
		//print("Hi")
		var _anim_length = 12;
		if (hitbox_timer + _anim_length <= length && hitbox_timer % 2) {
			with player_id {
				var _hit_fx = hit_fx_create(sprite_get("dspecial_beam"), 12);
				//spawn_dust_fx( other.x + 32 - random_func(2, 8, true) * 8, other.y + 1020, sprite_get("dspecial_beam"), 12);
				//spawn_dust_fx( other.x + 48 - floor(other.hitbox_timer ^ 2 % 9) * 12, other.y + 1020, sprite_get("dspecial_beam"), 12);
				//sound_play(asset_get("sfx_absa_singlezap1"))
			}
			spawn_hit_fx( x + 48 - floor(hitbox_timer ^ 2 % 9) * 12, y + 1020, _hit_fx );
			sound_play(asset_get("sfx_absa_singlezap1"))
		}
		//
		if (hitbox_timer % 4 == 0) {
			for (var i = 0; i <= 20; i++) {
				if (i == player) {
					can_hit[i] = false;
				} else {
					can_hit[i] = true;
				}
			}
		}
	}
	//if (attack == AT_FSTRONG && hbox_num == 2) {
	//	if (hitbox_timer % 8 == 0) {
	//		for (var i = 0; i <= 20; i++) {
	//			if (i == player) {
	//				can_hit[i] = false;
	//			} else {
	//				can_hit[i] = true;
	//			}
	//		}
	//	}
	//}
}

#define check_scanned() {
	if (disc_hit_player != -4) {
		//print("Scan Success")
		return disc_hit_player;
	}
	var _closest_player = -4;
	var _closest_dist = -4;
	var _scanned_opponents = [];
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
	return _closest_player;
}