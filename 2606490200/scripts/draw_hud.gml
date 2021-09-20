///
shader_start();

        draw_sprite_ext(sprite_get("hudtrain"), 0, temp_x + 10 , temp_y - 80 , 1, 1, 0 , -1 , 1);
   
   draw_sprite_ext(sprite_get("hudtrain"), 1, temp_x + 10 , temp_y - 80 , 1, 1, 0 , -1 , htrain/100);
   draw_sprite_ext(sprite_get("hudtrain"), 2, temp_x + 10 , temp_y - 80 , 1, 1, 0 , -1 , atrain/100);
   draw_sprite_ext(sprite_get("hudtrain"), 3, temp_x + 10 , temp_y - 80 , 1, 1, 0 , -1 , btrain/100);
   draw_sprite_ext(sprite_get("hudtrain"), 4, temp_x + 10 , temp_y - 80 , 1, 1, 0 , -1 , ltrain/100);
   
   	  gpu_set_blendmode(bm_add);
   if htrain >= 100 {
        draw_sprite_ext(sprite_get("hudtrain"), 1, temp_x + 12 - random_func(1,4,true) , temp_y - 78 - random_func(2,4,true) , 1, 1, 0 , -1 , .5);
   }
   
   if atrain >= 100 {
        draw_sprite_ext(sprite_get("hudtrain"), 2, temp_x + 12 - random_func(1,4,true) , temp_y - 78 - random_func(2,4,true) , 1, 1, 0 , -1 , .5);
   }
   
   if btrain >= 100 {
        draw_sprite_ext(sprite_get("hudtrain"), 3, temp_x + 12 - random_func(1,4,true) , temp_y - 78 - random_func(2,4,true) , 1, 1, 0 , -1 , .5);
   }
   
   if ltrain >= 100 {
        draw_sprite_ext(sprite_get("hudtrain"), 4, temp_x + 12 - random_func(1,4,true) , temp_y - 78 - random_func(2,4,true) , 1, 1, 0 , -1 , .5);
   }
   	  gpu_set_blendmode(bm_normal);
   	  

if state == PS_ATTACK_AIR && attack == AT_USPECIAL && movex < 56 && movex > -56 && movey < 70 && movey > -50{
			draw_sprite_ext(sprite_get("gigaHud2"), 0, temp_x + movex + 40,  temp_y - 60 + movey + state_timer/3.6, 1, 1, 0, c_white, 1)
}
   	  
shader_end();
