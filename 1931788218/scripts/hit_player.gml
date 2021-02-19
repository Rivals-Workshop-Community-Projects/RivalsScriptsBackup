//hit player


if (my_hitboxID.effect == -2)
{
    hsp = lengthdir_x(12 + point_distance(x, y, hit_player_obj.x, hit_player_obj.y) / 64, point_direction(x, y, hit_player_obj.x, hit_player_obj.y))
    vsp = lengthdir_y(8 + point_distance(x, y, hit_player_obj.x, hit_player_obj.y) / 64, point_direction(x, y, hit_player_obj.x, hit_player_obj.y))
}
if (my_hitboxID.effect == 1)
{
    hit_player_obj.burn_timer = 0 + 75 * (my_hitboxID.stale);
    hit_player_obj.staledFire = my_hitboxID.stale;
}

if (hit_player_obj.burned && hit_player_obj.burnt_id == id && my_hitboxID.type == 1)
{
    if (hit_player_obj.burn_timer > 75 + 37 * hit_player_obj.staledFire)
        hit_player_obj.burn_timer = 75 + 37 * hit_player_obj.staledFire;
}
