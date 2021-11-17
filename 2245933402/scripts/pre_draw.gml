///
shader_start();
if get_player_color(player) == 7 {
		if visible && state != PS_PRATFALL && state != PS_PRATLAND {
    
  gpu_set_blendmode(bm_add);
        draw_sprite_ext(sprite_index, image_index , x - 1 - hsp  , y - 1 - vsp  , spr_dir, 1, 0 , c_aqua , 0.4);
		draw_sprite_ext(sprite_index, image_index , x + 1 - hsp*2  , y + 1 - vsp*2  , spr_dir, 1, 0 , c_fuchsia , 0.4);

  gpu_set_blendmode(bm_normal);
}
}

shader_end() 