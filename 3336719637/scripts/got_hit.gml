//got_hit.gml
//this script runs when the player gets hit, can be useful to stop certain effects or apply certain effects on your player

if (prev_state == PS_ATTACK_AIR || prev_state == PS_ATTACK_GROUND) && attack == AT_DSPECIAL{
    shotgun_charge = 0;
}

//stops grab
if (my_grab_id != noone)
{
    my_grab_id.hitstop = 0;
    my_grab_id = noone; //let go of the grabbed person

    if (enemy_hitboxID.kb_value == 0) set_state(PS_IDLE);
}