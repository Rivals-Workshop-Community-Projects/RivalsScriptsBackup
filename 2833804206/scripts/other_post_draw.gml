//other_post_draw.gml

gpu_set_alphatestenable(true);
gpu_set_fog(1, c_black, 0, 1);


if r2_oiled {
    draw_sprite_ext(sprite_index, image_index, x, y, image_xscale*(small_sprites+1), image_yscale*(small_sprites+1), image_angle, c_white, (clamp(r2_oil_timer, 0, 30)/30)*0.7)
}

gpu_set_fog(1, c_white, 0, 1);

if r2_burning {
    draw_sprite_ext(sprite_index, image_index, x, y, image_xscale*(small_sprites+1), image_yscale*(small_sprites+1), image_angle, c_white, (clamp(r2_burning_timer/r2_burning_delay, 0, 1)))
}

gpu_set_fog(0, c_white, 0, 0);
gpu_set_alphatestenable(false);