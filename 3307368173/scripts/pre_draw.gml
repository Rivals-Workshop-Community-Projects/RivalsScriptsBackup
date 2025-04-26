//pre_draw.gml

shader_start();


//respawn platform
if (state == PS_RESPAWN || respawn_taunt > 0)
{
    draw_sprite_ext(sprite_get("plat_pre"), game_time * plat_speed, x, y, small_sprites + 1, small_sprites + 1, 0, c_white, 1);
}

shader_end();