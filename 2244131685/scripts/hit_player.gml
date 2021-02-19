// 2B'S HIT PLAYER

switch (my_hitboxID.attack) {
	case AT_DAIR:
		has_hit = true;
		has_hit_player = true;
		break;
	case AT_FAIR:
		// FAIR float
		if (free) {
			old_hsp *= 0.5;
			old_vsp = -3;
		} else {
			old_vsp = 0;
		}
		break;
	case AT_JAB:
		if (attack == AT_FAIR) {
			// FAIR bounds less intense
			old_vsp = -1;
		}
		has_hit = true;
		has_hit_player = true;
		if (my_hitboxID.hbox_num > 3) {
			sword_hitpause[my_hitboxID.hbox_num - 4] = hit_player_obj.hitstop_full;
			hitpause = true;
			hitstop_full = hit_player_obj.hitstop_full;
			hitstop = hitstop_full;
		}
		break;
	case AT_NSPECIAL:
		if (my_hitboxID.hbox_num == 2) {
			var x_value = hit_player_obj.x;
			var y_value = hit_player_obj.y - (hit_player_obj.sprite_height/4);
			with (hit_fx_obj) if (hit_fx == 303 && player_id == other) {
				x = x_value;
				y = y_value;
			}
		}
		break;
	case AT_USTRONG:
		if (my_hitboxID.hbox_num != 1) {
			sound_play(asset_get("sfx_absa_harderhit"));
			if (!hit_player_obj.invincible && !hit_player_obj.super_armor && !hit_player_obj.initial_invince && !hit_player_obj.attack_invince) {
				var y_value = round(my_hitboxID.y + (hit_player_obj.hurtboxID.sprite_height/4))
				if (y_value & 1) {
					y_value -= 1; // Force no mixels
				}
				var info = { x: round(my_hitboxID.x), y: y_value, player_id: hit_player_obj, timer: grab_time, spears: [false, false, false, false]};
				if (ds_list_find_index(spear_ids, hit_player_obj) == -1) {
					ds_list_add(spear_grabbed, info);
					ds_list_add(spear_ids, hit_player_obj);
				}
				with (hit_player_obj) {
					if (!free) {
						set_state(PS_HITSTUN_LAND);
					}
					hitstun = other.grab_time + 30;
					hitstun_full = other.grab_time + 30;
					dont_tumble = true;
				}
				spears_hit[@my_hitboxID.hbox_num - 2] = [spears_hit[@my_hitboxID.hbox_num - 2][0] + 1, my_hitboxID.x, my_hitboxID.y, pod.spr_dir];
				ds_list_find_value(spear_grabbed, ds_list_find_index(spear_ids, hit_player_obj)).spears[@my_hitboxID.hbox_num - 2] = true;
			}
		}
		break;
}

if (ds_list_find_index(spear_ids, hit_player_obj) != -1) {
	if (my_hitboxID.attack != AT_USTRONG) {
		if (ds_list_size(spear_ids) != 0) {
			for (i = 0; i < ds_list_size(spear_ids); i++) {
				with (ds_list_find_value(spear_ids, i)) {
					hitstun = 30;
					set_state(PS_HITSTUN);
				}
			}
	    }
	    ds_list_clear(spear_grabbed);
	    ds_list_clear(spear_ids);
	    if (spears_hit != [[0, noone, noone, 0], [0, noone, noone, 0], [0, noone, noone, 0], [0, noone, noone, 0]]) {
		    for (i = 0; i < 4; i++) {
		    	if (spears_hit[@i][@0] > 0) {
		    		spears_destroyed[@i] = [spears_hit[@i][@1], spears_hit[@i][@2], spear_fade, spears_hit[@i][@3]];
		    	}
		    }
	    }
	    spears_hit = [[0, noone, noone, 0], [0, noone, noone, 0], [0, noone, noone, 0], [0, noone, noone, 0]];
	    spears = [noone, noone, noone, noone];
	}
}

//
if ("pod" in my_hitboxID) {
    pod.has_hit = true;
    var _hitpause_growth = get_hitbox_value(my_hitboxID.attack,my_hitboxID.hbox_num,HG_HITPAUSE_SCALING);
    var _extra_hitpause = get_hitbox_value(my_hitboxID.attack,my_hitboxID.hbox_num,HG_EXTRA_HITPAUSE);
    //print_debug(`${_hitpause_growth}, ${_extra_hitpause}`);
    pod.hitpause = true;
    pod.hitstop = floor(my_hitboxID.hitpause + get_player_damage(hit_player_obj.player) * _hitpause_growth *.05);
    hit_player_obj.hitpause = true;
    hit_player_obj.hitstop_full = pod.hitstop+_extra_hitpause;
    hit_player_obj.hitstop = hit_player_obj.hitstop_full;
}