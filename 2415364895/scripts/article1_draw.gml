//sad
if get_gameplay_time() >= 360
{
    gpu_set_blendmode(bm_add)
    draw_sprite_ext(sprite_get("bubbles1"), 0, notbg_x,notbg_y,2,2,0,c_white,alpha);

    draw_sprite_ext(sprite_get("bubbles1"), 0, notbg2_x,notbg2_y,2,2,0,c_white,alpha);
    gpu_set_blendmode(bm_normal)
}