//article 1 draw - final smash BG

with (player_id)
{
    if (spell_bg_alpha > 0)
    {
        shader_end();
        draw_sprite_tiled_ext(
            sprite_get("fx_finalstrong_bg"), 0,
            0, game_time * -2,
            2, 2, c_white, spell_bg_alpha
        );
        shader_start();
    }
}