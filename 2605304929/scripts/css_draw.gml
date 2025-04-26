/*
// Button Code
	var tmp_cur = 0;
	var tmp_i = [0, 0, 0, 0, 0];
	var tmp_x = [0, 0, 0, 0, 0];
	var tmp_y = [0, 0, 0, 0, 0];
	with(asset_get("cs_playercursor_obj")){
		tmp_cur = (!tmp_i[0])?0:(!tmp_i[1])?1:(!tmp_i[2])?2:(!tmp_i[3])?3:4
		tmp_i[tmp_cur] = 1
		tmp_x[tmp_cur] = get_instance_x( self )
		tmp_y[tmp_cur] = get_instance_y( self )
	}
	var tmp_pt = abs(player-5)-1
	var temp_x = x + 8;
	var temp_y = y + 9;

//Button Location
	var tmp_xl = 10
	var tmp_bw = 40 // button width
	var tmp_yl = 150
	var tmp_bh = 20
	var tmp_xl1 = x+tmp_xl
	var tmp_xl2 = tmp_xl1+tmp_bw
	var tmp_yl1 = y+tmp_yl
	var tmp_yl2 = tmp_yl1+tmp_bh
	draw_set_halign(fa_left);
	
//Draw Alt Name from Muno
rectDraw(temp_x, temp_y + 135, temp_x + 201, temp_y + 142, c_black,c_black,1);
textDraw(temp_x + 2, temp_y + 124, "fName", c_white, 0, 1000, 1, true, 1, "#" + string(current_color_slot) + ": " + slot_property_array[current_color_slot + (color_shift * 32),0]);

/*
// TGP Icon Rotation 
draw_sprite_ext(sprite_get("tgp_icon"),timer/20,x+190,y+130,2,2,0,c_white,1);
*/

#macro BOX_SUB_MENU 0
#macro BOX_COLOR_ALTS 1
#macro BOX_EXTRA_OPTIONS 2
#macro BOX_LORE_INFO 3
#macro BOX_CHARACTER_GUIDE 4
#macro BOX_DEV_INFO 5
#macro BOX_CLOSE_MENU 6
#macro BOX_CLOSE_INTERAL_MENU 7
#macro BOX_SHIFT_COLOR_ALTS 8
#macro BOX_WIN_QUOTE_ENABLE 9
#macro BOX_INTRO_DIALOG_ENABLE 10

#macro BUTTON_NAME 0
#macro BUTTON_IX 1
#macro BUTTON_EX 2
#macro BUTTON_IY 3
#macro BUTTON_EY 4
#macro BUTTON_SPRITE_INDEX 5
#macro BUTTON_MASK_INDEX 6
#macro BUTTON_CURSOR_DETECTED 7
#macro BUTTON_PRESSED 8
#macro BUTTON_CURSOR_HOVER_TIMER 9

#macro DRAW_NO_MENU 0
#macro DRAW_MENU_SUB_MENU 6
#macro DRAW_MENU_COLOR_ALTS 1
#macro DRAW_MENU_EXTRA_OPTIONS 2
#macro DRAW_MENU_LORE_INFO 3
#macro DRAW_MENU_CHARACTER_GUIDE 4
#macro DRAW_MENU_DEV_INFO 5

#macro CURSOR_HOVER_SHOULD_DRAW 0
#macro CURSOR_HOVER_SPRITE_INDEX 1
#macro CURSOR_HOVER_IMAGE_INDEX 2
#macro CURSOR_HOVER_DRAW_X 3
#macro CURSOR_HOVER_DRAW_Y 4
#macro CURSOR_HOVER_MENU_BUTTON 5

/* List of Fonts
medFont
fName
roundFont
roaMBLFont
roaLBLFont
tinyFont

// Make sure to use draw set alignment cause the defalt will unset when a 2nd player is selected
*/

switch(draw_menu){
	case DRAW_NO_MENU:
		// Draw Sub Menu Button
		draw_menu_button(0);
		// Draw Names on bottom
		textDraw(x + 10, y + 140, "fName", c_white, 18, 200, 1, true, 1,"Color#" + string(get_player_color(player)) + ":" + string(slot_property_array[ get_player_color(player) + (color_shift * 32),0]))
		//textDraw(x + 100, y + 40, "tinyFont", c_white, 18, 200, 1, true, 1,"Hover over Sub Menu Button")
		//draw_text_ext_transformed_color(x + 10, y + 140, "test", 18, 200, 1, 1, 0, c_white, c_white, c_white, c_white, 1);
		//draw_text_ext_color(x+10,y+140,"test",18,200,c_white,c_white,c_white,c_white,1)
		//draw_text_color(x+10,y+140,"test",c_white,c_white,c_white,c_white,1)
		// TLC Icon
		//draw_sprite_ext(sprite_get("css_tlc_icon"),timer/20,x+190,y+120,2,2,0,c_white,1);
		if(get_player_color(player) == 9 && color_shift == 0){
			draw_sprite_ext(sprite_get("css_vortex"),0,x+180,y+60,2,2,0,c_white,1);
		}
		draw_sprite_ext(sprite_get("css_tlc_icon"),timer/20,x+190,y+120,2,2,0,c_white,1);
	break;
	
	case DRAW_MENU_SUB_MENU:
		// Draw partial rectangle Underlay
		draw_rectangle_colour(x+40, y+50, x+175, y+150, c_dkgray, c_dkgray, c_black, c_black, false); // Original black box draw functions
		draw_rectangle_colour(x+40, y+50, x+175, y+150, c_black, c_black, c_black, c_black, true); // Original black box draw function
		textDraw(x + 75, y + 53, "fName", c_white, 100, 100, 1, false, 0.75,"Sub-Menu");
		// Draw Menu Buttons
		draw_menu_button(BOX_COLOR_ALTS);
		draw_menu_button(BOX_EXTRA_OPTIONS);
		draw_menu_button(BOX_LORE_INFO);
		draw_menu_button(BOX_CHARACTER_GUIDE);
		draw_menu_button(BOX_DEV_INFO);
		draw_menu_button(BOX_CLOSE_MENU);
		
	break;

	case DRAW_MENU_CHARACTER_GUIDE:
		// Draw rectangle Underlay
		draw_rectangle_colour(x+10, y+10, x+210, y+154, c_dkgray, c_dkgray, c_black, c_black, false); // Original black box draw functions
		textDraw(x + 15, y + 48, "fName", c_white, 15, 95, 1, false, 0.75,
		"Google Doc QR Code / Scan with phone / by Wasteof
		aName");
		//Draw Guide Menu
		draw_sprite_ext(sprite_get("css_guide_qr"),0,x + 150,y + 96,2,2,0,c_white,1);
		// Draw Exit Button
		draw_menu_button(BOX_CLOSE_INTERAL_MENU);
	break;
	
	case DRAW_MENU_LORE_INFO:
		// Draw partial rectangle Underlay
		draw_rectangle_colour(x+10, y+10, x+210, y+154, c_dkgray, c_dkgray, c_black, c_black, false); // Original black box draw functions
		//draw_rectangle_colour(x+16, y+40, x+204, y+150, c_black, c_black, c_black, c_black, true); // Original black box draw function
		textDraw(x + 14, y + 45, "fName", c_white, 18, 200, 1, false, 1, slot_property_array[ get_player_color(player) + (color_shift * 32),0])
		
		// Get character Slow Properties and draw them
		textDraw(x+14, y+62, "fName", c_white, 15, 200, 1, false, 1, slot_property_array[ get_player_color(player) + (color_shift * 32),1]); //Text for skin source
		textDraw(x+14, y+78, "fName", c_white, 15, 200, 1, false, 1, slot_property_array[ get_player_color(player) + (color_shift * 32),2]); //Text for skin description
		
		//Change Alts notifer
		textDraw(x+14, y+138, "fName", c_white, 15, 200, 1, false, 1, " <- Lore by Alt Color -> "); //Text for skin source
		
		//Draw Character Icon
		draw_sprite_ext(get_char_info(player, INFO_ICON),0,x + 180, y + 34,2,2,0,c_white,1);
		//print(string(get_player_color(player) + (color_shift * 32)));
		
		// Draw Exit Button
		draw_menu_button(BOX_CLOSE_INTERAL_MENU);
	break;
	
	case DRAW_MENU_COLOR_ALTS:
	var mode_string;
	switch(color_shift){
		case 0:
			mode_string = "Default Alts";
		break;
		case 1:
			mode_string = "Extra Alts"
		break;
		case 2:
			mode_string = "Extra 2 Alts"
		break;
		default:
		break;
	}
		// Draw partial rectangle Underlay
		draw_rectangle_colour(x+10, y+10, x+210, y+154, c_dkgray, c_dkgray, c_black, c_black, false); // Original black box draw functions
		//draw_rectangle_colour(x+16, y+40, x+204, y+150, c_black, c_black, c_black, c_black, true); // Original black box draw function
		textDraw(x + 10, y + 44, "fName", c_white, 18, 200, 1, false, 1,"Color #" +string(get_player_color(player)) + ": " + string(slot_property_array[ get_player_color(player) + (color_shift * 32),0]))
		textDraw(x + 50, y + 70, "fName", c_white, 18, 200, 1, false, 1,mode_string);
		//textDraw(x + 10, y + 80, "fName", c_yellow, 15, 150, 1, false, 1,"Hover over button for more alts!");
		//Draw Character
		if(run_init_shader_for_character_draw == true){manual_init_shader_call = true;init_shader();run_init_shader_for_character_draw = false;} // Detect Color Shift
		draw_sprite_ext(sprite_get("idle"),timer/6.5,x + 175, y + 100,1,1,0,c_white,1);
		// Draw Exit Button
		draw_menu_button(BOX_SHIFT_COLOR_ALTS);
		// Draw Exit Button
		draw_menu_button(BOX_CLOSE_INTERAL_MENU);
	break;
	
	case DRAW_MENU_DEV_INFO:
	// Draw partial rectangle Underlay
		draw_rectangle_colour(x+10, y+10, x+210, y+154, c_dkgray, c_dkgray, c_black, c_black, false); // Original black box draw functions
		textDraw(x + 14, y + 45, "fName", c_white, 18, 200, 1, false, 1, 
		"Character Dev: Opengunner
		Release Date: 9/18/21
		WS Bracket Legal:
		RaB / COTA / FTL / WSE
		WORMS / Genesis / Riptide
		Thanks to all the homies!");
		
		//textDraw(x + 14, y + 45, "fName", c_white, 18, 200, 1, false, 1, "With Assistance from TLC");
		
		// Get character Slow Properties and draw them
		//textDraw(x+14, y+62, "fName", c_white, 15, 200, 1, false, 1, slot_property_array[ get_player_color(player) + (color_shift * 32),1]); //Text for skin source
		//textDraw(x+14, y+78, "fName", c_white, 15, 200, 1, false, 1, slot_property_array[ get_player_color(player) + (color_shift * 32),2]); //Text for skin description
		
		//Draw Character Icon
		//draw_sprite_ext(sprite_get("css_icon"),0,x + 190, y + 46,2,2,0,c_white,1);
		//print(string(get_player_color(player) + (color_shift * 32)));
		
		// Draw Exit Button
		draw_menu_button(BOX_CLOSE_INTERAL_MENU);
	break;
	
	case DRAW_MENU_EXTRA_OPTIONS:
	// Draw partial rectangle Underlay
		draw_rectangle_colour(x+10, y+10, x+210, y+154, c_dkgray, c_dkgray, c_black, c_black, false); // Original black box draw functions
		textDraw(x + 14, y + 45, "fName", c_white, 18, 200, 1, false, 1, "Hover to enable / disable")
		// Draw Text for status of each button
		if(flag_win_quote_enabled){
			textDraw(x + 50, y + 70, "fName", c_green, 18, 50, 1, false, 1, "Enabled");
		}
		else{
			textDraw(x + 50, y + 70, "fName", c_gray, 18, 50, 1, false, 1, "Disabled");
		}
		/*
		if(flag_round_start_dialog){
			textDraw(x + 50, y + 110, "fName", c_green, 18, 50, 1, false, 1, "Enabled");
		}
		else{
			textDraw(x + 50, y + 110, "fName", c_gray, 18, 50, 1, false, 1, "Disabled");
		}
		*/
		// Draw Buttons for extra Options
		draw_menu_button(BOX_WIN_QUOTE_ENABLE);
		//draw_menu_button(BOX_INTRO_DIALOG_ENABLE);
		// Draw Exit Button
		draw_menu_button(BOX_CLOSE_INTERAL_MENU);
	break;

}

if(draw_cursor_info_hover[CURSOR_HOVER_SHOULD_DRAW] == true){
	var temp_sprite_index = draw_cursor_info_hover[CURSOR_HOVER_SPRITE_INDEX];
	var temp_sub_image = draw_cursor_info_hover[CURSOR_HOVER_IMAGE_INDEX];
	var temp_x_cursor = draw_cursor_info_hover[CURSOR_HOVER_DRAW_X];
	var temp_y_cursor = draw_cursor_info_hover[CURSOR_HOVER_DRAW_Y];
	draw_sprite_ext(temp_sprite_index,temp_sub_image,temp_x_cursor,temp_y_cursor,.5,.5,0,c_white,1);
}

/*
//sprite_change_offset("icon_inventory", 128, 128);s
textDraw(temp_x + 170, temp_y + 40, "fName", c_white, 100, 1000, 1, false, 0.25,"v" + string(get_char_info(player, INFO_VER_MAJOR)) + "." + string(get_char_info(player, INFO_VER_MINOR)));

/* Disabled for new portrait
// Bubbles
sprite_change_offset("bubbles", 128, 128);
if(timer < 64){
draw_sprite_ext(sprite_get("bubbles"),timer/8,x+45,y+84,1,1,0,c_white,1);
}

//Revamped for new loaction
if (color_desc_activate){
	// Detect Cursor
	if (tmp_x[tmp_pt]>tmp_xl1 && tmp_x[tmp_pt]<tmp_xl2 && tmp_y[tmp_pt]>tmp_yl1 && tmp_y[tmp_pt]<tmp_yl2){ 	
		if (dial_time<dial_max){ dial_time += 3; } // Ramp up transparncy code if on button
	}
	else{
		if (dial_time>0){ dial_time -= 3; } // Ramp down transparncy code if off button
	}
	draw_set_alpha(0.3);
	draw_rectangle_colour(tmp_xl1-1, tmp_yl1+3, tmp_xl2, tmp_yl2, c_black, c_black, c_black, c_black, false); // draws the small block
	textDraw(round(tmp_xl1+(tmp_bw/2))-18, round(tmp_yl1+(tmp_bh/2))-4, "fName", c_white, 0, 100, 1, false, 0.3, "Info"); // Draws the Button text
	textDraw(round(tmp_xl1+(tmp_bw/2))-18, round(tmp_yl1+(tmp_bh/2))-4, "fName", c_white, 0, 100, 1, false, 0.3, "Info"); // Draws the Button text
	var dial_ease = ease_linear( 0, 100, dial_time, dial_max )
	draw_set_alpha(dial_ease/130);
	//draw_rectangle_colour(x+10, y+95-round(dial_ease/30), x+210, y+153, c_black, c_black, c_black, c_black, false); // Original black box draw function
	draw_rectangle_colour(x+10, y+15-round(dial_ease/30), x+210, y+153, c_black, c_black, c_black, c_black, false); // Draws black box that appears
	draw_set_alpha(dial_ease/500);
	draw_rectangle_colour(tmp_xl1, tmp_yl1+3, tmp_xl2, tmp_yl2, c_white, c_white, c_white, c_white, false);
	draw_set_alpha(1);
	textDraw(x+14, (y+45)-round(dial_ease/30), "fName", c_white, 18, 200, 1, false, dial_ease/100, "#"+string(current_color_slot)+": "+slot_property_array[current_color_slot + (color_shift * 32),0]); //String for skin name
	textDraw(x+14, (y+65)-round(dial_ease/30), "fName", c_white, 18, 200, 1, false, dial_ease/100, slot_property_array[current_color_slot + (color_shift * 32),1]); //Text for skin source
	textDraw(x+14, (y+85)-round(dial_ease/30), "fName", c_white, 18, 200, 1, false, dial_ease/100, slot_property_array[current_color_slot + (color_shift * 32),2]); //Text for skin description
}
*/
#define textDraw(x, y, font, color, lineb, linew, scale, outline, alpha, string)

draw_set_font(asset_get(argument[2]));
draw_set_halign(fa_left); // This is important cause it will cause the text to not align properly
if argument[7]{
    for (i = -1; i < 2; i++){
        for (j = -1; j < 2; j++){
            draw_text_ext_transformed_color(argument[0] + i * 2, argument[1] + j * 2, argument[9], argument[4], argument[5], argument[6], argument[6], 0, c_black, c_black, c_black, c_black, 1);
        }
    }
}

draw_text_ext_transformed_color(argument[0], argument[1], argument[9], argument[4], argument[5], argument[6], argument[6], 0, argument[3], argument[3], argument[3], argument[3], argument[8]);

return string_width_ext(argument[9], argument[4], argument[5]);


#define rectDraw(x1, y1, x2, y2, color, out_color, alpha)

draw_set_alpha(argument[6]);
draw_rectangle_color(argument[0], argument[1], argument[2], argument[3], argument[5], argument[5], argument[5], argument[5], false);
draw_set_alpha(argument[6]*1.5);
draw_rectangle_color(argument[0]+2, argument[1]+2, argument[2]-2, argument[3]-2, argument[4], argument[4], argument[4], argument[4], false);
draw_set_alpha(1);

#define draw_menu_button(number)
{
	//from function in init
	//menu_box[number] = [
    var temp_name = menu_box[number][0]; //0
    var temp_ix = menu_box[number][1]; //1
    var temp_ex = menu_box[number][2]; //2
    var temp_iy = menu_box[number][3]; //3
    var temp_ey = menu_box[number][4]; //4
    var temp_sprite_index = menu_box[number][5]; //5
    var temp_image_index = menu_box[number][6]; //6
    //cursor_detected, // 7
    //button_pressed, // 8
    //];
    var center_x = ((temp_ex - temp_ix) / 2) + temp_ix;
    var center_y = ((temp_ey - temp_iy) / 2) + temp_iy;
    
    draw_sprite_ext(sprite_get(temp_sprite_index),temp_image_index,center_x,center_y,.5,.5,0,c_white,1);
	//print(center_x)
	//print(center_y)
	//print(get_instance_x(cursor_id))
	//print(get_instance_y(cursor_id))
	
}
