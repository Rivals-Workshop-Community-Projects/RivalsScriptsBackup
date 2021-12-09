
#macro ALT_NORMAL    0
#macro ALT_XY       15
#macro ALT_SHINY     1
#macro ALT_GAMEBOY   7
#macro ALT_GAMEBOY_SHINY  16

var current_color = get_player_color(player);

if ("vfx_shiny_override" in self && vfx_shiny_override)
{
    swapped_color = noone;
    if (current_color == ALT_NORMAL) swapped_color = ALT_SHINY;
    if (current_color == ALT_XY) swapped_color = ALT_SHINY;
    if (current_color == ALT_GAMEBOY) swapped_color = ALT_GAMEBOY_SHINY;

    if (swapped_color != noone)
    {
        for (var i = 0; i < 7; i++)
        {
            var tempR = get_color_profile_slot_r(swapped_color, i);
            var tempG = get_color_profile_slot_g(swapped_color, i);
            var tempB = get_color_profile_slot_b(swapped_color, i);
            set_character_color_slot(i, tempR, tempG, tempB);
            set_article_color_slot(i, tempR, tempG, tempB);
        }
    }
    else
    { vfx_shiny_override = false; }
}

if (current_color == ALT_GAMEBOY) && ("outline_color" in self)
&& (outline_color[0] == 0 && outline_color[1] == 0 && outline_color[2] == 0)
{
    outline_color = vfx_shiny_override ? [0, 32, 60] : [0, 60, 32];
}

//Hidden Power color shift
var hue = (get_gameplay_time() * 3) % 360;
var new_color = make_color_hsv(hue, 240, 240);
set_article_color_slot(7, color_get_red(new_color), color_get_green(new_color), color_get_blue(new_color));
