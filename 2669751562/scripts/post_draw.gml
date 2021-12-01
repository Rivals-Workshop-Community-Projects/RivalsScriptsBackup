if(soft_armor > 0) {
    var opacity = soft_armor / 16;

    // gpu_set_blendmode(bm_max);
    draw_sprite_ext(sprite_index, -1, x, y, spr_dir, 1, 0, c_aqua, opacity);
    // gpu_set_blendmode(bm_normal);
}