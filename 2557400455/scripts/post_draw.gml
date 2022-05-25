shader_start();

if crossout = 1 {    
    
   
        draw_sprite_ext(sprite_get("crosshair"),  1 , crossx + 2 - random_func(3,4,true), crossy - 2 + random_func(8,4,true), 1 + (state_timer/180), 1 + (state_timer/180), state_timer*1.74, -1, 0.5)
   
    draw_sprite_ext(sprite_get("crosshair"),  1 , crossx + 2 - random_func(3,4,true), crossy - 2 + random_func(8,4,true), 1 - (state_timer/300), 1 - (state_timer/300), state_timer*-2.8, -1, 0.5)
    draw_sprite_ext(sprite_get("crosshair"),  (state_timer - 8)/(70/20) , crossx, crossy, 1, 1, 0, -1, state_timer/30 )

}

if crossout == 3 {
    
        draw_sprite_ext(sprite_get("crosshairsmoll"),  get_gameplay_time()/4 , crossx, crossy, 1, 1, 0, -1, 1 )

}


if attacking && attack == AT_FSPECIAL {
    
    if gun == 1 && window <= 2 {
       draw_sprite_ext(sprite_get("fspecial1"),  image_index , x, y, spr_dir, 1, 0, -1, 1 ) 
    }
    
    if gun == 2 && window <= 2 {
       draw_sprite_ext(sprite_get("fspecial2"),  image_index , x, y, spr_dir, 1, 0, -1, 1 ) 
    }
    
    if gun == 3 && window <= 2 {
       draw_sprite_ext(sprite_get("fspecial3"),  image_index , x, y, spr_dir, 1, 0, -1, 1 ) 
    }
}
shader_end()  
    	


     
   