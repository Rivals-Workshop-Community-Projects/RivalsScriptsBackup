//post_draw.gml

gpu_set_fog(true, save_flash_col, 0, 1);
draw_sprite_ext(
    sprite_index, image_index,
    x, y,
    spr_dir, 1,
    spr_angle, c_white,
    save_flash_time/10 //this will make it fade out over time
);
gpu_set_fog(false, c_red, 1, 0);