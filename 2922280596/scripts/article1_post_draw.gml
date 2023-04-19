//whipped cream
// draw_rectangle_color(x-32, y-64, x+32, y+800, c_white, c_white, c_white, c_white, true)
draw_sprite_ext(sprite_get("pillartop"),image_index,x,y,spr_dir,1,0,(state==2?$5644e5:c_white),1);
    for(i = 0; i < 12; i++)
        draw_sprite_ext(sprite_index,image_index,x,y+68*i,spr_dir,1,0,(state==2?$5644e5:c_white),1);

if(state == 2)
{
    gpu_set_blendmode_ext(bm_src_alpha, bm_max)
    for(i = 0; i < 12; i++)
        draw_sprite_ext(sprite_index,image_index,x,y+68*i,spr_dir,1,0,c_white, (10-pulse_timer)/10);
    gpu_set_blendmode(bm_normal);
}