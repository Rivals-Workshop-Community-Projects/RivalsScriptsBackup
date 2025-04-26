//css_update.gml

if ("css_anim_time" not in self) exit; //prevents error spam on load

css_anim_time ++;
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