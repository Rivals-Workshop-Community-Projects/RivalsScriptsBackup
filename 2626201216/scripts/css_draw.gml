if (!variable_instance_exists(self, "charselect_frame")) {
    charselect_frame = 0;
}
if (get_player_color(player) == 0)
{
    css_image = sprite_get("charselect1");
}
else if (get_player_color(player) == 1)
{
    css_image = sprite_get("charselect2");
}
else if (get_player_color(player) == 2)
{
    css_image = sprite_get("charselect3");
}
else if (get_player_color(player) == 3)
{
    css_image = sprite_get("charselect4");
}
else if (get_player_color(player) == 4)
{
    css_image = sprite_get("charselect5");
}
else if (get_player_color(player) == 5)
{
    css_image = sprite_get("charselect6");
}
else if (get_player_color(player) == 6)
{
    css_image = sprite_get("charselect7");
}
else if (get_player_color(player) == 7)
{
    css_image = sprite_get("charselect8");
}
else if (get_player_color(player) == 8)
{
    css_image = sprite_get("charselect9");
}
else if (get_player_color(player) == 9)
{
    css_image = sprite_get("charselect10");
}


charselect_frame += 0.1;
if (get_player_color(player) == 9)
{
    charselect_frame += 0.1;
}
draw_sprite(css_image, charselect_frame, x + 8, y + 8);

if "alt_cur" in self alt_cur_old = alt_cur;
else alt_cur_old = 0;
alt_cur = get_player_color(player);

if alt_cur != alt_cur_old {
    sound_stop(sound_get("glitch6"));
    sound_play(sound_get("glitch6"));
}

