//postdraw
if (shade_stock == 0 && shade_consumer == 0 ) {
    var shadecharge_anim = 0
    if (shade_timer < 15 && shade_timer > 9) {
        shadecharge_anim = 1
    }
    if (shade_timer > 9)
        draw_sprite_ext( sprite_get("vfx_shadecharge_front"), shadecharge_anim, x, y+(dsin(bobTime) * bobFreq) * bobAmp, spr_dir, 1, 0, c_white, shade_a);
    if (shade_timer < 15) {
        shadeOutline(c_black, 1, 0); // shade
        gpu_set_fog(0, c_white, 0, 0);
    }
}


#define shadeFloat(min, max)


#define shadeOutline(_colour, _heightRatio, _xOffsetRatio)
{
    var enshadow_a = 1;
    if (state == PS_ATTACK_AIR || state == PS_ATTACK_GROUND) {
        enshadow_a = 0.3
    } else {
        enshadow_a = (shade_timer % 15) / 10
    }
    gpu_set_fog(1, _colour, 0, 1);
    for (i = -1; i < 2; ++i)
        draw_sprite_part_ext(sprite_index, image_index, 0, sprite_height*_xOffsetRatio, 
        sprite_width*spr_dir, sprite_height*_heightRatio, x+i*draw_x-sprite_xoffset*(1+small_sprites), 
        y+(draw_y-sprite_yoffset+sprite_height*_xOffsetRatio)*(1+small_sprites), spr_dir*(1+small_sprites), 
        1+small_sprites, c_white, enshadow_a);
}