if (attack == AT_FSPECIAL or attack == AT_NSPECIAL)
{
    attack = attack == AT_FSPECIAL ? AT_NSPECIAL : AT_FSPECIAL;
    
    if (attack == AT_NSPECIAL and (instance_exists(nspecial_projectile) and nspecial_projectile.state == 0))
    {
        attack = AT_NSPECIAL_2;
    }
}