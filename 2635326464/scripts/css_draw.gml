var alt = get_player_color(player);

if (alt == 20){
	draw_sprite_ext(sprite_get("background_css"),0,x+8,y+8,2,2,0,-1,1);
	draw_sprite_ext(sprite_get("kart_1_css"),0,x+8,y+8,2,2,0,-1,1);
}

if (alt == 19){
	draw_sprite_ext(sprite_get("background_css"),0,x+8,y+8,2,2,0,-1,1);
	draw_sprite_ext(sprite_get("kart_2_css"),0,x+8,y+8,2,2,0,-1,1);
}

//Fancy CSS template by Muno
//Put in css_draw.gml
 
var temp_x = x + 8;
var temp_y = y + 9;
 
var num_alts = 20;
var alt_cur = get_player_color(player);

//Alt name init. var doesn't work with arrays lol
 
alt_name[0]  = "Default";
alt_name[1]  = "Default + Red Kart";
alt_name[2]  = "Blue Shy Guy";
alt_name[3]  = "Black Shy Guy";
alt_name[4]  = "Green Shy Guy";
alt_name[5]  = "Yellow Shy Guy";
alt_name[6]  = "White Shy Guy";
alt_name[7]  = "Dark Blue Shy Guy";
alt_name[8]  = "Pink Shy Guy";
alt_name[9]  = "Orange Shy Guy";
alt_name[10] = "Purple Shy Guy";
alt_name[11] = "Early Access";
alt_name[12] = "Abyss";
alt_name[13] = "Boo Guy";
alt_name[14] = "Ghoul Guy";
alt_name[15] = "Shy Soul";
alt_name[16] = "Shuichi Saihara";
alt_name[17] = "Shy Guy (Ninja)";
alt_name[18] = "Shy Guy (Pastry Chef)";
alt_name[19] = "Shy Guy (Golden)";
alt_name[20] = "Red Kart";
alt_name[21] = "Black Kart";

 
//Patch
 
draw_set_halign(fa_left);
 
//Alt
 
rectDraw(temp_x, temp_y + 135, temp_x + 201, temp_y + 142, c_black);
 
for(i = 0; i < num_alts; i++){
    var draw_color = (i == alt_cur) ? c_white : c_gray;
    var draw_x = temp_x + 2 + 10 * i;
    rectDraw(draw_x, temp_y + 137, draw_x + 7, temp_y + 140, draw_color);
}
 
draw_set_halign(fa_left);

//include alt. name
textDraw(temp_x + 2, temp_y + 124, "fName", c_white, 0, 1000, 1, true, 1, "" + (alt_cur < 9 ? "" : "") + string(" ") + "" + alt_name[alt_cur]);
 
//exclude alt. name
//textDraw(temp_x + 2, temp_y + 124, "fName", c_white, 0, 1000, 1, true, 1, "" + (alt_cur < 9 ? "" : "") + string(""));
 
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