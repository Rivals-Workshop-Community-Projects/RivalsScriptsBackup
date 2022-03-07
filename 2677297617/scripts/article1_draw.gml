//sad

if phase == 4 || (phase == 5 && kaleidoscopeAlpha >= 0.1)
{
    gpu_set_blendmode(bm_add)
    draw_sprite_ext( sprite_get("kaleidoscope"), kaleidoscopeImage, temp_x, temp_y, 2, 2, kaleidoscopeRot, c_white, kaleidoscopeAlpha);
    gpu_set_blendmode(bm_normal)
}

if phase == 5
{
    draw_sprite_ext( sprite_get("kaleidoscope2"), kaleidoscopeImage, temp_x, temp_y, 2, 2, kaleidoscopeRot, c_white, kaleidoscope2Alpha);
}

var star_image = get_gameplay_time() / 8;

gpu_set_blendmode(bm_add)
draw_sprite_ext( sprite_get("stareffect"), star_image, temp_x, temp_y+94, 2, 2, 0, c_white, 1);
gpu_set_blendmode(bm_normal)

