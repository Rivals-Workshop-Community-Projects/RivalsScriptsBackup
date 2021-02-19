//post_draw.gml


/*
if (void_portal_state > 0 && void_portal_state <= 4) {
	draw_sprite(sprite_get("portal"), 0, void_portal_start_x, void_portal_start_y - 10);
	draw_sprite(sprite_get("portal"), 0, void_portal_end_x, void_portal_end_y -10);
}

var shuriken = void_shuriken_article.spr_shuriken;

switch (void_portal_state) {
	case 1:
	case 2:
		//draw_sprite_part(void_portal_sprite_index, void_portal_image_index, -100, - void_portal_start_sink * 10, 100, 100, x, y )
		//draw_sprite(void_portal_sprite_index, void_portal_image_index, x, y);
		if (void_shuriken_article.state == 0) draw_sprite_part_ext(shuriken, 0, 0, 0, 128, sprite_get_yoffset(shuriken) - void_portal_start_sink, 
		x - sprite_get_xoffset(shuriken) * spr_dir, y + void_portal_start_sink - sprite_get_yoffset(shuriken), spr_dir, 1, c_white, 1 );
		draw_sprite_part_ext(void_portal_sprite_index, void_portal_image_index, 0, 0, 128, sprite_get_yoffset(void_portal_sprite_index) - void_portal_start_sink, 
		x - sprite_get_xoffset(void_portal_sprite_index) * spr_dir, y + void_portal_start_sink - sprite_get_yoffset(void_portal_sprite_index), spr_dir, 1, c_white, 1 );
		
	break;
	
	case 4:
	case 5:
		if (void_shuriken_article.state == 0) draw_sprite_part_ext(void_shuriken_article.spr_shuriken, 0, 0, sprite_get_yoffset(shuriken) - (y - void_portal_end_y), 128, 128,
		x - sprite_get_xoffset(shuriken) * spr_dir, void_portal_end_y, spr_dir, 1, c_white, 1 );
		draw_sprite_part_ext(void_portal_sprite_index, void_portal_image_index, 0, sprite_get_yoffset(void_portal_sprite_index) - (y - void_portal_end_y), 128, 128,
		x - sprite_get_xoffset(void_portal_sprite_index) * spr_dir, void_portal_end_y, spr_dir, 1, c_white, 1 );
	break;
}

*/



if (state == PS_ATTACK_AIR || state == PS_ATTACK_GROUND) {
	switch (attack) {
		case AT_DAIR:
		break;
		case AT_DSTRONG:
			//draw clothing glow during this move.
			shader_start();
			draw_sprite_ext( sprite_get("dstrong_draw_glow"), image_index, x, y, 2 * spr_dir, 2, 0, c_white, 0.5 + (0.5 * (get_player_color(player) == 10) ) );
			shader_end();
		break;
		case AT_NSPECIAL:
			//draw_sprite_ext( ralsei_gui_nspecial_ammo, ralsei_nspec_ammo, x - 24, y - 82, 2, 2, 0, c_white, 1 ); 
			if (window >= 2 && window <= 4) {
				draw_sprite_ext( ralsei_gui_nspecial_ammo, ralsei_nspec_ammo, x - 20 + (spr_dir * 40), y - 70, 2, 2, 0, c_white, 1 ); 
			}
		break;
	}
}

shader_start();
if (attack == AT_DAIR && state_timer > 10 && (state == PS_ATTACK_AIR || state == PS_ATTACK_GROUND)) {
    draw_sprite_ext( ralsei_gui_dair_ammo, max(0, ralsei_dair_ammo), x + 4 * spr_dir, y - 60, 2, 2, 0, c_white, 1 );
}

shader_end();