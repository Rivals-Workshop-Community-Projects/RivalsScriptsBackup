hit_player_obj.uch_immune_to_blackhole = true;

// prevent results screen bug
if (get_player_stocks(hit_player_obj.player) = 1)
{
    print_debug("hi someone has deid so we are checking");
    var players_alive = 0;
    var p = noone;
    with (oPlayer) if (is_player_on(player)) if (self != other.hit_player_obj) if (get_player_stocks(player) > 0)
    {
        players_alive++;
        p = self;
    }
    print_debug(players_alive);
    if (players_alive = 1 && player_count > 1)
    {
        can_set_dead_state = false;
        with (p)
        {
            if (state = PS_DEAD || state = PS_RESPAWN)
            {
                //print_debug("bro wake up");
                set_state(PS_IDLE_AIR);
                visible = true;
            }
        }
    }
}