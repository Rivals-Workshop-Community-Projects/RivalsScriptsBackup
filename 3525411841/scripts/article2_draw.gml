if (hovered_over)
{
    draw_sprite_ext(sprite_index, image_index, x - 2, y - 2, 1, 1, image_angle, c_black, 1);
    draw_sprite_ext(sprite_index, image_index, x + 2, y - 2, 1, 1, image_angle, c_black, 1);
    draw_sprite_ext(sprite_index, image_index, x + 2, y + 2, 1, 1, image_angle, c_black, 1);
    draw_sprite_ext(sprite_index, image_index, x - 2, y + 2, 1, 1, image_angle, c_black, 1);
    draw_sprite_ext(sprite_index, image_index, x, y, 1, 1, image_angle, c_white, 1);
}