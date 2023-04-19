//death.gml

if (my_grab_id != noone)
{
    my_grab_id.hitstop = 0;
    my_grab_id = noone;
}

if (clinging) clinging = false;

sound_play(sound_get("augh"));