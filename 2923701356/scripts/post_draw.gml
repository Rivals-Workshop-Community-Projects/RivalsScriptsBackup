if (state == PS_ATTACK_AIR or state == PS_ATTACK_GROUND) and attack == AT_DSPECIAL and window == 2
{
    //draw_debug_text(x,y,"window 2")
    draw_sprite_ext(sprite_get("dspecial_overlay"), floor(window_timer / 4), x, y,spr_dir,1,0,c_white,1);
}

