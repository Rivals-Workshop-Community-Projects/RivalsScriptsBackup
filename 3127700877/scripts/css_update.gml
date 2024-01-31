//css_draw.gml

css_anim_time ++;
alt_cur = get_player_color(player);
alt_fix = player; //keep this line, on the online css the player is actually player 0, we later go on init_shader to check for this variable
sprite_change_offset("taunt", 45, 107);

var gX = (get_player_color(player) == 17 || get_player_name(player) == "GLITCH")

if (alt_prev != alt_cur)
{
    css_anim_time = 0;
    alt_prev = alt_cur;
    if gX sound_play(sound_get("g10glitch_1"));
}