if (attack == AT_NSPECIAL) 
{
    if (hbox_num > 3)
    {
        through_platforms = 2;
    }
    if (!free)
    {
        destroyed = true;
    }
    if (was_parried)
    {
        if (vsp != 0)
        {
            y += 10;
            hsp *= 2;
            vsp = 0;
            transcendent = true;
            hitpause = 30;
        }
    }
}

if (attack == AT_FSPECIAL)
{
    if (was_parried)
    {
        if (player_id.flame != noone)
        {
            player_id.flame.flameParried = true;
            player_id.flame.parryMaster = player;
        }
    }
}

if (attack == AT_BAIR)
{
    if (was_parried)
    {
        if (vsp != 0.01)
        {
            vsp = 0.01;
            hsp *= 2;
            length = 20;
        }
    }
}