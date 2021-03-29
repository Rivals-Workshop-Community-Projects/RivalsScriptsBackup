///

shader_start();

if attacking && (attack == AT_NSPECIAL or attack == AT_FSPECIAL or attack == AT_USPECIAL or attack == AT_DSPECIAL) {
	
	  gpu_set_blendmode(bm_add);
	  

        draw_sprite_ext(sprite_index, image_index, x + 2 - shsp*1.1 - random_func(1,4,true) , y - 2 - svsp*1.1 + random_func(2,4,true)  , spr_dir, 1, 0 , -1 , 1 - state_timer/8);
		draw_sprite_ext(sprite_index, image_index, x - 2 - shsp*1.05 + random_func(1,4,true) , y + 2  - svsp*1.05 - random_func(2,4,true)  , spr_dir, 1, 0 , -1 , 0.7 - state_timer/30);
		draw_sprite_ext(sprite_index, image_index, x - 2 - shsp*1.4 + random_func(1,4,true) , y + 2  - svsp*1.4 - random_func(2,4,true)  , spr_dir, 1, 0 , -1 , 0.2);


	  gpu_set_blendmode(bm_normal);

  
}



shader_end() 