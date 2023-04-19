//draw_hud.gml
if("shield_health" not in self) exit;

shader_start();
draw_sprite_ext(sprite_get("hud"), 2, temp_x + 152, temp_y - 12, 2, 2, 0, c_white, 1);

draw_sprite_part_ext(sprite_get("hud"), 1, 0, 0, ceil((shield_health/shield_health_max) * 25), 8, temp_x + 152, temp_y - 12, 2, 2, c_white, 1);

if(hud_ping_timer > 0){
    draw_sprite_part_ext(sprite_get("hud"), 0, 0, 0, ceil((shield_health/shield_health_max) * 25), 8, temp_x + 152, temp_y - 12, 2, 2, c_white, hud_ping_timer / 10);
}
shader_end();