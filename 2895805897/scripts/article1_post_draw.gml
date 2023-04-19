//article1_post_draw

if (strongLag > 0 && !(artAnim_currentAnim > 3)) {
    draw_sprite_ext(artAnim_image, artAnim_frame, x, y, artAnim_spriteDirection, 1, 0, c_gray, 1);
} else {
    draw_sprite_ext(artAnim_image, artAnim_frame, x, y, artAnim_spriteDirection, 1, 0, c_white, 1);
}
//draw_sprite_ext(sprite_get("ft_health"), 2 - artHit_health, x - 1 * artAnim_spriteDirection, y + 2, 1, 1, 0, c_white, 1);
//draw_sprite_ext(sprite_get("pixel"), 0, x, y, 1, 1, 0, c_white, 1); // Use this to find the origin