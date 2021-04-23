//
if !target_id.is_dead {
    draw_sprite_ext(target_id.sprite_index, target_id.image_index, target_id.x, target_id.y, target_id.image_xscale, target_id.image_yscale, target_id.image_angle, c_black, shadow_alpha);
    draw_sprite_ext(sprite_index, image_index, x, y, image_xscale, image_yscale, image_angle, c_yellow, heart_alpha);
}