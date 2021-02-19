if (my_hitboxID.attack == AT_NSPECIAL && balloonout = true)
{
    balloonout = false;
    balloonstate = 2;    
    move_cooldown[AT_NSPECIAL] = 800;
}
else
{
ammo++;
}