
shader_start();
    //accel blitz indicator
    if (attack == AT_DSTRONG_2 && window == 2 && window_timer > 0) {
        draw_sprite_ext(fx_AR HUD, get_player_color(player), snipe_drawpoint_x, snipe_drawpoint_y, 2, 2, 0, c_white, 0.8);
    }

