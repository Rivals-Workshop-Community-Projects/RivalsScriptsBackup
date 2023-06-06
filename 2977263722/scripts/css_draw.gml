user_event(12);

temp_x = x + 8;
temp_y = y + 9;

//Fancy CSS template by Muno
//32 Alt code stolen from Kris, if you steal this keep the chain going :)

if alt != get_player_color(player) {
        fade_time = 6;
}

alt = get_player_color(player);


/*
//floppo voice toggle that i mostly referenced from pepis wright thank u mudkid xoxo
draw_sprite(voice_icon, voice_state+2, temp_x + 174, temp_y + 94);
draw_sprite(voice_icon, gay_alts, temp_x + 174, temp_y + 94);

set_synced_var(player, gay_alts);
*/

//print_debug(suppress_cursor);

if (get_instance_y(cursor_id) > temp_y && get_instance_y(cursor_id) < temp_y + 144 && get_instance_x(cursor_id) > temp_x +2 && get_instance_x(cursor_id) < temp_x + 204){
	fade_time = 1;
}

switch alt {
    case 1:
	    draw_sprite_ext(sprite_get("_css_chill"),0,x+8,y+8,2,2,0,-1,1);
		set_ui_element( UI_CHARSELECT, sprite_get( "_css_chill" ));
	break;
    case 2:
	    draw_sprite_ext(sprite_get("_css_scuttle"),0,x+8,y+8,2,2,0,-1,1);
		set_ui_element( UI_CHARSELECT, sprite_get( "_css_scuttle" ));
	break;
	case 3:
	    shader_end();
	    draw_sprite_ext(sprite_get("_css_galoomber"),0,x+8,y+8,2,2,0,-1,1);
		set_ui_element( UI_CHARSELECT, sprite_get( "_css_galoomber" ));
	break;
    case 12:
	    draw_sprite_ext(sprite_get("_css_bandage"),0,x+8,y+8,2,2,0,-1,1);
		set_ui_element( UI_CHARSELECT, sprite_get( "_css_bandage" ));
	break;
	case 13:
	    draw_sprite_ext(sprite_get("_css_puffer"),0,x+8,y+8,2,2,0,-1,1);
		set_ui_element( UI_CHARSELECT, sprite_get( "_css_puffer" ));
	break;
	case 26:
	    draw_sprite_ext(sprite_get("_css"),0,x+8,y+8,2,2,0,c_red,1);
		set_ui_element( UI_CHARSELECT, sprite_get( "_css" ));
	break;
	
	case 14:
	if !("hue" in self) hue = 0
	
	hue+=.5 
	if hue>255 hue-=255;
	//make hue shift every step + loop around

	color_rgb=make_color_rgb(253, 252, 255);
	//make a gamemaker color variable using kirby's default color (body)
	hue2=(color_get_hue(color_rgb)+hue) mod 255;
	//shift that colour by Hue, make sure it also loops
	color_hsv=make_color_hsv(hue2,color_get_saturation(color_rgb),color_get_value(color_rgb)); 
	//make a gamemaker color variable using the new hue
	set_color_profile_slot(14,0,color_get_red(color_hsv),color_get_green(color_hsv),color_get_blue(color_hsv));
	set_article_color_slot(0,color_get_red(color_hsv),color_get_green(color_hsv),color_get_blue(color_hsv));
	//set the new color using rgb values from the gamemaker color
	
		color_rgb=make_color_rgb(215, 196, 255);
	hue2=(color_get_hue(color_rgb)+hue) mod 255;
	color_hsv=make_color_hsv(hue2,color_get_saturation(color_rgb),color_get_value(color_rgb)); 
	set_color_profile_slot(14,1,color_get_red(color_hsv),color_get_green(color_hsv),color_get_blue(color_hsv));
	set_article_color_slot(1,color_get_red(color_hsv),color_get_green(color_hsv),color_get_blue(color_hsv));
	
		color_rgb=make_color_rgb(255, 92, 239);
	hue2=(color_get_hue(color_rgb)+hue) mod 255;
	color_hsv=make_color_hsv(hue2,color_get_saturation(color_rgb),color_get_value(color_rgb)); 
	set_color_profile_slot(14,2,color_get_red(color_hsv),color_get_green(color_hsv),color_get_blue(color_hsv));
	set_article_color_slot(1,color_get_red(color_hsv),color_get_green(color_hsv),color_get_blue(color_hsv));
	
		color_rgb=make_color_rgb(186, 35, 171);
	hue2=(color_get_hue(color_rgb)+hue) mod 255;
	color_hsv=make_color_hsv(hue2,color_get_saturation(color_rgb),color_get_value(color_rgb)); 
	set_color_profile_slot(14,3,color_get_red(color_hsv),color_get_green(color_hsv),color_get_blue(color_hsv));
	set_article_color_slot(1,color_get_red(color_hsv),color_get_green(color_hsv),color_get_blue(color_hsv));
	
		color_rgb=make_color_rgb(146, 92, 255);
	hue2=(color_get_hue(color_rgb)+hue) mod 255;
	color_hsv=make_color_hsv(hue2,color_get_saturation(color_rgb),color_get_value(color_rgb)); 
	set_color_profile_slot(14,4,color_get_red(color_hsv),color_get_green(color_hsv),color_get_blue(color_hsv));
	set_article_color_slot(1,color_get_red(color_hsv),color_get_green(color_hsv),color_get_blue(color_hsv));
	
		color_rgb=make_color_rgb(215, 196, 255);
	hue2=(color_get_hue(color_rgb)+hue) mod 255;
	color_hsv=make_color_hsv(hue2,color_get_saturation(color_rgb),color_get_value(color_rgb)); 
	set_color_profile_slot(14,5,color_get_red(color_hsv),color_get_green(color_hsv),color_get_blue(color_hsv));
	set_article_color_slot(1,color_get_red(color_hsv),color_get_green(color_hsv),color_get_blue(color_hsv));
	
		color_rgb=make_color_rgb(175, 135, 255);
	hue2=(color_get_hue(color_rgb)+hue) mod 255;
	color_hsv=make_color_hsv(hue2,color_get_saturation(color_rgb),color_get_value(color_rgb)); 
	set_color_profile_slot(14,6,color_get_red(color_hsv),color_get_green(color_hsv),color_get_blue(color_hsv));
	set_article_color_slot(1,color_get_red(color_hsv),color_get_green(color_hsv),color_get_blue(color_hsv));
	
		color_rgb=make_color_rgb(146, 92, 255);
	hue2=(color_get_hue(color_rgb)+hue) mod 255;
	color_hsv=make_color_hsv(hue2,color_get_saturation(color_rgb),color_get_value(color_rgb)); 
	set_color_profile_slot(14,7,color_get_red(color_hsv),color_get_green(color_hsv),color_get_blue(color_hsv));
	set_article_color_slot(1,color_get_red(color_hsv),color_get_green(color_hsv),color_get_blue(color_hsv));
	
	default:
	    draw_sprite_ext(sprite_get("_css"),0,x+8,y+8,2,2,0,-1,1);
		//this seems redundant (and is) but the CSS takes a few extra frames to swap the sprite with set_ui and this patches up that gap
	break;
	
}

init_shader();

//Alt
rectDraw(temp_x, temp_y + 130, temp_x + 161, temp_y + 142, c_black);
 
for(var i = 0; i < ceil(array_length(alt_name)/16); i++){
    for(var j = 0; j < min(array_length(alt_name)-i*16, 16); j++){
        var draw_color = (j+16*i == alt) ? c_white : c_gray;
        var draw_x = temp_x + 2 + 10 * j;
        rectDraw(draw_x, temp_y + 137 - 5*i, draw_x + 7, temp_y + 140 - 5*i, draw_color);
    }
}
 
draw_set_halign(fa_left);

//include alt. name
textDraw(temp_x + 2, temp_y + 119, "fName", c_white, 0, 1000, 1, true, fade_time, "" + string(alt + 1) + ": " + alt_name[alt]);


fade_time -= 0.1;
 
#define textDraw(x, y, font, color, lineb, linew, scale, outline, alpha, string)
 
draw_set_font(asset_get(argument[2]));
 
if argument[7]{ //outline. doesn't work lol (but it doessssss)
    for (var i = -1; i < 2; i++){
        for (var j = -1; j < 2; j++){
            draw_text_ext_transformed_color(argument[0] + i * 2, argument[1] + j * 2, argument[9], argument[4], argument[5], argument[6], argument[6], 0, c_black, c_black, c_black, c_black, fade_time);
        }
    }
}
 
draw_text_ext_transformed_color(argument[0], argument[1], argument[9], argument[4], argument[5], argument[6], argument[6], 0, argument[3], argument[3], argument[3], argument[3], argument[8]);
 
return string_width_ext(argument[9], argument[4], argument[5]);
 
 
 
#define rectDraw(x1, y1, x2, y2, color)
 
draw_set_alpha(fade_time);
draw_rectangle_color(argument[0], argument[1], argument[2], argument[3], argument[4], argument[4], argument[4], argument[4], false);
draw_set_alpha(1);