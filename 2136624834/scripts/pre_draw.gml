///



shader_start();


if attack == AT_NSPECIAL && window == 2 && state == PS_ATTACK_GROUND {
    
    if ncharge >= 20 && ncharge < 60 &&  window_timer % 3 == 0 {
         draw_sprite(sprite_get("snowball1"), state_timer / 1, x - (40 * spr_dir) , y - 10  );
    }
    
     if ncharge >= 60 && window_timer % 3 == 0 {
         draw_sprite(sprite_get("snowball2"), state_timer / 1, x - (40 * spr_dir) , y - 10  );
    }
    
}


if timefreeze > 1 {

    	draw_set_alpha(0.2);
        draw_rectangle_color(0,0,room_width,room_height,timefreeze_color,timefreeze_color,timefreeze_color,timefreeze_color,false);
    	draw_set_alpha(1);
         
         
         if get_player_color(player) != 4 {
         draw_sprite_ext(sprite_get("flake1"), get_gameplay_time() / 2, x  , y - 54, 1,1,0, -1, 0.4  );
    
         draw_sprite_ext(sprite_get("flake2"), get_gameplay_time() / 3, x  , y - 48, 1,1,0, -1, 1  );
         }
         
         if get_player_color(player) == 4 {
                      draw_sprite_ext(sprite_get("flakedio3"), get_gameplay_time() / 5, x  , y - 54, 0.7,0.7,0, -1, 1  );
                      
             if spr_dir == 1 {
             draw_sprite(sprite_get("flakedio1"), get_gameplay_time() / 2, x  , y - 50  );
             } else {
               draw_sprite(sprite_get("flakedio2"), get_gameplay_time() / 2, x  , y - 50  );   
             }

             
         }

}
if timeinv > 1 {
     draw_sprite(sprite_get("flake2"), get_gameplay_time() / 1, x - (8 * spr_dir)  , y - 40  );
}
shader_end();