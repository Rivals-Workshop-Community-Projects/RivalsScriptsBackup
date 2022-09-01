

switch(tpx_event){

case 4:
	
	if (get_training_cpu_action() == CPU_FIGHT && get_gameplay_time() == 1){
		instance_destroy(tablet_article);
	}

/* --SETTINGS/CHEATS CODE HERE-- 
	get_tab_setting(setting, array)
*/

cpu_parry = get_tab_setting("Extend CPU Parry", extras_arr);
sparda = get_tab_setting("Style Meter", extras_arr);
instant_chaos = get_tab_setting("1 Hit Chaos", extras_arr);

break;
//DO NOT TOUCH ANYTHING BEYOND HERE
case 1:


	//Drawing Tablet Code
	shader_end();
    if (list_open){


    var select_y;
    var top_text = "[SPECIAL] Control | [JUMP/SHIELD] Change Tab | [TAUNT] Exit ";

	camera_x = ceil(view_get_xview());
	camera_y = ceil(view_get_yview());

    draw_text_outline( camera_x + 800, camera_y + 317, top_text, asset_get("fName"), fa_right, fa_top, c_white, c_black);

    //Draw Tabs
    for (k = 0; k < array_length_1d(pages_arr); k++){

        draw_set_alpha(0.8);
        if (pages_arr[k] == pages_arr[tips_page]){
        draw_rectangle_colour(camera_x + 146 + (k * 97), camera_y + 96,camera_x + 240 + (k * 97), camera_y + 76, tab_base_col, tab_base_col, tab_base_col, tab_base_col, false);
        max_visible = pages_arr[k][1];
        current_arr = pages_arr[k][2];
        draw_text_outline(camera_x + 160 + (k * 97), camera_y + 82, pages_arr[k][0], asset_get("fName"), fa_left, fa_top, tab_tabtext_col, c_black);
        }
        else{
        draw_rectangle_colour(camera_x + 146 + (k * 97), camera_y + 96,camera_x + 240 + (k * 97), camera_y + 76, tab_inactivetab_col, tab_inactivetab_col, tab_inactivetab_col, tab_inactivetab_col, false); 
        draw_text_outline(camera_x + 160 + (k * 97), camera_y + 82, pages_arr[k][0], asset_get("fName"), fa_left, fa_top, tab_tabtextinactive_col, c_black);
        }
        draw_set_alpha(1);

        
    }


        
        draw_set_alpha(0.8);
        //Base
        draw_rectangle_colour(camera_x + 146, camera_y + 96,camera_x + 804, camera_y + 310, tab_base_col, tab_base_col, tab_base_col, tab_base_col, false);
        //Scroll Base
        draw_rectangle_colour(camera_x + 808, camera_y + 96,camera_x + 812, camera_y + 310, tab_base_col, tab_base_col, tab_base_col, tab_base_col, false);
        draw_set_alpha(1);

        //turpix tablet icon
        draw_sprite_ext( tab_icon, 0,camera_x + 800 + tab_icon_x, camera_y + 70 + tab_icon_y, 2, 2, 0, c_white, 1);
        draw_text_outline( camera_x + 660, camera_y + 82, tab_title, asset_get("fName"), fa_left, fa_top, tab_title_col, c_purple);

        var page_text = string(visible_selected + 1) + " of " + string(array_length_1d(current_arr));
        draw_text_outline(camera_x + 150, camera_y + 317, page_text, asset_get("fName"), fa_left, fa_top, c_white, c_black);

        //Scroll bar
        draw_set_alpha(0.8);
        if (array_length_1d(current_arr) > max_visible)
        draw_rectangle_colour(camera_x + 806, camera_y + 96 + (214/array_length_1d(current_arr))*(list_selected),camera_x + 814, camera_y + 96 + (214/array_length_1d(current_arr))*(list_selected+max_visible), tab_scrollbar_col, tab_scrollbar_col, tab_scrollbar_col, tab_scrollbar_col, false);
    	else
    	draw_rectangle_colour(camera_x + 806, camera_y + 96,camera_x + 814, camera_y + 310, tab_scrollbar_col, tab_scrollbar_col, tab_scrollbar_col, tab_scrollbar_col, false);
        draw_set_alpha(1);

        //Draw Stuff
        for (j = 0; j < array_length_1d(current_arr); j++){
            
            if (j != 0){
                if (current_arr[j-1][0] != 2)
                select_y = (j * 52) - (list_selected * 52);
                else
                select_y = (j * 104) - (list_selected * 104);
            }

            if (list_selected <= j) && (j < list_selected + max_visible){
                draw_item(current_arr[j][0], current_arr[j][1], current_arr[j][2], select_y, visible_selected, j, current_arr[j][3], j + 1);
            }

        }

        
        if !(state == PS_ATTACK_GROUND && attack == 40){
        	draw_set_alpha(0.5);
      		//Darkness when in control
        	draw_rectangle_colour(0, 0,room_width, room_height, c_black, c_black, c_black, c_black, false);
        	draw_set_alpha(1);
        }

    }






break;

case 2:
//DO NOT TOUCH ANYTHING HERE
//Tablet Attack State

switch (attack){
	case 40:

			//Exit
			if (taunt_pressed) && window == 2{
				if (list_open)
					sound_play(asset_get("mfx_back"));

				list_open = false;
			}

			//Control
			if (special_pressed) && window == 2{
				window_timer = 0;
				window = 3;
				sound_play(asset_get("mfx_back"));

			}

			if (window_timer == 1 && window == 1){
				sound_play(asset_get("mfx_forward"));
			}
			
			if (list_open){
				

				if (window_timer == get_window_value(attack, 2, AG_WINDOW_LENGTH) - 1 && window == 2)
					window_timer = 0;

			//TAB CONTROLS
			if (shield_pressed){
				tips_page++;

				if (tips_page > array_length_1d(pages_arr) - 1)
					tips_page = 0;

				list_selected = 0;
				visible_selected = 0;
				sound_play(asset_get("mfx_coin"));

				clear_button_buffer( PC_SHIELD_PRESSED );
			}
			else if (jump_pressed){
				tips_page--;

				if (tips_page < 0)
					tips_page = array_length_1d(pages_arr) - 1;

				list_selected = 0;
				visible_selected = 0;
				sound_play(asset_get("mfx_forward"));

				clear_button_buffer( PC_JUMP_PRESSED );
			}

			//Confirm
			if (attack_pressed){
				if (current_arr[visible_selected][0] == 3){
					current_arr[@visible_selected][@2] = !current_arr[visible_selected][2];
					sound_play(asset_get("mfx_confirm"));
					clear_button_buffer( PC_ATTACK_PRESSED );
					
				}
			}

			//Scrolling
			if (down_down && !up_down && !left_down && !right_down && visible_selected != array_length_1d(current_arr) - 1){

				if (scroll_timer == 0 || down_pressed){
					if (visible_selected < list_selected + max_visible - 1){
					visible_selected++;
					sound_play(asset_get("mfx_change_color"));
					}
					else if (list_selected + max_visible - 1 < array_length_1d(current_arr) - 1){
					visible_selected++;
					list_selected++;
					sound_play(asset_get("mfx_change_color"));
					}

					scroll_timer = 10;
				}
				
				scroll_timer--;
			}
			else if (!down_down && up_down && !left_down && !right_down && visible_selected != 0){

				if (scroll_timer == 0 || up_pressed){
					if (visible_selected > list_selected){
					visible_selected--;
					sound_play(asset_get("mfx_change_color"));
					}
					else if (list_selected != 0){
					list_selected--;
					visible_selected--;
					sound_play(asset_get("mfx_change_color"));
					}

					scroll_timer = 10;

				}

				scroll_timer--;
			}
			else
			{
				scroll_timer = 10;
			}



			//Skipping to category
			var starting_item = visible_selected;
			if (right_pressed && !down_down && !up_down && !left_down){

					if (current_arr[visible_selected][0] == 1 && visible_selected != array_length_1d(current_arr) - 1)
						visible_selected++;

					while (current_arr[visible_selected][0] != 1 && visible_selected != array_length_1d(current_arr) - 1){
						visible_selected++;
					}

					if (current_arr[visible_selected][0] == 1){
						list_selected = visible_selected;
						sound_play(asset_get("mfx_coin"));
					}
					else
						visible_selected = starting_item;
			}
			else if (left_pressed && !down_down && !up_down && !right_down){

					if (current_arr[visible_selected][0] == 1 && visible_selected != 0)
						visible_selected--;

					while (current_arr[visible_selected][0] != 1 && visible_selected != 0){
						visible_selected--;
					}

					if (current_arr[visible_selected][0] == 1 && visible_selected != starting_item){
						list_selected = visible_selected;
						sound_play(asset_get("mfx_coin"));
					}
					else
						visible_selected = starting_item;
			}
			list_selected = clamp(list_selected, 0, array_length_1d(current_arr) - max_visible);
			visible_selected = clamp(visible_selected, 0, array_length_1d(current_arr) - 1);

			}
			
	break;
}



break;

case 3:
//DO NOT TOUCH ANYTHING HERE
    if (attack == AT_TAUNT && get_training_cpu_action() != CPU_FIGHT && !down_down){
        if (get_gameplay_time() >= 60 * 2)
        attack = 40;
    }

    if (attack == 40){
        list_open = true;
    }


break;

}
#define get_tab_setting(setting, array)

for (j = 0;j < array_length_1d(array); j++){
	if (array[j][1] == setting){
		return array[j][2];
		break;
	}
}


#define draw_text_outline( text_x, text_y ,text, font, halign, valign, color, outline_color)

draw_set_font(font);
draw_set_halign( halign );
draw_set_valign( valign );

draw_text_color( text_x+2, text_y-2, text, outline_color, outline_color, outline_color, outline_color, 1);
draw_text_color( text_x-2, text_y+2, text, outline_color, outline_color, outline_color, outline_color, 1);
draw_text_color( text_x-2, text_y-2, text, outline_color, outline_color, outline_color, outline_color, 1);
draw_text_color( text_x+2, text_y+2, text, outline_color, outline_color, outline_color, outline_color, 1);

draw_text_color( text_x, text_y+2, text, outline_color, outline_color, outline_color, outline_color, 1);
draw_text_color( text_x, text_y-2, text, outline_color, outline_color, outline_color, outline_color, 1);
draw_text_color( text_x+2, text_y, text, outline_color, outline_color, outline_color, outline_color, 1);
draw_text_color( text_x-2, text_y, text, outline_color, outline_color, outline_color, outline_color, 1);


draw_text_color( text_x, text_y, text, color, color, color, color, 1);



#define draw_item(type, title, value, text_y, selected, current_sel, comment, item)


switch(type){

    case 0: //Notations
        draw_set_alpha(0.5);

        if (selected == current_sel)
        draw_rectangle_colour(camera_x + 150, camera_y + text_y + 100, camera_x + 800, camera_y + text_y + 148, tab_notation_col1, tab_notation_col1, tab_notation_col2, tab_notation_col2, false);
        else
        draw_rectangle_colour(camera_x + 150, camera_y + text_y + 100, camera_x + 800, camera_y + text_y + 148, tab_inactivenotation_col, tab_inactivenotation_col, tab_inactivenotation_col, tab_inactivenotation_col, false);

        draw_set_alpha(1);

        draw_text_outline(camera_x + 160, camera_y + text_y + 104, string(title), asset_get("fName"), fa_left, fa_top, tab_notationtitle_col, c_black);

        draw_set_font(font_get("_notation"));
        draw_text_color(camera_x + 200, camera_y + text_y + 116, string(value), c_white, c_white, c_white, c_white, 1);

        draw_text_outline(camera_x + 800, camera_y + text_y + 104, string(comment), asset_get("fName"), fa_right, fa_top, tab_notationcom_col, c_black);

        draw_set_font(asset_get("fName"));

        draw_set_halign( fa_left );
        draw_set_valign( fa_top );
        draw_text_color(camera_x + 154, camera_y + text_y + 134, string(item), c_white, c_white, c_white, c_white, 0.1);
    break;

    case 1: //Categories
        draw_set_alpha(0.5);

        if (selected == current_sel)
        draw_rectangle_colour(camera_x + 150, camera_y + text_y + 100, camera_x + 800, camera_y + text_y + 148, tab_category_col1, tab_category_col1, tab_category_col2, tab_category_col2, false);
        else
        draw_rectangle_colour(camera_x + 150, camera_y + text_y + 100, camera_x + 800, camera_y + text_y + 148, tab_inactivecategory_col, tab_inactivecategory_col, tab_inactivecategory_col, tab_inactivecategory_col, false);

        draw_set_alpha(1);

        draw_text_outline(camera_x + 475, camera_y + text_y + 124, string(title), asset_get("medFont"), fa_center, fa_center, tab_categorytext_col, c_black);

        draw_set_font(asset_get("fName"));
        draw_set_halign( fa_left );
        draw_set_valign( fa_top );
        draw_text_color(camera_x + 154, camera_y + text_y + 134, string(item), c_white, c_white, c_white, c_white, 0.1);
    break;

    case 2: //Tips
        draw_set_alpha(0.5);

        if (selected == current_sel)
        draw_rectangle_colour(camera_x + 150, camera_y + text_y + 100, camera_x + 800, camera_y + text_y + 200, tab_tip_col1, tab_tip_col1, tab_tip_col2, tab_tip_col2, false);
        else
        draw_rectangle_colour(camera_x + 150, camera_y + text_y + 100, camera_x + 800, camera_y + text_y + 200, tab_inactivetip_col, tab_inactivetip_col, tab_inactivetip_col, tab_inactivetip_col, false);

        draw_set_alpha(1);

        draw_text_outline(camera_x + 160, camera_y + text_y + 106, string(title), asset_get("medFont"), fa_left, fa_top, tab_tiptitle_col, c_black);

        draw_set_font(font_get("_notation"));
        draw_set_halign( fa_right );
        draw_text_color(camera_x + 800, camera_y + text_y + 100, string(value), c_white, c_white, c_white, c_white, 1);

        draw_text_outline(camera_x + 200, camera_y + text_y + 138, string(comment), asset_get("fName"), fa_left, fa_top, tab_tipcom_col, c_black);

        draw_set_font(asset_get("fName"));

        draw_set_halign( fa_left );
        draw_set_valign( fa_top );
        draw_text_color(camera_x + 154, camera_y + text_y + 186, string(item), c_white, c_white, c_white, c_white, 0.1);

    break;

    case 3: //Settings
        draw_set_alpha(0.5);

        if (selected == current_sel){
            switch (value){
                case 1:
                    draw_rectangle_colour(camera_x + 150, camera_y + text_y + 100, camera_x + 800, camera_y + text_y + 148, tab_setbaseon_col1, tab_setbaseon_col1, tab_setbaseon_col2, tab_setbaseon_col2, false);
                break;
                case 0:
                    draw_rectangle_colour(camera_x + 150, camera_y + text_y + 100, camera_x + 800, camera_y + text_y + 148, tab_setbaseoff_col1, tab_setbaseoff_col1, tab_setbaseoff_col2, tab_setbaseoff_col2, false);
                break;
            }
        

    	}
        else
        draw_rectangle_colour(camera_x + 150, camera_y + text_y + 100, camera_x + 800, camera_y + text_y + 148, tab_inactiveset_col, tab_inactiveset_col, tab_inactiveset_col, tab_inactiveset_col, false);

        draw_set_alpha(1);

        draw_text_outline(camera_x + 160, camera_y + text_y + 106, string(title), asset_get("medFont"), fa_left, fa_top, tab_settitle_col, c_black);

            switch (value){
                case 0:
                    draw_text_outline(camera_x + 475, camera_y + text_y + 106, "OFF", asset_get("medFont"), fa_center, fa_top, tab_setoff_col, c_black);
                break;
                case 1:
                    draw_text_outline(camera_x + 475, camera_y + text_y + 106, "ON", asset_get("medFont"), fa_center, fa_top, tab_seton_col, c_black);
                break;
            }


        draw_text_outline(camera_x + 800, camera_y + text_y + 104, string(comment), asset_get("fName"), fa_right, fa_top, tab_setcom_col, c_black);

        draw_set_font(asset_get("fName"));
        draw_set_halign( fa_left );
        draw_set_valign( fa_top );
        draw_text_color(camera_x + 154, camera_y + text_y + 134, string(item), c_white, c_white, c_white, c_white, 0.1);

    break;


}