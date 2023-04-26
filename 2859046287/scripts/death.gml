//death.gml
//this script runs when the player loses a stock/dies, useful for resetting variables

nspec_charge = 1;

//stops grab
if (instance_exists(my_grab_id) && my_grab_id != noone)
{
    my_grab_id.hitstop = 0;
    my_grab_id = noone;
}

if (clinging) clinging = false;