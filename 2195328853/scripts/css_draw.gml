patch_ver = "1.67";

if (get_player_color( player ) == 7){
	draw_sprite_ext(sprite_get("charselect_ghostie"),1,x+8,y+8,2,2,0,-1,1);
}else if (get_player_color( player ) == 8){
	draw_sprite_ext(sprite_get("charselect_ghostking"),1,x+8,y+8,2,2,0,-1,1);
}else if (get_player_color( player ) == 16){
	draw_sprite_ext(sprite_get("charselect_lad"),1,x+8,y+8,2,2,0,-1,1);
}

var temp_x = x + 8;
var temp_y = y + 9;

var num_alts = 16;
var alt_cur = get_player_color(player);

alt_name[0]  = "Default";
alt_name[1]  = "Red";
alt_name[2]  = "Purple";
alt_name[3]  = "B&W";
alt_name[4]  = "Matt";
alt_name[5]  = "Aria";
alt_name[6]  = "Cosmar";
alt_name[7]  = "Ghostie";
alt_name[8]  = "Ghost King";
alt_name[9]  = "Toadie";
alt_name[10]  = "BlobDev";
alt_name[11]  = "BGS";
alt_name[12]  = "BGW";
alt_name[13]  = "NES";
alt_name[14]  = "Star Warrior";
alt_name[15]  = "Prince of Pufftop";
alt_name[16]  = "Lad";
alt_name[17]  = "G Devil";
alt_name[18]  = "Ceele";
alt_name[19]  = "Green Goo";
alt_name[20]  = "Orange Slime";
alt_name[21]  = "Sky";
alt_name[22]  = "Prober";
alt_name[23]  = "Box God";
alt_name[24]  = "Cubed";

//Patch
draw_set_halign(fa_left);
textDraw(temp_x + 2, temp_y + 32, "fName", c_white, 0, 1000, 1, true, 1, "VER. " + patch_ver);
//textDraw(temp_x + 2, temp_y + 50, "fName", c_white, 0, 1000, 1, true, 1, patch_day + " " + patch_month);

//alt
rectDraw(temp_x, temp_y + 135, temp_x + 201, temp_y + 142, c_black);
for(i = 0; i < num_alts; i++){
	var draw_color = (i == alt_cur) ? c_white : c_gray;
	var draw_x = temp_x + 2 + 8 * i;
	rectDraw(draw_x, temp_y + 137, draw_x + 5, temp_y + 140, draw_color);
}
draw_set_halign(fa_left);

//alt name
textDraw(temp_x + 2, temp_y + 124, "fName", c_white, 0, 1000, 1, true, 1, "Alt. " + string(alt_cur + 1) + ": " + alt_name[alt_cur]);

#define textDraw(x, y, font, color, lineb, linew, scale, outline, alpha, string)

draw_set_font(asset_get(argument[2]));

if argument[7]{ //text outline
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