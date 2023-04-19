//Fancy CSS template by Muno
//32 Alt code stolen from Kris, if you steal this keep the chain going :)
 
alt_cur = get_player_color(player);

//stole the coords from mariokart soz lmao
switch get_player_color(player) {
case 2:
draw_sprite_ext(sprite_get("charselect_alts"),1,x+8,y+8,2,2,0,-1,1);
set_ui_element( UI_HUD_ICON, sprite_get( "hud" ));
set_ui_element( UI_HUDHURT_ICON, sprite_get( "hudhurt" ));
break;
case 3:
draw_sprite_ext(sprite_get("charselect_alts"),2,x+8,y+8,2,2,0,-1,1);
set_ui_element( UI_HUD_ICON, sprite_get( "hud" ));
set_ui_element( UI_HUDHURT_ICON, sprite_get( "hudhurt" ));
break;
case 4:
case 27:
draw_sprite_ext(sprite_get("charselect_alts"),3,x+8,y+8,2,2,0,-1,1);
set_ui_element( UI_HUD_ICON, sprite_get( "hud" ));
set_ui_element( UI_HUDHURT_ICON, sprite_get( "hudhurt" ));
break;
case 5:
draw_sprite_ext(sprite_get("charselect_alts"),4,x+8,y+8,2,2,0,-1,1);
set_ui_element( UI_HUD_ICON, sprite_get( "hud" ));
set_ui_element( UI_HUDHURT_ICON, sprite_get( "hudhurt" ));
break;
case 10:
case 11:
case 12:
case 13:
draw_sprite_ext(sprite_get("charselect_alts"),0,x+8,y+8,2,2,0,-1,1);
set_ui_element( UI_HUD_ICON, sprite_get( "hud_outline" ));
set_ui_element( UI_HUDHURT_ICON, sprite_get( "hudhurt_outline" ));
break;
default:
set_ui_element( UI_HUD_ICON, sprite_get( "hud" ));
set_ui_element( UI_HUDHURT_ICON, sprite_get( "hudhurt" ));
break;
}
 
//stolen from ASDF Guy which stole it from Kirby, if you steal this keep the chain going
if !("hue" in self) hue = 0
if get_player_color(player) = 24 {
	hue+=.5 
	if hue>255 hue-=255;
	//make hue shift every step + loop around

	color_rgb=make_color_rgb(96, 149, 255);
	//make a gamemaker color variable using kirby's default color (body)
	hue2=(color_get_hue(color_rgb)+hue) mod 255;
	//shift that colour by Hue, make sure it also loops
	color_hsv=make_color_hsv(hue2,color_get_saturation(color_rgb),color_get_value(color_rgb)); 
	//make a gamemaker color variable using the new hue
	set_color_profile_slot(24,0,color_get_red(color_hsv),color_get_green(color_hsv),color_get_blue(color_hsv));
	//set the new color using rgb values from the gamemaker color
	
		color_rgb=make_color_rgb(82, 89, 211);
	hue2=(color_get_hue(color_rgb)+hue) mod 255;
	color_hsv=make_color_hsv(hue2,color_get_saturation(color_rgb),color_get_value(color_rgb)); 
	set_color_profile_slot(24,1,color_get_red(color_hsv),color_get_green(color_hsv),color_get_blue(color_hsv));
	
		color_rgb=make_color_rgb(96, 149, 255);
	hue2=(color_get_hue(color_rgb)+hue) mod 255;
	color_hsv=make_color_hsv(hue2,color_get_saturation(color_rgb),color_get_value(color_rgb)); 
	set_color_profile_slot(24,2,color_get_red(color_hsv),color_get_green(color_hsv),color_get_blue(color_hsv));
	
		color_rgb=make_color_rgb(82, 89, 211);
	hue2=(color_get_hue(color_rgb)+hue) mod 255;
	color_hsv=make_color_hsv(hue2,color_get_saturation(color_rgb),color_get_value(color_rgb)); 
	set_color_profile_slot(24,3,color_get_red(color_hsv),color_get_green(color_hsv),color_get_blue(color_hsv));
	
		color_rgb=make_color_rgb(39, 16, 153);
	hue2=(color_get_hue(color_rgb)+hue) mod 255;
	color_hsv=make_color_hsv(hue2,color_get_saturation(color_rgb),color_get_value(color_rgb)); 
	set_color_profile_slot(24,4,color_get_red(color_hsv),color_get_green(color_hsv),color_get_blue(color_hsv));
	
		color_rgb=make_color_rgb(253, 255, 255);
	hue2=(color_get_hue(color_rgb)+hue) mod 255;
	color_hsv=make_color_hsv(hue2,color_get_saturation(color_rgb),color_get_value(color_rgb)); 
	set_color_profile_slot(24,5,color_get_red(color_hsv),color_get_green(color_hsv),color_get_blue(color_hsv));
	
		color_rgb=make_color_rgb(255, 144, 15);
	hue2=(color_get_hue(color_rgb)+hue) mod 255;
	color_hsv=make_color_hsv(hue2,color_get_saturation(color_rgb),color_get_value(color_rgb)); 
	set_color_profile_slot(24,6,color_get_red(color_hsv),color_get_green(color_hsv),color_get_blue(color_hsv));
	
		color_rgb=make_color_rgb(218, 86, 16);
	hue2=(color_get_hue(color_rgb)+hue) mod 255;
	color_hsv=make_color_hsv(hue2,color_get_saturation(color_rgb),color_get_value(color_rgb)); 
	set_color_profile_slot(24,7,color_get_red(color_hsv),color_get_green(color_hsv),color_get_blue(color_hsv));
}

init_shader();

//Alt

rectDraw(temp_x, temp_y + 130, temp_x + 161, temp_y + 142, c_black);
 
for(var i = 0; i < ceil(array_length(alt_name)/16); i++){
    for(var j = 0; j < min(array_length(alt_name)-i*16, 16); j++){
        var draw_color = (j+16*i == alt_cur) ? c_white : c_gray;
        var draw_x = temp_x + 2 + 10 * j;
        rectDraw(draw_x, temp_y + 137 - 5*i, draw_x + 7, temp_y + 140 - 5*i, draw_color);
    }
}
 
draw_set_halign(fa_left);

//include alt. name
textDraw(temp_x + 2, temp_y + 119, "fName", c_white, 0, 1000, 1, true, 1, "" + string(alt_cur + 1) + ": " + alt_name[alt_cur]);
 
 
#define textDraw(x, y, font, color, lineb, linew, scale, outline, alpha, string)
 
draw_set_font(asset_get(argument[2]));
 
if argument[7]{ //outline. doesn't work lol (but it doessssss)
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