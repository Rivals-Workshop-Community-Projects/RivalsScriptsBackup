
draw_sprite_ext(ptooie_spr, 0, x, y, 2, 2, draw_angle, c_white, 1);

if (!instance_exists(hitbox)) {
    gpu_set_fog(true, c_black, depth, depth);
    draw_sprite_ext(ptooie_spr, 0, x, y, 2, 2, draw_angle, c_white, 0.4);
    gpu_set_fog(false, c_white, 0, 0);
}

if (get_match_setting(SET_HITBOX_VIS)) {
    draw_sprite_ext(ptooie_mask, 0, x, y, 1, 1, 0, c_white, 0.5);
}