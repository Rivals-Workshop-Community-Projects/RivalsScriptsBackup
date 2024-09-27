
shader_start();

if(sprite_index == sprite_get("uspecial3") && image_index >= 2 && image_index < 7){
    draw_sprite_ext(sprite_get("uspecial3_real"), image_index - 2, x, y - 26, spr_dir, 1, arocket_angle - 90, c_white, 1 );
}

shader_end();

if(state == PS_ATTACK_GROUND || state == PS_ATTACK_AIR){
	if(attack == AT_DSPECIAL){
		draw_sprite_ext(sprite_get("echoreflector"), image_index, x, y, 1, 1,0,-1, 1);
		
		if(window != 1 and window != 4){
		var fx_image_index = get_gameplay_time() / 4;
		draw_sprite_ext(sprite_get("echoreflectorshields-front"), fx_image_index, x, y, 1, 1,0,-1, 1);    
		}
	}
}