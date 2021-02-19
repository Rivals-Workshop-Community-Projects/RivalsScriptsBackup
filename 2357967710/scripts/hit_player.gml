//hitbox_update
if (my_hitboxID.attack == AT_EXTRA_1)
{
    with asset_get("obj_article1")
    {
        land = 1;
    }
    if (my_hitboxID.hbox_num == 4)
    {
        with asset_get("obj_article1")
        {
            infected = 1;
        }
    }
    
    if (instance_exists(evidencethrow))
    {
        evidencethrow.person = hit_player_obj.player;
    }
}

if (my_hitboxID.attack == AT_USTRONG)
{
    if (my_hitboxID.hbox_num == 2)
    {
        psyche = 1;
        x3 = hit_player_obj.x;
        y3 = hit_player_obj.y;
    }
}

if (my_hitboxID.attack == AT_DSPECIAL)
{
    if (my_hitboxID.hbox_num == 5)
    {
        infected = 1;
        hit_player_obj.infect = 1;
        old_time = get_gameplay_time() + 550
    }
}


