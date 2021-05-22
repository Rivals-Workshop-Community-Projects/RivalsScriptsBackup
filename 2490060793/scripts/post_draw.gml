//post-draw

shader_start()
if (state = PS_ATTACK_AIR || state == PS_ATTACK_GROUND) && attack == AT_USPECIAL && window <= 3 && state_timer > 1 {
    draw_sprite_ext(sprite_get("uspec_indicator"), floor(state_timer/4), upb_coords[0], upb_coords[1], spr_dir, 1, 0, c_white, 0.5)
}

if (state == PS_ATTACK_AIR || state == PS_ATTACK_GROUND) && attack == AT_FSPECIAL {
    draw_sprite_ext(sprite_get("fspecial_vfx"), image_index, x, y, spr_dir, 1, 0, c_white, 1)
}
shader_end()

