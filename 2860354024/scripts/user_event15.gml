

switch(tpx_event){

case 4:
	
	if (!hkr_loaded && !tab_is_dummy && !instance_exists(oTestPlayer) ){
		
		
	if (get_training_cpu_action() != CPU_FIGHT){
	#region Array Contents
	/*
	--SETTING UP THE CONTENT--
	
	Data format is [type, title, value, comment]
	
		Types: 
			0 - Notation 	; Value is read as notations for the movelist
			1 - Category 	; Can be skipped to with left and right buttons
			2 - Tips 		; Bigger frame for longer comments, value is read as notations. Please use only one size as multiple sizes in one tab is not supported.
			3 - Settings 	; Toggleable with attack button, value is read as boolean
	
	
		NOTATION:
			Notations are coded as a Font, please refer to the file [.../fonts/_notations.ini], and the sprite [.../sprites/_notation_strip40.png] for visual reference
	
			Directions are based on Numpad Notation [123456789]
			Face Buttons are [asd]; a s d = attack special strong
			Combo Buttons are [zxc]; z x c = atkspecial, atkstrong, strongspecial
			
			Taunt button is n
			Shield button is j
	
	
			Shift variants/Uppercase of these characters will be the Hold versions (except for neutral)
	
			OR icon = |
			> icon = -
			[] icons = []
	
	
	*/
	
	//Move list tab data
	moves_arr = [
	//Specials
	[1, "--Specials--"],
	[0, "Tornado Claw"				, "s-^|#|("	, "Claw(" + string(get_hitbox_value(AT_NSPECIAL, 1, HG_HKR_CLAW)*5 + get_hitbox_value(AT_NSPECIAL, 6, HG_HKR_CLAW)) + "%)", AT_NSPECIAL],
	[0, "Essence Reave"		, "6s"	, "Claw(" + string(get_hitbox_value(AT_FSPECIAL, 2, HG_HKR_CLAW)) + "%), Pratfall on whiff
										Heals " + string(get_hitbox_value(AT_FSPECIAL, 2, HG_HKR_HEAL)) + "% if Excited, Uses Heal icon", AT_FSPECIAL],
	[0, "Cross Jump"		, "8s"	, "Has Sweetspot, Shares CD with Essence Reave
										Pratfall Claw(" + string(get_hitbox_value(AT_USPECIAL, 2, HG_HKR_CLAW)) + "% strong, " + string(get_hitbox_value(AT_USPECIAL, 1, HG_HKR_CLAW)) + "% weak)", AT_USPECIAL],
	[0, "Reload"			, "2s"	, "Excites(" + string(get_window_value(AT_DSPECIAL, 2, AG_HKR_EXCITE)) + "%), Refills ammo", AT_DSPECIAL],
	
	//A moves
	[1, "--Ground Moves--"],
	[0, "Stab Swipe"		, "aa"	, "Claw(" + string(get_hitbox_value(AT_JAB, 1, HG_HKR_CLAW)) + "% each)", AT_JAB],
	[0, "Heavy Stab"		, "6a"	, "Claw(" + string(get_hitbox_value(AT_FTILT, 1, HG_HKR_CLAW)) + "%)", AT_FTILT],
	[0, "Double Sweep"		, "2a"	, "", AT_DTILT],
	[0, "Gun Twirl"			, "8a"	, "Jump Cancellable", AT_UTILT],
	[0, "Streak"		, "^a"	, "Jump Cancellable", AT_DATTACK],
	
	//Aerials
	[1, "--Aerials--"],
	[0, "Air Kick"			, "a"	, "Aerial", AT_NAIR],
	[0, "Reaching Claw"			, "6a"	, "Aerial
										Claw(" + string(get_hitbox_value(AT_FAIR, 1, HG_HKR_CLAW)) + "%)", AT_FAIR],
	[0, "Quick Swipe"		, "2a"	, "Aerial
										Claw(" + string(get_hitbox_value(AT_DAIR, 1, HG_HKR_CLAW)) + "%)", AT_DAIR],
	[0, "Somersault Kick"	, "8a"	, "Aerial", AT_UAIR],
	[0, "Gun Bash"			, "4a"	, "Aerial", AT_BAIR],
	
	
	//Strongs
	[1, "--Strongs--"],
	[0, "Gun Shot (forward)"	, "6D"	, "Excites(" + string(get_window_value(AT_FSTRONG, 3, AG_HKR_EXCITE)) + "%)", AT_FSTRONG],
	[0, "Gun Shot (upward)"		, "8D"	, "Excites(" + string(get_window_value(AT_USTRONG, 5, AG_HKR_EXCITE)) + "%)", AT_USTRONG],
	[0, "Gun Shot (downward)"	, "2D"	, "Excites(" + string(get_window_value(AT_DSTRONG, 3, AG_HKR_EXCITE)) + "%)", AT_DSTRONG],
	
	[1, "--Air Strongs--"],
	[0, "Air Gun Shot (forward)"	, "6D"	, "Aerial, Jump Cancellable
											Excites(" + string(get_window_value(AT_FSTRONG, 3, AG_HKR_EXCITE)) + "%)", AT_FSTRONG_2],
	[0, "Air Gun Shot (upward)"		, "8D"	, "Aerial, Jump Cancellable
											Excites(" + string(get_window_value(AT_USTRONG, 5, AG_HKR_EXCITE)) + "%)", AT_USTRONG_2],
	[0, "Air Gun Shot (downward)"	, "2D"	, "Aerial, Excites(" + string(get_window_value(AT_DSTRONG, 3, AG_HKR_EXCITE)) + "%) 
											Attack/Special/Jump Cancellable", AT_DSTRONG_2],
											
	//Misc
	[1, "--Tech/Confirms--"],
	[0, "Gun Dash (near ground \ during jumpstart)"				, "7d", ""],
	[0, "Side Special Confirm"				, "6s-8s", "from the ground only"],
	[0, "Up Taunt"				, "*N", "Certain colors will have unique taunts", AT_TAUNT_2],
	]
	
	//Tips tab data
	tips_arr = [
	[2, "Air Strongs"		, "8D 6D 2D"		, "Hikari can use her Strongs in the air!
													Using air Strongs causes Hikari to fly backwards due to recoil,
													she can use this recoil as a movement tool."],
	
	[2, "Gun Jumping/Dashing"		, "7d 2d"		, "Gun Dashing is using GUN UP Air as a wavedash.
														Gun Jumping is using GUN DOWN Air as extra jumps.
														GUN DOWN Air replaces your jump after double jump is used."],
	
	[2, "Excitement"		, ""		, "Manage Hikari's Excitement or else she starts being reckless and wont hold back.
											Using her Gun (Strongs) and Reloading causes her Excitement to rise.
											Hitting opponents with Claws reduces her excitement."],
	
	[2, "Excited"		, ""		, "When Excitement is more than 50%, Hikari becomes Excited.
										Being Excited increases Hikari's movement, passive ammo gain, and damage(+25%)
										but also takes self damage passively and when using her Gun(" + string(get_window_value(AT_FSTRONG, 3, AG_HKR_EXCITE_DAMAGE)) + "%)."],
	
	[2, "Heal!"		, "6s"		, "Essence Reave heals Hikari for " + string(get_hitbox_value(AT_FSPECIAL, 2, HG_HKR_HEAL)) + "% but only if she's Excited.
									Hikari can only heal once until she exits Excited status."],
	
	[2, "Bonk"		, "2s"		, "When Hikari slams a magazine into her gun, she can hit opponents with a spike.
									A bit unreliable but funny when it hits."],
	
	]
	
	//Settings tab data
	extras_arr = [
	[1, "--Training Settings--"],
	[3, "Extend CPU Parry"		, false		, "CPU Parries will be 
												extended for easier testing"],
	[4, "Reset Damage Frame"		, 0			, 120,"CPUs will reset damage after this
												amount of frames out of hitstun"],
	[4, "Set Excitement"		, 0			, 100, "Excitement 
													will be minimum of this amount"],
	[3, "No Self Damage"		, false		, "No self damage will be inflicted"],			
	[3, "Max Ammo"				, false		, "Ammo will always be full"],	
	[1, "--Other Settings--"],
	[3, "Typing"		, tab_can_type		, "Toggle typing feature"], //adviceable to keep this for keyboard bindings that include numbers
	[3, "Movelist Demo"		, tab_can_type		, "Toggle movelist demo
												feature for performance"], //adviceable to keep this for users with performance issues
	]
	
	
	//About tab
	about_arr = [
	//I would appreciate it if these credits are left in :)
	[2, "Turpix Tablet v"+tablet_ver	, "55555"	, "Turpix Tablet is made by... Turpix!"],
	[2, "Other stuff"			, "55555"	, "Sub to my characters: Turpix, Pikachu Mishima, Ekko, Annie
												Follow me on Twitter (@turpix_00) and Youtube (/turpix)"],
	]
	
	
	/* 
		--SETTINGS/CHEATS--
	
	Use data with type 3 for variables you want to toggle
	
	var example_var = extras_arr[setting_index][2];
	
	*/
	
	/*
		--TAB DATA ASSIGNMENT--
	["tab title", max_visible, array]
	
	max_visible:
		4 - used for arrays containing types 0,1,3
		2 - used for arrays containing type 2
	
	*/
	pages_arr = [
	["Move list"	, 4, moves_arr], 
	["Settings"		, 4, extras_arr], 
	["Tips"			, 2, tips_arr], 
	["About"		, 2, about_arr],
	];		
	
	#endregion
	
	}

	if (get_training_cpu_action() == CPU_FIGHT)
	instance_destroy(tablet_article);
		
	hkr_loaded = true;	
	
	}
	
	
	

	
#region Settings Variables
/* --SETTINGS/CHEATS CODE HERE-- 
	example_var = get_tab_setting(setting_string, array);
*/

cpu_parry = get_tab_setting("Extend CPU Parry", extras_arr);
max_exct = get_tab_setting("Set Excitement", extras_arr);
no_selfdmg = get_tab_setting("No Self Damage", extras_arr);
max_ammo = get_tab_setting("Max Ammo", extras_arr);
dmg_reset_frame = get_tab_setting("Reset Damage Frame", extras_arr);
tab_demo_active = get_tab_setting("Movelist Demo", extras_arr);




//adviceable to keep this for keyboard bindings that include numbers
tab_can_type = get_tab_setting("Typing", extras_arr);

#endregion


//Spawn Dummy
if (!instance_exists(tab_dummy_player) && !tab_is_dummy && get_training_cpu_action() != CPU_FIGHT && tab_demo_active){
tab_dummy_player = instance_create( x, y, "oPlayer");
tab_dummy_player.tab_is_dummy = true;
tab_dummy_player.tab_dummy_master = id;
}else if (instance_exists(tab_dummy_player) && get_training_cpu_action() == CPU_FIGHT) || !tab_demo_active{
	instance_destroy(tab_dummy_player);
	tab_dummy_player = noone;
}


break;

case 1:
//DO NOT TOUCH ANYTHING HERE
	//Drawing Tablet Code
	shader_end();
    if (list_open){


    var select_y;

	camera_x = ceil(view_get_xview());
	camera_y = ceil(view_get_yview());

    draw_text_outline( camera_x + 800, camera_y + 317, tab_top_text, asset_get("fName"), fa_right, fa_top, c_white, c_black);

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
        draw_sprite_ext( tab_icon, 0,camera_x + 800 + tab_icon_x, camera_y + 66 + tab_icon_y, 2, 2, 0, c_white, 1);
        draw_text_outline( camera_x + 664, camera_y + 78, tab_title, asset_get("fName"), fa_left, fa_top, tab_title_col, c_purple);

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
               draw_item(current_arr[j][0], select_y, visible_selected, j, j + 1);
            }

        }

        
        if (instance_exists(tab_dummy_player)){
        if !(state == PS_ATTACK_GROUND && attack == 40) || tab_dummy_player.tab_demo{
        	draw_set_alpha(0.5);
      		//Darkness when in control
        	draw_rectangle_colour(0, 0,room_width, room_height, c_black, c_black, c_black, c_black, false);
        	draw_set_alpha(1);
        }
        }else if !(state == PS_ATTACK_GROUND && attack == 40){
        	draw_set_alpha(0.5);
      		//Darkness when in control
        	draw_rectangle_colour(0, 0,room_width, room_height, c_black, c_black, c_black, c_black, false);
        	draw_set_alpha(1);
        }

    }


	




break;

case 2:
//DO NOT TOUCH ANYTHING HERE
//Tablet Attack Update

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
				
				switch (current_arr[visible_selected][0]){
					case 0:
					tab_confirm_type = "[A] Play Demo";
					break;
					case 1:
					tab_confirm_type = "[LEFT/RIGHT] Prev/Next Category";
					break;
					case 2:
					tab_confirm_type = "--";
					break;
					case 3:
					tab_confirm_type = "[A] Toggle";
					break;
					case 4:
					tab_confirm_type = "[LEFT/RIGHT] Adjust Value";
					break;
					default:
					
					break;
				}
				tab_top_text = "[JUMP/SHIELD] Change Tab | [TAUNT] Exit 
				" + tab_confirm_type + " | [B] Control";

				

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
					sound_play(asset_get("mfx_coin"));
					clear_button_buffer( PC_ATTACK_PRESSED );
					
				}
				
				if (instance_exists(tab_dummy_player)){
					if (current_arr[visible_selected][0] == 0){
						if (array_length_1d(current_arr[visible_selected]) >= 5 && !tab_dummy_player.tab_demo){
						sound_play(asset_get("mfx_coin"));
						clear_button_buffer( PC_ATTACK_PRESSED );
						tab_dummy_player.tab_demo = true;
						tab_dummy_player.tab_demo_attack = current_arr[visible_selected][4];
						
						if (array_length_1d(current_arr[visible_selected]) == 6)
						tab_dummy_player.tab_demo_variant = current_arr[visible_selected][5];
						
						}
					}
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


			if (current_arr[visible_selected][0] != 4){
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
							sound_play(tab_conf_sound);
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
							sound_play(tab_conf_sound);
						}
						else
							visible_selected = starting_item;
				}

			}else{
			//Number Sliders
				
					
					
					var tab_num_speed = 5;
					
					if (tab_slider_timer > 60)
					tab_num_speed = 2;
					
					if (attack_down)
					tab_num_speed = 7;
				
					if (tab_slider_timer%tab_num_speed == 0){
						if (right_down && current_arr[visible_selected][2] != current_arr[visible_selected][3]){
							sound_play(asset_get("mfx_coin"));
							current_arr[@visible_selected][@2] += 1;
						}
						if (left_down && current_arr[visible_selected][2] != 0){
							sound_play(asset_get("mfx_coin"));
							current_arr[@visible_selected][@2] -= 1;
						}
					}
					
					
					if (right_pressed) && current_arr[visible_selected][2] == current_arr[visible_selected][3] {
						sound_play(asset_get("mfx_coin"));
						current_arr[@visible_selected][@2] = 0;
					}
				
					if (left_pressed) && current_arr[visible_selected][2] == 0 {
						sound_play(asset_get("mfx_coin"));
						current_arr[@visible_selected][@2] = current_arr[visible_selected][3];
					}
					
					if (right_down || left_down){
						tab_slider_timer++;
					}
					else{
						tab_slider_timer = 0;
					}
					
					
					//typing
					
					if (tab_can_type){
					
						if (keyboard_key == 49 ||
						keyboard_key == 50 ||
						keyboard_key == 51 || 
						keyboard_key == 52 || 
						keyboard_key == 53 || 
						keyboard_key == 54 || 
						keyboard_key == 55 || 
						keyboard_key == 56 || 
						keyboard_key == 57 || 
						keyboard_key == 48 ) && !tab_is_typing{
						tab_val_string += keyboard_lastchar;
						tab_type_timer = tab_type_timer_def;
						tab_type_start = true;
						tab_is_typing = true;
						current_arr[@visible_selected][@2] = real(tab_val_string);
						}
						
						
						
						if (keyboard_key == 0)
						tab_held_key = 0;
						else 
						tab_held_key = keyboard_lastkey;
						
						if (keyboard_lastkey != tab_held_key){
							tab_is_typing = false;
						}
						
	
						
						if (tab_type_start && tab_type_timer > 0){
							tab_type_timer--;
							if (tab_type_timer == 0){
								tab_type_timer = tab_type_timer_def;
								tab_type_start = false;
								tab_val_string = "0";
							}
						}
			

					}


					
					
					
					
					current_arr[@visible_selected][@2] = clamp(current_arr[visible_selected][2], 0,current_arr[visible_selected][3]);
			}

			

			list_selected = clamp(list_selected, 0, array_length_1d(current_arr) - max_visible);
			visible_selected = clamp(visible_selected, 0, array_length_1d(current_arr) - 1);
			}
			
	break;
}



break;

case 3:
//DO NOT TOUCH ANYTHING HERE
    if (attack == AT_TAUNT && get_training_cpu_action() != CPU_FIGHT && !down_down && !instance_exists(oTestPlayer)){
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



#define draw_item(type, text_y, selected, current_sel, item)


switch(type){

    case 0: //Notations
        draw_set_alpha(0.5);

        if (selected == current_sel)
        draw_rectangle_colour(camera_x + 150, camera_y + text_y + 100, camera_x + 800, camera_y + text_y + 148, tab_notation_col1, tab_notation_col1, tab_notation_col2, tab_notation_col2, false);
        else
        draw_rectangle_colour(camera_x + 150, camera_y + text_y + 100, camera_x + 800, camera_y + text_y + 148, tab_inactivenotation_col, tab_inactivenotation_col, tab_inactivenotation_col, tab_inactivenotation_col, false);

        draw_set_alpha(1);

        draw_text_outline(camera_x + 160, camera_y + text_y + 104, string(current_arr[current_sel][1]), asset_get("fName"), fa_left, fa_top, tab_notationtitle_col, c_black);

        draw_set_font(font_get("_notation"));
        draw_text_color(camera_x + 200, camera_y + text_y + 116, string(current_arr[current_sel][2]), c_white, c_white, c_white, c_white, 1);

        draw_text_outline(camera_x + 799, camera_y + text_y + 104, string(current_arr[current_sel][3]), asset_get("fName"), fa_right, fa_top, tab_notationcom_col, c_black);

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

        draw_text_outline(camera_x + 475, camera_y + text_y + 124, string(current_arr[current_sel][1]), asset_get("medFont"), fa_center, fa_center, tab_categorytext_col, c_black);

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

        draw_text_outline(camera_x + 160, camera_y + text_y + 106, string(current_arr[current_sel][1]), asset_get("medFont"), fa_left, fa_top, tab_tiptitle_col, c_black);

        draw_set_font(font_get("_notation"));
        draw_set_halign( fa_right );
        draw_text_color(camera_x + 800, camera_y + text_y + 100, string(current_arr[current_sel][2]), c_white, c_white, c_white, c_white, 1);

        draw_text_outline(camera_x + 200, camera_y + text_y + 138, string(current_arr[current_sel][3]), asset_get("fName"), fa_left, fa_top, tab_tipcom_col, c_black);

        draw_set_font(asset_get("fName"));

        draw_set_halign( fa_left );
        draw_set_valign( fa_top );
        draw_text_color(camera_x + 154, camera_y + text_y + 186, string(item), c_white, c_white, c_white, c_white, 0.1);

    break;

    case 3: //Settings ON OFF
        draw_set_alpha(0.5);

        if (selected == current_sel){
            switch (current_arr[current_sel][2]){
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

        draw_text_outline(camera_x + 160, camera_y + text_y + 106, string(current_arr[current_sel][1]), asset_get("medFont"), fa_left, fa_top, tab_settitle_col, c_black);

            switch (current_arr[current_sel][2]){
                case 0:
                    draw_text_outline(camera_x + 475, camera_y + text_y + 106, "OFF", asset_get("medFont"), fa_center, fa_top, tab_setoff_col, c_black);
                break;
                case 1:
                    draw_text_outline(camera_x + 475, camera_y + text_y + 106, "ON", asset_get("medFont"), fa_center, fa_top, tab_seton_col, c_black);
                break;
            }


        draw_text_outline(camera_x + 799, camera_y + text_y + 104, string(current_arr[current_sel][3]), asset_get("fName"), fa_right, fa_top, tab_setcom_col, c_black);

        draw_set_font(asset_get("fName"));
        draw_set_halign( fa_left );
        draw_set_valign( fa_top );
        draw_text_color(camera_x + 154, camera_y + text_y + 134, string(item), c_white, c_white, c_white, c_white, 0.1);

    break;

    case 4: //Settings Numbers
        draw_set_alpha(0.5);

        if (selected == current_sel){
            switch (current_arr[current_sel][2]){
                case 0:
                    draw_rectangle_colour(camera_x + 150, camera_y + text_y + 100, camera_x + 800, camera_y + text_y + 148, tab_setbaseoff_col1, tab_setbaseoff_col1, tab_setbaseoff_col2, tab_setbaseoff_col2, false);
                break;
                
                default:
                    draw_rectangle_colour(camera_x + 150, camera_y + text_y + 100, camera_x + 800, camera_y + text_y + 148, tab_setbaseon_col1, tab_setbaseon_col1, tab_setbaseon_col2, tab_setbaseon_col2, false);
                break;
            }
    	}
        else
        draw_rectangle_colour(camera_x + 150, camera_y + text_y + 100, camera_x + 800, camera_y + text_y + 148, tab_inactiveset_col, tab_inactiveset_col, tab_inactiveset_col, tab_inactiveset_col, false);

        draw_set_alpha(1);

        draw_text_outline(camera_x + 160, camera_y + text_y + 106, string(current_arr[current_sel][1]), asset_get("medFont"), fa_left, fa_top, tab_settitle_col, c_black);



		if (tab_type_timer == tab_type_timer_def || selected != current_sel){
        		
            switch (current_arr[current_sel][2]){
                case 0:
                    draw_text_outline(camera_x + 475, camera_y + text_y + 106, "0", asset_get("medFont"), fa_center, fa_top, tab_setoff_col, c_black);
                break;
                default:
                    draw_text_outline(camera_x + 475, camera_y + text_y + 106, current_arr[current_sel][2], asset_get("medFont"), fa_center, fa_top, tab_seton_col, c_black);
                break;
                
            }
		}else if (selected == current_sel){
			
			draw_text_outline(camera_x + 475, camera_y + text_y + 106, current_arr[current_sel][2], asset_get("medFont"), fa_center, fa_top, c_white, c_black);
			
		}
            
            
            
            
		draw_rectangle_colour(camera_x + 425, camera_y + text_y + 130, camera_x + 525, camera_y + text_y + 140, tab_inactiveset_col, tab_inactiveset_col, tab_inactiveset_col, tab_inactiveset_col, false);
		
		draw_rectangle_colour(camera_x + 425, camera_y + text_y + 130, camera_x + 425 + (100 * (current_arr[current_sel][2]/current_arr[current_sel][3])), camera_y + text_y + 140, tab_seton_col, tab_seton_col, tab_seton_col, tab_seton_col, false);


        draw_text_outline(camera_x + 799, camera_y + text_y + 104, string(current_arr[current_sel][4]), asset_get("fName"), fa_right, fa_top, tab_setcom_col, c_black);

        draw_set_font(asset_get("fName"));
        draw_set_halign( fa_left );
        draw_set_valign( fa_top );
        draw_text_color(camera_x + 154, camera_y + text_y + 134, string(item), c_white, c_white, c_white, c_white, 0.1);

    break;
}