//got_hit
if (attack == AT_DSPECIAL && window == 2)
{
    reflectHit = true;
    set_window_value(AT_DSPECIAL, 3, AG_WINDOW_INVINCIBILITY, 1);
    should_make_shockwave = false;
    hit_player_obj.state = PS_WRAPPED;
    set_num_hitboxes(AT_DSPECIAL, 3);
    window_timer = 0;
    window = 3;
}