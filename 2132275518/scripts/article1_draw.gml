//
if (hitstop > 0) {
    gpu_set_fog(1, c_white, 0, 0);
        draw_sprite_ext(sprite_index, image_index,  round(x), round(y), spr_dir, image_yscale, image_angle, c_white, 0.5);
    gpu_set_fog(0, 0, 0, 0);
}

user_event(3);