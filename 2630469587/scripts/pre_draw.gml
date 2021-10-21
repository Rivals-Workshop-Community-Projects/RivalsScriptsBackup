// The things that cannot be cut by my Roukanken, forged by youkai, are close to none.

// afterimage
for (var i = 0; i < afterImageMax; ++i) if (afterImage[i] != -1 && afterImage[i].alpha > 0 && draw_indicator)
{
    shader_start();
    gpu_set_blendmode(bm_add);
    draw_sprite_ext(afterImage[i].sprite_index, afterImage[i].image_index, afterImage[i].x, afterImage[i].y, afterImage[i].spr_dir, 1, 0, c_purple, afterImage[i].alpha/10);
    gpu_set_blendmode(bm_normal);
    shader_end();
}
