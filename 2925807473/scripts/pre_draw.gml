//pre_draw.gml

//respawn platform
if (state == PS_RESPAWN || respawn_taunt > 0)
{
    draw_sprite_ext(sprite_get("plat_pre"), game_time * plat_speed, x, y, 2, 2, 0, c_white, 1);
}

for (var i = 0; i < afterImageMax; ++i) if (afterImage[i] != -1 && afterImage[i].alpha > 0 && draw_indicator)
{
    shader_start();
    gpu_set_blendmode(bm_add);
    draw_sprite_ext(afterImage[i].sprite_index, afterImage[i].image_index, afterImage[i].x, afterImage[i].y, afterImage[i].spr_dir * 2,2, 0, c_green, afterImage[i].alpha/1);
    gpu_set_blendmode(bm_normal);
    shader_end();
}