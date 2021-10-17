


with (obj_article3)
{
    if (player_id = other.id)
    {
        if (collision_line(x, y, x + 60, y, other.hit_player_obj, false, true) != noone || collision_line(x, y, x - 60, y, other.hit_player_obj, false, true) != noone)
        {
            state = 2;
            state_timer = 0;
        }
    }
}



