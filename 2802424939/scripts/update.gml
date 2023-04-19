test = 1;
/*
var trail1 = sprite_get("knife_r_trail")
with(pHitBox)
{
    switch(attack)
    {
        case AT_BAIR:
            draw_sprite_ext(trail1, 0, x, y, spr_dir, 1, 0, -1, 1)
            break;
        case AT_NSPECIAL:
            draw_sprite_ext(sprite_get("knife_trail"), 0, x, y, spr_dir, 1, 0, -1, 1)
            break;
        case AT_FSPECIAL:
            draw_sprite_ext(sprite_get("knife_g_trail"), 0, x, y, spr_dir, 1, proj_angle, -1, 1)
            break;
    }
}
*/
if (instance_exists(stopwatch))
{
    if (move_cooldown[AT_DSPECIAL_2] == 0)
    {
        stopwatch.cooldown = 0;
        stopwatch2.cooldown = 0;
    }
}

if (state == PS_PRATFALL or state == PS_PRATLAND)
{
    stun = 0;
}
