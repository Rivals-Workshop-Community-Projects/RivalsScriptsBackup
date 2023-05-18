if("owner" not in self) exit;

if(state == 1){
	var bomb_outline = get_player_hud_color(owner);
	gpu_set_fog(true,bomb_outline,0,1);

	draw_sprite_ext(sprite_index, image_index, x-2, y-2, 1 * spr_dir, 1, 0, c_white, 1);
	draw_sprite_ext(sprite_index, image_index, x+2, y-2, 1 * spr_dir, 1, 0, c_white, 1);
	draw_sprite_ext(sprite_index, image_index, x+2, y+2, 1 * spr_dir, 1, 0, c_white, 1);
	draw_sprite_ext(sprite_index, image_index, x-2, y+2, 1 * spr_dir, 1, 0, c_white, 1);
	
	gpu_set_fog(false,c_white,0,0);
}