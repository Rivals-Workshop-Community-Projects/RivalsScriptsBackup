muno_event_type = 4;
user_event(14);

if (phone_cheats[CHEAT_DISPLAY] == 1) {
	draw_debug_text( x - 10, y+20, "x" + string(revengeMult));
}
//draw_debug_text( x, y, string( window ));
//draw_debug_text( x, y+20, string( window_timer ));

//draw_debug_text( x, y+50, string( revengeTarget ));

shader_start();
with (obj_article1) {
	if (player_id = other.id) {
		draw_sprite_ext(sprite_get("ropesFront"), image_index, x, y, sign(spr_dir), 1, 0, c_white, 1);
	}
}

if ((state == PS_ATTACK_GROUND || state == PS_ATTACK_AIR) && attack == AT_NSPECIAL && window == 1 && strong_charge > 6) {
	draw_sprite (sprite_get("nspec_cursor"), 0, x + ((4*strong_charge) + 40)*spr_dir, y - 20 - (3*custom_up_held));	
}
shader_end();

if (state == PS_RESPAWN || (state == PS_ATTACK_GROUND && free && attack == AT_TAUNT)) {
	draw_sprite(sprite_get("platform"), 0, x, y); 
}

if (get_match_setting(SET_HITBOX_VIS)) {
	with (obj_article1) {
		if (player_id = other.id) {
			draw_sprite_ext(sprite_get("rope_mask"), image_index, x, y, spr_dir, 1, 0, c_white, 0.5);
		}
	}
}

