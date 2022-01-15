//hit_player
if (instance_exists(bubbleg))
{
    if (instance_exists(bubbleg.bubbled_playerid))
    {
        bubbleg.hit = 1;
        bubbleg.bubbled_playerid.should_make_shockwave = false;
    }
    if (!instance_exists(bubbleg.bubbled_playerid))
    {
        switch(attack)
        {
            case AT_FSPECIAL:
                if (hit_player_obj.wet < 3)
                hit_player_obj.wet += 1;
                break;
            case AT_DSTRONG:
                if (hit_player_obj.wet < 3)
                hit_player_obj.wet += 1;
                break;
            case AT_USTRONG:
                if (my_hitboxID.hbox_num == 1)
                if (hit_player_obj.wet < 3)
                hit_player_obj.wet += 1;
                break;
        }
    }
}

if (!instance_exists(bubbleg))
{
    switch(attack)
    {
        case AT_FSPECIAL:
            if (hit_player_obj.wet < 3)
            hit_player_obj.wet += 1;
            break;
        case AT_DSTRONG:
            if (hit_player_obj.wet < 3)
            hit_player_obj.wet += 1;
            break;
        case AT_USTRONG:
            if (my_hitboxID.hbox_num == 1)
            if (hit_player_obj.wet < 3)
            hit_player_obj.wet += 1;
            break;
        }
}


if (my_hitboxID.type = 1 and wet > 0)
{
    wet -= 1;
}