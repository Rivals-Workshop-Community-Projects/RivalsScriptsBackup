shader_start();
draw_sprite(sprite_get("hud_nohalo"), 0, temp_x + 26, temp_y);

draw_sprite_part(sprite_get("hud_halo"), 0, 0, 0, (scharge/180) * 182, 36, temp_x + 26, temp_y);

if scharge >= 180 && get_gameplay_time() % 2 == 0 {
draw_sprite(sprite_get("hud_inkshield"), 0, temp_x + 26, temp_y);
}


shader_end() 

if "aidebug" in self && aidebug {
    draw_debug_text(temp_x+30,temp_y+30,"AI Debug");
}

