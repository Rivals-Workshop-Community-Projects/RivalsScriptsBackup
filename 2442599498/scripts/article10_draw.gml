//
if hit_timer >= 1 {
    draw_sprite_part_ext(sprite_index, image_index, 0, 0, 18, 18, x - 18 - hit_timer/3, y - 18 - hit_timer/3, 1, 1, c_white, 1 - hit_timer/30); //top left
    draw_sprite_part_ext(sprite_index, image_index, 18, 0, 36, 18, x + hit_timer/3, y - 18 - hit_timer/3, 1, 1, c_white, 1 - hit_timer/30); //top right
    draw_sprite_part_ext(sprite_index, image_index, 0, 18, 18, 36, x - 18 - hit_timer/3, y + hit_timer/3, 1, 1, c_white, 1 - hit_timer/30); //bottom left
    draw_sprite_part_ext(sprite_index, image_index, 18, 18, 36, 36, x + hit_timer/3, y + hit_timer/3, 1, 1, c_white, 1 - hit_timer/30); //bottom right
}