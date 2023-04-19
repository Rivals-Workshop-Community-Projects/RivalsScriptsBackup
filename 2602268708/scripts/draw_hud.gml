muno_event_type = 5;
user_event(14);

shader_start();
if (move_cooldown[AT_FSPECIAL] = 0) {
    draw_sprite(sprite_get("fspecial_bob_indicator"), 0, temp_x+190, temp_y+-16);
}

if (move_cooldown[AT_DSPECIAL] = 0) {
    draw_sprite(sprite_get("dspecial_heave_indicator"), 0, temp_x+168, temp_y+-14);
}
shader_end();