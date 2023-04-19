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

// Menu variables
current_box_draw = 0;

// Color Shifter
last_frame_color_alt = get_player_color(player); // Color slot variable for memory
color_shift = 0;
total_num_color_shifts = 2; // change this to add more shifts


// Set sprite offset to align the buttons to the size, currently it is a 64x64 (after 2x scaling)
sprite_change_offset("css_menu_buttons", 16, 16);
sprite_change_offset("css_menu_buttons_highlight", 16, 16);

sprite_change_offset("css_color_page", 16, 16);
sprite_change_offset("css_color_page_highlight", 16, 16);

//#region Synced Variable
// Supersonic's Synched Variable Code
generated_var = 0;

// Recall shader on selecting character or returning from match
manual_init_shader_call = true;
//init_shader();


// Declare an multidimensional array ahead of time to hold each menu box array
menu_box = [];
menu_box[BOX_VOICE_ENABLE] = [];

color_box = [];
color_box[BOX_COLOR_PAGE] = [];

// Set Menu Draw Array
draw_menu = DRAW_NO_MENU;
num_of_menu_boxes = 1;

// Menu Buttons
create_menu_box(BOX_VOICE_ENABLE,"voice_enabled",x +190, y + 50,32,32,"css_menu_buttons",0);
create_menu_box(BOX_COLOR_PAGE,"color_page",x +190, y + 80,32,32,"css_color_page",0);
// Supersonic's Synched Variable Code
generated_var = 0;
mute_audio = 0;

//This function takes the bit lengths you put in the previous function, in the same order, and outputs an array with the values you put in (assuming you put in the correct bit lengths), also in the same order.
//split_var = split_synced_var(bit_length_1, bit_length_2...);
split_var = split_synced_var(1, 1);
color_shift = split_var[0];
mute_audio = split_var[1];


#define create_menu_box(number,name,center_x,center_y,width,height,sprite_index,image_index)
{
    var ix = center_x - (width/2);
    var ex = center_x + (width/2);
    var iy = center_y - (height/2);
    var ey = center_y + (height/2);
    
    var cursor_detected = false;
    var button_pressed = false;
    var cursor_hover_timer = 0;
    
    // Draw function, may need to do this later as with will not always be drawing
    //draw_sprite_ext(sprite_get(sprite_index),image_index,center_x,center_y,1,1,0,c_white,1)
    
    //Create array because avoiding using DS_MAP in CSS
    menu_box[number] = [
    name, //0
    ix, //1
    ex, //2
    iy, //3
    ey, //4
    sprite_index, //5
    image_index, //6
    cursor_detected, // 7
    button_pressed, // 8
    cursor_hover_timer // 9
    ];
}

#define split_synced_var
///args chunk_lengths...
var num_chunks = argument_count;
var chunk_arr = array_create(argument_count);
var synced_var = get_synced_var(player);
var chunk_offset = 0
for (var i = 0; i < num_chunks; i++) {
    var chunk_len = argument[i]; //print(chunk_len);
    var chunk_mask = (1 << chunk_len)-1
    chunk_arr[i] = (synced_var >> chunk_offset) & chunk_mask;
    //print(`matching shift = ${chunk_len}`);
    chunk_offset += chunk_len;
}
//print(chunk_arr);
return chunk_arr;