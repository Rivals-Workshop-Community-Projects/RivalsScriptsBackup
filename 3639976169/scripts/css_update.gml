if (!variable_instance_exists(self, "time_since_switch"))
{
    time_since_switch = 0;
    prev_color = get_player_color( player );
}
if (time_since_switch < 120) time_since_switch++;
if (prev_color != get_player_color( player )) 
{
    time_since_switch = 0;
    prev_color = get_player_color( player );
}