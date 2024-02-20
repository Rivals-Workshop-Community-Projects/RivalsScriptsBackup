//SAVE point pre draw

//outline
gpu_set_fog(true, get_player_hud_color(player), 0, 1);
for (var _x = -2; _x <= 2; _x += 2) for (var _y = -2; _y <= 2; _y += 2)
{
    draw_sprite_ext(artc_sprite, real_image_index, x + _x, y + _y - 32, 2, 2, image_angle, c_white, image_alpha);
}
gpu_set_fog(false, c_white, 1, 0);

//SAVE timer
if (saved_player != player_id)
{
    draw_sprite_ext(sprite_get("hud_savemeter"), 0, x, y, 2, 2, 0, c_white, 0.5);
    draw_sprite_part_ext(
        sprite_get("hud_savemeter"), 1, 0, 0,
        lerp(0, 1, enemy_warp_timer/enemy_warp_timer_max) * sprite_get_width(sprite_get("hud_savemeter")),
        21, x - 55, y, 2, 2, c_white, 1
    );
}

//the actual article sprite
draw_sprite_ext(artc_sprite, real_image_index, x, y - 32, 2, 2, image_angle, c_white, 1);