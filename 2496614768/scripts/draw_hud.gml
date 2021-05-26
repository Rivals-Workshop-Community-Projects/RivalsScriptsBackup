shader_start();


draw_sprite(sprite_get("hudshock"), min( 5,shock) , temp_x + 26, temp_y - 28);

draw_sprite_part(sprite_get("hudshocktimer"), 0, 0, 0, (shocktimer/300) * 182, 36, temp_x + 26, temp_y - 28);

if shock > 5 {
    
    draw_sprite_ext(sprite_get("hudshock"), shock + 5, temp_x + 26 , temp_y - 30,1,1,0,-1,shocktimer/700 + 0.6);
                      gpu_set_blendmode(bm_add);    
    draw_sprite_ext(sprite_get("hudshock"), shock + 11, temp_x + 26 + random_func(1,3,true)*2, temp_y - 26,1,1,0,-1,shocktimer/700 + 0.6);
                          gpu_set_blendmode(bm_normal);
}

if !timebreak {
                      gpu_set_blendmode(bm_add);    
    draw_sprite_ext(sprite_get("hudshock"), 7, temp_x + 26 - random_func(1,3,true)*2, temp_y - 30,1,1,0,-1,move_cooldown[AT_NSPECIAL_2]/12 );
    draw_sprite_ext(sprite_get("hudshock"), 15, temp_x + 26 + random_func(1,3,true)*2, temp_y - 26,1,1,0,-1,move_cooldown[AT_NSPECIAL_2]/12 );
                          gpu_set_blendmode(bm_normal);
} else {
     draw_sprite_part(sprite_get("hudshock"), 5, 0, 0, (timebreak/timebreakmax) * 182, 36, temp_x + 26, temp_y - 28);
    draw_sprite_part(sprite_get("hudshocktimer"), 0, 0, 0, (timebreak/timebreakmax) * 182, 36, temp_x + 26, temp_y - 28);
    
}

shader_end() 

