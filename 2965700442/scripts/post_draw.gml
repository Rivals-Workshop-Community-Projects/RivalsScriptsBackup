if (is_attacking) switch (attack)
{
    //dust effects (check the spawn_base_dust function for more info on the expandtion i added - bar-kun)
    case AT_DSTRONG:
        shader_start();
        if (window == 5 && dstrong_hit_tipper) {
            draw_sprite_ext(sprite_get("hfx_dstrong_fg"), 0, round(x + 140 * spr_dir), round(y), spr_dir, 1, 0, c_white, 1);
            
        }
        if (window == 6 && dstrong_hit_tipper) {
            var frame = ease_linear(0, 6, window_timer, window_end);
            if (frame < 4) {
                draw_sprite_ext(sprite_get("hfx_dstrong_fg"), frame, round(x + 140 * spr_dir), round(y), spr_dir, 1, 0, c_white, 1);
            }
        }
        shader_end();
        break;
}