///

shader_start();






if state == PS_CROUCH && fcharge < 3 {
        		draw_sprite_ext(sprite_index, image_index, x - 3 + random_func(1,6,true) , y - random_func(2,6,true), 1.04 * spr_dir, 1.04, 0 , c_white , 0.4);
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