// prevents draw_hud from running a frame too early and spitting an error
if "phone" not in self exit;
if draw_debug_shit{
    if instance_exists(hit_player_obj){
    draw_debug_text(temp_x, temp_y, string(hit_player_obj.poi_cooldown))
    draw_debug_text(temp_x, temp_y - 20, string(buff_timer))
    }
    draw_debug_text(temp_x, temp_y - 30, string(window))
    draw_debug_text(temp_x, temp_y - 40, string(puddle_hb))
}
// MunoPhone Touch code - don't touch
// should be at BOTTOM of file, but above any #define lines
muno_event_type = 5;
user_event(14);