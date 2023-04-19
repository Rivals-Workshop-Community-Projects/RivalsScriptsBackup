#macro BOX_VOICE_ENABLE 0
#macro BOX_COLOR_PAGE 1

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

#macro CURSOR_HOVER_SHOULD_DRAW 0
#macro CURSOR_HOVER_SPRITE_INDEX 1
#macro CURSOR_HOVER_IMAGE_INDEX 2
#macro CURSOR_HOVER_DRAW_X 3
#macro CURSOR_HOVER_DRAW_Y 4
#macro CURSOR_HOVER_MENU_BUTTON 5



// Sub Menu Logic
switch(draw_menu){
    
    case DRAW_NO_MENU: // No Menu only Draw Sub Menu Button
        //suppress_cursor = false;
        // Detect Cursor for sub menu 
        Detect_Cursor(BOX_VOICE_ENABLE,menu_box[BOX_VOICE_ENABLE][BUTTON_IX],menu_box[BOX_VOICE_ENABLE][BUTTON_EX],menu_box[BOX_VOICE_ENABLE][BUTTON_IY],menu_box[BOX_VOICE_ENABLE][BUTTON_EY]);
        Detect_Cursor(BOX_COLOR_PAGE,menu_box[BOX_COLOR_PAGE][BUTTON_IX],menu_box[BOX_COLOR_PAGE][BUTTON_EX],menu_box[BOX_COLOR_PAGE][BUTTON_IY],menu_box[BOX_COLOR_PAGE][BUTTON_EY]);

        // Sub Menu Button Pressed
        if(menu_box[BOX_VOICE_ENABLE][BUTTON_PRESSED]){ 
            //Set Menu to be drawn in CSS Draw
            //draw_menu = DRAW_MENU_SUB_MENU;
            if(!mute_audio){
                sound_play(asset_get("mfx_coin"));
                mute_audio = true;
            }
            else{
                mute_audio = false;
            }
            // Unlatch button presss
            menu_box[@BOX_VOICE_ENABLE][@BUTTON_PRESSED] = false;
        }
        
        // Sub Menu Button Pressed
        if(menu_box[BOX_COLOR_PAGE][BUTTON_PRESSED]){ 
            //Set Menu to be drawn in CSS Draw
            //draw_menu = DRAW_MENU_SUB_MENU;
            if(!color_shift){
                sound_play(asset_get("mfx_coin"));
                color_shift = true;
            }
            else{
                color_shift = false;
            }
            
            // Calls init_shader manually on color shift
            manual_init_shader_call = true;
            init_shader();

            // Unlatch button presss
            menu_box[@BOX_COLOR_PAGE][@BUTTON_PRESSED] = false;
        }
    break;
}

if(last_frame_color_alt != get_player_color(player)){
	last_frame_color_alt = get_player_color(player);
	manual_init_shader_call = true;
	init_shader();
}


generated_var = generate_synced_var(color_shift, 1, mute_audio, 1);

set_synced_var(player, real(generated_var));

//print(get_synced_var(player));


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

#define Detect_Cursor(button_number,temp_ix,temp_ex,temp_iy,temp_ey)
{
    var cursor_x = get_instance_x(cursor_id);
    var cursor_y = get_instance_y(cursor_id);

    if(button_number){
        if((cursor_x > temp_ix && cursor_x < temp_ex) && (cursor_y > temp_iy && cursor_y < temp_ey)){
            //print("Cursor on button " + string(button_number));
            menu_box[@button_number][@BUTTON_CURSOR_DETECTED] = true;
            menu_box[@button_number][@BUTTON_SPRITE_INDEX] = "css_color_page_highlight";
            suppress_cursor = true;
            
        }
        else {
            //print("Cursor not button " + string(button_number));
            menu_box[@button_number][@BUTTON_CURSOR_DETECTED] = false;
            menu_box[@button_number][@BUTTON_SPRITE_INDEX] = "css_color_page";
            //suppress_cursor = false;
        }
        
        //print(menu_box[button_number][BUTTON_CURSOR_DETECTED]);
    
        // Detect if menu button is pressed
        if(menu_box[button_number][BUTTON_CURSOR_DETECTED] == true && menu_a_pressed){
            menu_box[@button_number][@BUTTON_PRESSED] = true;
            // Set cursor to no longer be drawn
            //draw_cursor_info_hover[@CURSOR_HOVER_SHOULD_DRAW] = false;
            sound_play(asset_get( "mfx_option" ),false,noone,1,1);
        }
    } else {
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
            //draw_cursor_info_hover[@CURSOR_HOVER_SHOULD_DRAW] = false;
            sound_play(asset_get( "mfx_option" ),false,noone,1,1);
        }
        
    }
}

#define Highlight_Current_Selected_Button(current_button_selected)
{

    menu_box[@current_button_selected][@BUTTON_SPRITE_INDEX] = "css_menu_buttons_highlight";

}