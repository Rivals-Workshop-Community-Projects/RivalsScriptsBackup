draw_sprite_ext(sprite_get("drone_out"), image_index, x, y, spr_dir, 1, image_angle, make_color_rgb(player_id.static_colorO[32]*255, player_id.static_colorO[33]*255, player_id.static_colorO[34]*255), 1);

//G7 Glitch effect by Giik
if get_player_color(player_id.player) == 28{
	var fs = random_func(0, sprite_height + 40, 1);
	draw_sprite_part_ext(sprite_index,image_index,0,fs, abs(sprite_width), random_func(1, 20, 1)+1, (x+(random_func(2, 3, 1)-1)*7)  - sprite_get_xoffset(sprite_index)*spr_dir, y+fs - sprite_get_yoffset(sprite_index)+(random_func(67, 4, 1)-1)*7, spr_dir, 1, image_blend, 1);
	var fs = random_func(85, sprite_height + 40, 1);
	draw_sprite_part_ext(sprite_index,image_index,0,fs, abs(sprite_width), random_func(6, 20, 1)+1, (x+(random_func(9, 3, 1)-1)*7)  - sprite_get_xoffset(sprite_index)*spr_dir, y+fs - sprite_get_yoffset(sprite_index)+(random_func(68, 4, 1)-1)*7, spr_dir, 1, image_blend, 1);
	var fs = random_func(45, sprite_height + 40, 1);
	draw_sprite_part_ext(sprite_index,image_index,0,fs, abs(sprite_width), random_func(7, 20, 1)+1, (x+(random_func(11, 3, 1)-1)*7)  - sprite_get_xoffset(sprite_index)*spr_dir, y+fs - sprite_get_yoffset(sprite_index)+(random_func(69, 4, 1)-1)*7, spr_dir, 1, image_blend, 1);
	var fs = random_func(55, sprite_height + 40, 1);
	draw_sprite_part_ext(sprite_index,image_index,0,fs, abs(sprite_width), random_func(13, 20, 1)+1, (x+(random_func(15, 3, 1)-1)*7)  - sprite_get_xoffset(sprite_index)*spr_dir, y+fs - sprite_get_yoffset(sprite_index)+(random_func(70, 4, 1)-1)*7, spr_dir, 1, image_blend, 1);
}