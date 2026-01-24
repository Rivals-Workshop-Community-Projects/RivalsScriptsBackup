//css_update.gml

bubblescroll_1 += 0.5;
bubblescroll_2 += 0.5;
if bubblescroll_1 = 0{
    bubblescroll_1 = -200;
}

if bubblescroll_2 = -568{
    bubblescroll_2 = 0;
}

if css_flash > 0{
    css_flash = lerp(css_flash, 0, 0.15);
}

if ("css_anim_time" not in self) exit; //prevents error spam on load

css_anim_time ++;
alt_fix = player; //keep this line, on the online css the player is actually player 0, we later go on init_shader to check for this variable

icon_x_pos = x + 174;
icon_y_pos = y + 108;
preview_x = floor(x+10);
preview_y = floor(y+10);

if (alt_prev != alt_cur)
{
    alt_prev = alt_cur;
}


if c_wheel_x = 64{
    css_anim_time = 0;
}

