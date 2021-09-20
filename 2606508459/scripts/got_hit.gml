//print_debug

if ((pre_state == PS_ATTACK_GROUND || pre_state == PS_ATTACK_AIR) && attack == AT_NSPECIAL)
{
    nspecial_charge = 0;
}

//====> HURT ANIMATION #######################################################

if (pre_state == PS_HITSTUN_LAND)
{
    hurtground_sprite = sprite_get("hurtground_2");
}