//css_draw.gml
//Fancy CSS template by Muno

//PORTRAITS
switch (get_player_color(player))
{
    case 7: //Gameboy CSS outline
        draw_sprite_ext(sprite_get("charselect_extra"), 0, x + 8, y + 8, 2, 2, 0, c_white, 1);
        break;
    case 8: //NES CSS outline
        draw_sprite_ext(sprite_get("charselect_extra"), 1, x + 8, y + 8, 2, 2, 0, c_white, 1);
        break;
    case 30: //Helel CSS outline
        draw_sprite_ext(sprite_get("charselect_extra"), 2, x + 8, y + 8, 2, 2, 0, c_white, 1);
        break;
    case 31: //Theikos Bar
        draw_sprite_ext(sprite_get("charselect_extra"), 3, x + 8, y + 8, 2, 2, 0, c_white, 1);
        break;
}

//ALT NAMES
var num_alts = 32;
var alt_cur = get_player_color(player);

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
alt_name[7] = "Early Access";
alt_name[8] = "Demake";
alt_name[9] = "Endless Abyss";
alt_name[10] = "Infamous";
alt_name[11] = season_name[get_match_setting(SET_SEASON)];
alt_name[12] = "Emerald Guardian";
alt_name[13] = "REANIMATION"; //alt name: smoking savage.
alt_name[14] = "Nuclear Raven";
alt_name[15] = "Lofty";
alt_name[16] = "11th Fatui Harbinger";
alt_name[17] = "Underdog";
alt_name[18] = "Son of the Omega";
alt_name[19] = "Half Hot - Half Cold"
alt_name[20] = "Banishing Shifter";
alt_name[21] = "Crimson Eclipse";
alt_name[22] = "Stellar Traveller";
alt_name[23] = "Sun God";
alt_name[24] = "Fiery Racing Spirit";
alt_name[25] = "Lazy Destroyer";
alt_name[26] = "Ultraviolet";
alt_name[27] = "Mesmerizing Phantom";
alt_name[28] = "Thunderous Howl";
alt_name[29] = "Amethyst Fist";
alt_name[30] = "Broken Prism";
alt_name[31] = "Theía Evlogía";

//ICONS
var icon_x_pos = x + 174;
var icon_y_pos = y + 108;

switch (get_player_color(player))
{
    case 7: //Early Access
        draw_sprite(sprite_get("css_icons"),0,icon_x_pos,icon_y_pos);
        break;
    case 8: //NES Icon
        draw_sprite(sprite_get("css_icons"),1,icon_x_pos,icon_y_pos);
        break;
    case 9: //Abyss Icon
        draw_sprite(sprite_get("css_icons"),2,icon_x_pos,icon_y_pos);
        break;
    case 10: //Infamous Icon
        draw_sprite(sprite_get("css_icons"),3,icon_x_pos,icon_y_pos);
        break;
    case 11: //Seasonal Icon
        draw_sprite(sprite_get("css_icons"),4,icon_x_pos,icon_y_pos);
        break;
    case 30: //Nekrochroma
        draw_sprite(sprite_get("css_icons"),5,icon_x_pos,icon_y_pos);
        break;
    case 31: //Theikos
        draw_sprite(sprite_get("css_icons"),6,icon_x_pos,icon_y_pos);
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
sprite_change_offset("idle_line", 32, 78);

var idle = sprite_get("idle");
var line = sprite_get("idle_line");

//idle
if (drawtime < 10) draw_sprite_ext(idle, drawtime/5, temp_x+24+(drawtime/20), temp_y+128, 1, 1, 0, -1, drawtime/10);
else if (drawtime < 60) draw_sprite_ext(idle, drawtime/5, temp_x+24+(drawtime/20), temp_y+128, 1, 1, 0, -1, drawtime*-0.01+1.25);
else draw_sprite_ext(idle, drawtime/5, temp_x+16+(drawtime/5), temp_y+128, 1, 1, 0, -1, drawtime*-0.01+1.25);

//outline
var line_color = $000000;
switch (get_player_color(player))
{
    case 7: //gameboy
        line_color = $0f380f;
        break;
    case 8: //NES
        line_color = $b20020; //this color doesn't show for some reason
        break;
    case 11: //seasonal -> hallowen
        if (get_match_setting(SET_SEASON) == 3) line_color = $2b2b4b;
        break;
    case 30: //helel
        line_color = $343434;
        break;
    case 31: //theikos
        line_color = $012b46;
        break;
}

if (drawtime < 10) draw_sprite_ext(line, drawtime/5, temp_x+24+(drawtime/20), temp_y+128, 1, 1, 0, line_color, drawtime/10);
else if (drawtime < 60) draw_sprite_ext(line, drawtime/5, temp_x+24+(drawtime/20), temp_y+128, 1, 1, 0, line_color, drawtime*-0.01+1.25);
else draw_sprite_ext(line, drawtime/5, temp_x+16+(drawtime/5), temp_y+128, 1, 1, 0, line_color, drawtime*-0.01+1.25);


//UNUSED
//old text stuff
/*
{
    //textDraw(temp_x + 10, temp_y + anim_y, "fName", c_white, 0, 1000, 1, true, 1, alt_name[alt_cur]);

    //Alt - drawing the rectangles
    rectDraw(temp_x, temp_y + 135, temp_x + 201, temp_y + 142, c_black);
 
    for(i = 0; i < num_alts; i++){
        var draw_color = (i == alt_cur) ? c_white : c_gray;
        var draw_x = temp_x + 5 * i;
        rectDraw(draw_x + 2, temp_y + 137, draw_x + 4, temp_y + 140, draw_color);
    }

    draw_set_halign(fa_left);

    //patch_ver = "1.0";
    textDraw(temp_x + 128, temp_y + 198, "fName", c_white, 0, 1000, 1, true, 0.5, "ver. " + patch_ver); //ver. text
    //textDraw(temp_x + 8, temp_y + 100, "medFont", c_white, 0, 1000, 1, true, 1, patch_ver); //patch version text

    //alt. number
    textDraw(temp_x + 2, temp_y + 108, "fName", c_white, 0, 1000, 1, true, 1, "#" + (alt_cur < 9 ? "0" : "") + string(alt_cur + 1));
}
*/

//EXPERIMENTS
//drawing rectangles experiment
//rectDraw(temp_x, temp_y + 130, temp_x + 200, temp_y + 148, c_blue);

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