fake_sprite_phlame = sprite_get("lantern_flame_" + string(clamp(player_id.lantern_level, 1, 3)))


draw_sprite_ext(fake_sprite_phlame, player_id.lantern_anim_timer*player_id.idle_anim_speed, x + draw_x_offset, y + draw_y_offset, spr_dir, 1, image_angle, c_white, 1)
draw_sprite_ext(fake_sprite, 0, x + draw_x_offset, y + draw_y_offset, spr_dir, 1, image_angle, c_white, 1)

if get_match_setting(SET_HITBOX_VIS) {
    shader_end()
    draw_sprite_ext(mask_index, 0, x, y, 1, 1, 0, c_white, 0.5)
    
}

    