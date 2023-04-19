//got_parried.gml

with (my_hitboxID) switch (attack)
{
    case AT_FSPECIAL: case AT_DSPECIAL: case AT_DSPECIAL_AIR:
        if (type == 1) with (other) set_state(free ? PS_PRATFALL : PS_PRATLAND);
        break;
}

if (instance_exists(obj_article1) && "is_an_azi_and_baggy_item" in obj_article1) my_hitboxID.owner.reflected_item = true;
if (my_hitboxID.orig_player == player) invince_time = 0;