sound_play(sound_get("death"));
if (instance_exists(stopwatch))
{
    stopwatch.dead = 1;
    stopwatch2.dead = 1;
    stopwatch.explode = 0;
    move_cooldown[AT_DSPECIAL] = 120;
}