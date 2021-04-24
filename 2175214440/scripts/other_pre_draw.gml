if (timestopped) {
    sprite_index = timestop_spr_index;
    image_index = timestop_img_index;
    spr_dir = timestop_spr_dir;
    x = timestop_x;
    y = timestop_y;

    var prev_blendenable = gpu_get_blendenable();
    var prev_blendmode = gpu_get_blendmode();
    gpu_set_blendenable(true);
    gpu_set_blendmode(bm_add);
    draw_set_alpha(0.9);

    draw_circle_colour(x, y - char_height/2, char_height*2, c_black, $000066, 0);
    draw_circle_colour(x, y - char_height/2, char_height*2, c_black, $000066, 1);

    gpu_set_blendenable(prev_blendenable);
    gpu_set_blendmode(prev_blendmode);
    draw_set_alpha(1.0);
}