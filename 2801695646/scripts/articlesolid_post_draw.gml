// Cardboard Box - Post Draw

// Hit Visual Effect
if (hitstop > 0) {                                                              // If in hitpause...
    gpu_push_state();
    gpu_set_blendmode(bm_add);
    draw_sprite_ext(sprite_index, image_index, x, y, spr_dir, 1, 0, c_white, 1);// Draw a brighter version of the current sprite.
    gpu_set_blendmode(bm_normal);
    gpu_pop_state();
}



