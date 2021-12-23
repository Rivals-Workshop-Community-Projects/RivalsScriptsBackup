// Draw targetting reticle
/*set_article_color_slot(0,
				       color_get_red(hud_color),
				       color_get_green(hud_color),
				       color_get_blue(hud_color),
				       0.6);*/
/*set_article_color_slot(0,
                       energy_r,
                       energy_g,
                       energy_b,
                       0.6);*/

if (state == PS_RESPAWN) {
	RETROBLAST_TARGETTING_ME = noone;
	RETROBLAST_TARGET_STACKS = 0;
}
if (RETROBLAST_TARGETTING_ME == other_player_id) {
	with (other_player_id) {
		shader_start();
	}
	draw_sprite_ext(other_player_id.marker_sprite, RETROBLAST_TARGET_STACKS,
					x, y - char_height - 19, spr_dir, 1,
					0, c_white, 1);
	draw_sprite_ext(other_player_id.marker_sprite, RETROBLAST_TARGET_STACKS,
					x, y + 2, spr_dir, -1,
					0, c_white, 1);
	with (other_player_id) {
		shader_end();
	}
}
/*
RETROBLAST_MARKER_SPRITE = sprite_get("marker");
if (true) {
	draw_sprite_ext(RETROBLAST_MARKER_SPRITE, RETROBLAST_TARGET_STACKS,
					x, y - char_height - 19, spr_dir, 1, 0, c_white, 1);
	draw_sprite_ext(RETROBLAST_MARKER_SPRITE, RETROBLAST_TARGET_STACKS,
					x, y + 2, spr_dir, -1, 0, c_white, 1);
}
*/