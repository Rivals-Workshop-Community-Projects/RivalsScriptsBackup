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
if (instance_exists(meteor_fx_obj))
{
	var t = meteor_fx_obj.hitbox_timer;
	if (t < 10)
	{
		draw_sprite_ext(spr_meteor_fire, floor(t / 5), meteor_fx_obj.x, meteor_fx_obj.y, 1, 1, meteor_fx_obj.proj_angle, c_white, 1);
	}
	else
	{
		draw_sprite_ext(spr_meteor_fire, (floor(t / 5) % 3) + 2, meteor_fx_obj.x, meteor_fx_obj.y, 1, 1, meteor_fx_obj.proj_angle, c_white, 1);
	}
}