//draw_debug_text(round(x), round(y) + 20, "State: " + string(state))

if (sprite_exists(sprite_index)) {
    if (strong_charge % 10 >= 5)
    {    
        gpu_set_fog(1, c_yellow, 0, 0);
            draw_sprite_ext(sprite_index, image_index, round(x), round(y), image_xscale * spr_dir, image_yscale, image_angle,  c_white, 0.75)
        gpu_set_fog(0, 0, 0, 0);
    }
}