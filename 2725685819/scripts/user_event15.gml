/* if you're here to take the Tablet code, this isnt organized yet... BUT

Copy the files articlesolid_init.gml and articletablet_post_draw.gml

Copy the fonts folder, _notation_strip41.png, and tpxtab_icon.png

--paste in attack_update.gml BOTTOM--
tpx_event = 2;
user_event(15);

--paste in set_attack.gml BOTTOM--
tpx_event = 3;
user_event(15);

--paste in update.gml TOP--
tpx_event = 4;
user_event(15);

--paste in init.gml BOTTOM--
user_event(14);



*/
switch(tpx_event){
case 1:

	//Drawing Tablet Code
	shader_end();
    if (list_open){


    var select_y;
    var top_text = "[SPECIAL] Control | [JUMP/SHIELD] Change Tab | [TAUNT] Exit ";

	camera_x = ceil(view_get_xview());
	camera_y = ceil(view_get_yview());

    draw_text_outline( camera_x + 800, camera_y + 317, top_text, asset_get("fName"), fa_right, fa_top, c_white, c_black);

    //draw tabs
    for (k = 0; k < array_length_1d(pages_arr); k++){
        var select_color;

        draw_set_alpha(0.8);
        if (tips_page == k){
        draw_rectangle_colour(camera_x + 146 + (k * 97), camera_y + 96,camera_x + 240 + (k * 97), camera_y + 76, c_black, c_black, c_black, c_black, false);
        select_color = c_white;
        }
        else{
        draw_rectangle_colour(camera_x + 146 + (k * 97), camera_y + 96,camera_x + 240 + (k * 97), camera_y + 76, c_dkgray, c_dkgray, c_dkgray, c_dkgray, false); 
        select_color = c_gray;
        }
        draw_set_alpha(1);

        draw_text_outline(camera_x + 160 + (k * 97), camera_y + 82, pages_arr[k], asset_get("fName"), fa_left, fa_top, select_color, c_black);
    }

    /*

		--TAB DATA--

	    Add arrays on this switch statement
	    max_visible should either be 4(small frames) or 2(big frames)
    */
        switch(tips_page){

            case 0:
                max_visible = 4;
                current_arr = moves_arr;
            break;

            case 1:
                max_visible = 4; 
                current_arr = extras_arr;
            break;

            case 2:
                max_visible = 2; 
                current_arr = tips_arr;
            break;

            case 3:
                max_visible = 2; 
                current_arr = about_arr;
            break;

        }

    // --TAB DATA END--

        //base
        draw_set_alpha(0.8);
        draw_rectangle_colour(camera_x + 146, camera_y + 96,camera_x + 804, camera_y + 310, c_black, c_black, c_black, c_black, false);
        draw_rectangle_colour(camera_x + 808, camera_y + 96,camera_x + 812, camera_y + 310, c_black, c_black, c_black, c_black, false);
        draw_set_alpha(1);

        //turpix tablet icon
        draw_sprite_ext( sprite_get("tpxtab_icon"), 0,camera_x + 624, camera_y + 70, 2, 2, 0, c_white, 1);
        draw_text_outline( camera_x + 660, camera_y + 82, "TURPIX TABLET v1.0", asset_get("fName"), fa_left, fa_top, c_fuchsia, c_purple);

        var page_text = string(visible_selected + 1) + " of " + string(array_length_1d(current_arr));
        draw_text_outline(camera_x + 150, camera_y + 317, page_text, asset_get("fName"), fa_left, fa_top, c_white, c_black);

        //Scroll bar
        draw_set_alpha(0.8);
        if (array_length_1d(current_arr) > max_visible)
        draw_rectangle_colour(camera_x + 806, camera_y + 96 + (214/array_length_1d(current_arr))*(list_selected),camera_x + 814, camera_y + 96 + (214/array_length_1d(current_arr))*(list_selected+max_visible), c_white, c_white, c_white, c_white, false);
    	else
    	draw_rectangle_colour(camera_x + 806, camera_y + 96,camera_x + 814, camera_y + 310, c_white, c_white, c_white, c_white, false);
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
        	draw_rectangle_colour(0, 0,room_width, room_height, c_black, c_black, c_black, c_black, false);
        	draw_set_alpha(1);
        }

    }






break;

case 2:

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
						list_selected = clamp(list_selected, 0, array_length_1d(current_arr) - max_visible);
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

			visible_selected = clamp(visible_selected, 0, array_length_1d(current_arr) - 1);

			}
			
	break;
}



break;

case 3:

    if (attack == AT_TAUNT && get_training_cpu_action() != CPU_FIGHT && !down_down){
        if (get_gameplay_time() >= 60 * 2)
        attack = 40;
    }

    if (attack == 40){
        list_open = true;
    }


break;

case 4:
	if (get_training_cpu_action() == CPU_FIGHT && get_gameplay_time() == 1){
		instance_destroy(tablet_article);
	}

break;

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
        draw_rectangle_colour(camera_x + 150, camera_y + text_y + 100, camera_x + 800, camera_y + text_y + 148, c_aqua, c_aqua, c_teal, c_teal, false);
        else
        draw_rectangle_colour(camera_x + 150, camera_y + text_y + 100, camera_x + 800, camera_y + text_y + 148, c_dkgray, c_dkgray, c_dkgray, c_dkgray, false);

        draw_set_alpha(1);

        draw_debug_text(camera_x + 160, camera_y + text_y + 104, string(title));
        draw_set_font(font_get("_notation"));
        draw_text_color(camera_x + 200, camera_y + text_y + 116, string(value), c_white, c_white, c_white, c_white, 1);

        draw_text_outline(camera_x + 800, camera_y + text_y + 104, string(comment), asset_get("fName"), fa_right, fa_top, c_gray, c_black);

        draw_set_font(asset_get("fName"));
        draw_set_halign( fa_left );
        draw_text_color(camera_x + 154, camera_y + text_y + 134, string(item), c_white, c_white, c_white, c_white, 0.1);
    break;

    case 1: //Categories
        draw_set_alpha(0.5);

        if (selected == current_sel)
        draw_rectangle_colour(camera_x + 150, camera_y + text_y + 100, camera_x + 800, camera_y + text_y + 148, c_fuchsia, c_fuchsia, c_fuchsia, c_fuchsia, false);
        else
        draw_rectangle_colour(camera_x + 150, camera_y + text_y + 100, camera_x + 800, camera_y + text_y + 148, c_purple, c_purple, c_purple, c_purple, false);

        draw_set_alpha(1);

        draw_text_outline(camera_x + 475, camera_y + text_y + 124, string(title), asset_get("medFont"), fa_center, fa_center, c_fuchsia, c_black);

        draw_set_font(asset_get("fName"));
        draw_set_halign( fa_left );
        draw_text_color( camera_x + 154, camera_y + text_y + 134, string(item), c_black, c_black, c_black, c_black, 0.2);
    break;

    case 2: //Tips
        draw_set_alpha(0.5);

        if (selected == current_sel)
        draw_rectangle_colour(camera_x + 150, camera_y + text_y + 100, camera_x + 800, camera_y + text_y + 200, c_yellow, c_yellow, c_orange, c_orange, false);
        else
        draw_rectangle_colour(camera_x + 150, camera_y + text_y + 100, camera_x + 800, camera_y + text_y + 200, c_dkgray, c_dkgray, c_dkgray, c_dkgray, false);

        draw_set_alpha(1);

        draw_text_outline(camera_x + 160, camera_y + text_y + 106, string(title), asset_get("medFont"), fa_left, fa_top, c_fuchsia, c_black);

        draw_set_font(font_get("_notation"));
        draw_set_halign( fa_right );
        draw_text_color(camera_x + 800, camera_y + text_y + 100, string(value), c_white, c_white, c_white, c_white, 1);

        draw_debug_text(camera_x + 200, camera_y + text_y + 138, string(comment) );

        draw_set_font(asset_get("fName"));
        draw_set_halign( fa_left );
        draw_text_color(camera_x + 154, camera_y + text_y + 186, string(item), c_white, c_white, c_white, c_white, 0.1);

    break;

    case 3: //Settings
        draw_set_alpha(0.5);

        if (selected == current_sel)
        draw_rectangle_colour(camera_x + 150, camera_y + text_y + 100, camera_x + 800, camera_y + text_y + 148, c_lime, c_lime, c_green, c_green, false);
        else
        draw_rectangle_colour(camera_x + 150, camera_y + text_y + 100, camera_x + 800, camera_y + text_y + 148, c_dkgray, c_dkgray, c_dkgray, c_dkgray, false);

        draw_set_alpha(1);

        draw_text_outline(camera_x + 160, camera_y + text_y + 106, string(title), asset_get("medFont"), fa_left, fa_top, c_white, c_black);

            switch (value){
                case 0:
                    draw_text_outline(camera_x + 475, camera_y + text_y + 106, "OFF", asset_get("medFont"), fa_center, fa_top, c_red, c_black);
                break;
                case 1:
                    draw_text_outline(camera_x + 475, camera_y + text_y + 106, "ON", asset_get("medFont"), fa_center, fa_top, c_lime, c_black);
                break;
            }


        draw_text_outline(camera_x + 800, camera_y + text_y + 104, string(comment), asset_get("fName"), fa_right, fa_top, c_gray, c_black);

        draw_set_font(asset_get("fName"));
        draw_set_halign( fa_left );
        draw_text_color(camera_x + 154, camera_y + text_y + 134, string(item), c_white, c_white, c_white, c_white, 0.1);

    break;


}