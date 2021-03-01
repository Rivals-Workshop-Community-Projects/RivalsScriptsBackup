shader_start();
if get_player_color(player) == 12 {
		if visible && state != PS_PRATFALL && state != PS_PRATLAND {
    
  gpu_set_blendmode(bm_add);
        draw_sprite_ext(sprite_index, image_index , x - 1 - hsp  , y - 1 - vsp  , spr_dir, 1, 0 , c_aqua , 0.2);
		draw_sprite_ext(sprite_index, image_index , x + 1 - hsp*2  , y + 1 - vsp*2  , spr_dir, 1, 0 , c_fuchsia , 0.2);
  gpu_set_blendmode(bm_normal);
}
}

if nolan = 1 {
	
	if state == PS_ATTACK_AIR && attack == AT_USPECIAL && window == 4 && vsp > -2 {
		draw_sprite_ext(sprite_index, image_index, x  , y , spr_dir, 1, 0 , c_black , 0.5);	
	}
	
}

shader_end() 

