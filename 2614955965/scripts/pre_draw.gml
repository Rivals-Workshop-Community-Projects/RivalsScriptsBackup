


//darken the screen when using supers

if (attack = AT_EXTRA_2 and window >= 1 and (state == PS_ATTACK_GROUND or state == PS_ATTACK_AIR))
{
    draw_sprite_ext(sprite_get("light"), 0, view_get_xview(), view_get_yview(), view_get_hview() * 2, view_get_wview(), 0, c_black, 0.5);
}

