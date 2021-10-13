shader_start();

if get_player_color(player) == 7 {
		if visible && state != PS_PRATFALL && state != PS_PRATLAND {
    
  gpu_set_blendmode(bm_add);
        draw_sprite_ext(sprite_index, image_index , x - 1 - hsp  , y - 1 - vsp  , spr_dir, 1, 0 , c_aqua , 0.1);
		draw_sprite_ext(sprite_index, image_index , x + 1 - hsp*2  , y + 1 - vsp*2  , spr_dir, 1, 0 , c_fuchsia , 0.1);
  gpu_set_blendmode(bm_normal);
}
}


if attack == AT_DSPECIAL && attacking && !free{
    
    if window < 5 {

         
    	  gpu_set_blendmode(bm_add);
        draw_sprite_ext(sprite_index, image_index , x - 4 + random_func(1,8,true)  , y - 4 + random_func(2,8,true)  , spr_dir, 1, 0 , -1 , 0.4);
     gpu_set_blendmode(bm_normal);
             draw_sprite_ext(sprite_index, image_index , x - 4 + random_func(4,8,true)  , y - 4 + random_func(3,8,true)  , spr_dir, 1, 0 , -1 , 0.4);
   
   
          if state_timer % 3 == 0 or state_timer % 4 == 0  {
         if get_player_color(player) != 4 {
         draw_sprite_ext(sprite_get("flake1"), get_gameplay_time() / 2, x  , y - 54, 1,1,0, -1, 0.2  );
         draw_sprite_ext(sprite_get("flake2"), get_gameplay_time() / 3, x  , y - 48, 1,1,0, -1, 0.6  );
         }
         
         if get_player_color(player) == 4 {
                      draw_sprite_ext(sprite_get("flakedio3"), get_gameplay_time() / 5, x  , y - 54, 0.7,0.7,0, -1, 0.6 );
                      
             if spr_dir == 1 {
             draw_sprite(sprite_get("flakedio1"), get_gameplay_time() / 2, x  , y - 50  );
             } else {
               draw_sprite(sprite_get("flakedio2"), get_gameplay_time() / 2, x  , y - 50  );   
             }
         }
       }
       			draw_set_alpha(state_timer/150);
        draw_rectangle_color(0,0,room_width,room_height,0,0,0,0,false);
    	draw_set_alpha(1);
   
    }
    
    if window == 5 {
        gpu_set_blendmode(bm_subtract)
    gpu_set_colorwriteenable(false,true,true,true);
	
	draw_circle_colour(x, y - floor(char_height/2), window_timer * 20, c_white, c_white, false);

    gpu_set_colorwriteenable(true,true,true,true);
    gpu_set_blendmode(bm_normal)
	
	shader_start();
	draw_sprite_ext(sprite_index,image_index,x,y,spr_dir,1,0,c_white,1);
	shader_end()
    }
}

shader_end() 

if spr_dir = 0.99 {
            draw_debug_text(room_width/2 - 110 ,room_height/2 - 135, "Setting time:   " + string (10 - (get_gameplay_time()/100)));
    		draw_debug_text(room_width/2 - 110 ,room_height/2 - 120, "STOCK SETTING! STOCK SETTING! STOCK SETTING!");
    		draw_debug_text(room_width/2 - 110 ,room_height/2  - 90, "'JUMP' to change YOUR STOCK");
    		draw_debug_text(room_width/2 - 110 ,room_height/2  - 75, "'SPECIAL' to change OPPONENTS STOCK");
    		draw_debug_text(room_width/2 - 110 ,room_height/2  - 55, "'TAUNT' to exit");
}