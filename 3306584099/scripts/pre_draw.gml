if (state == PS_RESPAWN || (attack == AT_TAUNT && respawn_taunt)) {
    shader_start();
        draw_sprite_ext(sprite_get("plat_bg"), 0, x + draw_x, y + draw_y, spr_dir*2, 2, spr_angle, c_white, 1);
    shader_end()
}