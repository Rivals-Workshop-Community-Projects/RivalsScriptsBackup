//parry.gml

if (darkness_cd <= 0)
{
    if (hit_player_obj.dark_state == -1 && darkness_id == noone)
    {
        darkness_id = hit_player_obj;
        hit_player_obj.darkness_owner = self;
        hit_player_obj.dark_state = 0;
    }
}