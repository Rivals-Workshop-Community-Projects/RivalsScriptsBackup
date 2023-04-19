//hitbox_update

if has_rune("D")
{
    if (sticky_count > -2)
    {
        if (obj_article2.state = 2)
        {
            with (obj_article2)
            {
                enemy_hit = 1;
                hit = other.hit_player;
                eangle = point_direction(x, y, other.hit_player.x, other.hit_player.y);
                edistance = point_distance(x, y, other.hit_player.x, other.hit_player.y);
                estrength = 600 / edistance;
            }
        }
    }
}