shader_start();


if use_sword == true{  
    draw_sprite_ext(sprite_get("sword_hud"), 0, temp_x-142, temp_y-185, 2, 2, 0, c_white, 1);
} 

if no_sword == true{  
    draw_sprite_ext(sprite_get("no_sword_hud"), 0, temp_x-142, temp_y-185, 2, 2, 0, c_white, 1);
} 

shader_end();