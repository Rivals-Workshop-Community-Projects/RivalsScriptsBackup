var temp_x = x + 8;
var temp_y = y + 9;
 
seasonal_override = false;
color_overriden = -1;

patch_ver = " ";
patch_day = " ";
patch_month = " ";
 
var num_alts = 20;
var alt_cur = get_player_color(player);
 
 
//Alt name init. var doesn't work with arrays lol
 
alt_name[0]  = "Classic";
alt_name[1]  = "Snow";
alt_name[2]  = "Fire";
alt_name[3]  = "Sweet";
alt_name[4]  = "Electric";
alt_name[5]  = "Shadow";
alt_name[6]  = "Abyss";
alt_name[7]  = "Gameboy";
alt_name[8]  = "Snapdragon";
alt_name[9]  = "Mushroom";
alt_name[10]  = "Sweet Potato";
alt_name[11]  = "Undead";
alt_name[12]  = "Infamous";
alt_name[13]  = "Heatwave";
alt_name[14]  = "Plasma";
alt_name[15]  = "Vampire";
alt_name[16]  = "Cosmic";
alt_name[17]  = "Silver";
alt_name[18]  = "Gold";
alt_name[19]  = "Imitated";
alt_name[20]  = "Pretty";
alt_name[21]  = "Peatshooter";
alt_name[22]  = "Spunch";
alt_name[23]  = ".exe";

if (get_player_color(player) == 7){
	draw_sprite_ext(sprite_get("gb_css_overlay"),0,x + 8,y + 8, 2, 2, 0, -1, 1);
}
if (get_player_color(player) == 16){
	draw_sprite_ext(sprite_get("cosmic_charselect"),0,x + 8,y + 8, 2, 2, 0, -1, 1);
}
 
//Alt
 
rectDraw(temp_x, temp_y + 135, temp_x + 201, temp_y + 142, c_black);
 
for(i = 0; i < num_alts; i++){
    var draw_color = (i == alt_cur) ? c_white : c_gray;
    var draw_x = temp_x + 2 + 10 * i;
    rectDraw(draw_x, temp_y + 137, draw_x + 7, temp_y + 140, draw_color);
}
 
draw_set_halign(fa_left);
 
//include alt. name
textDraw(temp_x + 2, temp_y + 124, "fName", c_white, 0, 1000, 1, true, 1, "Alt. " + (alt_cur < 9 ? "0" : "") + string(alt_cur + 1) + ": " + alt_name[alt_cur]);
 
//exclude alt. name
//textDraw(temp_x + 2, temp_y + 124, "fName", c_white, 0, 1000, 1, true, 1, "Alt. " + (alt_cur < 9 ? "0" : "") + string(alt_cur + 1));
 
#define textDraw(x, y, font, color, lineb, linew, scale, outline, alpha, string)
 
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
 
 
 
#define rectDraw(x1, y1, x2, y2, color)
 
draw_rectangle_color(argument[0], argument[1], argument[2], argument[3], argument[4], argument[4], argument[4], argument[4], false);