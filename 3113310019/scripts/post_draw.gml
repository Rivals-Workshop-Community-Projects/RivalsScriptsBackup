//post-draw

if (state == PS_PARRY){
	if (state_timer >= 1 && state_timer < 9){
		draw_sprite_ext(sprite_get("pumpkin"), floor((state_timer - 1) / 4), x, y, spr_dir, 1, 0, c_white, 1);
	}
}

if (state == PS_RESPAWN || respawn_taunt){
	draw_sprite_ext(sprite_get("plat"), 0, x, y, spr_dir, 1, 0, c_white, 1);
}

shader_start();
with obj_article1{
	if (player_id == other.id){
		if (state == 4){
			draw_sprite_ext(sprite_index, image_index, x, y, spr_dir, 1, image_angle, c_white, 1);
		}
	}
}
shader_end();