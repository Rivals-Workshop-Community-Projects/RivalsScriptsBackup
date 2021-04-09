///

shader_start();


if state == PS_ATTACK_GROUND && ((attack == AT_FSTRONG or attack == AT_USTRONG) && window == 1) or (attack == AT_DSTRONG && window = 2) {
	
	if state > 0 && state_timer % 5 < 2 {
		 gpu_set_blendmode(bm_add);
        draw_sprite_ext(sprite_index, image_index, x + 2 - hsp*1.1 - random_func(1,4,true) , y - 2  - vsp*1.1 + random_func(2,4,true)  , spr_dir, 1, 0 , -1 , 0.1 + scharge/200);
		draw_sprite_ext(sprite_index, image_index, x - 2 - hsp*1.05 + random_func(1,4,true) , y + 2 - vsp*1.05 - random_func(2,4,true)  , spr_dir, 1, 0 , -1 , 0.3 + scharge/2-00);
         gpu_set_blendmode(bm_normal);
	}
	
	if scharge > 0 && state_timer % 5 >= 2 {
        draw_sprite_ext(sprite_index, image_index, x + 2 - hsp*1.1 - random_func(2,4,true) , y - 2 - vsp*1.1 + random_func(1,4,true)  , spr_dir, 1, 0 , c_black , scharge/200 - 0.2);
		draw_sprite_ext(sprite_index, image_index, x - 2 - hsp*1.05 + random_func(2,4,true) , y + 2 - vsp*1.05 - random_func(1,4,true)  , spr_dir, 1, 0 , c_black , scharge/200 - 0.2);
	}
	
	if scharge > 150 {
		shake_camera(floor(scharge/150),2)
	}
	
}



if state == PS_CROUCH && fcharge < 3 {
	        		draw_sprite_ext(sprite_index, image_index, x - 3 + random_func(1,6,true) , y - random_func(2,6,true), 1.04 * spr_dir, 1.04, 0 , c_white , 0.4);
 
			 gpu_set_blendmode(bm_add);
        		draw_sprite_ext(sprite_index, image_index, x - 3 + random_func(1,6,true) , y - random_func(2,6,true), 1.04 * spr_dir, 1.04, 0 , c_white , 0.4);
        gpu_set_blendmode(bm_normal);
	
}


if get_player_color(player) == 8 {
		if visible && state != PS_PRATFALL && state != PS_PRATLAND {
    
  gpu_set_blendmode(bm_add);
        draw_sprite_ext(sprite_index, image_index , x - 1 - hsp  , y - 1 - vsp  , spr_dir, 1, 0 , c_aqua , 0.2);
		draw_sprite_ext(sprite_index, image_index , x + 1 - hsp*2  , y + 1 - vsp*2  , spr_dir, 1, 0 , c_fuchsia , 0.2);

  gpu_set_blendmode(bm_normal);
}
}

shader_end() 