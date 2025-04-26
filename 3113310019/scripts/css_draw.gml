//ranibow sprimkle
if !("hue" in self) hue = 0
if get_player_color(player) = 15 {
	hue+=1
	if hue>255 hue-=255;
	//make hue shift every step + loop around
	var color_rgb1=make_color_rgb(255, 0, 0);
	var color_rgb2=make_color_rgb(255, 80, 80);
	var color_rgb3=make_color_rgb(128, 40, 40);
	var color_rgb4=make_color_rgb(166, 110, 110);
	var color_rgb5=make_color_rgb(114, 80, 80);
	var color_rgb6=make_color_rgb(85, 65, 65);
	var color_rgb7=make_color_rgb(60, 53, 53);
	//make a gamemaker color variable using chosen color
	var hue1=(color_get_hue(color_rgb1)+hue) mod 255;
	var hue2=(color_get_hue(color_rgb2)+hue) mod 255;
	var hue3=(color_get_hue(color_rgb3)+hue) mod 255;
	var hue4=(color_get_hue(color_rgb4)+hue) mod 255;
	var hue5=(color_get_hue(color_rgb5)+hue) mod 255;
	var hue6=(color_get_hue(color_rgb6)+hue) mod 255;
	var hue7=(color_get_hue(color_rgb7)+hue) mod 255;
	//shift that colour by Hue, make sure it also loops
	var color_hsv1=make_color_hsv(hue1,color_get_saturation(color_rgb1),color_get_value(color_rgb1)); 
	var color_hsv2=make_color_hsv(hue2,color_get_saturation(color_rgb2),color_get_value(color_rgb2)); 
	var color_hsv3=make_color_hsv(hue3,color_get_saturation(color_rgb3),color_get_value(color_rgb3));
	var color_hsv4=make_color_hsv(hue4,color_get_saturation(color_rgb4),color_get_value(color_rgb4)); 
	var color_hsv5=make_color_hsv(hue5,color_get_saturation(color_rgb5),color_get_value(color_rgb5));
	var color_hsv6=make_color_hsv(hue6,color_get_saturation(color_rgb6),color_get_value(color_rgb6)); 
	var color_hsv7=make_color_hsv(hue7,color_get_saturation(color_rgb7),color_get_value(color_rgb7));
	//make a gamemaker color variable using the new hue
	set_color_profile_slot(get_player_color(player),0,color_get_red(color_hsv1),color_get_green(color_hsv1),color_get_blue(color_hsv1));
	set_color_profile_slot(get_player_color(player),6,color_get_red(color_hsv2),color_get_green(color_hsv2),color_get_blue(color_hsv2));
	set_color_profile_slot(get_player_color(player),7,color_get_red(color_hsv3),color_get_green(color_hsv3),color_get_blue(color_hsv3));
	set_color_profile_slot(get_player_color(player),1,color_get_red(color_hsv4),color_get_green(color_hsv4),color_get_blue(color_hsv4));
	set_color_profile_slot(get_player_color(player),2,color_get_red(color_hsv5),color_get_green(color_hsv5),color_get_blue(color_hsv5));
	set_color_profile_slot(get_player_color(player),3,color_get_red(color_hsv6),color_get_green(color_hsv6),color_get_blue(color_hsv6));
	set_color_profile_slot(get_player_color(player),4,color_get_red(color_hsv7),color_get_green(color_hsv7),color_get_blue(color_hsv7));
	}
init_shader();

var temp_x = x + 8;
var temp_y = y + 9;
 
// ==================== GRAFFITI CSS_UPDATE  ======================
// change the value of this variable to reflect which alt has the graffiti taunt
var graffiti_alt = 17;

/* set sync'd variable if the player is currently using the graffiti alt
- some assembly may be required if you need to use the sync'd variable for other things, as well
- i suggest looking into bitwise operators if that's the case
- the sync'd variable is also called from:
    - set_attack.gml
    - css_draw.gml (not necessary, only used in this character to display which alt has the graffiti taunt)
*/
if get_player_color(player) == graffiti_alt {
    set_synced_var(player, true);
}
else {
    set_synced_var(player, false);
}
// ================================================================
 
var num_alts = 20;
var alt_cur = get_player_color(player);

seasonal_override = false;
color_overriden = -1;

patch_ver = " ";
patch_day = " ";
patch_month = " ";
 
var num_alts = 24;
var alt_cur = get_player_color(player);
 
 
//Alt name init. var doesn't work with arrays lol
 
alt_name[0]  = "Default";
alt_name[1]  = "Winter";
alt_name[2]  = "Coconut";
alt_name[3]  = "Berry";
alt_name[4]  = "Pepper";
alt_name[5]  = "Garlic";
alt_name[6]  = "Abyss";
alt_name[7]  = "Gameboy";
alt_name[8]  = "Puffy";
alt_name[9]  = "Explosive";
alt_name[10]  = "Dragon";
alt_name[11]  = "Buzz";
alt_name[12]  = "Open Tourney Golf";
alt_name[13]  = "the blue one";
alt_name[14]  = "Mimicry";
alt_name[15]  = "roygbiv";
alt_name[16]  = "Trendsetter";
alt_name[17]  = "Infamous";
alt_name[18]  = "Glistering";
alt_name[19]  = "Felon-pult";
alt_name[20]  = "Duality";
alt_name[21]  = "Suika";
alt_name[22]  = "Relic";
alt_name[23]  = "Imitated";
 
//Alt
 
rectDraw(temp_x, temp_y + 135, temp_x + 201, temp_y + 142, c_black);
var draw_y = -1;
for(i = 0; i < num_alts; i++){
	var draw_x = temp_x + 2 + 10 * i;
	if(i < 16){
		draw_y = 4;
	} else {
		draw_x -= temp_x * 7 + 6;
		draw_y = -1;
	}
    var draw_color = (i == alt_cur) ? c_white : c_gray;
    
    rectDraw(draw_x, temp_y + 137+draw_y, draw_x + 7, temp_y + 140+draw_y, draw_color);
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