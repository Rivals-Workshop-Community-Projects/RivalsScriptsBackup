// hit_player is a script that runs code when you hit an enemy player.
if (meter < 50)
{
    meter++;
    if (attack == AT_FSPECIAL) || (attack == AT_DSPECIAL) || (attack == AT_USPECIAL) || (attack == AT_DSTRONG) || (attack == AT_FSPECIAL)
    {
        meter += 2;
    }
    if (meter >= 50)
        {
            meter = 50;
        }
}


//if (attack == AT_NSPECIAL)
//{
//	spawn_hit_fx(x,y,ion_explosion_vfx);
//}