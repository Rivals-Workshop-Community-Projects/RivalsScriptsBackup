//Fancy CSS template by Muno
//Put in css_draw.gml

var temp_x = x + 8;
var temp_y = y + 9;

patch_ver = "1.0";
patch_day = "";
patch_month = "";

var drawAlpha = 1;
var num_alts = 29;
var alt_cur = get_player_color(player);

var doNotInitShader = "alt_name" in self; // check if running for the first time

//Butonn via dinobros
if ((get_instance_x(cursor_id) >= x + button_cord[0] && get_instance_x(cursor_id) <= x + button_cord[0] + 30) && (get_instance_y(cursor_id) >= y + button_cord[1] && get_instance_y(cursor_id) <= y + button_cord[1] + 26)) {
	suppress_cursor = true;
	draw_sprite_ext(sprite_get("css_icon"), css_gem, x + button_cord[0], y + button_cord[1], 1, 1, 0, c_gray, 1);
} else {
	draw_sprite_ext(sprite_get("css_icon"), css_gem, x + button_cord[0], y + button_cord[1], 1, 1, 0, c_white, 1);
}

if(!variable_instance_exists(id,"timerSelect")) //init variables.
{
    timerSelect = 0;
    altSelected = 0;
}

timerSelect ++;
if(altSelected != alt_cur)
{
    timerSelect = 0;
    drawAlpha = 1;
    sound_play(sound_get("css_select"));
    altSelected = alt_cur;
}
if(timerSelect > 50)
    drawAlpha = (1-(timerSelect - 50)/30);

//Alt name init. var doesn't work with arrays lol

alt_name[0]  = "Lesser Royalty";
alt_name[1]  = "Rune Guardian";
alt_name[2]  = "Rich Princess";
alt_name[3]  = "Motherly Star";
alt_name[4]  = "Crystal Jank";
alt_name[5]  = "Religious Spirit";
alt_name[6]  = "Star Disciple";
alt_name[7]  = "Ascended Ghost";
alt_name[8]  = "Flight Admiral";
alt_name[9]  = "Bamboo Express";
alt_name[10] = "Lighting Legs";
alt_name[11] = "Fire Flower";
alt_name[12] = "Thievius Ringtail";
alt_name[13] = "Hero of the Runes";
alt_name[14] = "Dream Traveler";
alt_name[15] = "Fortune's Fool";
alt_name[16] = "Blue Dragon";
alt_name[17] = "Psycho Soldier";
alt_name[18] = "BRAZIL NUMERO UNO";
alt_name[19] = "Crystal Reforged";
alt_name[20] = "Maternal Archer";
alt_name[21] = "Bewitched Prime";
alt_name[22] = "Gem Slinger";
alt_name[23] = "Freedom Fighter";
alt_name[24] = "Gender of Fluid";
alt_name[25] = "Holographic Terror";
alt_name[26] = "Lethal Hugger";
alt_name[27] = "Hidden Potential";
alt_name[28] = "Retro Eclipse";
alt_name[29] = "Sparked Berry";
alt_name[30] = "Eighth Revelation";
alt_name[31] = "Vocalist Takeover";

if(!doNotInitShader){
    init_shader(); // makes the shader update when you return to the CSS (don't know why the game is coded so that this necessary)
}


//Patch
draw_set_halign(fa_left);

//textDraw(temp_x + 2, temp_y + 30, "medFont", c_white, 0, 1000, 1, true, 1, "VER. " + patch_ver);

textDraw(temp_x + 2, temp_y + 50, "fName", c_white, 0, 1000, 1, true, 1, patch_day + " " + patch_month);

//Alt
draw_set_alpha((1-(timerSelect)/8));
rectDraw(temp_x, temp_y, temp_x + 201, temp_y + 142, c_white);
// rectDraw(temp_x, temp_y + 130, temp_x + 201, temp_y + 142, c_black);

// for(i = 0; i < num_alts; i++){
//     if(i > 15)
//         y_layer = 0;
//     else
//         y_layer = 6;

// 	var draw_color = (i == alt_cur) ? c_yellow : c_gray;
// 	var draw_x = temp_x + 2 + 10 * (y_layer != 0 ? i : (i - 16));
// 	rectDraw(draw_x, temp_y + 138 - y_layer, draw_x + 7, temp_y + 141 - y_layer, draw_color);
// }

draw_set_halign(fa_left);
draw_set_alpha(1);

//include alt. name
textDraw(temp_x + 2, temp_y + 120, "fName", c_white, 0, 1000, 1, true, drawAlpha, alt_name[alt_cur]);
textDraw(temp_x + 2, temp_y + 132, "fName", c_white, 0, 1000, 1, true, drawAlpha, "Alt #" + string(alt_cur+1) + " of #" + string(num_alts));

// textDraw(temp_x + 2, temp_y + 40, "fName", c_white, 0, 1000, 1, true, 0.5, "v."+ string(get_char_info( player, INFO_VER_MAJOR)) +"."+ string(get_char_info( player, INFO_VER_MINOR))); // patch

//exclude alt. name
//textDraw(temp_x + 2, temp_y + 124, "fName", $EBFFFF, 0, 1000, 1, true, 1, "Alt. " + (alt_cur < 9 ? "0" : "") + string(alt_cur + 1));


#define textDraw(x, y, font, color, lineb, linew, scale, outline, alpha, string)

draw_set_font(asset_get(argument[2]));

if argument[7]{ //outline. doesn't work lol
    for (i = -1; i < 2; i++){
        for (j = -1; j < 2; j++){
            draw_text_ext_transformed_color(argument[0] + i * 2, argument[1] + j * 2, argument[9], argument[4], argument[5], argument[6], argument[6], 0, c_black, c_black, c_black, c_black, alpha);
        }
    }
}

draw_text_ext_transformed_color(argument[0], argument[1], argument[9], argument[4], argument[5], argument[6], argument[6], 0, argument[3], argument[3], argument[3], argument[3], argument[8]);

return string_width_ext(argument[9], argument[4], argument[5]);



#define rectDraw(x1, y1, x2, y2, color)

draw_rectangle_color(argument[0], argument[1], argument[2], argument[3], argument[4], argument[4], argument[4], argument[4], false);