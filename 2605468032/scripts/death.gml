// called when the character gets KO'd
if (instance_exists(bubbleg))
{
    bubbleg.countdown = 0;
}
if (instance_number(oPlayer) > 1)
{
    with(oPlayer)
    {
        wet = 0;
    }
}
move_cooldown[AT_DSPECIAL] = 0;
move_cooldown[AT_FSPECIAL] = 0;
bubble_frame = -1
bubble_effect = 0;