var glow_color = c_orange;
if (charges == 4){
    glow_color = c_yellow;
}
gpu_set_fog(1,glow_color, 0, 1);
            draw_sprite_ext(sprite_index, image_index, round(x), round(y), image_xscale, image_yscale, image_angle, c_white, glow_alpha)
gpu_set_fog(0, glow_color, 0, 1);