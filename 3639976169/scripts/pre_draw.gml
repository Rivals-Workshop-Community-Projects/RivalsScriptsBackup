// pre-draw
if (energized)
{
	gpu_set_fog(1, make_color_rgb(255, 255, 160), 0, 1);
    draw_sprite_ext(sprite_index, image_index, floor(x) - 2, floor(y), 2 * spr_dir, 2, image_angle, c_white, 1);
    draw_sprite_ext(sprite_index, image_index, floor(x) + 2, floor(y), 2 * spr_dir, 2, image_angle, c_white, 1);
    draw_sprite_ext(sprite_index, image_index, floor(x), floor(y) - 2, 2 * spr_dir, 2, image_angle, c_white, 1);
    draw_sprite_ext(sprite_index, image_index, floor(x), floor(y) + 2, 2 * spr_dir, 2, image_angle, c_white, 1);
	gpu_set_fog(0, c_white, 0, 0);
}