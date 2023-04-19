//got_hit.gml

if (my_grab_id != noone)
{
    my_grab_id.hitstop = 0;
    my_grab_id = noone;

    if (enemy_hitboxID.kb_value == 0) set_state(PS_IDLE);
}