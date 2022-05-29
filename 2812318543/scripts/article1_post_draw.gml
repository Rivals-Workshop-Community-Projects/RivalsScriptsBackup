if(state != 0){
	//draw_sprite_ext(spr_field[affinity_level], 0, x, y - 35, 2, 2, 0, c_white, 0.4);
}
//draw_sprite(mask_index, 0, x, y);

//when pandy not in control
if(!pandy_control){
	gpu_set_fog(true,c_black,0,1);
	draw_sprite_ext(sprite_index, image_index, x, y, 1 * spr_dir, 1, 0, c_black, 0.25 );
	gpu_set_fog(false,c_white,0,0);
}
shader_end();

//draw_sprite_ext(sprite_get("arrow"), 0, round(x), round(y) - 80, 2, 2, 0, get_player_hud_color(player_id.player), 1);

if(player_id.move_cooldown[AT_DSPECIAL] > 0){
	draw_sprite_ext(sprite_get("swapcd_x"), 0, round(x), round(y) + 15, 2, 2, 0, c_white, 1.0 );
}