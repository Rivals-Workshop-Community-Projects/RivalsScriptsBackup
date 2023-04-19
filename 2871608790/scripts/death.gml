//death.gml

if (holding_item) 
{
    pocket_item.id = noone;
    pocket_item.type = -1;
    pocket_item.hp = -1;
    pocket_item.car_type = -1;
    holding_item = false;
}

uspec_used = false;