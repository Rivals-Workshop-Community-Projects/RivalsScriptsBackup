//Hud stuff show cards

if get_player_color(player) == 19 {
    //remember rivals starts with 0
	hue+=1 
    if hue>255 hue-=255;
    //make hue shift every step + loop around
    color_rgb = make_color_rgb(225, 50, 50);
    color_rgb2 = make_color_rgb(191, 194, 194);
    //make a gamemaker color variable using kirby's default color (body)
    hue2=(color_get_hue(color_rgb)+hue) mod 255;
    //shift that colour by Hue, make sure it also loops
    color_hsv=make_color_hsv(hue2,color_get_saturation(color_rgb),color_get_value(color_rgb));
    color_hsv2=make_color_hsv(hue2,color_get_saturation(color_rgb2),color_get_value(color_rgb2)); 
    //make a gamemaker color variable using the new hue
    set_color_profile_slot(19, 0,color_get_red(color_hsv2),color_get_green(color_hsv2),color_get_blue(color_hsv2));
    set_color_profile_slot(19, 2,color_get_red(color_hsv),color_get_green(color_hsv),color_get_blue(color_hsv));
    set_color_profile_slot(19, 5,color_get_red(color_hsv)+200,color_get_green(color_hsv)+200,color_get_blue(color_hsv)+200);
    init_shader();
}

//Draw Hud
shader_start();
if(hudtimer == 0)
{
    for(i = 0; i < 4; i++)
        draw_sprite_ext(i==0?sprite_get("symbols"):sprite_get("smolsymbols"), curSuit*(i==0?4:1)+i, temp_x+12+(i==0?-5:i*18), temp_y-7+(i==0?0:3), 1, 1, 0, c_white, 1);
}
else
{
    for(i = 1; i < 5; i++)
         draw_sprite_ext(sprite_get("smolsymbols"), curSuit-1+i, temp_x+12+(i*18)-floor(ease_linear(0,18,20-hudtimer,20)), temp_y-4, 1, 1, 0, c_white, 1-(i==1?(ease_linear(0,1,20-hudtimer,20)):0));
    draw_sprite_ext(sprite_get("symbols"), (curSuit)*4+(curSuit==0?16:0)-floor(ease_linear(4,0,20-hudtimer,20)), temp_x+12-5, temp_y-7, 1, 1, 0, c_white, 1);
}
if(ds_Lock)
    draw_sprite_ext(sprite_get("lock"), 0, temp_x+4, temp_y-12,1,1,0,c_white,1);
shader_end();
if(get_training_cpu_action() != CPU_FIGHT)
{
    if(state == PS_SPAWN || prev_state == PS_SPAWN)
    {
        draw_debug_text(temp_x, temp_y-8, "UP + TAUNT to lock symbols");
    }
    else
        draw_debug_text(temp_x, temp_y-8, ds_Msg);
}