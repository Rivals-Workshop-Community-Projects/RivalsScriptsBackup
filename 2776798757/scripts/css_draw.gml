init_shader();

var temp_x = x + 8;
var temp_y = y + 9;


var num_alts = 31;
var alt_cur = get_player_color(player);


//Alt name init. var doesn't work with arrays lol

alt_name[0] = "Default";
alt_name[1] = "Xtreme";
alt_name[2] = "SSL";
alt_name[3] = "CSW";
alt_name[4] = "MMZ";
alt_name[5] = "iX";
alt_name[6] = "Ult Armor (X6)";
alt_name[7] = "X-Kai";
alt_name[8] = "Storm Tornado";
alt_name[9] = "Sonic Slicer";
alt_name[10] = "Triad Thunder";
alt_name[11] = "Rising Fire";
alt_name[12] = "Ground Hunter";
alt_name[13] = "Goo Shaver";
alt_name[14] = "Ice Burst";
alt_name[15] = "Green Spinner";
alt_name[16] = "Default (CM)";
alt_name[17] = "MMZ (CM)";
alt_name[18] = "shiny (CM)";
alt_name[19] = "Gate (CM)";
alt_name[20] = "Ultimate Armor (X6)(CM)";
alt_name[21] = "MVCI alt 1 (CM)";
alt_name[22] = "MVCI alt 2 (CM)";
alt_name[23] = "MVCI alt 3 (CM)";
alt_name[24] = "Rising Fire (CM)";
alt_name[25] = "Soul Body (CM)";
alt_name[26] = "Shotgun Ice (CM)";
alt_name[27] = "Tornado Fang (CM)";
alt_name[28] = "Tri-Thunder (CM)";
alt_name[29] = "Spin Wheel (CM)";
alt_name[30] = "Speed Burner (CM)";
alt_name[31] = "Meteor Rain (CM)";

rectDraw(temp_x, temp_y + 135, temp_x + 201, temp_y + 142, c_black);
 
for(var i = 0; i < ceil(array_length(alt_name)/16); i++){
    for(var j = 0; j < min(array_length(alt_name)-i*16, 16); j++){
        var draw_color = (j+16*i == alt_cur) ? c_white : c_gray;
        var draw_x = temp_x + 2 + 10 * j;
        rectDraw(draw_x, temp_y + 137 - 5*i, draw_x + 7, temp_y + 140 - 5*i, draw_color);
    }
}
 
draw_set_halign(fa_left);
 
//include alt. name
textDraw(temp_x + 2, temp_y + 124 - 5*(ceil(array_length(alt_name)/16)-1), "fName", c_white, 0, 1000, 1, true, 1, "" + (alt_cur < 9 ? "" : "") + string(alt_cur+1) + ": " + alt_name[alt_cur]);
 
//exclude alt. name
//textDraw(temp_x + 2, temp_y + 124, "fName", c_white, 0, 1000, 1, true, 1, "Alt. " + (alt_cur < 9 ? "0" : "") + string(alt_cur + 1));

muno_event_type = 6;
user_event(14);
#define textDraw(x, y, font, color, lineb, linew, scale, outline, alpha, string)
 
draw_set_font(asset_get(argument[2]));
 
if argument[7]{ //outline. doesn't work
    for (i = -1; i < 2; i++){
        for (j = -1; j < 2; j++){
            draw_text_ext_transformed_color(argument[0] + i * 2, argument[1] + j * 2, argument[9], argument[4], argument[5], argument[6], argument[6], 0, c_black, c_black, c_black, c_black, 1);
        }
    }
}
 
draw_text_ext_transformed_color(argument[0], argument[1], argument[9], argument[4], argument[5], argument[6], argument[6], 0, argument[3], argument[3], argument[3], argument[3], argument[8]);
 
return string_width_ext(argument[9], argument[4], argument[5]);
 
 
 
#define rectDraw(x1, y1, x2, y2, color)
 
draw_rectangle_color(argument[0], argument[1], argument[2], argument[3], argument[4], argument[4], argument[4], argument[4], false);