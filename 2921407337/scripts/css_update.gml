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
#macro BOX_TOGGLE_SL 10

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

if("timer" not in self){exit;}

timer++;
if(timer > 256){timer = 1;} // reset timers

//CSS SFX - From Frostine / VVizard when picked
var charuuid = string(sprite_get("idle"));
	if ("css_char" not in self || css_char != charuuid) {
        css_char = charuuid;
        sound_play(sound_get( "howl" ),false,noone,.85,1); // soundID,looping,panning,volume,pitch};
}
// Different Alt selection, MUST be before UE is normally assigned
if(last_frame_color_alt != get_player_color(player)){
	sound_stop(asset_get( "mfx_change_color" ));
	sound_play(sound_get( "WHIP" ),false,noone,.8,1);
}

//Handle setting portraits
switch(portrait_to_use){
	case 0: // Default Roekoko
		set_ui_element(UI_CHARSELECT, get_char_info(player, INFO_CHARSELECT));
	break;
	case 1: // Ninetailed Roekoko
		set_ui_element(UI_CHARSELECT, sprite_get("9t-charselect"));
	break;
	case 2: // Neco Roekoko
		set_ui_element(UI_CHARSELECT, sprite_get("portrait_neco_roe_css"));
	break;
	default:
	break;
}


// Sub Menu Logic
//print(draw_menu)
switch(draw_menu){
    
    case DRAW_NO_MENU: // No Menu only Draw Sub Menu Button
        //suppress_cursor = false;
        // Detect Cursor for sub menu 
        Detect_Cursor(BOX_SUB_MENU,menu_box[BOX_SUB_MENU][BUTTON_IX],menu_box[BOX_SUB_MENU][BUTTON_EX],menu_box[BOX_SUB_MENU][BUTTON_IY],menu_box[BOX_SUB_MENU][BUTTON_EY]);
        /*
        // Detect Button Section
        current_button_selected = 0;
        if(menu_lb_down && menu_rb_down){
            menu_box[@BOX_SUB_MENU][@BUTTON_PRESSED] = true;
            current_button_selected = 1;
        }
        */
        // Sub Menu Button Pressed
        if(menu_box[BOX_SUB_MENU][BUTTON_PRESSED]){ 
            //Set Menu to be drawn in CSS Draw
            draw_menu = DRAW_MENU_SUB_MENU;
            // Unlatch button presss
            menu_box[@BOX_SUB_MENU][@BUTTON_PRESSED] = false;
        }
    break;
    
    case DRAW_MENU_SUB_MENU:
        //suppress_cursor = true;
        current_box_draw = 1;
        // Detect Cursor Section
        Detect_Cursor(current_box_draw,menu_box[current_box_draw][BUTTON_IX],menu_box[current_box_draw][BUTTON_EX],menu_box[current_box_draw][BUTTON_IY],menu_box[current_box_draw][BUTTON_EY]);current_box_draw++;
        Detect_Cursor(current_box_draw,menu_box[current_box_draw][BUTTON_IX],menu_box[current_box_draw][BUTTON_EX],menu_box[current_box_draw][BUTTON_IY],menu_box[current_box_draw][BUTTON_EY]);current_box_draw++;
        Detect_Cursor(current_box_draw,menu_box[current_box_draw][BUTTON_IX],menu_box[current_box_draw][BUTTON_EX],menu_box[current_box_draw][BUTTON_IY],menu_box[current_box_draw][BUTTON_EY]);current_box_draw++;
        Detect_Cursor(current_box_draw,menu_box[current_box_draw][BUTTON_IX],menu_box[current_box_draw][BUTTON_EX],menu_box[current_box_draw][BUTTON_IY],menu_box[current_box_draw][BUTTON_EY]);current_box_draw++;
        Detect_Cursor(current_box_draw,menu_box[current_box_draw][BUTTON_IX],menu_box[current_box_draw][BUTTON_EX],menu_box[current_box_draw][BUTTON_IY],menu_box[current_box_draw][BUTTON_EY]);current_box_draw++;
        Detect_Cursor(current_box_draw,menu_box[current_box_draw][BUTTON_IX],menu_box[current_box_draw][BUTTON_EX],menu_box[current_box_draw][BUTTON_IY],menu_box[current_box_draw][BUTTON_EY]);current_box_draw++;
        
        /*
        //print("current_button_selected" + string(current_button_selected));
        //Detect Button Input Section
        if(menu_lb_pressed){
            current_button_selected--;
        }
        if(menu_rb_pressed){
            current_button_selected++;
        }
        if(menu_a_pressed){
            menu_box[@current_button_selected][@BUTTON_PRESSED] = true;
        }
        //Loop and apply position
        if(current_button_selected < 1){ current_button_selected = 6;} // Loop back to 5
        if(current_button_selected > 6){ current_button_selected = 1;} // Loop Back to 0
        // Highlight current box
        menu_box[@current_button_selected][@BUTTON_CURSOR_DETECTED] = true;
        Highlight_Current_Selected_Button(current_button_selected);
        */
        //Menu Tranisition System
        // Character Guide
        if(menu_box[BOX_CHARACTER_GUIDE][BUTTON_PRESSED] == true){
            draw_menu = DRAW_MENU_CHARACTER_GUIDE;
            menu_box[@BOX_CHARACTER_GUIDE][@BUTTON_PRESSED] = false;
        }
        // Lore Info
        if(menu_box[BOX_LORE_INFO][BUTTON_PRESSED] == true){
            draw_menu = DRAW_MENU_LORE_INFO;
            menu_box[@BOX_LORE_INFO][@BUTTON_PRESSED] = false;
        }
        // Color Selector
        if(menu_box[BOX_COLOR_ALTS][BUTTON_PRESSED] == true){
            draw_menu = DRAW_MENU_COLOR_ALTS;
            menu_box[@BOX_COLOR_ALTS][@BUTTON_PRESSED] = false;
        }
        // Dev Info
        if(menu_box[BOX_DEV_INFO][BUTTON_PRESSED] == true){
            draw_menu = DRAW_MENU_DEV_INFO;
            menu_box[@BOX_DEV_INFO][@BUTTON_PRESSED] = false;
        }
        // Extra Options
        if(menu_box[BOX_EXTRA_OPTIONS][BUTTON_PRESSED] == true){
            draw_menu = DRAW_MENU_EXTRA_OPTIONS;
            menu_box[@BOX_EXTRA_OPTIONS][@BUTTON_PRESSED] = false;
        }
        // Exit Menu
        if(menu_box[BOX_CLOSE_MENU][BUTTON_PRESSED] == true){
            draw_menu = DRAW_NO_MENU;
            menu_box[@BOX_CLOSE_MENU][@BUTTON_PRESSED] = false;
        }
    break;
        
    case DRAW_MENU_CHARACTER_GUIDE: // Guide Menu
        //suppress_cursor = true;
        // Exit Button
        current_box_draw = BOX_CLOSE_INTERAL_MENU;
        Detect_Cursor(current_box_draw,menu_box[current_box_draw][BUTTON_IX],menu_box[current_box_draw][BUTTON_EX],menu_box[current_box_draw][BUTTON_IY],menu_box[current_box_draw][BUTTON_EY]);
        if(menu_box[BOX_CLOSE_INTERAL_MENU][BUTTON_PRESSED] == true){
            draw_menu = DRAW_MENU_SUB_MENU;
            menu_box[@BOX_CLOSE_INTERAL_MENU][@BUTTON_PRESSED] = false;
            menu_box[@BOX_CHARACTER_GUIDE][@BUTTON_PRESSED] = false;
        }
    break;
    
    case DRAW_MENU_LORE_INFO:
	    //suppress_cursor = true;
	    // Exit Button
	    current_box_draw = BOX_CLOSE_INTERAL_MENU;
	    Detect_Cursor(current_box_draw,menu_box[current_box_draw][BUTTON_IX],menu_box[current_box_draw][BUTTON_EX],menu_box[current_box_draw][BUTTON_IY],menu_box[current_box_draw][BUTTON_EY]);
	    if(menu_box[BOX_CLOSE_INTERAL_MENU][BUTTON_PRESSED] == true){
	        draw_menu = DRAW_MENU_SUB_MENU;
	        menu_box[@BOX_CLOSE_INTERAL_MENU][@BUTTON_PRESSED] = false;
	        menu_box[@BOX_LORE_INFO][@BUTTON_PRESSED] = false;
	    }
    break;
    
    case DRAW_MENU_COLOR_ALTS:
	    //suppress_cursor = true;
	    // Exit Button
	    current_box_draw = BOX_CLOSE_INTERAL_MENU;
	    Detect_Cursor(current_box_draw,menu_box[current_box_draw][BUTTON_IX],menu_box[current_box_draw][BUTTON_EX],menu_box[current_box_draw][BUTTON_IY],menu_box[current_box_draw][BUTTON_EY]);
	    // Color Shift Button
	    current_box_draw = BOX_SHIFT_COLOR_ALTS;
	    Detect_Cursor(current_box_draw,menu_box[current_box_draw][BUTTON_IX],menu_box[current_box_draw][BUTTON_EX],menu_box[current_box_draw][BUTTON_IY],menu_box[current_box_draw][BUTTON_EY]);
	    // Alt Outfit Button
	    current_box_draw = BOX_TOGGLE_SL;
	    Detect_Cursor(current_box_draw,menu_box[current_box_draw][BUTTON_IX],menu_box[current_box_draw][BUTTON_EX],menu_box[current_box_draw][BUTTON_IY],menu_box[current_box_draw][BUTTON_EY]);
	    
	    // Color SHift Button Pressed
	    if(menu_box[BOX_SHIFT_COLOR_ALTS][BUTTON_PRESSED] == true){
	        color_shift++;
	        if(color_shift > 1){
	            color_shift = 0;
	        }
	        manual_init_shader_call = true;
	        init_shader();
	        run_init_shader_for_character_draw = true;
	        menu_box[@BOX_SHIFT_COLOR_ALTS][@BUTTON_PRESSED] = false;
	        menu_box[@BOX_SHIFT_COLOR_ALTS][@BUTTON_CURSOR_HOVER_TIMER] = 0;
	    }
	    
	    // SL Toggle Button Pressed
	    if(menu_box[BOX_TOGGLE_SL][BUTTON_PRESSED] == true){
	        // Set variable
	        if(toggle_sl_sprite == false){ // If active, disable
	        	toggle_sl_sprite = true;
	        }
			else { // Otherwise, enable the skin
				toggle_sl_sprite = false;
			}
	        
	        menu_box[@BOX_TOGGLE_SL][@BUTTON_PRESSED] = false;
	        menu_box[@BOX_TOGGLE_SL][@BUTTON_CURSOR_HOVER_TIMER] = 0;
	    }
	    
	    // Exit Button Press
	    if(menu_box[BOX_CLOSE_INTERAL_MENU][BUTTON_PRESSED] == true){
	        draw_menu = DRAW_MENU_SUB_MENU;
	        menu_box[@BOX_CLOSE_INTERAL_MENU][@BUTTON_PRESSED] = false;
	        menu_box[@BOX_COLOR_ALTS][@BUTTON_PRESSED] = false;
	    }
    break;
    
	case DRAW_MENU_DEV_INFO:
		// Exit Button
	    current_box_draw = BOX_CLOSE_INTERAL_MENU;
	    Detect_Cursor(current_box_draw,menu_box[current_box_draw][BUTTON_IX],menu_box[current_box_draw][BUTTON_EX],menu_box[current_box_draw][BUTTON_IY],menu_box[current_box_draw][BUTTON_EY]);
	    if(menu_box[BOX_CLOSE_INTERAL_MENU][BUTTON_PRESSED] == true){
	        draw_menu = DRAW_MENU_SUB_MENU;
	        menu_box[@BOX_CLOSE_INTERAL_MENU][@BUTTON_PRESSED] = false;
	        menu_box[@BOX_DEV_INFO][@BUTTON_PRESSED] = false;
	    }
	break;
	
	case DRAW_MENU_EXTRA_OPTIONS:
		// Options Buttons Detection
		current_box_draw = BOX_WIN_QUOTE_ENABLE;
	    Detect_Cursor(current_box_draw,menu_box[current_box_draw][BUTTON_IX],menu_box[current_box_draw][BUTTON_EX],menu_box[current_box_draw][BUTTON_IY],menu_box[current_box_draw][BUTTON_EY]);
		
		// Set Buton Press Actions
		if(menu_box[BOX_WIN_QUOTE_ENABLE][BUTTON_PRESSED] == true){
			if(flag_win_quote_enabled == false){flag_win_quote_enabled = true;}
			else flag_win_quote_enabled = false;
	        menu_box[@BOX_WIN_QUOTE_ENABLE][@BUTTON_PRESSED] = false;
	        menu_box[@BOX_WIN_QUOTE_ENABLE][@BUTTON_CURSOR_HOVER_TIMER] = 0;
	        //print("flag_win_quote_enabled: " + string(flag_win_quote_enabled));
		}
		
		// Exit Button
	    current_box_draw = BOX_CLOSE_INTERAL_MENU;
	    Detect_Cursor(current_box_draw,menu_box[current_box_draw][BUTTON_IX],menu_box[current_box_draw][BUTTON_EX],menu_box[current_box_draw][BUTTON_IY],menu_box[current_box_draw][BUTTON_EY]);
	    if(menu_box[BOX_CLOSE_INTERAL_MENU][BUTTON_PRESSED] == true){
	        draw_menu = DRAW_MENU_SUB_MENU;
	        menu_box[@BOX_CLOSE_INTERAL_MENU][@BUTTON_PRESSED] = false;
	        menu_box[@BOX_EXTRA_OPTIONS][@BUTTON_PRESSED] = false;
	    }
	break;
}

// Last Frame Color Handing
if(last_frame_color_alt != get_player_color(player)){
last_frame_color_alt = get_player_color(player);
manual_init_shader_call = true;
init_shader();
}
/*
// Rainbow Alt Color Handling
if(get_player_color(player) == 27){
// Rainbox Color Code for CSS
	if("color_r" not in self){
		color_r = 255;
		color_b = 0;
		color_g = 0;
		color_type = 0;
		color_timer = 1; //Edit this value to change the speed of rainbow
	}
	RainBowColor(timer,1);
	
}
*/
//#region Synced Variable
// Synced Variable Stuff -Should run to reset these valus on game load
/* Synced Variable should account for these. We have 32 bits to work with.
1. Color Shift - 2 bits - Off / Extra 1 / Extra 2
2. Status of Win Quotes Enabled - 1 bit
*/

generated_var = generate_synced_var(color_shift,2,flag_win_quote_enabled,1)
set_synced_var(player, real(generated_var));
//print(generated_var);

//#endregion
/*
print(menu_a_down);
print(menu_y_down);
print(menu_lb_down);
print(menu_rb_down);
*/

//print(button_latch_timer)
// Menu opened

/*
// Submenu button routine
if(menu_button[0][8]){ // Sub Menu Button Pressed
    print("sub menu button pressed")
    draw_sub_menu = true;
}
*/
//print(menu_a_pressed);

#define Highlight_Current_Selected_Button(current_button_selected)
{

    menu_box[@current_button_selected][@BUTTON_SPRITE_INDEX] = "css_menu_buttons_highlight";

}
#define Detect_Cursor(button_number,temp_ix,temp_ex,temp_iy,temp_ey)
{
    var cursor_x = get_instance_x(cursor_id);
    var cursor_y = get_instance_y(cursor_id);

    if((cursor_x > temp_ix && cursor_x < temp_ex) && (cursor_y > temp_iy && cursor_y < temp_ey)){
        //print("Cursor on button " + string(button_number));
        menu_box[@button_number][@BUTTON_CURSOR_DETECTED] = true;
        menu_box[@button_number][@BUTTON_SPRITE_INDEX] = "css_menu_buttons_highlight";
        suppress_cursor = true;
        
    }
    else {
        //print("Cursor not button " + string(button_number));
        menu_box[@button_number][@BUTTON_CURSOR_DETECTED] = false;
        menu_box[@button_number][@BUTTON_SPRITE_INDEX] = "css_menu_buttons";
        //suppress_cursor = false;
    }
    
    //print(menu_box[button_number][BUTTON_CURSOR_DETECTED]);

    // Detect if menu button is pressed
    if(menu_box[button_number][BUTTON_CURSOR_DETECTED] == true && menu_a_pressed){
        menu_box[@button_number][@BUTTON_PRESSED] = true;
        // Set cursor to no longer be drawn
        draw_cursor_info_hover[@CURSOR_HOVER_SHOULD_DRAW] = false;
        sound_play(asset_get( "mfx_option" ),false,noone,1,1);
    }

}

#define Detect_Cursor_Supersonic(button_number,temp_ix,temp_ex,temp_iy,temp_ey)
{
    //Based on code from Supersonic
    //cursor_x[player],cursor_y[player]
    var cursors = array_create(5,noone);
    var player_cursor_x = array_create(5,0);
    var player_cursor_y = array_create(5,0);
    with(asset_get("cs_playercursor_obj")){
        if !instance_exists(self) continue;
        var plr = get_instance_player(self)
        cursors[plr] = self;    
        player_cursor_x[plr] = get_instance_x(self);    
        player_cursor_y[plr] = get_instance_y(self);    
    }

    var cursor_x = player_cursor_x[player];
    var cursor_y = player_cursor_y[player];
    var cursor_hover_time_activation_threshold = 60;
    // Detect Cursor and apply build up of timer.
    if((cursor_x > temp_ix && cursor_x < temp_ex) && (cursor_y > temp_iy && cursor_y < temp_ey)){
        //print("Cursor on button " + string(button_number));
        menu_box[@button_number][@BUTTON_CURSOR_DETECTED] = true;
        menu_box[@button_number][@BUTTON_SPRITE_INDEX] = "css_menu_buttons_highlight";
        menu_box[@button_number][@BUTTON_CURSOR_HOVER_TIMER]++;
        // Cursor Hover 
        draw_cursor_info_hover[@CURSOR_HOVER_SHOULD_DRAW] = true;
        draw_cursor_info_hover[@CURSOR_HOVER_MENU_BUTTON] = button_number;
        draw_cursor_info_hover[@CURSOR_HOVER_IMAGE_INDEX] = menu_box[button_number][BUTTON_CURSOR_HOVER_TIMER] / 10;
        draw_cursor_info_hover[@CURSOR_HOVER_DRAW_X] = cursor_x - 20;
        draw_cursor_info_hover[@CURSOR_HOVER_DRAW_Y] = cursor_y - 20;
        //suppress_cursor = true;
        
    } 
    else { // If no detection reset
        //print("Cursor not button " + string(button_number));
        menu_box[@button_number][@BUTTON_CURSOR_DETECTED] = false;
        menu_box[@button_number][@BUTTON_SPRITE_INDEX] = "css_menu_buttons";
        menu_box[@button_number][@BUTTON_CURSOR_HOVER_TIMER] = 0;
        //Cursor Hover
        //draw_cursor_info_hover[@CURSOR_HOVER_SHOULD_DRAW] = false;
        //draw_cursor_info_hover[@CURSOR_HOVER_MENU_BUTTON] = false;
        //suppress_cursor = false;
        
    }
    //print(menu_box[button_number][BUTTON_CURSOR_DETECTED]);
    // Detect if menu button is pressed
    if(menu_box[button_number][BUTTON_CURSOR_DETECTED] == true && menu_box[@button_number][@BUTTON_CURSOR_HOVER_TIMER] > cursor_hover_time_activation_threshold){
        menu_box[@button_number][@BUTTON_PRESSED] = true;
        // Set cursor to no longer be drawn
        draw_cursor_info_hover[@CURSOR_HOVER_SHOULD_DRAW] = false;
        sound_play(asset_get( "mfx_option" ),false,noone,1,1);
    }

}

#define generate_synced_var
///args chunks...
///Given pairs of chunks and their lengths in bits, compiles them into one value.
//arg format: chunk, bit_length, chunk, bit_length, etc.
var output = 0;
var num_chunks = argument_count/2;
if num_chunks != floor(num_chunks) {
    print("error generating synced var - function formatted wrong.");
    return 0;
}
var total_len = 0;
for (var i = num_chunks-1; i >= 0; i--) {
    var pos = (i*2);
    var shift = (pos-1 >= 0) ? argument[pos-1] : 0;
    total_len += argument[pos+1];
    output = output | argument[pos];
    output = output << shift;
}
if total_len > 32 {
    print(`error generating synced var - bit length surpassed 32! (${total_len} bits.)`);
    return 0;
}
return real(output);

#define RainBowColor(css_timer,color_speed_timer)
{
	//init_shader();
	if (css_timer % color_speed_timer == 0) {
	    switch(color_type) {
	        case 0: //Red Stay, Green Up
	            color_g += 1;
	            if (color_g >= 255) {
	                color_g = 255;
	                color_type += 1;
	            }
	        break;
	        case 1: //Green Stay, Red Down
	            color_r -= 1;
	            if (color_r <= 0) {
	                color_r = 0;
	                color_type += 1;
	            }
	        break;
	        case 2: //Green Stay, Blue Up
	            color_b += 1;
	            if (color_b >= 255) {
	                color_b = 255;
	                color_type += 1;
	            }
	        break;
	        case 3: //Blue Stay, Green Down  
	            color_g -= 1;
	            if (color_g <= 0) {
	                color_g = 0;
	                color_type += 1;
	            }
	        break;
	        case 4: //Blue Stay. Red Up
	            color_r += 1;
	            if (color_r >= 255) {
	                color_r = 255;
	                color_type += 1;
	            }
	        break;
	        case 5: //Red Stay, Blue Down
	            color_b -= 1;
	            if (color_b <= 0) {
	                color_b = 0;
	                color_type = 0;
	            }
	        break;
	        default:
	        break;
	    }
	}

	//set slots here
	with(asset_get("player_obj")){
        rainbowAlt(3); // //Kimono Accent
        rainbowAlt(4); // //Sash and Anklet
        rainbowAlt(6); // //Soul Fire 1
	}
//print(string(color_r) + ", " + string(color_g) + ", " + string(color_b))
}

  
#define rainbowAlt(profileNum)
    set_character_color_slot( argument[0], color_r, color_g, color_b);