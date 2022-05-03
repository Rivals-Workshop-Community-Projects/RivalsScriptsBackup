if (state == PS_ATTACK_AIR or state == PS_ATTACK_GROUND)
{
    if (attack = AT_USPECIAL)
    {
        if (window == 2 and window_timer == get_window_value(AT_USPECIAL, 2, AG_WINDOW_LENGTH) - 1)
        {
            var hit2 = spawn_hit_fx(x, y, tp_effect2)
            hit2.pause = 8
        }
        else if (window == 3 and window_timer == 0 and !hitpause)
        {
            var hit = spawn_hit_fx(x, y, tp_effect)
            hit.pause = 8
        }
    }
}