shader_start();

if timetimer > 0 {

    	
    gpu_set_blendmode(bm_add);
        draw_sprite_ext(sprite_index, image_index , x - 4 + random_func(1,8,true) , y - 4 + random_func(2,8,true)  , spr_dir, 1, 0 , c_fuchsia , 1);
        
		draw_sprite_ext(sprite_index, image_index , x + 4 - random_func(3,8,true)  , y + 4 - random_func(4,8,true)  , spr_dir, 1, 0 , c_aqua , 1);
  gpu_set_blendmode(bm_normal);
  
  
}

shader_end() 



