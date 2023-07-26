//got_parried.gml

if (my_grab_id != noone) my_grab_id = noone;

//remove darkness if parried, but only if it's the one affected by darkness or rumia herself
if ((hit_player_obj == darkness_id || self_darkness) && darkness_id.dark_state == 1) darkness_id.dark_state = 4;

/* old code
    //this code only applies to enemies affected by rumia's darkness, parrying her makes the darkness disappear and put on cooldown
    if (hit_player_obj == darkness_id) 
    {
        if (("self_darkness" not in darkness_id || !darkness_id.self_darkness) && darkness_id.dark_state == 1)
        {
            darkness_id.dark_state = 4;
        }
    }
*/


if (my_hitboxID.attack == AT_FSPECIAL)
{
    my_hitboxID.hitbox_timer = 0;
    my_hitboxID.hsp *= 1.5;
}