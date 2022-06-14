//Fancy CSS template by Muno
//Put in css_draw.gml
 
var temp_x = x + 8;
var temp_y = y + 9;
 
var num_alts = 18;
var alt_cur = get_player_color(player);
 
 
alt_name[0]  = "Mr Molecule";
alt_name[1]  = "Clay model";
alt_name[2]  = "RED";
alt_name[3]  = "BLU";
alt_name[4]  = "Magicant";
alt_name[5]  = "Giygas";
alt_name[6]  = "Master Belch";
alt_name[7]  = "GHOST OF STARMAN";
alt_name[8]  = "Octobot";
alt_name[9]  = "Zombie";
alt_name[10]  = "Stinky Ghost";
alt_name[11]  = "Territorial";
alt_name[12]  = "Summers";
alt_name[13]  = "File Select";
alt_name[14]  = "Trans";
alt_name[15]  = "Bi-ology";
alt_name[16]  = "Non Bi-ology";
alt_name[17]  = "MORBY";
alt_name[18]  = "Starman Super";


 
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
textDraw(temp_x + 2, temp_y + 124 - 5*(ceil(array_length(alt_name)/16)-1), "fName", c_white, 0, 1000, 1, true, 1, "" + (alt_cur < 9 ? "0" : "") + string(alt_cur+1) + ": " + alt_name[alt_cur]);

 
user_event(12);
#define textDraw(x, y, font, color, lineb, linew, scale, outline, alpha, string)
 
draw_set_font(asset_get(argument[2]));
 
if argument[7]{ //outline. doesn't work lol
    for (var i = -1; i < 2; i++){
        for (var j = -1; j < 2; j++){
            draw_text_ext_transformed_color(argument[0] + i * 2, argument[1] + j * 2, argument[9], argument[4], argument[5], argument[6], argument[6], 0, c_black, c_black, c_black, c_black, 1);
        }
    }
}
 
draw_text_ext_transformed_color(argument[0], argument[1], argument[9], argument[4], argument[5], argument[6], argument[6], 0, argument[3], argument[3], argument[3], argument[3], argument[8]);
 
return string_width_ext(argument[9], argument[4], argument[5]);
 
 
 
#define rectDraw(x1, y1, x2, y2, color)
 
draw_rectangle_color(argument[0], argument[1], argument[2], argument[3], argument[4], argument[4], argument[4], argument[4], false);
 
 //deez nuts
 
 //deez swouows