//UStrong color overlay
if (state == PS_ATTACK_GROUND || state == PS_ATTACK_AIR) {
    if (attack == AT_USTRONG) {
        draw_sprite_ext(sprite_get("ustrong_overlay"), image_index, round(x), round(y), image_xscale*2, image_yscale*2, image_angle, image_blend, image_alpha)
    }
    
}

if (get_match_setting(SET_HITBOX_VIS)) {
    with (obj_article3) {
        if (object_index != obj_article3) continue;
        if (player_id == other.id) {
            draw_line_width_color(collision_pos[0], collision_pos[1], collision_pos[2], collision_pos[3], 8, c_green, c_green)
        }
    }
}