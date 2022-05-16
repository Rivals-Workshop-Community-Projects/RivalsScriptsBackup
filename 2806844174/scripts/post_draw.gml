// MunoPhone Touch code - don't touch
// should be at TOP of file
muno_event_type = 4;
user_event(14);

if state == PS_PARRY {
    shader_start();
    draw_sprite_ext(sprite_get("parry_over"), image_index, x, y, spr_dir, 1, spr_angle, c_white, 1);
    shader_end();
}