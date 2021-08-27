// Draw the Light
gpu_set_blendmode(bm_add);
draw_sprite_ext(sprite_get("entrancelight"), 0, x, y+4, 1, 1, 0, c_white, .1);
gpu_pop_state();