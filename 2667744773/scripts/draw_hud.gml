shader_start();
if(state == PS_SPAWN){
flutterTimer = 70;
}

shader_end();
draw_sprite_ext(sprite_get("bmeter"), 1, temp_x-8, temp_y-62, 2, 2, 0, c_white, 1);


if(flutterTimer < 60 && flutterTimer > 30){
	draw_sprite_ext(sprite_get("bmeter1"), 0, temp_x+48, temp_y-8, flutterTimer/30, 2, 0, c_white, 1);
}else if(flutterTimer <= 30){
	draw_sprite_ext(sprite_get("bmeter1"), 2, temp_x+48, temp_y-8, flutterTimer/30, 2, 0, c_white, 1);
	
}else if(flutterTimer >= 60){
	draw_sprite_ext(sprite_get("bmeter1"), 1, temp_x+48, temp_y-8, 2, 2, 0, c_white, 1);
	
}









