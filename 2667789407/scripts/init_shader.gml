
#macro ALT_GAMEBOY  7

var current_color = get_player_color(player);

if (current_color == ALT_GAMEBOY) && ("outline_color" in self)
&& (outline_color[0] == 0 && outline_color[1] == 0 && outline_color[2] == 0)
{
    outline_color = [0, 60, 32];
}

//Hidden Power color shift
var hue = (get_gameplay_time() * 3) % 360;
var new_color = make_color_hsv(hue, 240, 240);
set_article_color_slot(7, color_get_red(new_color), color_get_green(new_color), color_get_blue(new_color));
