shader_start();

if attacking && attack == AT_TAUNT && window == 4 {
  gpu_set_blendmode(bm_add);
        draw_sprite_ext(sprite_index, image_index , x  + 3 - random_func(1,6,true), y + 3 - random_func(2,6,true)  , spr_dir*1.05, 1.05, 0 , -1 , 0.3);
  gpu_set_blendmode(bm_normal);
}

shader_end() 

