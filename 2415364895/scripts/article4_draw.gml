//sad

if frames <= 9 && alpha >= 0.03
{
    draw_sprite_ext(sprite_get("flash"), frames, x,y,20,10,0,c_white,alpha);
}
else
{
    gpu_set_blendmode(bm_add)
    draw_sprite_ext(sprite_get("flash"), frames, x,y,20,10,0,c_white,alpha);
    gpu_set_blendmode(bm_normal)
}