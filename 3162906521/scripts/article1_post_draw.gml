
if building_type == 2{
    if building_state == 1 or building_state == 3 or building_state == 4 {
        sentry_range = draw_sprite(sprite_get("sentry_range"), range_anim, x - 120 + 6 * spr_dir, y - 24);
        // sentry_range = draw_sprite(sprite_get("sentry_range_mask"), range_anim, x - 114, sentry.y - 24);
        range_anim = range_anim + 0.25;
    }
}
if range_anim >= 8{
    range_anim = 0;
}

// if enemy_being_shot > 0{
//     draw_sprite_ext(sprite_get("sentry_crosshair"), 1, other.sentry_enemy_x, other.sentry_enemy_y - 65, 1, 1, 11.25 * other.range_anim, c_white, 1);
// }

