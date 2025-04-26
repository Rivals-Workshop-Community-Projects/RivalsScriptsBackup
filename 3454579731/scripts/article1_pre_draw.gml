//ass fuck shit fart

draw_sprite_ext(cannonsprite, cannon_index, x, y - 12 - cannon_y, 1, 1, cannon_angle, c_white, 1);

#define get_closest_enemy()
{
    if (instance_number(oPlayer)) > 1 
    {
        var cur_dist = 9999;
        var cur_plr = noone;
        with (oPlayer) if id != other.player_id 
        {
    
            if (cur_dist > point_distance(x,y,other.x,other.y)) 
            {
                cur_dist = point_distance(x,y,other.x,other.y);
                cur_plr = id;
            }
    
        }
        return cur_plr;
    } else return player_id;
}