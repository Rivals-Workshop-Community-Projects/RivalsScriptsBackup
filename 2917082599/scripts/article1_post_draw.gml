draw_sprite_ext(sprite_get("arrow_indi"),image_index,x,y-30,1,1,0,get_player_hud_color(player),1)

if (state == 1 && state_timer > 250)
{
    gpu_set_fog(true, c_black, 1,0)
    draw_sprite_ext(sprite_index,image_index,x,y,1,1,0,c_black,.35*(glow_timer/glow_int))
    gpu_set_fog(false, c_white,1,0)
}

if(x < view_get_xview() || x > (view_get_xview()+view_get_wview()) )
{
    var leftside = (x < view_get_xview() ? 1:-1)
    draw_sprite_ext(sprite_get("offscreen_indicator"),0,view_get_xview()+(leftside ? 0:view_get_wview()),y,leftside,1,0,get_player_hud_color(player),1);
    draw_sprite_ext(sprite_get("orb_indicator"),0,view_get_xview()+(leftside ? 0:view_get_wview()),y,leftside,1,0,c_white,1);
}