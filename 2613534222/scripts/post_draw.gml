if u_cooldown != 0
{
	gpu_set_fog(1,c_gray, 0, 1)
	draw_sprite_ext(sprite_index,image_index,x,y,image_xscale,image_yscale,0,c_gray,0.5 + 0.3*(sin(get_gameplay_time() / 4)))
	gpu_set_fog(0,c_gray, 0, 1)
}

if(attack == AT_FTILT and state == PS_ATTACK_GROUND and window == 2){
	shader_start();
	draw_sprite_ext(sprite_get("shadowpunch"), 0, x+spr_dir*ftilt_punch_distance, y, spr_dir, 1, 0, c_white, 1);
	shader_end();
}

if(display_level > 0){
	shader_start();
	draw_sprite_ext(sprite_get("level"), 0, x, y-char_height*1.5, 1, 1, 0, c_white, 1);
	shader_end();
}