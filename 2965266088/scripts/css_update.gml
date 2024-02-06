//css_update.gml

if ("css_anim_time" not in self) exit; //prevents errors on refresh

css_anim_time ++;
alt_cur = get_player_color(player);
alt_fix = player; //keep this line, on the online css the player is actually player 0, we later go on init_shader to check for this variable

icon_x_pos = x + 174;
icon_y_pos = y + 108;
preview_x = floor(x+10);
preview_y = floor(y+10);

if (alt_prev != alt_cur)
{
    css_anim_time = 0;
    alt_prev = alt_cur;
}

//alts with rainbows attatched
if (alt_cur == 2 || alt_cur == 6 || alt_cur == 8 || alt_cur == 19) user_event(0);