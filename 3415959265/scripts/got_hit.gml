//got_hit.gml

true_dmg = enemy_hitboxID.damage * lerp(1, 1.6, hit_player_obj.strong_charge/60);

if (instance_exists(my_grab_id) && my_grab_id != noone)
{
    my_grab_id.hitstop = 0;
    my_grab_id = noone;

    if (enemy_hitboxID.kb_value == 0) set_state(PS_IDLE);
}