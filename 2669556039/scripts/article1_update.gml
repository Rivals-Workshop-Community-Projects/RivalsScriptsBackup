//article1_update - runs every frame the article exists

//hit wall or smth
if(player_id.window < 6 && point_distance(x, y, xLast, yLast) < player_id.dspecialProjSpd-1.5)
{
    player_id.window = 6;
    player_id.window_timer = 0;
    //print(point_distance(x, y, xLast, yLast));
}

xLast = x;
yLast = y;
