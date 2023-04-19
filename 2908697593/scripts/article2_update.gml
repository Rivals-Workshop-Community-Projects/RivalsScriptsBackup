draw++;
alpha -= 0.025;

depth = player_id.depth -2;

if alpha <= 0{
    instance_destroy(self);
}