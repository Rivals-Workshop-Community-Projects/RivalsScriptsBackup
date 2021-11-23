shader_start();
draw_sprite_part_ext(sprite_get("cooldown"),get_gameplay_time()/8, 64-20*((180-lure_timer)/180), 0,40*((180-lure_timer)/180),128,x-20*((180-lure_timer)/180), y-94, 1, 1, c_white, lure_fade)
shader_end();

// afterimage
for (var i = 0; i < afterImageMax; ++i) if (afterImage[i] != -1 && afterImage[i].alpha > 0 && draw_indicator)
{
    shader_start();
    gpu_set_blendmode(bm_add);
    draw_sprite_ext(afterImage[i].sprite_index, afterImage[i].image_index, afterImage[i].x, afterImage[i].y, afterImage[i].spr_dir*1, 1, 0, c_white, afterImage[i].alpha/10);
    gpu_set_blendmode(bm_normal);
    shader_end();
}

if(get_player_color(player) == 31)
{
    FlagPart(make_colour_rgb(85, 205, 252), 1, 0); // mayablue
    FlagPart(make_colour_rgb(247, 168, 223), 3/10, 3/8); // pink
    FlagPart(c_white, 1/8, 4/8);
    gpu_set_fog(0, c_white, 0, 0);
}

#define FlagPart(_colour, _heightRatio, _xOffsetRatio)
{
    gpu_set_fog(1, _colour, 0, 1);
    for (i = -1; i < 2; ++i) for (j = -1; j < 2; ++j)
        draw_sprite_part_ext(sprite_index, image_index, 0, sprite_height*_xOffsetRatio, sprite_width*spr_dir, sprite_height*_heightRatio, x+i*2+draw_x-sprite_xoffset*(1+small_sprites), y+j*2+(draw_y-sprite_yoffset+sprite_height*_xOffsetRatio)*(1+small_sprites), spr_dir*(1+small_sprites), 1+small_sprites, c_white, 1);
}