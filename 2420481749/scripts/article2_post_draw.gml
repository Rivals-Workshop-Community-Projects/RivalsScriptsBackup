//uv

if (panelglow == 4)
{
    gpu_set_blendmode(bm_add)
    draw_sprite_ext(sprite_get("fireeffect"), 0, x,y, 2, 2, image_angle, c_white, panelglowing);
    gpu_set_blendmode(bm_normal)
    draw_debug_text(x-72,y-80, "Use Forward [Strong]");
}

if (panelglow == 3)
{
    gpu_set_blendmode(bm_add)
    draw_sprite_ext(sprite_get("handeffect"), 0, x,y,  2, 2, image_angle, c_white, panelglowing);
    gpu_set_blendmode(bm_normal)
    draw_debug_text(x-46    ,y-98, "Use Grounded");
    draw_debug_text(x-58,y-80, "Forward [Special]");
}

if (panelglow == 5)
{
    gpu_set_blendmode(bm_add)
    draw_sprite_ext(sprite_get("eartheffect"), 0, x+2,y+2, 2, 2, image_angle, c_white, panelglowing);
    gpu_set_blendmode(bm_normal)
    draw_debug_text(x-62,y-80, "Use Down [Special]");
}

if (panelglow == 6)
{
    gpu_set_blendmode(bm_add)
    draw_sprite_ext(sprite_get("watereffect"), 0, x+2,y+2,  2, 2, image_angle, c_white, panelglowing);
    gpu_set_blendmode(bm_normal)
    draw_debug_text(x-54,y-80, "Use Up [Strong]");
}

if (panelglow == 7)
{
    gpu_set_blendmode(bm_add)
    draw_sprite_ext(sprite_get("iceeffect"), 0, x,y,  2, 2, image_angle, c_white, panelglowing);
    gpu_set_blendmode(bm_normal)
    draw_debug_text(x-70,y-80, "Use Down [Strong]");
}
