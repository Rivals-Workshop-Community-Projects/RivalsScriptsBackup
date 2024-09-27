if (alt_cur == 16)
{
    for (var i = 0; i < 9; i++) if (i != 3) colorO[i*4 + 3] = 0;
    shader_start();
    gpu_set_blendmode(bm_add);
    for (var ix = -2; ix <= 2; ix += 2) for (var iy = -2; iy <= 2; iy += 2)
    {
        draw_sprite_ext(sprite_index, image_index, x + draw_x + ix, y + draw_y + iy, spr_dir*2, 2, spr_angle, glow_color, 0.1);
    }
    gpu_set_blendmode(bm_normal);
    shader_end();
    for (var i = 0; i < 9; i++) if (i != 3) colorO[i*4 + 3] = 1;
}

if (state == PS_RESPAWN || (attack == AT_TAUNT && respawn_taunt)) {
    shader_start();
        draw_sprite_ext(sprite_get("plat"), 0, x + draw_x, y + draw_y, spr_dir*2, 2, spr_angle, c_white, 1);
    shader_end()
}