
//pokemon code
if(display_level > 0){
	shader_start();
	draw_sprite_ext(sprite_get("level"), 0, x, y-char_height*1.5, 1, 1, 0, c_white, 1);
	shader_end();
}