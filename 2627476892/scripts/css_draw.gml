var temp_x = x + 8;
var temp_y = y + 9;
 
patch_ver = "1.19";
patch_day = "12";
patch_month = "JAN";
 
var num_alts = 31;
var alt_cur = get_player_color(player);
 
//Alt name init. var doesn't work with arrays lol
 
alt_name[0]  = "Lancer"; 
alt_name[1]  = "Diamonds"; 
alt_name[2]  = "Hearts"; 
alt_name[3]  = "Clubs"; 
alt_name[4]  = "Blue Person"; 
alt_name[5]  = "Toothpaste Boy"; 
alt_name[6]  = "Susie :)"; 
alt_name[7]  = "Something Terrible"; 
alt_name[8]  = "Vice Father"; 
alt_name[9]  = "Dad"; 
alt_name[10]  = "He lives in my basement";
alt_name[11]  = "Soft Cream"; 
alt_name[12]  = "Bluebird of Crappiness"; 
alt_name[13]  = "Girldad"; 
alt_name[14]  = "Big Shot"; 
alt_name[15]  = "Cold";
alt_name[16]  = "Repainted Boy";
alt_name[17]  = "skeleton man"; 
alt_name[18]  = "The original     Starwalker"; 
alt_name[19]  = "Prince of the Dark"; 
alt_name[20]  = "Game-Boy"; 
alt_name[21]  = "sans = Ness"; 
alt_name[22]  = "This guy smells REALLY bad"; 
alt_name[23]  = "Mean Bean"; 
alt_name[24]  = "The J in Jevil"; 
alt_name[25]  = "30 Minutes or Less"; 
alt_name[26]  = "Back in Business"; 
alt_name[27]  = "Cyber Shark";
alt_name[28]  = "Show me your Moves!"; 
alt_name[29]  = "Lancer Gaming"; 
alt_name[30]  = "Faster than Lancer"; 
 
//Patch
 
draw_set_halign(fa_left);

textDraw(temp_x + 130, temp_y + -12, "fName", c_white, 0, 1000, 1, true, 1, "VER");
textDraw(temp_x + 2, temp_y + 32, "fName", c_white, 0, 1000, 1, true, 1, patch_day + " " + patch_month);
draw_sprite(sprite_get("stockicon"),0,x+173,y+34);

 
 
 
//Alt

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

//GB Icon
if (get_player_color(player)==20){
        draw_sprite(sprite_get("special_icon"),1,x+10,y+56);
    }
    
//Abyss Icon
if (get_player_color(player)==19){
        draw_sprite(sprite_get("special_icon"),0,x+10,y+56);
    }
    
//Special Icon
if (get_player_color(player)== 28 || get_player_color(player)== 29){
        draw_sprite(sprite_get("special_icon"),2,x+10,y+56);
    }
    
//Doesn't work online
if (get_player_color(player)==31){
        textDraw(temp_x + 30, temp_y + 110 - 5*(ceil(array_length(alt_name)/16)-1), "fName", c_white, 0, 1000, 1, true, 1, "[Doesn't work online]");
    }

   
//rainbow 
if !("hue" in self) hue = 0
if get_player_color(player) = 29 {
//remember rivals starts with 0
	hue+=1 
	if hue>255 hue-=255;
	//make hue shift every step + loop around
 
	color_rgb=make_color_rgb(70, 115, 255);
	//make a gamemaker color variable using kirby's default color (body)
	hue2=(color_get_hue(color_rgb)+hue) mod 255;
	//shift that colour by Hue, make sure it also loops
	color_hsv=make_color_hsv(hue2,color_get_saturation(color_rgb),color_get_value(color_rgb)); 
	//make a gamemaker color variable using the new hue
	set_color_profile_slot(29, 0,color_get_red(color_hsv),color_get_green(color_hsv),color_get_blue(color_hsv));
	set_color_profile_slot(29, 5,color_get_red(color_hsv),color_get_green(color_hsv),color_get_blue(color_hsv));
	set_color_profile_slot(29, 6,color_get_red(color_hsv),color_get_green(color_hsv),color_get_blue(color_hsv));
	set_color_profile_slot(29, 7,color_get_red(color_hsv),color_get_green(color_hsv),color_get_blue(color_hsv));



	//set the new color using rgb values from the gamemaker color
 
 
	color_rgb=make_color_rgb(70, 115, 255);
	//make a gamemaker color variable using kirby's default color (feet)
	//hue2=(color_get_hue(color_rgb)+hue) mod 255;
	//kirby's feet keep the same hue as his skin
	color_hsv=make_color_hsv(hue2,color_get_saturation(color_rgb),color_get_value(color_rgb)); 
	//make a gamemaker color variable using the new hue
	set_color_profile_slot(29, 0,color_get_red(color_hsv),color_get_green(color_hsv),color_get_blue(color_hsv));
	set_color_profile_slot(29, 5,color_get_red(color_hsv),color_get_green(color_hsv),color_get_blue(color_hsv));
    set_color_profile_slot(29, 6,color_get_red(color_hsv),color_get_green(color_hsv),color_get_blue(color_hsv));
    set_color_profile_slot(29, 7,color_get_red(color_hsv),color_get_green(color_hsv),color_get_blue(color_hsv));
	//set the new color using rgb values from the gamemaker color
	}
//Keep repeating for every slot
init_shader();


muno_event_type = 6;
user_event(14);
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