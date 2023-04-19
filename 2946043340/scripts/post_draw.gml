
shader_start()

if ((state == PS_ATTACK_GROUND || state == PS_ATTACK_AIR) && attack == AT_AIRDASH && image_index >= 3 && image_index < 9){
	if (airdash_rot != 0)
	draw_sprite_ext(sprite_get("airdash_draw"), image_index, x, y, spr_dir, 1, airdash_rot*spr_dir, c_white, 1);
	else 
	draw_sprite_ext(sprite_get("airdash_0"), image_index, x, y, spr_dir, 1, airdash_rot*spr_dir, c_white, 1);
}

if (marked_timer > 0){
	draw_sprite_ext(sprite_get("fspecial_proj_mark"), 0, beaded_player.x+40*beaded_player.spr_dir, beaded_player.y-60, 1, 1, 0, c_white, 1);
}

shader_end()