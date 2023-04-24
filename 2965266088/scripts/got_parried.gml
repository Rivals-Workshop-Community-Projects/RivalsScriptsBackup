//got_parried.gml

if (my_grab_id != noone) my_grab_id = noone;

if (hit_player_obj == darkness_id)
{
    //if rumia is parried darkness disappears too and is put on cooldown
    if (("self_darkness" not in darkness_id || !darkness_id.self_darkness) && darkness_id.dark_state == 1)
    {
        darkness_id.dark_state = 4;
    }
}