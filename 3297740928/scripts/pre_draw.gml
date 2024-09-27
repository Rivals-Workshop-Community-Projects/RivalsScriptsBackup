
shader_end();

if(state == PS_ATTACK_GROUND || state == PS_ATTACK_AIR){
	if(attack == AT_DSPECIAL){
		if(window != 1 and window != 4){
		var fx_image_index = get_gameplay_time() / 4;
		draw_sprite_ext(sprite_get("echoreflectorshields-back"), fx_image_index, x, y, 1, 1,0,-1, 1);    
		}
	}if(attack == AT_DSPECIAL_AIR){
		draw_sprite_ext(sprite_get("absorbing_vortex"), image_index, x, y, spr_dir, 1,0,-1, 1);    
	}
}

//vortex healing outline
if(heal_outline > 0){
    gpu_set_fog(true, c_white, 0, 0);
    draw_sprite_ext(sprite_index, image_index, x + 2, y - 2, spr_dir * 2, 2, 0 , c_black , heal_outline);
    draw_sprite_ext(sprite_index, image_index, x - 2, y + 2, spr_dir * 2, 2, 0 , c_black , heal_outline);
    draw_sprite_ext(sprite_index, image_index, x - 2, y - 2, spr_dir * 2, 2, 0 , c_black , heal_outline);
    draw_sprite_ext(sprite_index, image_index, x + 2, y + 2, spr_dir * 2, 2, 0 , c_black , heal_outline);
    gpu_set_fog(false, c_white, 0, 0);  
}