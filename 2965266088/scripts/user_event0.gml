//rainbow color stuff

if ("col" not in self) col = 0;
var rainbow_speed = 1;
col += rainbow_speed;
if (col > 255) col = 0;

var rgb = make_color_rgb(255, 0, 0);
var hue = (color_get_hue(rgb) + col) % 255;
var hsv = make_color_hsv(hue, color_get_saturation(rgb), color_get_value(rgb));

var slot = 0; //meiling rainbow
var off = 0;
switch (alt_cur)
{
    case 2: //meling
        slot = 0;
        off = -50;
        set_color_profile_slot(alt_cur, slot, color_get_red(hsv) + off, color_get_green(hsv) + off, color_get_blue(hsv) + off);
        set_article_color_slot(slot, color_get_red(hsv) + off, color_get_green(hsv) + off, color_get_blue(hsv) + off, 1);
        break;
    case 6: //flandre
        slot = 1;
        off = 100;
        set_color_profile_slot(alt_cur, slot, color_get_red(hsv) + off, color_get_green(hsv) + off, color_get_blue(hsv) + off);
        set_article_color_slot(slot, color_get_red(hsv) + off, color_get_green(hsv) + off, color_get_blue(hsv) + off, 1);
        break;
    case 8: //marisa
        slot = 0;
        off = -25;
        set_color_profile_slot(alt_cur, slot, color_get_red(hsv) + off, color_get_green(hsv) + off, color_get_blue(hsv) + off);
        set_article_color_slot(slot, color_get_red(hsv) + off, color_get_green(hsv) + off, color_get_blue(hsv) + off, 1);

        slot = 1;
        off = -150;
        set_color_profile_slot(alt_cur, slot, color_get_red(hsv) + off, color_get_green(hsv) + off, color_get_blue(hsv) + off);
        set_article_color_slot(slot, color_get_red(hsv) + off, color_get_green(hsv) + off, color_get_blue(hsv) + off, 1);
        break;
}

init_shader();