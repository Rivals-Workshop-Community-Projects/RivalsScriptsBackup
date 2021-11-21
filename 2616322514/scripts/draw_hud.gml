muno_event_type = 5;
user_event(14);
//draw_debug_text(temp_x+230, temp_y-28, string(counter_dmg));

if (move_cooldown[AT_DSPECIAL] > 0){
    draw_sprite_ext(sprite_get("counter_hud"), 1, temp_x + 190, temp_y - 10, 1, 1, 0, c_white, 1);
} else draw_sprite_ext(sprite_get("counter_hud"), 0, temp_x + 190, temp_y - 10, 1, 1, 0, c_white, 1);