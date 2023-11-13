//results_draw_portrait.gml
//draws sprites over the results but under everything that's in results_post_draw.gml

//for some reason, the results screen runs twice per frame, making timers run twice as fast
//so this forces it to only check it once for a constant speed
if ("prev_time" not in self) prev_time = 0;
if (prev_time != results_timer)
{
    if (get_player_color(player) == 11 || get_player_color(player) == 12) user_event(0);
    prev_time = results_timer;
}