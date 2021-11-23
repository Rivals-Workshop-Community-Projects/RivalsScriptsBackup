muno_event_type = 5;
user_event(14);
/*draw_debug_text(temp_x+230, temp_y-28, string("You: ") + string(x) + string(", ") + string(y));
draw_debug_text(temp_x+230, temp_y-48, string("Hit Player: ") + string(hit_player_obj.x) + string(", ") + string(hit_player_obj.y));*/

if (move_cooldown[AT_DSPECIAL] > 0){
    draw_sprite_ext(sprite_get("counter_hud"), 1, temp_x + 190, temp_y - 10, 1, 1, 0, c_white, 1);
} else draw_sprite_ext(sprite_get("counter_hud"), 0, temp_x + 190, temp_y - 10, 1, 1, 0, c_white, 1);