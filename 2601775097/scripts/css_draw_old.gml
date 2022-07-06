//css_draw

var alt_total = 27;
var alt_cur = get_player_color(player);


//PORTRAITS OVERLAY
switch (alt_cur)
{
    case 14: //Gameboy CSS outline
        draw_sprite_ext(sprite_get("css_overlay"), 0, x + 8, y + 8, 2, 2, 0, c_white, 1);
        break;
    case 15: //NES CSS outline
        draw_sprite_ext(sprite_get("css_overlay"), 1, x + 8, y + 8, 2, 2, 0, c_white, 1);
        break;
    case 25: //Helel CSS outline
        draw_sprite_ext(sprite_get("css_overlay"), 2, x + 8, y + 8, 2, 2, 0, c_white, 1);
        break;
    case 26: //Theikos Bar
        draw_sprite_ext(sprite_get("css_overlay"), 3, x + 8, y + 8, 2, 2, 0, c_white, 1);
        break;
}

//ALT NAMES
//seasonal alt names
season_name[1] = "I Like Chocolate";
season_name[2] = "Beach Episode";
season_name[3] = "BE AFRAID NOT";
season_name[4] = "Festive Angel";

//alt names
alt_name[0] = "Elemental Guardian";
alt_name[1] = "Inverted";
alt_name[2] = "The Cupid Heroine";
alt_name[3] = "Spark of Lightning";
alt_name[4] = "Scientific Prodigy";
alt_name[5] = "Umbra Princess";
alt_name[6] = "Chief Demon Hunter";
alt_name[7] = "The Previous Guardian";
alt_name[8] = "Ultimate Lifeform";
alt_name[9] = "REANIMATION"; //alt name: smoking savage.
alt_name[10] = "Nuclear Raven";
alt_name[11] = "Lofty";
alt_name[12] = "11th Fatui Harbinger";
alt_name[13] = "Endless Abyss";
alt_name[14] = "Early Access";
alt_name[15] = "Demake";
alt_name[16] = season_name[get_match_setting(SET_SEASON)];
alt_name[17] = "Infamous";
alt_name[18] = "Ranked Gold";
alt_name[19] = "Son of the Omega";
alt_name[20] = "Crimson Eclipse";
alt_name[21] = "Stellar Traveller";
alt_name[22] = "Sun God";
alt_name[23] = "Fiery Racing Spirit";
alt_name[24] = "Ultraviolet";
alt_name[25] = "Broken Prism";
alt_name[26] = "Theía Evlogía";


var myday = 25;
var mymonth = 10;
if (current_day = myday && current_month == mymonth)
{
    alt_name[19] = "Reminiscence";
    set_color_profile_slot(11, 0, 206, 216, 227); //CLOTHWHITE
    set_color_profile_slot(11, 1, 182, 88, 61); //HAIR
    set_color_profile_slot(11, 2, 245, 181, 150); //SKIN
    set_color_profile_slot(11, 3, 43, 60, 140); //CLOTHLIGHTBLUE
    set_color_profile_slot(11, 4, 43, 60, 140); //CLOTHDARKBLUE
    set_color_profile_slot(11, 5, 43, 60, 140); //CLOTHBLACK
	set_color_profile_slot(11, 6, 159, 241, 255); //LIGHT
	set_color_profile_slot(11, 7, 76, 133, 233); //FIRE
}

//ICONS
var icon_x_pos = x + 174;
var icon_y_pos = y + 108;

if (alt_cur >= 13 && alt_cur <= 18) draw_sprite(sprite_get("css_icons"), alt_cur-13, icon_x_pos, icon_y_pos);
if (alt_cur >= 25) draw_sprite(sprite_get("css_icons"), alt_cur+5, icon_x_pos, icon_y_pos);

draw_set_halign(fa_left);

//alt boxes
var thin = alt_total > 16;

rectDraw(x+78, y+9, 132, 6, c_black);
for (i = 0; i < alt_total; i++)
{
	var draw_color = (i == alt_cur) ? c_white : c_gray * 0.5;
	var draw_x = x + 78 + (thin ? 4 : 8) * i;
	rectDraw(draw_x, y + 9, thin ? 1 : 5, 4, draw_color);
}

var txt = "#" + string(alt_cur);
rectDraw(x + 76, y + 15, 42, 20, c_black);

textDraw(x + 82, y + 19, "fName", c_white, 20, 1000, fa_left, 1, false, 1, txt, false);


//ANIMATION VARIABLES
//original code was made by SAI
if "is_css" not in self is_css = true;

var temp_x = floor(x+10);
var temp_y = floor(y+10);

if ("drawing" not in self) drawing = 0;
if ("prev_alt" not in self) drawtime = 0;
if ("alttime" not in self) alttime = 0;
if ("prev_alt" in self && prev_alt != alt_cur)
{
    drawing = floor(alttime % 8);
    drawtime = 0;
}

drawtime += 1;
alttime += 1;
prev_alt = alt_cur;

//ANIMATION WORK
//text
if (drawtime < 10) {
    textDraw(floor(x) + 10 + floor(drawtime), floor(y) + 43, "fName", c_white, 0, 1000, fa_left, 1, true, (drawtime*0.1), string(alt_name[alt_cur]), false);
}
else if (drawtime < 120) {
    textDraw(floor(x) + 20 + floor(drawtime/10), floor(y) + 43, "fName", c_white, 0, 1000, fa_left, 1, true, 1, string(alt_name[alt_cur]), false);
}
else if (drawtime < 140) {
    textDraw(floor(x) + 20 + floor(drawtime/10), floor(y) + 43, "fName", c_white, 0, 1000, fa_left, 1, true, drawtime*-0.05+7, string(alt_name[alt_cur]), false);
}

//idle sprite showcase
sprite_change_offset("idle", 16, 39);
sprite_change_offset("idle_line", 16, 39);

var idle = sprite_get("idle");
var line = sprite_get("idle_line");
var scale = 2;
var anim_speed = 0.2; //the bigger the number, the slower the animation

//idle
scale = 2;
if (drawtime < 10) draw_sprite_ext(idle, drawtime*anim_speed, temp_x+24+(drawtime/20), temp_y+128, scale, scale, 0, -1, drawtime/10);
else if (drawtime < 60) draw_sprite_ext(idle, drawtime*anim_speed, temp_x+24+(drawtime/20), temp_y+128, scale, scale, 0, -1, drawtime*-0.01+1.25);
else draw_sprite_ext(idle, drawtime*anim_speed, temp_x+16+(drawtime/5), temp_y+128, scale, scale, 0, -1, drawtime*-0.01+1.25);

//outline
scale = 2;
var line_color = $000000;
switch (get_player_color(player))
{
    case 14: //gameboy
        line_color = $0f380f;
        break;
    case 15: //NES
        line_color = $b20020; //this color doesn't show for some reason
        break;
    case 16: //seasonal -> hallowen
        if (get_match_setting(SET_SEASON) == 3 && current_day != myday && current_month != mymonth) line_color = $2b2b4b;
        break;
    case 25: //helel
        line_color = $343434;
        break;
    case 26: //theikos
        line_color = $012b46;
        break;
}

if (drawtime < 10) draw_sprite_ext(line, drawtime*anim_speed, temp_x+24+(drawtime/20), temp_y+128, scale, scale, 0, line_color, drawtime/10);
else if (drawtime < 60) draw_sprite_ext(line, drawtime*anim_speed, temp_x+24+(drawtime/20), temp_y+128, scale, scale, 0, line_color, drawtime*-0.01+1.25);
else draw_sprite_ext(line, drawtime*anim_speed, temp_x+16+(drawtime/5), temp_y+128, scale, scale, 0, line_color, drawtime*-0.01+1.25);



//changes the white shading for the 8bit alts
if (alt_cur == 14 || alt_cur == 15) set_color_profile_slot_range(1, 150, 10, 12);
set_color_profile_slot_range(1, 13, 7, 15); //from colors.gml


init_shader();



//functions by muno
#define rectDraw(x1, y1, width, height, color)
{
    draw_rectangle_color(x1, y1, x1 + width, y1 + height, color, color, color, color, false);
}
#define textDraw(x1, y1, font, color, lineb, linew, align, scale, outline, alpha, text, array_bool)
{
    draw_set_font(asset_get(font));
    draw_set_halign(align);

    if outline {
        for (i = -1; i < 2; i++) {
            for (j = -1; j < 2; j++) {
                draw_text_ext_transformed_color(x1 + i * 2, y1 + j * 2, text, lineb, linew, scale, scale, 0, c_black, c_black, c_black, c_black, alpha);
            }
        }
    }

    if alpha draw_text_ext_transformed_color(x1, y1, text, lineb, linew, scale, scale, 0, color, color, color, color, alpha);

    if array_bool return [string_width_ext(text, lineb, linew), string_height_ext(text, lineb, linew)];
    else return;
}