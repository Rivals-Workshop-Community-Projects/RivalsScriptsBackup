/*
if !("hue" in self) hue = 0
if get_player_color(player) = 19 {
//remember rivals starts with 0
	hue+=1 
	if hue>255 hue-=255;
	//make hue shift every step + loop around
 
	color_rgb=make_color_rgb(255, 0, 0);
	//make a gamemaker color variable using kirby's default color (body)
	hue2=(color_get_hue(color_rgb)+hue) mod 255;
	//shift that colour by Hue, make sure it also loops
	color_hsv=make_color_hsv(hue2,color_get_saturation(color_rgb),color_get_value(color_rgb)); 
	//make a gamemaker color variable using the new hue
	set_color_profile_slot(19, 4,color_get_red(color_hsv),color_get_green(color_hsv),color_get_blue(color_hsv));
	//set the new color using rgb values from the gamemaker color
    }

//Keep repeating for every slot
init_shader();
*/
//idk what all that code is above

var temp_x = x + 8;
var temp_y = y + 9;
 
var num_alts = 32;
var alt_cur = get_player_color(player);

//Alt name init. var doesn't work with arrays
 
alt_name[0]  = "Kirby";
alt_name[1]  = "Mirror Yellow";
alt_name[2]  = "Mirror Red";
alt_name[3]  = "Mirror Green";
alt_name[4]  = "Ocean Blue";
alt_name[5]  = "Smashing Orange";
alt_name[6]  = "Rider Green";
alt_name[7]  = "Rider Purple";
alt_name[8]  = "Rider Brown";
alt_name[9]  = "Rider White";
alt_name[10] = "Spray Carbon";
alt_name[11] = "Spray Ivory";
alt_name[12] = "Spray Snow";
alt_name[13] = "Spray Cherry";
alt_name[14] = "Mirror's Shadow";
alt_name[15] = "Fighter's Shadow";
alt_name[16] = "Common Foe";
alt_name[17] = "Lord of the Trees";
alt_name[18] = "Block Pusher";
alt_name[19] = "Golden";
alt_name[20] = "Legendary Machine";
alt_name[21] = "Hand-Drawn";
alt_name[22] = "Hammer King";
alt_name[23] = "Lone Swordsman";
alt_name[24] = "Friendly Matter";
alt_name[25] = "Jester's Betrayal";
alt_name[26] = "Soul of the Art";
alt_name[27] = "Soul of the Crown";
alt_name[28] = "Soul of the System";
alt_name[29] = "Soul of Everything";
alt_name[30] = "Trans Rights!!!";
alt_name[31] = "Adventure Awaits!";
 
//Alt
 
//rectDraw(temp_x, temp_y + 135, temp_x + 201, temp_y + 142, c_black);
 
for(i = 0; i < num_alts; i++){
    //var draw_color = (i == alt_cur) ? c_white : c_gray;
    //var draw_x = temp_x + 2 + 10 * i;
    //rectDraw(draw_x, temp_y + 137, draw_x + 7, temp_y + 140, draw_color);
}
 
draw_set_halign(fa_left);

shader_end();

//include alt. name
//textDraw(temp_x + 2, temp_y + 130, "fName", c_white, 0, 1000, 1, true, 1, "" + (alt_cur < 9 ? "" : "") + alt_name[alt_cur]);
textDraw(temp_x + 2 + ((player==0)?32:0), temp_y + 130, "fName", c_white, 0, 1000, 1, true, 1, "" + (alt_cur < 9 ? "" : "") + string(alt_cur + 1) + ": " + alt_name[alt_cur]);
//exclude alt. name
//textDraw(temp_x + 2, temp_y + 124, "fName", c_white, 0, 1000, 1, true, 1, "Alt. " + (alt_cur < 9 ? "0" : "") + string(alt_cur + 1));

shader_end();

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
