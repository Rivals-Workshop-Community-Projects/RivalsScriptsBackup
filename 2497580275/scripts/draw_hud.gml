hud_spr = sprite_get("eyehud");

shader_start();
if(parasiteLevel != 3)
{
    //BG meter
    draw_sprite_ext(sprite_get("hudbar3"), 0, temp_x+58, temp_y-28, 1, 1, 0, c_white, 1);
    if(parasiteTimer2 < 0) // if that doesnt exist
        draw_sprite_part(sprite_get("hudbar1"), 0,  0, 0, 118*(clamp((parasiteTimer-parasiteLevel*60*30),0 ,99999)/(60*30)),30, temp_x+58, temp_y-28,); //red 
    else
        draw_sprite_part(sprite_get("hudbar2"), 0,  0, 0, 118*((parasiteTimer2/parasiteTimerMax)),30,temp_x+58, temp_y-28); //yellow tentacle

    gpu_set_alphatestenable(false);
    gpu_set_blendmode(bm_normal);
    
    draw_sprite(hud_spr,parasiteLevel, temp_x+10, temp_y-38);
}
shader_end();

if(dbg_Timer != -1)
{
    dbg_Timer --;
    draw_debug_text(temp_x+40, temp_y-30, string(dbg_Msg));
}
#define rectDraw(x1, y1, x2, y2, color)

draw_rectangle_color(argument[0], argument[1], argument[2], argument[3], argument[4], argument[4], argument[4], argument[4], false);