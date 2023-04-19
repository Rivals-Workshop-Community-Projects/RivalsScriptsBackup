//
if (state == PS_ATTACK_AIR || state == PS_ATTACK_GROUND) {
	if (attack == AT_NSPECIAL && window == 2) {
		draw_sprite_ext( sprite_get("nspecial_ind"), 0, x + spr_dir * 40, y - 16, spr_dir, 1, (-45 * spr_dir) + (needle_angle * spr_dir) * spr_dir, c_white, 1);
	}
}

if has_item {
	if (has_item == 6 || has_item == 10) {
		var item_toss_spr = sprite_get("hud_items")
	} else {
		var item_toss_spr = sprite_get("held_items")
	}
	if !(state == PS_ATTACK_GROUND || state == PS_ATTACK_AIR) {
		draw_sprite_ext( item_toss_spr, has_item - 1, x - spr_dir * item_pos[item_hold_sprite][image_index][0], y - item_pos[item_hold_sprite][image_index][1], spr_dir, 1, 0, c_white, 1);
	} else {
		if (array_length(item_attack_pos[attack])) {
			draw_sprite_ext( item_toss_spr, has_item - 1, x - spr_dir * item_attack_pos[attack][image_index][0], y - item_attack_pos[attack][image_index][1], spr_dir, 1, 0, c_white, 1);	
		}
	}
}
