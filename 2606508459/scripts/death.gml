// called when the character gets KO'd

/*
val_mp += deathBonus_mp;
if (val_mp > max_mp) { val_mp = max_mp; }
print_debug("MP: " + string(val_mp));
*/

//Restore variables
val_mp = max_mp;
nspecial_ballOut = -1;

//Remove remaining fBalls
if (instance_exists(fBall_obj))
{
    if (instance_exists(fBall_obj._currHB))
    {
        fBall_obj._currHB.destroyed = true;
    }
    
    instance_destroy(fBall_obj);
    fBall_obj = noone;
}