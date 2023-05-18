
if((state == PS_RESPAWN || respawn_taunt > 0) || (sprite_index == sprite_get("uspecial") && window == 5)){

	shader_start();
	draw_sprite_ext(sprite_get("wings"), wing_timer % 3, x, y, spr_dir, 1, 0, c_white, 1 );
	shader_end();
	
}