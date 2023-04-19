if (attack == AT_FSPECIAL and get_gameplay_time() mod 10 == 1)
{
    var randy = random_func( (abs(x) mod 4)+3, 5, false)-10
    spawn_hit_fx(x+hsp,y+vsp+randy+6,player_id.ball_particles);
}