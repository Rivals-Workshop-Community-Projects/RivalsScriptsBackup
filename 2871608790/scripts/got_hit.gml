//got_hit.gml

if (holding_item && attack == AT_FSPECIAL && (prev_state == PS_ATTACK_GROUND || prev_state == PS_ATTACK_AIR)) //orig_knock >= pocket_tank_kb
{
    pocket_item.id = noone;
    pocket_item.type = -1;
    pocket_item.hp = -1;
    pocket_item.car_type = -1;
    holding_item = false;
}

uspec_used = false;