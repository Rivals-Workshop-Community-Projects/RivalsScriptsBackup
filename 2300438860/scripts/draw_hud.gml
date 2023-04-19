shader_start();

shader_end() 


if get_player_color(player) != 5{
if cosmetic == 0 && get_gameplay_time() <= 120{
       draw_debug_text(temp_x,temp_y - 25,"Taunt to enable cosmetic effects.");
}

if cosmetic  == 1 && get_gameplay_time() <= 120{
       //draw_debug_text(temp_x,temp_y - 25,"Cosmetic enabled.");
}
}

if move_cooldown[AT_NSPECIAL] == 0 or attackbar != 0 {
       draw_sprite_ext(sprite_get("heartb"), 0, temp_x + 176, temp_y - 0,0.9,0.9,0,c_black,1);  
   draw_sprite_ext(sprite_get("heartb"), 0, temp_x + 176 - random_func(1,2,true), temp_y - random_func(2,2,true),0.8,0.8,0,-1,0.6);    
     draw_sprite_ext(sprite_get("heartb"), 0, temp_x + 176 + random_func(1,2,true), temp_y + random_func(2,2,true),0.8,0.8,0,-1,0.6);    
  
} else {
    
           draw_sprite_ext(sprite_get("heartb"), 0, temp_x + 176, temp_y - 0,0.9,0.9,0,c_black,1);  
}

if barpause != 0 {
       draw_sprite_ext(sprite_get("heartb"), 0, temp_x + 176 - random_func(1,4,true), temp_y - random_func(2,4,true),1,1,0,-1,0.7);    
     draw_sprite_ext(sprite_get("heartb"), 0, temp_x + 176 + random_func(1,4,true), temp_y + random_func(2,4,true),1,1,0,-1,0.7);    
}


if attackbar != 0 {
        gpu_set_blendmode(bm_add);
       draw_sprite_ext(sprite_get("heartb"), 0, temp_x + 176 - random_func(1,2,true), temp_y - random_func(2,2,true),0.9,0.9,0,-1,0.4);    
     draw_sprite_ext(sprite_get("heartb"), 0, temp_x + 176 + random_func(1,2,true), temp_y + random_func(2,2,true),0.9,0.9,0,-1,0.4);    
  gpu_set_blendmode(bm_normal);
}

