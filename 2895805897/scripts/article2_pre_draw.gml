//article1_post_draw

switch (state) {
    case 1:
        draw_sprite_ext(sprite_get("book_outline"), artAnim_frame, x, y, artAnim_spriteDirection, 1, 0, ownerColor, opacity);
        break;
    case 2:
        if (jacksMultis == 0) {
            draw_sprite_ext(sprite_get("jacks_outline"), artAnim_frame, x, y, artAnim_spriteDirection, 1, 0, ownerColor, opacity);
        }
        break;
    case 3:
        draw_sprite_ext(sprite_get("dynamite_outline"), artAnim_frame, x, y, artAnim_spriteDirection, 1, 0, ownerColor, opacity);
        break;
}
