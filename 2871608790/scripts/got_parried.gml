//got_parried.gml

with (my_hitboxID)
{
    switch (attack)
    {
        case AT_FSPECIAL: case AT_DSPECIAL: case AT_DSPECIAL_AIR:
            if (type == 1) with (other) set_state(free ? PS_PRATFALL : PS_PRATLAND);
            break;
    }

    // && "is_an_azi_and_baggy_item" in obj_article1
    if ("owner" in self && instance_exists(obj_article1)) owner.reflected_item = true;
}

if (my_hitboxID.orig_player == player) invince_time = 0;

if (holding_item)
{
    pocket_item.id = noone;
    pocket_item.type = -1;
    pocket_item.hp = -1;
    pocket_item.car_type = -1;
    holding_item = false;
}