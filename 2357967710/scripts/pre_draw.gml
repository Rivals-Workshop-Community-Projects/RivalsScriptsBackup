// pre-draw
if (attack == AT_FSPECIAL_2 and cursor > -1)
{
    draw_sprite_ext(sprite_get("cursor"), cursor, (old_x + (25 *spr_dir)), old_y - 45, 1 * spr_dir, 1, 0, -1, 1);
}
