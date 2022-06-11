//css_draw.gml

//ALT NAMES
var alt_total = 24;
var alt_cur = get_player_color(player);
var col = c_white;

switch (alt_cur)
{
    case 14:
        draw_sprite_ext(sprite_get("charselect_ex"), 0, x + 8, y + 8, 2, 2, 0, c_white, 1);
        break;
}

//seasonal alt names
season_name[1] = "Shall we take a stroll?";
season_name[2] = "Sea Breeze Yuheng";
season_name[3] = "Icy Resurrection";
season_name[4] = "Holiday Lightning";

//alt names
alt_name[0] = "Driving Thunder";
alt_name[1] = "Vigilant Yaksha";
alt_name[2] = "Eclipsing Star";
alt_name[3] = "Astral Reflection";
alt_name[4] = "Dark Side of Dawn";
alt_name[5] = "Plenilune Gaze";
alt_name[6] = "Outlander (F)";
alt_name[7] = "Outlander (M)";
alt_name[8] = "Plane of Euthymia";
alt_name[9] = "Alpha and Omega";
alt_name[10] = "Swordmaster";
alt_name[11] = "Through the Fire";
alt_name[12] = "Flowering Night";
alt_name[13] = "Endless Abyss"; //has the abyss death effect
alt_name[14] = "Early Access";
alt_name[15] = "Opulent Splendor"; //later on in development put the lantern rite 2022 outfit of keqing here, as a "milestone alt"
alt_name[16] = season_name[get_match_setting(SET_SEASON)];
alt_name[17] = "Infamous";
alt_name[18] = "Ranked Gold"; //has the shiny effect
alt_name[19] = "Power of the Aegis";
alt_name[20] = "Superstar Idol 01";
alt_name[21] = "Unlimited Mage Works";
alt_name[22] = "Elemental Guardian";
alt_name[23] = "Baleful Stormstrider";

//ICONS
var icon_x_pos = x + 174;
var icon_y_pos = y + 108;

if (alt_cur >= 13 && alt_cur <= 18) draw_sprite(sprite_get("css_icons"), alt_cur - 13 , icon_x_pos, icon_y_pos);

//setting keqing's colors properly
set_color_profile_slot_range(3, 11, 13, 15); //from colors.gml


draw_set_halign(fa_left);

//ANIMATION VARIABLES
var thin = alt_total > 16;

rectDraw(x+78, y+9, 132, 6, c_black);
for (i = 0; i < alt_total; i++)
{
	var draw_color = (i == alt_cur) ? col : c_gray * 0.5;
	var draw_x = x + 78 + (thin ? 4 : 8) * i;
	rectDraw(draw_x, y + 9, thin ? 1 : 5, 4, draw_color);
}

var txt = "#" + string(alt_cur);
rectDraw(x + 76, y + 15, 42, 20, c_black);

textDraw(x + 82, y + 19, "fName", col, 20, 1000, fa_left, 1, false, 1, txt, false);

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
sprite_change_offset("idle", 32, 78);
sprite_change_offset("idle_line", 32, 78);

var idle = sprite_get("idle");
var line = sprite_get("idle_line");
var scale = 2;
var anim_speed = 7; //the bigger the number, the slower the animation

//idle
scale = 1;
if (drawtime < 10) draw_sprite_ext(idle, drawtime/anim_speed, temp_x+24+(drawtime/20), temp_y+128, scale, scale, 0, -1, drawtime/10);
else if (drawtime < 60) draw_sprite_ext(idle, drawtime/anim_speed, temp_x+24+(drawtime/20), temp_y+128, scale, scale, 0, -1, drawtime*-0.01+1.25);
else draw_sprite_ext(idle, drawtime/anim_speed, temp_x+16+(drawtime/5), temp_y+128, scale, scale, 0, -1, drawtime*-0.01+1.25);

//outline
scale = 1;
var line_color = $000000;
if (alt_cur == 14) line_color = $0f380f;

if (drawtime < 10) draw_sprite_ext(line, drawtime/anim_speed, temp_x+24+(drawtime/20), temp_y+128, scale, scale, 0, line_color, drawtime/10);
else if (drawtime < 60) draw_sprite_ext(line, drawtime/anim_speed, temp_x+24+(drawtime/20), temp_y+128, scale, scale, 0, line_color, drawtime*-0.01+1.25);
else draw_sprite_ext(line, drawtime/anim_speed, temp_x+16+(drawtime/5), temp_y+128, scale, scale, 0, line_color, drawtime*-0.01+1.25);



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