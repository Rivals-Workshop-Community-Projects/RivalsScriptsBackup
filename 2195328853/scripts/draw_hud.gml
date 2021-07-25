if ("steam_cooldown" not in self) exit;

draw_set_alpha(1)
shader_start();

if(steam_cooldown <= 0){
    draw_sprite(sprite_get("hud_cloud"), 0, temp_x + 180, temp_y - 18);
}else{
    draw_sprite(sprite_get("hud_cloud2"), 0, temp_x + 180, temp_y - 18);
}

shader_end();