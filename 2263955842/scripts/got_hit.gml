//got_hit



has_used_uspecial = false;
has_runeg_uspecial = false;


var yinyang_id = noone;
with (obj_article2)
{
    if(player_id == other)
    {
        yinyang_id = self;
    }
}

// destroy the orb if hit during nspecial_2
if (yinyang_id != noone)
{
    if(yinyang_id.is_hold)
    {
        yinyang_id.life = 0;
    }
}

if (has_rune("L"))
{
    with(pHitBox)
    {
        if (player_id == other) and (attack == AT_FSPECIAL)
        {
            destroyed = true;
        }
    }
}

fspe_stall = 0;