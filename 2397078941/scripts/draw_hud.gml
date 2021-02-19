///
if attacking && attack == AT_TAUNT  && window != 4 {
    
     
    draw_sprite(sprite_get("supply"),   supply  , temp_x+ 10, temp_y -42  );
    draw_sprite(sprite_get("batt"),   4  , temp_x+ 114, temp_y -42  );
    
}

if attacking && attack == AT_TAUNT  && window == 4 {
    
     
    draw_sprite_ext(sprite_get("supply"),   supply  , temp_x+ 10, temp_y -42, 1 ,1,0,-1, (6 - window_timer)/6  );
    draw_sprite_ext(sprite_get("batt"),   4  , temp_x+ 114, temp_y -42,1 ,1,0,-1, (6 - window_timer)/6   );
    
}

if nolan == 1 {
        draw_sprite(sprite_get("supply"),   supply  , temp_x+ 10, temp_y -42  );
   draw_sprite_ext(sprite_get("batt"),   4  , temp_x+ 114, temp_y -42,1 ,1,0,-1, 1  );     
}