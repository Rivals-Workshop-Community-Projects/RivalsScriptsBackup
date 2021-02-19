//hitbox_update


if (attack == AT_USTRONG)
{
    x = player_id.pale_x;
}


// CD RED
if (attack == AT_NSPECIAL_2) and (hbox_num == 6)
{
    if (!player_id.runeJ)
    {
        y = y_ref + sin( hitbox_timer / 7)  * 55;
    }
    else
    {
        y = y_ref + sin( hitbox_timer / 5)  * 75;
    }
}

/*
if (attack == AT_DSPECIAL)
{
    var turntable_exist = false;
    with (obj_article1)
    {
        if (player_id == other)
        {
            var turntable_exist = true;
            var my_turntable = self;
        }
    }
    if (turntable_exist)
    {
        x = my_turntable.x;
        y = my_turntable.y;
    }
}