//hit_player - called when one of your hitboxes hits a player


if ((my_hitboxID.attack == AT_FSPECIAL && my_hitboxID.type == 2 && my_hitboxID.hbox_num == 1))
{
    with (flame)
    {
        if (hits == 0)
        {
            hits += 1;
            hitboxesMade += 1;
            state_timer = 0;
            duration = 0;
        }
        
    }
}


if ((my_hitboxID.attack == AT_USPECIAL) && my_hitboxID.hbox_num == 1)
{
    //this prevents enemies from getting out way too early
    //and punishing players immediately
    if (spr_dir > 0)
    {
        if (hit_player_obj.x > x + 15)
        {
            hit_player_obj.x -= 10;
        }
        else
        {
            hit_player_obj.x += 40;
        }
    }
    else
    {
        if (hit_player_obj.x < x - 15)
        {
            hit_player_obj.x += 10;
        }
        else
        {
            hit_player_obj.x -= 40;
        }
    }

    if (y < hit_player_obj.y && my_hitboxID.hbox_num == 1)
    {
        hit_player_obj.y -= 30;
    }
    
}

if ((my_hitboxID.attack == AT_USPECIAL) && (my_hitboxID.hbox_num == 2 || my_hitboxID.hbox_num == 3))
{
    //this prevents enemies from getting out way too early
    //and punishing players immediately
    
    if (spr_dir > 0)
    {
        if (hit_player_obj.x > x + 10)
        {
            hit_player_obj.x -= 15;
        }
        else
        {
            hit_player_obj.x += 25;
        }
    }
    else
    {
        if (hit_player_obj.x < x - 10)
        {
            hit_player_obj.x += 15;
        }
        else
        {
            hit_player_obj.x -= 25;
        }
    }
    
    if (y < hit_player_obj.y)
    {
        hit_player_obj.y -= 10;
    }
    
}
if ((my_hitboxID.attack == AT_DATTACK))
{
    //this prevents enemies from getting out way too early
    //and punishing players immediately
    
    if (x > hit_player_obj.x)
    {
        hit_player_obj.x += 20;
    }
    else
    {
        hit_player_obj.x -= 20;
    }
    
    if (y-15 < hit_player_obj.y)
    {
        hit_player_obj.y -= 18;
    }
    
}


if ((my_hitboxID.attack == AT_NSPECIAL))
{
    with (rock)
    {
        tackled = true;
    }
}
