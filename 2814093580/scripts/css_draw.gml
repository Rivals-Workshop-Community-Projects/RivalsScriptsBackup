//Fancy CSS template by Muno
//Put in css_draw.gml
 
	muno_event_type = 6;
	user_event(14);


if !("hue" in self) hue = 0
if get_player_color(player) = 27 {
//remember rivals starts with 0
	hue+=1 
	if hue>255 hue-=255;
	//make hue shift every step + loop around
 
	color_rgb=make_color_rgb(242, 7, 7);
	//make a gamemaker color variable using kirby's default color (body)
	hue2=(color_get_hue(color_rgb)+hue) mod 255;
	//shift that colour by Hue, make sure it also loops
	color_hsv=make_color_hsv(hue2,color_get_saturation(color_rgb),color_get_value(color_rgb)); 
	//make a gamemaker color variable using the new hue
set_color_profile_slot( 27, 3, color_get_red(color_hsv),color_get_green(color_hsv),color_get_blue(color_hsv)); //uses that variable to set the slot's new colours

set_color_profile_slot( 27, 6, color_get_red(color_hsv),color_get_green(color_hsv),color_get_blue(color_hsv));

set_color_profile_slot( 27, 0, color_get_red(color_hsv),color_get_green(color_hsv),color_get_blue(color_hsv));

	//set the new color using rgb values from the gamemaker color
 
 
	color_rgb=make_color_rgb(242, 7, 7);
	//make a gamemaker color variable using kirby's default color (feet)
	//hue2=(color_get_hue(color_rgb)+hue) mod 255;
	//kirby's feet keep the same hue as his skin
	color_hsv=make_color_hsv(hue2,color_get_saturation(color_rgb),color_get_value(color_rgb)); 
	//make a gamemaker color variable using the new hue
set_color_profile_slot( 27, 0, color_get_red(color_hsv),color_get_green(color_hsv),color_get_blue(color_hsv));
	//set the new color using rgb values from the gamemaker color
	}
//Keep repeating for every slot
init_shader();

var temp_x = x + 8;
var temp_y = y + 9;
 
patch_ver = "1.0";
patch_day = "04";
patch_month = "MAR";
 
var num_alts = 32;
var alt_cur = get_player_color(player);
 

 if get_player_color(player) == 9 
 {
	set_ui_element( UI_CHARSELECT, sprite_get( "charselect_grizz" ) );
 }
 else if get_player_color(player) == 12 
 {
	set_ui_element( UI_CHARSELECT, sprite_get( "charselect_picnic" ) );
 }
 else 
  {
	set_ui_element( UI_CHARSELECT, sprite_get( "charselect") );
 }
//Alt name init. var doesn't work with arrays lol
 
alt_name[0]  = "Default";
alt_name[1]  = "Winnie The Pooh";
alt_name[2]  = "Baloo";
alt_name[3]  = "Carebears";
alt_name[4]  = "Yogi Bear";
alt_name[5]  = "Moogle";
alt_name[6]  = "Gummmy Bear";
alt_name[7]  = "Skullgirls";
alt_name[8]  = "Camp Lazlo";
alt_name[9]  = "Mr. Grizz";
alt_name[10] = "Joylon";
alt_name[11] = "Amber Burmese";
alt_name[12] = "Gingham";
alt_name[13] = "Abyss";
alt_name[14] = "Gameboy";
alt_name[15] = "Ralsei";
alt_name[16] = "Begin To Hope";
alt_name[17] = "TRANS RIGHTS!!!";
alt_name[18] = "Gold";
alt_name[19] = "Penny Ling";
alt_name[20] = "Mug Moment";
alt_name[21] = "Cola";
alt_name[22] = "Skippy";
alt_name[23] = "Hunny Queen";
alt_name[24] = "Seasonal";
alt_name[25] = "Morpho Knight";
alt_name[26] = "Thive";
alt_name[27] = "Rainbow";
alt_name[28] = "Hamtaro";

 
 

 
 
 
//Alt
 

 
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
 
 
 

