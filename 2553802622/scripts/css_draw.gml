//Fancy CSS template by Muno
//Put in css_draw.gml

var temp_x = x + 8;
var temp_y = y + 9;

patch_ver = "1.0";
patch_day = "";
patch_month = "";

var drawAlpha = 1;
var num_alts = 19;
var alt_cur = get_player_color(player);

var doNotInitShader = "alt_name" in self; // check if running for the first time

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
{
    drawAlpha = (1-(timerSelect - 50)/30);
}
//Alt name init. var doesn't work with arrays lol
alt_name[0]  = "Elemental Marksman";
alt_name[1]  = "Cheesy Pika";
alt_name[2]  = "Sapphire Archer";
alt_name[3]  = "Ghostly Vengeance";
alt_name[4]  = "Mashy";
alt_name[5]  = "Sakura Fowl";
alt_name[6]  = "Floofy Artist";
alt_name[7]  = "The Darkness";
alt_name[8]  = "Swift as an Arrow";
alt_name[9]  = "Carrot Cake";
alt_name[10] = "Early Access";
alt_name[11] = "Abyss Colors";
alt_name[12] = "Black Lives Matter!";
alt_name[13] = "Trans Rights";
alt_name[14] = "Traveller of Axis";
alt_name[15] = "Defiance of Death";
alt_name[16] = "Flying Dragon";
alt_name[17] = "Arrow Reforged";
alt_name[18] = "Friend-Killer";

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
textDraw(temp_x + 2, temp_y + 116, "fName", c_white, 0, 1000, 1, true, drawAlpha, alt_name[alt_cur]);
textDraw(temp_x + 2, temp_y + 130, "fName", c_white, 0, 1000, 1, true, drawAlpha, "Alt #" + string(alt_cur+1) + " of #" + string(num_alts));

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