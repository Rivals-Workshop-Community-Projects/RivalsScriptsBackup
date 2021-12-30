//print_debug

flag_fspecial = 0;
move_cooldown[AT_FSPECIAL] = 0;

if ((pre_state == PS_ATTACK_GROUND || pre_state == PS_ATTACK_AIR) && attack == AT_NSPECIAL)
{
    nspecial_charge = 0;
}

//Restart B Reverse flag
flag_breverse = false;

//====> HURT ANIMATION #######################################################

if (pre_state == PS_HITSTUN_LAND)
{
    hurtground_sprite = sprite_get("hurtground_2");
}