//death.gml
//this script runs when the player loses a stock/dies, useful for resetting variables

shotgun_charge = 0;

//stops grab
if (my_grab_id != noone)
{
    my_grab_id.hitstop = 0;
    my_grab_id = noone;
}