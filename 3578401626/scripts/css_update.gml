//update on the css

if (variable_instance_exists(self, "alt_time")){
    alt_time ++
    full_time ++
    if (cur_alt != get_player_color(player)){
        alt_time = 0
        cur_alt = get_player_color(player);
    }
}