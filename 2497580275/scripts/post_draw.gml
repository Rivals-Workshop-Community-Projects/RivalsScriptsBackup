if(attack == AT_TAUNT_2 && state == PS_ATTACK_GROUND)
{
    var uiTimer = clamp((120-window_timer)/60,1,2);
    draw_sprite_ext(sprite_get("deathbg"), (window_timer/8), view_get_xview()+view_get_wview()/2, view_get_yview()+view_get_hview()/2, uiTimer*0.54,uiTimer*0.8,0,c_white,2-uiTimer);
}
