shader_start();

if "timeflow" in self {
    
draw_sprite_ext(sprite_get("hud_time"), timeflow/10, temp_x + 6, temp_y - 50,1,1, 0,-1,1);
draw_sprite_ext(sprite_get("hud_time"), 20, temp_x + 6, temp_y - 50 , 1, 1, 0 , c_white , move_cooldown[AT_UTHROW]/20);

}

shader_end();