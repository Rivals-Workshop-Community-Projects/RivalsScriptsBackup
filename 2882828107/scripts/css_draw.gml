//ranibow sprimkle
if !("hue" in self) hue = 0
if get_player_color(player) = 16 {
	hue+=1
	if hue>255 hue-=255;
	//make hue shift every step + loop around

	var color_rgb1=make_color_rgb(250, 160, 160);
	var color_rgb2=make_color_rgb(255, 62, 62);
	var color_rgb3=make_color_rgb(170, 0, 0);
	//make a gamemaker color variable using chosen color
	var hue1=(color_get_hue(color_rgb1)+hue) mod 255;
	var hue2=(color_get_hue(color_rgb2)+hue) mod 255;
	var hue3=(color_get_hue(color_rgb3)+hue) mod 255;
	//shift that colour by Hue, make sure it also loops
	var color_hsv1=make_color_hsv(hue1,color_get_saturation(color_rgb1),color_get_value(color_rgb1)); 
	var color_hsv2=make_color_hsv(hue2,color_get_saturation(color_rgb2),color_get_value(color_rgb2)); 
	var color_hsv3=make_color_hsv(hue3,color_get_saturation(color_rgb3),color_get_value(color_rgb3));
	//make a gamemaker color variable using the new hue
	set_color_profile_slot(get_player_color(player),0,color_get_red(color_hsv2),color_get_green(color_hsv2),color_get_blue(color_hsv2));
	set_color_profile_slot(get_player_color(player),1,color_get_red(color_hsv3),color_get_green(color_hsv3),color_get_blue(color_hsv3));
	set_color_profile_slot(get_player_color(player),2,color_get_red(color_hsv1),color_get_green(color_hsv1),color_get_blue(color_hsv1));
	set_color_profile_slot(get_player_color(player),5,color_get_red(color_hsv1),color_get_green(color_hsv1),color_get_blue(color_hsv1));
	set_color_profile_slot(get_player_color(player),6,color_get_red(color_hsv2),color_get_green(color_hsv2),color_get_blue(color_hsv2));
	set_color_profile_slot(get_player_color(player),7,color_get_red(color_hsv3),color_get_green(color_hsv3),color_get_blue(color_hsv3));
	}
init_shader();

if get_player_color(player) = 5 {
	hue+=1
	if hue>255 hue-=255;
	//make hue shift every step + loop around

	var color_rgb1=make_color_rgb(230, 216, 163);
	var color_rgb2=make_color_rgb(111, 202, 231);
	var color_rgb3=make_color_rgb(182, 114, 221);
	//make a gamemaker color variable using chosen color
	var hue1=(color_get_hue(color_rgb1)+hue) mod 255;
	var hue2=(color_get_hue(color_rgb2)+hue) mod 255;
	var hue3=(color_get_hue(color_rgb3)+hue) mod 255;
	//shift that colour by Hue, make sure it also loops
	var color_hsv1=make_color_hsv(hue1,color_get_saturation(color_rgb1),color_get_value(color_rgb1)); 
	var color_hsv2=make_color_hsv(hue2,color_get_saturation(color_rgb2),color_get_value(color_rgb2)); 
	var color_hsv3=make_color_hsv(hue3,color_get_saturation(color_rgb3),color_get_value(color_rgb3));
	//make a gamemaker color variable using the new hue
	set_color_profile_slot(get_player_color(player),0,color_get_red(color_hsv2),color_get_green(color_hsv2),color_get_blue(color_hsv2));
	set_color_profile_slot(get_player_color(player),1,color_get_red(color_hsv3),color_get_green(color_hsv3),color_get_blue(color_hsv3));
	set_color_profile_slot(get_player_color(player),5,color_get_red(color_hsv1),color_get_green(color_hsv1),color_get_blue(color_hsv1));
	set_color_profile_slot(get_player_color(player),6,color_get_red(color_hsv2),color_get_green(color_hsv2),color_get_blue(color_hsv2));
	set_color_profile_slot(get_player_color(player),7,color_get_red(color_hsv3),color_get_green(color_hsv3),color_get_blue(color_hsv3));
	}
init_shader();

var temp_x = x + 8;
var temp_y = y + 9;

var num_alts = 32;
var alt_cur = get_player_color(player);
 
 
//Alt name init. var doesn't work with arrays lol
 
alt_name[0]  = "Default";
alt_name[1]  = "Jalapeño";
alt_name[2]  = "Chilly";
alt_name[3]  = "Jack-o-Lantern";
alt_name[4]  = "Grave Buster";
alt_name[5]  = "Hypno-shroom";
alt_name[6]  = "Abyss";
alt_name[7]  = "Heaven";
alt_name[8]  = "Anomaly";
alt_name[9]  = "Vulnerable";
alt_name[10]  = "Disguised";
alt_name[11]  = "Shadowy";
alt_name[12]  = "Crowned";
alt_name[13]  = "Infected";
alt_name[14]  = "Outta Sight";
alt_name[15]  = "Ruinous";
alt_name[16]  = "Spectral";
alt_name[17]  = "Infamous";
alt_name[18]  = "Protoplast";
alt_name[19]  = "Transcendence";
alt_name[20]  = "Flaming Hot";
alt_name[21]  = "Namesake";
alt_name[22]  = "Unwilling";
alt_name[23]  = "Blossoming";
alt_name[24]  = "Twilight";
alt_name[25]  = "Eldritch";
alt_name[26]  = "Hexchained";
alt_name[27]  = "Remnant";
alt_name[28]  = "Warden";
alt_name[29]  = "Cryptic";
alt_name[30]  = "Static";
alt_name[31]  = "Smoldering";
 
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