if rock_damage_alpha > 0 {
    gpu_set_alphatestenable(true);
    gpu_set_fog(1, make_color_hsv((hp/max_hp) * 60 - 10, 255, 255), 0, 1);
    
    draw_sprite_ext(sprite_index, image_index, x, y, spr_dir, image_yscale, image_angle, c_white, rock_damage_alpha);
    
    gpu_set_fog(0, c_white, 0, 0);
    gpu_set_alphatestenable(false);
}

if get_match_setting(SET_HITBOX_VIS) draw_sprite_ext(mask_index == sprite_get("a_rock_hurt")?mask_index:sprite_get("a_rock_ground_detection"), 0, x, y, spr_dir, 1, 0, c_white, 0.5);