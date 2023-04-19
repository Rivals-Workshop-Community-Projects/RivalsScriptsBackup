//pre_draw.gml

//respawn platform
if (state == PS_RESPAWN || respawn_taunt > 0)
{
    draw_sprite_ext(sprite_get("plat_pre"), game_time * plat_speed, x, y, 2, 2, 0, c_white, 1);
}