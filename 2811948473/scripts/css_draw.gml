//Fancy CSS template by Muno
//Put in css_draw.gml
 
var temp_x = x + 8;
var temp_y = y + 9;
 
var num_alts = 32;
var alt_cur = get_player_color(player);
 
 
alt_name[0]  = "Mr Molecule";
alt_name[1]  = "Clay model";
alt_name[2]  = "RED";
alt_name[3]  = "BLU";
alt_name[4]  = "Magicant";
alt_name[5]  = "Eternal Tourist Trap";
alt_name[6]  = "Vengeful spirit";
alt_name[7]  = "Braaains";
alt_name[8]  = "Spoooky";
alt_name[9]  = "Wooody";
alt_name[10]  = "Happy Happy is blue";
alt_name[11]  = "Spiteful";
alt_name[12]  = "Not a bee!";
alt_name[13]  = "Nauseating";
alt_name[14]  = "Life is but a moment";
alt_name[15]  = "Ultimate evil";
alt_name[16]  = "Spankety!";
alt_name[17]  = "79. Au";
alt_name[18]  = "Ballistic Figure";
alt_name[19]  = "MORBY";
alt_name[20]  = "[1997]";
alt_name[21]  = "Transriffic";
alt_name[22]  = "Dio benedica l'italia";
alt_name[23]  = "Bi-ology";
alt_name[24]  = "Non Bi-ology";
alt_name[25]  = "OK desu ka?";
alt_name[26]  = "Mint flavor";
alt_name[27]  = "Strawberry flavor";
alt_name[28]  = "Banana flavor";
alt_name[29]  = "Peanut flavor";
alt_name[30]  = "Beginnings"
alt_name[31]  = "No problem here."
 
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
textDraw(temp_x + 2, temp_y + 135 - 5*(ceil(array_length(alt_name)/16)-1), "fName", c_white, 0, 1000, 1, true, 1, "" + (alt_cur < 9 ? "0" : "") + string(alt_cur+1) + ": " + alt_name[alt_cur]);

 
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
 
//im animated. my hearts B I G

if (!variable_instance_exists(self, "charselect_frame")) {
    charselect_frame = 0;
}
charselect_frame += 0.01;
draw_sprite(sprite_get("charselect"), charselect_frame, x + 8, y + 8);