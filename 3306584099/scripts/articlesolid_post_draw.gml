if (player_id.alt_cur == 16 && sprite_index > -1)
{
    gpu_set_blendmode(bm_add);
    for (var ix = -2; ix <= 2; ix += 2) for (var iy = -2; iy <= 2; iy += 2)
    {
        draw_sprite_ext(sprite_index, image_index, x + ix, y + iy, image_xscale * spr_dir, image_yscale, image_angle, player_id.glow_color, 0.1);
    }
    gpu_set_blendmode(bm_normal);
}