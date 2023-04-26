if (state == PS_ATTACK_AIR or state == PS_ATTACK_GROUND) and attack == AT_DSPECIAL and window == 2
{
    var sprite = ollie_bar_current_level > 1 ? "dspecial_overlay2" : "dspecial_overlay";
    draw_sprite_ext(sprite_get(sprite), floor(window_timer / 3), x, y,spr_dir,1,0,c_white,1);
}

