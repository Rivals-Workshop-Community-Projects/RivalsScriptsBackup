///

shader_start();

if state == PS_AIR_DODGE {
draw_sprite_ext(sprite_index, image_index, x  , y  , 1 * spr_dir, 1, 0 , c_white , 1);
}




if attackbar > 0 {
    	 draw_sprite_ext(sprite_get("attackbar"), attackbar/4.5, x - 40 , y + 20, 1, 1, 0 , c_white , 0.5 + attackbar/120)
  if get_gameplay_time() % 2 == 0 {
      draw_sprite_ext(sprite_get("attackbar"), attackbar/4.5, x - 40 , y + 20, 1, 1, 0 , c_white , 1)
  	 draw_sprite_ext(sprite_get("attackbar"), attackbar/4.5 - 1, x - 40 , y + 20, 1, 1, 0 , c_white , 0.3);;
  }
        		draw_sprite_ext(sprite_get("heart"), get_gameplay_time()/4, x , y - 30, spr_dir/3, 0.3, 0 , -1 , 1);
        		
  if barpause > 0 {
      
    draw_sprite_ext(sprite_get("attackbar"), attackbar/4.5, x - 42 + random_func(1,4,true) , y + 22 - random_func(2,4,true), 1, 1, 0 , c_red , 0.5)
               	 
      	  gpu_set_blendmode(bm_add);
  if get_gameplay_time() % 2 == 0 {
  	 draw_sprite_ext(sprite_get("attackbar"), attackbar/4.5 - 1, x - 40 , y + 20, 1, 1, 0 , c_red , 0.5);;
  }
    gpu_set_blendmode(bm_normal);
  }        		
}

if attacking && attack == AT_TAUNT && window == 3 {
    if state_timer > 40 {
        draw_set_alpha((state_timer-40)/200);
        draw_rectangle_color(0,0,room_width,room_height,0,0,0,0,false);
    	draw_set_alpha(1);
    	draw_sprite_ext(sprite_index, 5, x  , y + (state_timer-40)*1.8 , (1 + (state_timer-40)/60*(state_timer-40)/100) * spr_dir, 1 + (state_timer-40)/60*(state_timer-40)/100, 0 , c_white , 1);
       draw_sprite_ext(sprite_get("tspeak"),(state_timer-40)/4.4,room_width/2 - 180 - random_func(4, 10, true),room_height/2 - 100 - random_func(2, 10, true),1,1,0,-1, 1)
    }
}

shader_end() 