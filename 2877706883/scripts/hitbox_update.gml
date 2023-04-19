//
if (attack == AT_UTILT &&  type == 2 && orig_player == player) {
	for (i = 0; i < 20; i++) {
		can_hit[i] = 1;
	}
}

if (attack == AT_NSPECIAL && type == 2) {
	if (!free || hitbox_timer == length) {
		spawn_hit_fx( x, y, 301 );
		hitbox_timer = length;
	}
}

if (attack == AT_FSPECIAL &&  type == 2 && orig_player == player) {
	if !(boom_state == "hold") {
		proj_angle = point_direction(0, 0, hsp, vsp)
	}
	if (hitbox_timer % 20 == 1 && boom_state != "die") {
		if (player_id.allow_sounds) {
			sound_play(sound_get("Toss"));
		} else {
			sound_play(asset_get("sfx_kragg_throw"));
		}
	}
	with pHitBox {
		if (type == 2 && place_meeting(x, y, other) && "can_be_picked_up_by_vi" in self &&  can_be_picked_up_by_vi ) {
			x = other.x
			y = other.y - 6;
			vsp = other.vsp;
			hsp = sign(other.hsp) * 4;
			was_ranged = true;
		}
		if ("can_be_picked_up_by_vi" !in self && player != other.player && place_meeting(x, y, other)) {
			with other {
				image_xscale = 0;
				image_yscale = 0;
				hsp = 0;
				vsp = -2;
				boom_state = "die";
				sprite_index = sprite_get("boomerang_dead");
			}
			sound_play(sound_effect)
			spawn_hit_fx(other.x + hit_effect_x, other.y + hit_effect_y, hit_effect)
		}
	}
	switch(boom_state) {
		case "launch":
			hsp -= (spr_dir * boom_fric)
			vsp = lerp(vsp, 0, .05)
			if ((has_hit) || (sign(hsp) != spr_dir)) {
				boom_state = "hold"
			}
		break;		
		case "hold":
			hsp = 0;
			vsp = 0;
			if hold_time {
				hold_time -= 1;
			} else {
				boom_state = "return";
			}
		break;
		case "return":
			walls = 1;
			grounds = 1;
			hit_flipper = 5;
			if !new_dir {
				new_dir = point_direction(x, y, player_id.x, player_id.y - player_id.char_height / 2);
				vsp = lengthdir_y(16, new_dir);
				hsp = lengthdir_x(16, new_dir);
				//print(new_dir)
			}
			if (place_meeting(x, y, player_id) || ((x > room_width && spr_dir == -1) || (x < 0 && spr_dir == 1)|| y < 0 || y > room_height)) {
				player_id.move_cooldown[AT_FSPECIAL] = 0;
				sound_play(asset_get("sfx_diamond_small_collect"))
				spawn_hit_fx( player_id.x,player_id.y - player_id.char_height / 2, HFX_ORI_BLUE_SMALL );
				instance_destroy(self);
			}
		break;
		case "die":
			vsp += .25;
			walls = 0;
			grounds = 0;
			proj_angle = 0;
			img_spd = 0;
			if (!free || ((x > room_width && spr_dir == -1) || (x < 0 && spr_dir == 1)|| y < 0 || y > room_height)) {
				if (hitbox_timer == length) {
					player_id.move_cooldown[AT_FSPECIAL] = 0;
					sound_play(asset_get("sfx_diamond_small_collect"))
					spawn_hit_fx( player_id.x,player_id.y - player_id.char_height / 2, HFX_ORI_BLUE_SMALL );
					instance_destroy(self);
				}
			} else {
				hitbox_timer = length - 90;
			}
		break;
	}
}

if (attack == AT_DSPECIAL && type == 2 && hbox_num != 26) {
	if (free) {
		hitbox_timer = 0;
	} else {
		hsp *= .7;
		if !has_landed {
			vsp = -2;
			has_landed = true;
			if (hbox_num != 6) {
				sound_play(sound_get("item_landing"))
			}
		} else {
			vsp = 0;
		}
		for (i = 0; i < array_length(can_hit); i++) {
			can_hit[i] = 0;
		}
		if (hbox_num == 6) { //Abomihoney landing explosion
			var bomb_explosion = create_hitbox(AT_DSPECIAL, 26, x, y);
			sound_play(asset_get("sfx_ell_uspecial_explode"));
			spawn_hit_fx(x, y, HFX_ELL_BOOM_BIG);
			destroyed = true;
			hitbox_timer = length;
		}
	}
	if (y > room_height || x < 0 || x > room_width || hitbox_timer == length) {
		sound_play(asset_get("sfx_bubblepop"))
		spawn_hit_fx( x , y, 301 );
		instance_destroy(self);
	}
	with pHitBox {
		if (type != 2 && "has_item" in player_id && player_id.has_item = false && place_meeting(x, y, other) && other.can_be_picked_up_by_vi && !player_id.item_regrab_timer) {
			if (player_id.allow_sounds) {
				sound_play(sound_get("ItemHold"), false, noone, 1, 1);
			} else {
				sound_play(asset_get("sfx_gem_collect"), false, noone, 1, 1);
			}
			player_id.has_item = other.image_index + 1;
			print("Item Collected");
			instance_destroy(other);
		}
	}
	with oPlayer {
		if ("has_item" in self && has_item = false && place_meeting(x, y, other) && other.can_be_picked_up_by_vi ) {
			if ((state == PS_AIR_DODGE || state == PS_ROLL_FORWARD || state == PS_ROLL_BACKWARD || state == PS_TECH_FORWARD || state == PS_TECH_BACKWARD || state == PS_TECH_GROUND || state == PS_WAVELAND || other.was_ranged) && !item_regrab_timer) {
				if (allow_sounds) {
					sound_play(sound_get("ItemHold"), false, noone, 1, 1);
				} else {
					sound_play(asset_get("sfx_gem_collect"), false, noone, 1, 1);
				}
				has_item = other.image_index + 1;
				print("Item Collected");
				instance_destroy(other);	
			}
		}
	}
}



