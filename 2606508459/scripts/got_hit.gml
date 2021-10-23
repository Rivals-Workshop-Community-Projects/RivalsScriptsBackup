//print_debug

flag_fspecial = 0;

if ((pre_state == PS_ATTACK_GROUND || pre_state == PS_ATTACK_AIR) && attack == AT_NSPECIAL)
{
    nspecial_charge = 0;
}

/*if ((pre_state == PS_ATTACK_GROUND || pre_state == PS_ATTACK_AIR) 
    && attack == AT_FSPECIAL_2
    && window != 3)
{
    
}*/

//====> HURT ANIMATION #######################################################

if (pre_state == PS_HITSTUN_LAND)
{
    hurtground_sprite = sprite_get("hurtground_2");
}