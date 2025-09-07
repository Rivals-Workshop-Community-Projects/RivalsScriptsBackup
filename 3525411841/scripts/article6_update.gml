// Article 6 -- Bees

if (queued_hitbox)
{
    var hb = create_hitbox(3, 1, floor(x), floor(y));
    hb.owner = self;
    //print_debug("get beed");
    bee_hitbox = hb;
    queued_hitbox = false;
}
if (queued_destroy)
{
    instance_destroy();
    exit;
}
image_index = (floor(get_gameplay_time() / 5) % 3);
if (obj_stage_main.current_stage_state != 2)
{
    instance_destroy();
    exit;
}
if (start_timer > 0)
{
    start_timer--;
    exit;
}
with (oPlayer)
{
    if (player == other.chasing_player)
    {
        var angle = arctan2(y - other.y, x - other.x);
        other.x += cos(angle) * other.chase_speed;
        other.y += sin(angle) * other.chase_speed;
        if (state == PS_DEAD)
        {
            other.queued_destroy = true;
        }
    }
    if (distance_to_point(other.x, other.y) < 6)
    {
        other.queued_hitbox = true;
        other.queued_destroy = true;
        exit;
    }
}