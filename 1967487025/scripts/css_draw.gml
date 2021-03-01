//
//var temp_x = 23 + 238 * (player - 1);
//var temp_y = 325;

//Rainbow Code, from Anguish and the Kirby team
//if get_player_color(player) = 13 {
if !("hue" in self) hue = 0;
	
	hue+=1 if hue>255 hue-=255;
	set_color_profile_slot(13, 0, 255 + hue, 0, 0 );
	//make hue shift every step + loop around
	
	color_rgb=make_color_rgb(246, 19, 19);
	//make a gamemaker color variable using kirby's default color (body)
	hue2=(color_get_hue(color_rgb)+hue) mod 255;
	//shift that colour by Hue, make sure it also loops
	color_hsv=make_color_hsv(hue2,color_get_saturation(color_rgb),color_get_value(color_rgb)); 
	//make a gamemaker color variable using the new hue
	set_color_profile_slot(13,0,color_get_red(color_hsv),color_get_green(color_hsv),color_get_blue(color_hsv));
	//set the new color using rgb values from the gamemaker color
	alt_color[13] = color_hsv;


	color_rgb=make_color_rgb(248, 184, 248);
	//make a gamemaker color variable using kirby's default color (feet)
	//hue2=(color_get_hue(color_rgb)+hue) mod 255;
	//kirby's feet keep the same hue as his skin
	color_hsv=make_color_hsv(hue2,color_get_saturation(color_rgb),color_get_value(color_rgb)); 
	//make a gamemaker color variable using the new hue
	set_color_profile_slot(13,2,color_get_red(color_hsv),color_get_green(color_hsv),color_get_blue(color_hsv));
	//set the new color using rgb values from the gamemaker color
	color_rgb=make_color_rgb(178, 44, 115);
	//make a gamemaker color variable using kirby's default color (feet)
	//hue2=(color_get_hue(color_rgb)+hue) mod 255;
	//kirby's feet keep the same hue as his skin
	color_hsv=make_color_hsv(hue2,color_get_saturation(color_rgb),color_get_value(color_rgb)); 
	//make a gamemaker color variable using the new hue
	set_color_profile_slot(13,3,color_get_red(color_hsv),color_get_green(color_hsv),color_get_blue(color_hsv));
	//set the new color using rgb values from the gamemaker color
	color_rgb=make_color_rgb(0, 101, 238);
	//make a gamemaker color variable using kirby's default color (feet)
	//hue2=(color_get_hue(color_rgb)+hue) mod 255;
	//kirby's feet keep the same hue as his skin
	color_hsv=make_color_hsv(hue2,color_get_saturation(color_rgb),color_get_value(color_rgb)); 
	//make a gamemaker color variable using the new hue
	set_color_profile_slot(13,4,color_get_red(color_hsv),color_get_green(color_hsv),color_get_blue(color_hsv));
	//set the new color using rgb values from the gamemaker color
	
	
//	}

init_shader();


//Credit to Muno
var temp_x = x + 8;
var temp_y = y + 9;
 
patch_ver = "4.7";
patch_day = "21";
patch_month = "FEB";
 
var num_alts = 15;
var alt_cur = get_player_color(player);


//Alt name init. var doesn't work with arrays lol
 
alt_name[0]  = "Shadow";
alt_name[1]  = "Ryphte";
alt_name[3]  = "Hero Shadow";
alt_name[14]  = "Chaos Shadow";
alt_name[4]  = "Eclipse";
alt_name[5]  = "Coldsteel";
alt_name[6]  = "Super Shadow";
alt_name[7]  = "Shadic";
alt_name[8]  = "Grey Android";
alt_name[9]  = "Mephiles";
alt_name[10] = "Rouge";
alt_name[11] = "Android";
alt_name[12] = "Blaze";
alt_name[13] = "Rainbow";
alt_name[2] = "Seggo";
//alt_name[15] = "";


for(i = 0; i < num_alts; i++){
switch (i) {
	case 11: // Android
	boost_color = $00a2d7;
	break;
	case 9: // Mephiles
	boost_color = $820170;
	break;
	case 8: // Grey Android
	boost_color = $2e8f2d;
	break;
	case 10: // Rouge
	boost_color = $df00df;
	break;
	case 3: // Hero
	boost_color = $f7c200;
	break;
	case 14: // Chaos
	boost_color = $0000b4;
	break;
	case 7: // Shadic
	boost_color = make_color_rgb(102, 255, 255);
	break;
	case 4: // Eclipse
	boost_color = make_color_rgb(62, 94, 122);
	break;
	case 5: // Coldsteel
	boost_color = $82224e;
	break;
	case 12: // Blaze
	boost_color = make_color_rgb(53, 57, 82);
	break;
	case 6: // Super
	boost_color = make_color_rgb(198, 195, 132);
	break;
	case 1: //Rhyphte
	boost_color = $97a800;
	break;
	case 13:
	break;
	case 2: //Seggo
	boost_color = $a3a3a3;
	break;
	default:
	boost_color = make_color_rgb(246, 19, 19);
	break;
}
if i != 13 alt_color[i] = boost_color;
}






if (get_player_color(player) == 5){
    for(i = 0; i < 6; i++){
        set_character_color_shading(i, 0.2);
    }
}

//if get_color_profile_slot_r(3, 0) == 255 {
//    sound_play(sound_get("true power"));
//    set_color_profile_slot(3, 0, 256, 0, 0 );
//}
//Patch
 
draw_set_halign(fa_left);

textDraw(temp_x + 2, temp_y - 30, "medFont", c_white, 0, 1000, 1, true, 1, "VER. " + patch_ver);
 
textDraw(temp_x + 80, temp_y - 22, "fName", c_white, 0, 1000, 1, true, 1, patch_day + " " + patch_month);

//textDraw(temp_x + 2, temp_y + 200, "fName", c_white, 0, 1000, 1, true, 1, "PRESS THE GODDAMN i BUTTON");
 
//Alt
 
rectDraw(temp_x, temp_y + 135, temp_x + 201, temp_y + 142, c_black);
 
for(i = 0; i < num_alts; i++){
    var draw_color = (i == alt_cur) ? c_white : alt_color[i];
    var draw_x = temp_x + 2 + 10 * i;
    rectDraw(draw_x, temp_y + 137, draw_x + 7, temp_y + 140, draw_color);
}
 
draw_set_halign(fa_left);
textDraw(temp_x + 2, temp_y + 124, "fName", c_white, 0, 1000, 1, true, 1, "Alt. " + (alt_cur < 9 ? "0" : "") + string(alt_cur + 1) + ": " + alt_name[alt_cur]);
 

 
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