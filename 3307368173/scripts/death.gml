//death.gml

saro_frenzy = 0;
if (instance_exists(my_grab_id) && my_grab_id != noone)
{
    my_grab_id.hitstop = 0;
    my_grab_id = noone;
}

if (clinging) clinging = false;