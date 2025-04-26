
gpu_set_fog(1, c_yellow, 0, 1);
draw_sprite_ext(sprite_index, image_index, x, y, image_xscale*spr_dir, image_yscale, image_angle, c_yellow, overlay_alpha);
gpu_set_fog(0, c_yellow, 0, 1);