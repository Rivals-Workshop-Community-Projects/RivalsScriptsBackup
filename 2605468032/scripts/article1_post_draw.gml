//article1_post_draw
if (outline == 1)
{
    if (EA == 1)
    draw_sprite(sprite_get("bubble_outline_ea"), image_index, x, y);
    else
    draw_sprite(sprite_get("bubble_outline"), image_index, x, y);
}

if (mouse > 0)
{
    if (EA == 1)
    draw_sprite(sprite_get("mouse_ea"), mouse, x, y);
    else
    draw_sprite(sprite_get("mouse"), mouse, x, y);
}

if (state == 5 and bubbled_playerid == noone)
{
    draw_sprite_ext(sprite_get("player_outline"), image_index, x, y, 1, 1, 0, col, 1)
}