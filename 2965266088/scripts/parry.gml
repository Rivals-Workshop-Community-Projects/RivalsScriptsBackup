//parry.gml

if (darkness_cd <= 0)
{
    if (hit_player_obj.dark_state == -1 && darkness_id == noone)
    {
        dark_shield_hp += dark_shield_gain_parry;
        darkness_id = hit_player_obj;
        hit_player_obj.darkness_owner = self;
        hit_player_obj.dark_state = 0;
    }
}

if (graze_delay > 0)
{
    graze_delay = 0;
    graze_failed = false;
}