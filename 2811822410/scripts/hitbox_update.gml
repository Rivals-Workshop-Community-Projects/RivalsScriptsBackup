//
if ("miku_leak" in self && miku_leak && player_id.player == player) {
	//print("leak");
	
	var _leak_active = true;
	if (leak_state != 3) {
		with pHitBox {
			if other.player != player {
				if place_meeting(x, y, other) {
					_leak_active = false;
					sound_play(sound_effect);
					spawn_hit_fx(x, y, hit_effect);
					print("Destroy");
				}
			}
		}
	}
	if !_leak_active || was_parried {
		was_parried = false;
		print("Out of touch")
		for (i = 0; i < 20; i++) {
			can_hit[i] = false;
		}
		hsp = -spr_dir;
		vsp = -10;
		leak_state = 3;
		leak_state_timer = 0;
		
		transcendent = true;		
		was_broken = true;
	}

	#region Runes
	/*
	if (rune_leek_move) {
		if (leak_proj.leak_state == 0) {
			if (up_down) {
				leak_proj.vsp -= .25;
			}
			if (down_down) {
				leak_proj.vsp += .25;
			}
		} else if (leak_proj.leak_state == 1) {
			leak_proj.vsp = 0
		}
	}

	if (rune_follow_hit) {
		with leak_proj {
			if ("rune_follow" in self && rune_follow != -4) {
				var rune_dir = point_direction(x, y, rune_follow.x, rune_follow.y - rune_follow.char_height / 2)
				hsp = lengthdir_x(2, rune_dir);
				vsp = lengthdir_y(2, rune_dir);
				print(hsp)
			}
		}
	}
	if (rune_follow_miku) {
		with leak_proj {
			if ("rune_follow" in self && rune_follow == -4) {
				x = other.x;
				y = other.y - other.char_height / 2;
			}
		}
	}
	*/
	#endregion
	leak_state_timer += 1;
	//print(leak_state)
	switch(leak_state) {
		case 0: //init
			hsp = lerp(hsp, 0, .05)
			vsp = lerp(vsp, 0, .05)
			if (abs(hsp) <= 1) {
				hsp = 0;
				vsp = 0;
				leak_state = 1;
				leak_state_timer = 0;
			}
			image_index += .34
			if (image_index  >= 6) {
				image_index = 2;
			}
			for (i = 0; i < 20; i++) {
				if (i != player) {
					can_hit[i] = 1;
				}
			}
			//Regrab Leek
			if (!player_id.rune_follow_miku) { //Doesn't collect if you have the leaf shield rune
				if (abs(hsp) <= 8 && place_meeting(x, y, player_id)) {
					collect_leek()
				}
			}
		break;
		case 1: //Constant
			if (player_id.special_down) {
				image_index += .34
				if (image_index  >= 6) {
					image_index = 2;
				}
				for (i = 0; i < 20; i++) {
					if (i != player_id.player) {
						can_hit[i] = 1;
					}
				}
			} else {
				for (i = 0; i < 20; i++) {
					can_hit[i] = 0;
				}
				image_index = 6
				leak_state = 2;
				leak_state_timer = 0;
				image_xscale = 0.01;
				image_yscale =  0.01;
			}
			//Regrab Leek
			if (!player_id.rune_follow_miku) { //Doesn't collect if you have the leaf shield rune
				if place_meeting(x, y, player_id) {
					collect_leek()
				}
			}
		break;
		case 2: //Swing
			//print(leak_state_timer)
			if (leak_state_timer == 1) { //Hitbox init
				with (player_id) {
					other.damage = get_hitbox_value(AT_NSPECIAL, 3, HG_DAMAGE);
					other.kb_angle = get_hitbox_value(AT_NSPECIAL, 3, HG_ANGLE);
					other.kb_value = get_hitbox_value(AT_NSPECIAL, 3, HG_BASE_KNOCKBACK);
					other.kb_scale = get_hitbox_value(AT_NSPECIAL, 3, HG_KNOCKBACK_SCALING);
					other.hitpause = get_hitbox_value(AT_NSPECIAL, 3, HG_BASE_HITPAUSE);
					other.hitpause_growth = get_hitbox_value(AT_NSPECIAL, 3, HG_HITPAUSE_SCALING);
					other.hit_effect = leak_vfx_huge;
				}

			}
			if (leak_state_timer % 6 == 5) {
				image_index += 1;
			}
			if (leak_state_timer == 5) {
				image_xscale = 0.4;
				image_yscale =  0.3;
				sound_play(asset_get("sfx_swipe_medium1"))
				for (i = 0; i < 20; i++) {
					if (i != player_id.player) {
						can_hit[i] = 1;
					}
				}
			} 
			if (image_index == 8) {
				for (i = 0; i < 20; i++) {
					can_hit[i] = 0;
				}
				image_xscale = .1;
				image_yscale =  .1;
			}
			if (leak_state_timer == 24) {
				leak_state = 3;
				leak_state_timer = 0;
			}
			if (!player_id.rune_follow_miku) { //Doesn't collect if you have the leaf shield rune
				if place_meeting(x, y, player_id) {
					collect_leek();
				}
			}
		break;
		case 3: //Return
			image_xscale = .1;
			image_yscale =  .1;
			for (i = 0; i < 20; i++) {
				can_hit[i] = 0;
			}
			image_index = 10;
			if (was_broken) {
				vsp += 1;
				proj_angle += spr_dir * 6;
			} else {
				//image_angle = point_direction(x, y, player_id.x, player_id.y - (player_id.orig_char_height / 2));
				proj_angle = 0;
			}
			damage = 0;
			if (!was_broken || leak_state_timer >= break_cooldown) {
				hsp = 0;
				vsp = 0;
				was_broken = false;
				x = lerp(x, player_id.x + player_id.hsp, .2);
				y = lerp(y, player_id.y - (player_id.orig_char_height / 2) + player_id.vsp, .2);
				//
				if (place_meeting(x, y, player_id)) {
					collect_leek();
				}
			}
		break;
		default:
		break;
	}
}

#define set_leak_state(_state) {
	leak_state = _state;
	leak_state_timer = 0;
}

#define collect_leek() {
	sound_play(asset_get("sfx_diamond_small_collect"))
	spawn_hit_fx( x, y,  player_id.leak_vfx_big );
	//other.move_cooldown[AT_FSPECIAL] = 0;
	instance_destroy(self);
}