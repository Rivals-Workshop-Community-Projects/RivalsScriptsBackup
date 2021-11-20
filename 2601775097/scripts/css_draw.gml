//css_draw.gml
//Fancy CSS template by Muno

//PORTRAITS
switch (get_player_color(player))
{
    case 14: //Gameboy CSS outline
        draw_sprite_ext(sprite_get("charselect_extra"), 0, x + 8, y + 8, 2, 2, 0, c_white, 1);
        break;
    case 15: //NES CSS outline
        draw_sprite_ext(sprite_get("charselect_extra"), 1, x + 8, y + 8, 2, 2, 0, c_white, 1);
        break;
    case 25: //Helel CSS outline
        draw_sprite_ext(sprite_get("charselect_extra"), 2, x + 8, y + 8, 2, 2, 0, c_white, 1);
        break;
    case 26: //Theikos Bar
        draw_sprite_ext(sprite_get("charselect_extra"), 3, x + 8, y + 8, 2, 2, 0, c_white, 1);
        break;
}

//ALT NAMES
var num_alts = 27;
var alt_cur = get_player_color(player);

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
alt_name[13] = "Son of the Omega";
alt_name[14] = "Early Access";
alt_name[15] = "Demake";
alt_name[16] = "Endless Abyss";
alt_name[17] = "Infamous";
alt_name[18] = "Ranked Gold";
alt_name[19] = season_name[get_match_setting(SET_SEASON)];
alt_name[20] = "Crimson Eclipse";
alt_name[21] = "Stellar Traveller";
alt_name[22] = "Sun God";
alt_name[23] = "Fiery Racing Spirit";
alt_name[24] = "Ultraviolet";
alt_name[25] = "Broken Prism";
alt_name[26] = "Theía Evlogía";

//birthday alt stuff
//updates the CSS instantly and adds the alt's name
var myday = 25;
var mymonth = 10;
if (current_day = myday && current_month == mymonth)
{
    alt_name[11] = "Reminiscence";
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

if (get_player_color(player) >= 14 && get_player_color(player) <= 19)
{
    draw_sprite(sprite_get("css_icons"), get_player_color(player) - 14 , icon_x_pos, icon_y_pos);
}

switch (get_player_color(player))
{
    case 25: //Nekrochroma
        draw_sprite(sprite_get("css_icons"),6,icon_x_pos,icon_y_pos);
        break;
    case 26: //Theikos
        draw_sprite(sprite_get("css_icons"),7,icon_x_pos,icon_y_pos);
        break;
}

draw_set_halign(fa_left);

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
    textDraw(floor(x) + 10 + floor(drawtime), floor(y) + 43, "fName", c_white, 0, 1000, 1, true, (drawtime*0.1), string(alt_name[alt_cur]));
}
else if (drawtime < 120) {
    textDraw(floor(x) + 20 + floor(drawtime/10), floor(y) + 43, "fName", c_white, 0, 1000, 1, true, 1, string(alt_name[alt_cur]));
}
else if (drawtime < 140) {
    textDraw(floor(x) + 20 + floor(drawtime/10), floor(y) + 43, "fName", c_white, 0, 1000, 1, true, drawtime*-0.05+7, string(alt_name[alt_cur]));
}

//idle sprite showcase
sprite_change_offset("idle", 32, 78);
sprite_change_offset("idle_line", 16, 39);

var idle = sprite_get("idle");
var line = sprite_get("idle_line");
var scale = 2;

//idle
scale = 1;
if (drawtime < 10) draw_sprite_ext(idle, drawtime/5, temp_x+24+(drawtime/20), temp_y+128, scale, scale, 0, -1, drawtime/10);
else if (drawtime < 60) draw_sprite_ext(idle, drawtime/5, temp_x+24+(drawtime/20), temp_y+128, scale, scale, 0, -1, drawtime*-0.01+1.25);
else draw_sprite_ext(idle, drawtime/5, temp_x+16+(drawtime/5), temp_y+128, scale, scale, 0, -1, drawtime*-0.01+1.25);

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
    case 11: //seasonal -> hallowen
        if (get_match_setting(SET_SEASON) == 3 && current_day != myday && current_month != mymonth) line_color = $2b2b4b;
        break;
    case 25: //helel
        line_color = $343434;
        break;
    case 26: //theikos
        line_color = $012b46;
        break;
}

if (drawtime < 10) draw_sprite_ext(line, drawtime/5, temp_x+24+(drawtime/20), temp_y+128, scale, scale, 0, line_color, drawtime/10);
else if (drawtime < 60) draw_sprite_ext(line, drawtime/5, temp_x+24+(drawtime/20), temp_y+128, scale, scale, 0, line_color, drawtime*-0.01+1.25);
else draw_sprite_ext(line, drawtime/5, temp_x+16+(drawtime/5), temp_y+128, scale, scale, 0, line_color, drawtime*-0.01+1.25);



//theikos hair color changer from user_event 1 (don't ask. please don't ask.)
if !("theikos_color_increase" in self) theikos_color_increase = true;
if !("theikos_color_maxTime" in self) theikos_color_maxTime = 60; //60 = 60 frames
if !("theikos_color_rate" in self) theikos_color_rate = 2; //the rate at which the time goes up
if !("theikos_color_alpha" in self) theikos_color_alpha = 0; //the "if" statements use this for the time
if !("theikos_redrate" in self) theikos_redrate = 0.9;
if !("theikos_red" in self) theikos_red = 70;
if !("theikos_greenratehue" in self) theikos_greenrate = 1.5;
if !("theikos_green" in self) theikos_green = 129;
if !("theikos_bluerate" in self) theikos_bluerate = 0.8;
if !("theikos_blue" in self) theikos_blue = 195;

var col_hair = 2; //lik colors.gml

if (theikos_color_increase)
{
    theikos_color_alpha += theikos_color_rate;
    theikos_red += theikos_redrate;
    theikos_green += theikos_greenrate;
    theikos_blue += theikos_bluerate;

    if (theikos_color_alpha >= theikos_color_maxTime) theikos_color_increase = false;
}
else
{
    theikos_color_alpha -= theikos_color_rate; //this only controls the "if" statements
    theikos_red -= theikos_redrate;
    theikos_green -= theikos_greenrate;
    theikos_blue -= theikos_bluerate;

    if (theikos_color_alpha <= 0) theikos_color_increase = true;
}
color_rgb = make_color_rgb(theikos_red, theikos_green, theikos_blue);
set_color_profile_slot(26, col_hair, color_get_red(color_rgb), color_get_green(color_rgb), color_get_blue(color_rgb));
init_shader();



//munophone
muno_event_type = 6;
user_event(14);

#define textDraw(x, y, font, color, lineb, linew, scale, outline, alpha, string) {
    draw_set_font(asset_get(argument[2]));
    if argument[7]{ //outline. doesn't work lol
        for (i = -1; i < 2; i++){
            for (j = -1; j < 2; j++){
                draw_text_ext_transformed_color(argument[0] + i * 2, argument[1] + j * 2, argument[9], argument[4], argument[5], argument[6], argument[6], 0, c_black, c_black, c_black, c_black, 1);
            }
        }
    }
    draw_text_ext_transformed_color(argument[0], argument[1], argument[9], argument[4], argument[5], argument[6], argument[6], 0, argument[3], argument[3], argument[3], argument[3], argument[8]);
    return string_width_ext(argument[9], argument[4], argument[5]);
}

#define rectDraw(x1, y1, x2, y2, color) {
    draw_rectangle_color(argument[0], argument[1], argument[2], argument[3], argument[4], argument[4], argument[4], argument[4], false);
}