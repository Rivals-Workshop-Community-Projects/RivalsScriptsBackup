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
                if (my_hitboxID.hbox_num == 1)
                {
                    pikmin = hit_player_obj;
                    shrimp_set = 0;
                }
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
            if (my_hitboxID.hbox_num == 1)
            {
                pikmin = hit_player_obj;
                shrimp_set = 0;
            }
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

if (pikmin == self and my_hitboxID.type = 1)
{
    create_hitbox(AT_FSPECIAL, 2, pikmin.x - (20 * pikmin.spr_dir), pikmin.y - floor(y_offset * 2))
    pikmin = noone;
}

if (my_hitboxID.type = 1 and wet > 0)
{
    wet -= 1;
}