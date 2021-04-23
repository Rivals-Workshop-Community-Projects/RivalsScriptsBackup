//

if draw_shadow {
    draw_sprite_ext(sprite_index, image_index, x, y, image_xscale*spr_dir, image_yscale, image_angle, c_black, shadow_alpha);
}

if can_draw_heart && !draw_shadow && type == "body" {
    draw_sprite_ext(sprite_get("body_heart"), 0, x - 4, y + 22, 1, 1, 0, image_blend, image_alpha);
}