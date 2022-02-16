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


if visible && state != PS_AIR_DODGE && 
state != PS_ROLL_BACKWARD && state != PS_ROLL_FORWARD && state != PS_TECH_FORWARD && state != PS_TECH_BACKWARD
&& !attacking or (attacking && attack != AT_NSPECIAL) or (attacking && attack == AT_NSPECIAL && window < 2) {

  if ncharge >= 20 && ncharge < 60 {
         draw_sprite_ext(sprite_get("sno1"), 0, snox , snoy, 2,2, get_gameplay_time()*2 , -1, 0.5 )
    }
    
     if ncharge >= 60 {
         draw_sprite_ext(sprite_get("sno2"), 0, snox , snoy, 2,2, get_gameplay_time()*2, -1, 0.5 ) 
    }
    
  

}


if visible && state != PS_AIR_DODGE && 
state != PS_ROLL_BACKWARD && state != PS_ROLL_FORWARD && state != PS_TECH_FORWARD && state != PS_TECH_BACKWARD {

        draw_sprite_ext(sprite_get("flake4"),  26*timestop/100  , x , y -32  , 1.5,1.5, get_gameplay_time()*2 , -1, 0.1 );

gpu_set_blendmode(bm_add);  
        draw_sprite_ext(sprite_get("flake4"),  26*timestop/100  , x , y -32  , 1.5,1.5, get_gameplay_time()*2 , -1, 0.1 );
gpu_set_blendmode(bm_normal);


    if timefreeze < 1 {
        draw_sprite_ext(sprite_get("flake4"),  26*timestop/100  , x  , y -32  , 1,1, 0, -1, 0.2 + move_cooldown[AT_FSPECIAL_2]/60  );
gpu_set_blendmode(bm_add);      
     if state_cat != SC_HITSTUN {
        draw_sprite_ext(sprite_get("flake4"),  26*timestop/100  , x  , y -32  , 2,2, 0, -1, min(move_cooldown[AT_FSPECIAL_2]/60,0.5)  );
     }
gpu_set_blendmode(bm_normal);
    }
    


    if timefreeze > 1 {
        draw_sprite_ext(sprite_get("flake4"), 26*timefreeze/360  , x , y -32  , 2,2, 0, -1, 0.2 + timefreeze/300  );

gpu_set_blendmode(bm_add);      
        draw_sprite_ext(sprite_get("flake4"), 26*timefreeze/360  , x - 10 + random_func(1,20,true)  , y - 10 + random_func(2,20,true)  -32 - vsp , 2,2, 0, -1, 0.1 + min(timefreeze/300,0.5)  );
gpu_set_blendmode(bm_normal);
    }
   
    
    if timestop >= 100 {
        draw_sprite_ext(sprite_get("flake4"),  26  , x  , y -32  , 1,1, 0, -1, 0.1 + move_cooldown[AT_FSPECIAL_2]/20   );
    }    

}
shader_end();