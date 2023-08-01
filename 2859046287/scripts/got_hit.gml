//got_hit.gml
//this script runs when the player gets hit, can be useful to stop certain effects or apply certain effects on your player

//this line takes the strong charge damage into consideration, useful if you want to include that for mechanics
true_dmg = enemy_hitboxID.damage * lerp(1, 1.6, hit_player_obj.strong_charge/60);

//stops grab
if (instance_exists(my_grab_id) && my_grab_id != noone)
{
    my_grab_id.hitstop = 0;
    my_grab_id = noone; //let go of the grabbed person

    if (enemy_hitboxID.kb_value == 0) set_state(PS_IDLE);
}