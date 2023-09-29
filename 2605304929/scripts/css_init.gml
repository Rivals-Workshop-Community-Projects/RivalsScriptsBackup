/*
CSS Template by Opengunner
Uses functions created by Muno and Hyuponia

New Functions (NONE OF THESE WORK ONLINE GIIK PLZ SEND HELP)
cursor_id
get_instance_x(cursor_id)
get_instance_y(cursor_id)
css_update.gml now has the variable suppress_cursor, which disables most CSS functionality every frame it’s set to `true`, 
which lets workshop characters have custom menu options without the color change or playtest functions getting in the way.
suppress_cursor does not work online?
menu_a_press

Items Used:
css_tgp_icon (Depreciated)
css_tlc_icon
css_menu_buttons
css_menu_buttons_highlighted
css_guide_qr
idle
css_icon
css_cursor_hover
Need to condense these to lower loading times

Theory and Explanation
/* Plan 
- In init:
- Need export sprites for the buttons - 7 slots 1 menu and 6 sub buttons.
- Need to align the button sprite using sprite offset (Just 1 time should work)
- Use a function to create a box in table in code given an name / center_x / center_y / width / height / sprite index / image index
- Store info for each box in a multidimensional array. Detection will need the top left x/y and the bottom right x/y to detect if in field
- Assume that we want to draw with a center x and y with a box radius since that how centered sprites work
Variables
c = cursor (c.x is cursor x)
ix = initial x
iy = initial y
ex = end x (ix + w)
ey = end y (iy + h)
mx = midpoint x (ix + (w/2))
my = midpoint y (iy + (h/2))
Region Map
x=0 y=0 assume Y goes up as it goes downwards
                c.y < iy 
        ix/iy-------------------ex
        | c.x > ix && c.x < ex  |
        |                       | 
c.x < ix|         (mx,my)       | c.x > ex
        | c.y > iy && c.y < ex  |
        |                       |
        ey-----------------------ex/ey
                c.y > ey 
                

desired detection range is if((c.x > ix && c.x < ex) && (c.y > iy && c.y < ex))

Given mx,my,w,and h
ix = mx - (w/2)
ex = mx + (w/2)
iy = my - (h/2)
ey = my + (h/2)

// ----- Actual Code section

// Set sprite offset to align the buttons to the size, currently it is a 64x64 (after 2x scaling)
sprite_change_offset("css_menu_buttons", 16, 16);

// Declare an multidimensional array ahead of time to hold each menu box array
menu_box = [][];

// Set Menu Button
create_menu_box(0,"Menu",190,130,64,64,"css_menu_icons",0);

function create_menu_box(number,name,center_x,center_y,width,height,sprite_index,image_index)
{
    var ix = center_x - (width/2);
    var ex = center_x + (width/2);
    var iy = center_y - (height/2);
    var ey = center_y + (height/2);
    
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
    image_index //6
    ];
}

function draw_menu_button(menu_box[number])
{
    var center_x = ((ex - ix) / 2) + temp_x;
    var center_y = ((ey - iy) / 2) + temp_y;
    
    draw_sprite_ext(sprite_get(sprite_index),image_index,center_x,center_y,1,1,0,c_white,1));
}

    
- Set each sub image to a specific button slot in init
- Set the x/y location of the buttons and width and height in init. Menu Button should be in current TGP logo area.

-- Forumla to create a rectangular field. 
- Need to draw a small button for main menu at bottom right corner where TLC is.
- Need to set Hyu's detect cursor code as a function

This should be one function that detecks where attack pressed occurs and then determine if a button is associated with it:
- Once button is drawn, it will need to detect the cursor
- If cursor is detected, then the function will need to determine if an input is pressed
- Detect if that button is hit using attack_down
- Draw full sub menu with buttons: Color Shift / Character Lore / Character Stats / Dev information / Blank menu / Blank Menu

need range of ix and ex for menu button, call array for each menu button and detect if within range.

var cursor_x = get_instance_x(cursor_id)
var cursor_y = get_instance_y(cursor_id)

for(var i = 0; i > num_of_menu_boxes,i++){
    // Assign temp value from arrays
    var temp_ix = menu_button[i][1];
    var temp_ex, menu_button[i][2];
    var temp_iy, menu_button[i][3];
    var temp_ey, menu_button[i][4];
    
    // Detect cursor
    // if((c.x > ix && c.x < ex) && (c.y > iy && c.y < ex))  proto formula
    if((cursor_x > temp_ix && cursor_x < temp_ex) && (cursor_y > temp_iy && cursor_y < temp_ey)){
        print("Cursor on button " + string(i));
        menu_button[i][7] = true;
    }
    else menu_button[i][7] = false;
    
    // Detect if menu button is pressed
    if(menu_button[i][7] == true && menu_a_press(){
        menu_button[i][8] = true;
        print("Button pressed" + string(i));
    }
}

// Submenu button routine
if(menu_button[0][8]){ // Sub Menu Button Pressed
    print("sub menu button pressed")
    draw_sub_menu = true;
}


- Shift Colors
- Hitting the button will open a sub menu with the color shift numbers (2 for now)
- There is a multipler in the data indices that adds multiple 32s to the index before drawing, so the index can use numbers larger than 32
- Setting colors has to happen on the fly as the color slots cannot be stored at init time due to max 32 colors. 

- If the input is pressed, use a function to add to current color shift
- If the input is pressed again, reset color shift to 0 ( as I don't have more than 64 colors)
*/

/* To Add a Box
- Create Macro for constant number
- Create the box uing the box function in init
- Initialize the box in a menu in update.
- draw the box in the menu using draw.
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

/* OLD
// Variables Declarations
dial_time = 0; // Used for transparncy
dial_max = 100; // Used for transparncy
color_desc_activate = true; // optional "alt color description button". set to "true" to turn it on.
col_max = 32; // number of alternate color palettes. 0 is the default color, count it accordingly.
color_picker_alt_index = 0;
*/
// Menu variables
current_box_draw = 0;
button_latch_timer = 0;

//sprite_change_offset("tgp_icon",17,17);
sprite_change_offset("css_guide_qr", 25, 25);

// Set up Timer Function
timer = 1;
current_button_selected = 0;

// Set sprite offset to align the buttons to the size, currently it is a 64x64 (after 2x scaling)
sprite_change_offset("css_menu_buttons", 16, 16);
sprite_change_offset("css_menu_buttons_highlight", 16, 16);
sprite_change_offset("css_cursor_hover", 16, 16);
sprite_change_offset("idle", 128, 128);
sprite_change_offset("css_icon", 7, 7);
sprite_change_offset("css_tlc_icon",12,12);

// Declare an multidimensional array ahead of time to hold each menu box array
menu_box = [];
menu_box[BOX_SUB_MENU] = [];
menu_box[BOX_COLOR_ALTS] = [];
menu_box[BOX_EXTRA_OPTIONS] = [];
menu_box[BOX_LORE_INFO] = [];
menu_box[BOX_CHARACTER_GUIDE] = [];
menu_box[BOX_DEV_INFO] = [];
menu_box[BOX_CLOSE_MENU] = [];
menu_box[BOX_CLOSE_INTERAL_MENU] = [];

// Set Menu Draw Array
draw_menu = DRAW_NO_MENU;
num_of_menu_boxes = 1;

// Draw Cursor Hover Info Array
draw_cursor_info_hover = [];
draw_cursor_info_hover[CURSOR_HOVER_SHOULD_DRAW] = false;
draw_cursor_info_hover[CURSOR_HOVER_SPRITE_INDEX] = sprite_get("css_cursor_hover");
draw_cursor_info_hover[CURSOR_HOVER_IMAGE_INDEX] = 0;
draw_cursor_info_hover[CURSOR_HOVER_DRAW_X] = 0;
draw_cursor_info_hover[CURSOR_HOVER_DRAW_Y] = 0;
draw_cursor_info_hover[CURSOR_HOVER_MENU_BUTTON] = 0;

// Set Menu Buttons
// Sub Menu Button
create_menu_box(BOX_SUB_MENU,"Menu",x + 86, y + 18,32,32,"css_menu_buttons",0);
// 6 Button Layout
var row_x = x + 60;
var row_y = y + 75;
create_menu_box(BOX_COLOR_ALTS,"Color_Alts",row_x,row_y,32,32,"css_menu_buttons",1);
create_menu_box(BOX_EXTRA_OPTIONS,"Extra Options",row_x + 40,row_y,32,32,"css_menu_buttons",2);
create_menu_box(BOX_LORE_INFO,"Lore Info",row_x + 80,row_y,32,32,"css_menu_buttons",3);
create_menu_box(BOX_CHARACTER_GUIDE,"Character Guide",row_x,row_y + 40,32,32,"css_menu_buttons",4);
create_menu_box(BOX_DEV_INFO,"Dev Info",row_x + 40,row_y + 40,32,32,"css_menu_buttons",5);
create_menu_box(BOX_CLOSE_MENU,"Close Menu",row_x + 80,row_y + 40,32,32,"css_menu_buttons",6);
// Sub Menu Close Button
create_menu_box(BOX_CLOSE_INTERAL_MENU,"Close Sub Menu",x + 86, y + 18,32,32,"css_menu_buttons",6); // Reuse Couse Menu Sprite
//Color Menu More Alts button
create_menu_box(BOX_SHIFT_COLOR_ALTS,"Alt_shifter",x + 20,y + 70,32,32,"css_menu_buttons",1);
// Extra Options Menu Buttons
row_x = x + 20
row_y = y + 70;
create_menu_box(BOX_WIN_QUOTE_ENABLE,"Win Quote",row_x,row_y,32,32,"css_menu_buttons",7);
//create_menu_box(BOX_INTRO_DIALOG_ENABLE,"Intro Dialog",row_x,row_y + 40,32,32,"css_menu_buttons",8); //Disabled for riptide cannot finish in time

// Initialie colors
initialize_color_slot_info();

// Color Shifter
last_frame_color_alt = 0; // Color slot variable for memory
color_shift = 0;
run_init_shader_for_character_draw = false;
num_of_shifted_alts = 0;

// Supersonic's Synched Variable Code
generated_var = 0;
flag_win_quote_enabled = false;
flag_round_start_dialog = false;

//#region Synced Variable

// Synced Variable Stuff -Should run to reset these valus on game load
/* Synced Variable should account for these. We have 32 bits to work with.
1. Color Shift - 2 bits - Off / Extra 1 / Extra 2
2. Status of Win Quotes Enabled - 1 bit
3. Status of Round Start Dialog Enabled - 1 bit 
*/
//This function takes the bit lengths you put in the previous function, in the same order, and outputs an array with the values you put in (assuming you put in the correct bit lengths), also in the same order.
//split_var = split_synced_var(bit_length_1, bit_length_2...);
split_var = split_synced_var(2,1,1);
//print(split_var);
/*
print(split_var[0]); // Color_Shift;
print(split_var[1]); // WinQuote
print(split_var[2]); // Round Start Dialog
*/
color_shift = split_var[0];
flag_win_quote_enabled = split_var[1];
flag_round_start_dialog = split_var[2];

//print("color_shift: " + string(color_shift)); // Color_Shift;
//print("flag_win_quote_enabled: " + string(flag_win_quote_enabled)); // WinQuote
//print("flag_round_start_dialog: "+ string(flag_win_quote_enabled)); // Round Start Dialog

// Recall shader on select
manual_init_shader_call = true;
init_shader();
/*
print("color_shift: " + string(color_shift));
print("flag_win_quote_enabled: " + string(flag_win_quote_enabled));
print("flag_round_start_dialog: " + string(flag_round_start_dialog));
*/
//#endregion

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

#define initialize_color_slot_info()
{
// Color Slot Indexs
	//slot_property_array variable, array of character entry data.
	//0,0 Name of the pallet
	//0,1 Credit to the sources
	//0,2 Description after hitting the button
	// Line for Credit
	var color_slot = 0;
	var sub_element_slot = 0;
    
	// Slot 0
	slot_property_array[color_slot,sub_element_slot] = "Daora";sub_element_slot++;
	slot_property_array[color_slot,sub_element_slot] = "Default Palette";sub_element_slot++;
	slot_property_array[color_slot,sub_element_slot] = "Everything I ever loved was destroyed in a single day. I will make sure that Loxodont will pay.";sub_element_slot++;
	color_slot++;sub_element_slot = 0;
	// Slot 
	slot_property_array[color_slot,sub_element_slot] = "OG Colors";sub_element_slot++;
	slot_property_array[color_slot,sub_element_slot] = "Original Palette";sub_element_slot++;
	slot_property_array[color_slot,sub_element_slot] = "The lake of my home village runs red with the blood of my family.";sub_element_slot++;
	color_slot++;sub_element_slot = 0;
	//Slot 
	slot_property_array[color_slot,sub_element_slot] = "Mechanical Bird";sub_element_slot++;
	slot_property_array[color_slot,sub_element_slot] = "Klockwurth Colors";sub_element_slot++;
	slot_property_array[color_slot,sub_element_slot] = "I used to know Cosworth before he became the shell of what he is now...";sub_element_slot++;
	color_slot++;sub_element_slot = 0;
	//Slot 
	slot_property_array[color_slot,sub_element_slot] = "Tricks and Clones";sub_element_slot++;
	slot_property_array[color_slot,sub_element_slot] = "Roekoko Colors";sub_element_slot++;
	slot_property_array[color_slot,sub_element_slot] = "Roekoko is a pupil like no other. She will one day surpass me.";sub_element_slot++;
	color_slot++;sub_element_slot = 0;
	//Slot 
	slot_property_array[color_slot,sub_element_slot] = "Sailee";sub_element_slot++;
	slot_property_array[color_slot,sub_element_slot] = "Character by Opengunner";sub_element_slot++;
	slot_property_array[color_slot,sub_element_slot] = "Being powerful comes with a responsibility. I cannot imagine a world where I had no morals...";sub_element_slot++;
	color_slot++;sub_element_slot = 0;
	//Slot 
	slot_property_array[color_slot,sub_element_slot] = "Iroh";sub_element_slot++;
	slot_property_array[color_slot,sub_element_slot] = "Character by SoA";sub_element_slot++;
	slot_property_array[color_slot,sub_element_slot] = "Somebody told me I look like one of my ancestors with a wig...";sub_element_slot++;
	color_slot++;sub_element_slot = 0;
	//Slot 5
	slot_property_array[color_slot,sub_element_slot] = "Lyca";sub_element_slot++;
	slot_property_array[color_slot,sub_element_slot] = "Character by SoA";sub_element_slot++;
	slot_property_array[color_slot,sub_element_slot] = "There are legends of a spectre that weaponized her own children.";sub_element_slot++;
	color_slot++;sub_element_slot = 0;
	//Slot 
	slot_property_array[color_slot,sub_element_slot] = "Zerra";sub_element_slot++;
	slot_property_array[color_slot,sub_element_slot] = "Character by SoA";sub_element_slot++;
	slot_property_array[color_slot,sub_element_slot] = "A true marvel to behold the grace of an ice skater. I aspire for such grace.";sub_element_slot++;
	color_slot++;sub_element_slot = 0;
	//Slot 
	slot_property_array[color_slot,sub_element_slot] = "Rykenburn";sub_element_slot++;
	slot_property_array[color_slot,sub_element_slot] = "Character by Harbige12";sub_element_slot++;
	slot_property_array[color_slot,sub_element_slot] = "I studied martial arts pioneered by a Fire Capital General named Rykenburn.";sub_element_slot++;
	color_slot++;sub_element_slot = 0;
	//Slot 
	slot_property_array[color_slot,sub_element_slot] = "Flicorian";sub_element_slot++;
	slot_property_array[color_slot,sub_element_slot] = "Color for CAMaera";sub_element_slot++;
	slot_property_array[color_slot,sub_element_slot] = "The odds are against us, but I have many friends...";sub_element_slot++;
	color_slot++;sub_element_slot = 0;
	//Slot 
	slot_property_array[color_slot,sub_element_slot] = "Hikaru";sub_element_slot++;
	slot_property_array[color_slot,sub_element_slot] = "Character by Lukaru";sub_element_slot++;
	slot_property_array[color_slot,sub_element_slot] = "I admire powerful illusionary Magic, you can get what you want without being destructive.";sub_element_slot++;
	color_slot++;sub_element_slot = 0;
	//Slot
	slot_property_array[color_slot,sub_element_slot] = "Zinogre";sub_element_slot++;
	slot_property_array[color_slot,sub_element_slot] = "Monster Hunter Color";sub_element_slot++;
	slot_property_array[color_slot,sub_element_slot] = "The wrath of thunder descends...";sub_element_slot++;
	color_slot++;sub_element_slot = 0;
	//Slot 
	slot_property_array[color_slot,sub_element_slot] = "Namielle";sub_element_slot++;
	slot_property_array[color_slot,sub_element_slot] = "Monster Hunter Color";sub_element_slot++;
	slot_property_array[color_slot,sub_element_slot] = "A distant dark tide...";sub_element_slot++;
	color_slot++;sub_element_slot = 0;
	//Slot 
	slot_property_array[color_slot,sub_element_slot] = "Kunoichi";sub_element_slot++;
	slot_property_array[color_slot,sub_element_slot] = "Color for Regina";sub_element_slot++;
	slot_property_array[color_slot,sub_element_slot] = "I spent alot of time operating in the shadows, more than I care to admit...";sub_element_slot++;
	color_slot++;sub_element_slot = 0;
	//Slot 
	slot_property_array[color_slot,sub_element_slot] = "Tuqiu";sub_element_slot++;
	slot_property_array[color_slot,sub_element_slot] = "Character by Talemon";sub_element_slot++;
	slot_property_array[color_slot,sub_element_slot] = "My anger lingers long after, would I remain a vengeful spirit after I fall?";sub_element_slot++;
	color_slot++;sub_element_slot = 0;
	//Slot 15
	slot_property_array[color_slot,sub_element_slot] = "Walkya";sub_element_slot++;
	slot_property_array[color_slot,sub_element_slot] = "Character by Loglord";sub_element_slot++;
	slot_property_array[color_slot,sub_element_slot] = "Ferocity and rage in all of its beauty.";sub_element_slot++;
	color_slot++;sub_element_slot = 0;
	//Slot 
	slot_property_array[color_slot,sub_element_slot] = "Blood Moon";sub_element_slot++;
	slot_property_array[color_slot,sub_element_slot] = "Color for Causeimapilot";sub_element_slot++;
	slot_property_array[color_slot,sub_element_slot] = "The moon shifts the tide, it ebbs and flows, like blood in my eyes.";sub_element_slot++;
	color_slot++;sub_element_slot = 0;
	//Slot 
	slot_property_array[color_slot,sub_element_slot] = "Voidborn";sub_element_slot++;
	slot_property_array[color_slot,sub_element_slot] = "Color for Dragou";sub_element_slot++;
	slot_property_array[color_slot,sub_element_slot] = "An improvised weapon can be just as deadly as real one. We can fight with tools.";sub_element_slot++;
	color_slot++;sub_element_slot = 0;
	//Slot 
	slot_property_array[color_slot,sub_element_slot] = "Sacramentum";sub_element_slot++;
	slot_property_array[color_slot,sub_element_slot] = "Color for Masqerade";sub_element_slot++;
	slot_property_array[color_slot,sub_element_slot] = "Loosely based off the band Mili's mascot, Torino.";sub_element_slot++;
	color_slot++;sub_element_slot = 0;
	//Slot 
	slot_property_array[color_slot,sub_element_slot] = "Mirror";sub_element_slot++;
	slot_property_array[color_slot,sub_element_slot] = "Color for Shen";sub_element_slot++;
	slot_property_array[color_slot,sub_element_slot] = "It is hard to look in the mirror sometimes.";sub_element_slot++;
	color_slot++;sub_element_slot = 0;
	//Slot 20
	slot_property_array[color_slot,sub_element_slot] = "Stormy Night";sub_element_slot++;
	slot_property_array[color_slot,sub_element_slot] = "Color for Wasteofaname";sub_element_slot++;
	slot_property_array[color_slot,sub_element_slot] = "I love a rainy night...";sub_element_slot++;
	color_slot++;sub_element_slot = 0;
	//Slot 
	slot_property_array[color_slot,sub_element_slot] = "FuRi's Edge";sub_element_slot++;
	slot_property_array[color_slot,sub_element_slot] = "Color for FuRi";sub_element_slot++;
	slot_property_array[color_slot,sub_element_slot] = "I can and will rush anybody if they threaten me or my friends. No-one is safe from my grasp.";sub_element_slot++;
	color_slot++;sub_element_slot = 0;
	//Slot 
	slot_property_array[color_slot,sub_element_slot] = "Marlow";sub_element_slot++;
	slot_property_array[color_slot,sub_element_slot] = "Color for Zonyx";sub_element_slot++;
	slot_property_array[color_slot,sub_element_slot] = "Faster than greased lighting.";sub_element_slot++;
	color_slot++;sub_element_slot = 0;
	//Slot 
	slot_property_array[color_slot,sub_element_slot] = "Solarei";sub_element_slot++;
	slot_property_array[color_slot,sub_element_slot] = "Character by Opengunner";sub_element_slot++;
	slot_property_array[color_slot,sub_element_slot] = "The Sun is sometimes fierce and sometimes gentle...";sub_element_slot++;
	color_slot++;sub_element_slot = 0;
	//Slot 25
	slot_property_array[color_slot,sub_element_slot] = "Amaterasu";sub_element_slot++;
	slot_property_array[color_slot,sub_element_slot] = "Okami Color";sub_element_slot++;
	slot_property_array[color_slot,sub_element_slot] = "Call upon the Sun to vanquish darkness across the land";sub_element_slot++;
	color_slot++;sub_element_slot = 0;
	//Slot 
	slot_property_array[color_slot,sub_element_slot] = "Zeraora";sub_element_slot++;
	slot_property_array[color_slot,sub_element_slot] = "Pokemon Color";sub_element_slot++;
	slot_property_array[color_slot,sub_element_slot] = "I can run as fast as lightning strikes, and shredding my opponents with high-voltage claws.";sub_element_slot++;
	color_slot++;sub_element_slot = 0;
	//Slot 
	slot_property_array[color_slot,sub_element_slot] = "Astra";sub_element_slot++;
	slot_property_array[color_slot,sub_element_slot] = "Character by Wishdream";sub_element_slot++;
	slot_property_array[color_slot,sub_element_slot] = "The stars guided me home many nights when I lost my way.";sub_element_slot++;
	color_slot++;sub_element_slot = 0;
	//Slot 
	slot_property_array[color_slot,sub_element_slot] = "Trans Rights";sub_element_slot++;
	slot_property_array[color_slot,sub_element_slot] = "Support Pallet";sub_element_slot++;
	slot_property_array[color_slot,sub_element_slot] = "Trans Rights";sub_element_slot++;
	color_slot++;sub_element_slot = 0;
	//Slot 
	slot_property_array[color_slot,sub_element_slot] = "BLM";sub_element_slot++;
	slot_property_array[color_slot,sub_element_slot] = "Support Pallet";sub_element_slot++;
	slot_property_array[color_slot,sub_element_slot] = "Black Lives Matter";sub_element_slot++;
	color_slot++;sub_element_slot = 0;
	//Slot 
	slot_property_array[color_slot,sub_element_slot] = "Smash Land";sub_element_slot++;
	slot_property_array[color_slot,sub_element_slot] = "GBA Pallet";sub_element_slot++;
	slot_property_array[color_slot,sub_element_slot] = "I long for the days of old. Back when everything was simple.";sub_element_slot++;
	color_slot++;sub_element_slot = 0;
	//Slot  30
	slot_property_array[color_slot,sub_element_slot] = "Manga";sub_element_slot++;
	slot_property_array[color_slot,sub_element_slot] = "Flat Grayscale";sub_element_slot++;
	slot_property_array[color_slot,sub_element_slot] = "Things are not always black and white. There is some evil within me, and there is good in some evil.";sub_element_slot++;
	color_slot++;sub_element_slot = 0;
	
	//Slot 31 - Actual Slot 32, CANNOT USE LEAVE BLANK
	slot_property_array[color_slot,sub_element_slot] = "Name";sub_element_slot++;
	slot_property_array[color_slot,sub_element_slot] = "Pallet Decription";sub_element_slot++;
	slot_property_array[color_slot,sub_element_slot] = "Flavor Text";sub_element_slot++;
	color_slot++;sub_element_slot = 0;
	
	// Color Selector Shift 1
	// This is not actually in game slot 32, since that crashes online, this overrides starting at slot 0 again
	
		//Slot 32 
	slot_property_array[color_slot,sub_element_slot] = "Can't Shift Alt 0";sub_element_slot++;
	slot_property_array[color_slot,sub_element_slot] = "Color Shifted Default";sub_element_slot++;
	slot_property_array[color_slot,sub_element_slot] = "The default color cannot be shifted due to the way code works.";sub_element_slot++;
	color_slot++;sub_element_slot = 0;
	    //Slot 33
	slot_property_array[color_slot,sub_element_slot] = "RaB";sub_element_slot++;
	slot_property_array[color_slot,sub_element_slot] = "Round-A-Bouts";sub_element_slot++;
	slot_property_array[color_slot,sub_element_slot] = "Join the RaB bracket every Monday at 7:30PM Est";sub_element_slot++;
	color_slot++;sub_element_slot = 0;
	    //Slot 
	slot_property_array[color_slot,sub_element_slot] = "COTA";sub_element_slot++;
	slot_property_array[color_slot,sub_element_slot] = "Call of the Abyss";sub_element_slot++;
	slot_property_array[color_slot,sub_element_slot] = "Join the COTA bracket every Wednesday at 7:30PM Est";sub_element_slot++;
	color_slot++;sub_element_slot = 0;
		//Slot 35
	slot_property_array[color_slot,sub_element_slot] = "FTL";sub_element_slot++;
	slot_property_array[color_slot,sub_element_slot] = "Forbidden Training Lounge";sub_element_slot++;
	slot_property_array[color_slot,sub_element_slot] = "Join the FTL bracket every Thursday at 7:30PM Est";sub_element_slot++;
	color_slot++;sub_element_slot = 0;
		//Slot 
	slot_property_array[color_slot,sub_element_slot] = "WSE";sub_element_slot++;
	slot_property_array[color_slot,sub_element_slot] = "Workshop's Elite";sub_element_slot++;
	slot_property_array[color_slot,sub_element_slot] = "Join the WSE bracket every Friday at 7:30PM Est";sub_element_slot++;
	color_slot++;sub_element_slot = 0;
		//Slot 
	slot_property_array[color_slot,sub_element_slot] = "WORMs";sub_element_slot++;
	slot_property_array[color_slot,sub_element_slot] = "WS Open Ranked Monthly";sub_element_slot++;
	slot_property_array[color_slot,sub_element_slot] = "Join the WORMS bracket every Saturday at 7:30PM Est";sub_element_slot++;
	color_slot++;sub_element_slot = 0;
		//Slot 40
	slot_property_array[color_slot,sub_element_slot] = "Heatwave";sub_element_slot++;
	slot_property_array[color_slot,sub_element_slot] = "Heatwave";sub_element_slot++;
	slot_property_array[color_slot,sub_element_slot] = "Character at Heatwave 2021 WS Bracket";sub_element_slot++;
	color_slot++;sub_element_slot = 0;
		//Slot 
	slot_property_array[color_slot,sub_element_slot] = "BB";sub_element_slot++;
	slot_property_array[color_slot,sub_element_slot] = "Blueberry Bout";sub_element_slot++;
	slot_property_array[color_slot,sub_element_slot] = "Character was in BB, bracket is now archived";sub_element_slot++;
	color_slot++;sub_element_slot = 0;
		//Slot 
	slot_property_array[color_slot,sub_element_slot] = "TLC";sub_element_slot++;
	slot_property_array[color_slot,sub_element_slot] = "Pallet Description";sub_element_slot++;
	slot_property_array[color_slot,sub_element_slot] = "Flavor Text";sub_element_slot++;
	color_slot++;sub_element_slot = 0;
		//Slot 
	slot_property_array[color_slot,sub_element_slot] = "FW";sub_element_slot++;
	slot_property_array[color_slot,sub_element_slot] = "Pallet Description";sub_element_slot++;
	slot_property_array[color_slot,sub_element_slot] = "Flavor Text";sub_element_slot++;
	color_slot++;sub_element_slot = 0;
		//Slot 
	slot_property_array[color_slot,sub_element_slot] = "Scrimsho";sub_element_slot++;
	slot_property_array[color_slot,sub_element_slot] = "";sub_element_slot++;
	slot_property_array[color_slot,sub_element_slot] = "";sub_element_slot++;
	color_slot++;sub_element_slot = 0;
		//Slot 
	slot_property_array[color_slot,sub_element_slot] = "Riptide";sub_element_slot++;
	slot_property_array[color_slot,sub_element_slot] = "2022 Riptide Bracket";sub_element_slot++;
	slot_property_array[color_slot,sub_element_slot] = "Character at Riptide 2022 WS Bracket";sub_element_slot++;
	color_slot++;sub_element_slot = 0;
	//Slot 
	slot_property_array[color_slot,sub_element_slot] = "Genesis";sub_element_slot++;
	slot_property_array[color_slot,sub_element_slot] = "Genesis 9";sub_element_slot++;
	slot_property_array[color_slot,sub_element_slot] = "Character at Genesis 8 & 9 2022/2023 WS Bracket";sub_element_slot++;
	color_slot++;sub_element_slot = 0;
		//Slot 
	slot_property_array[color_slot,sub_element_slot] = "R-00";sub_element_slot++;
	slot_property_array[color_slot,sub_element_slot] = "Character by Archytas";sub_element_slot++;
	slot_property_array[color_slot,sub_element_slot] = "These infernal robots will be the end of all of us if we continue to weaponize them.";sub_element_slot++;
	color_slot++;sub_element_slot = 0;
		//Slot 
	slot_property_array[color_slot,sub_element_slot] = "Flake";sub_element_slot++;
	slot_property_array[color_slot,sub_element_slot] = "Character by Lukaru";sub_element_slot++;
	slot_property_array[color_slot,sub_element_slot] = "The sun glistens off the snow so beautifully.";sub_element_slot++;
	color_slot++;sub_element_slot = 0;
		//Slot 
	slot_property_array[color_slot,sub_element_slot] = "Dazz";sub_element_slot++;
	slot_property_array[color_slot,sub_element_slot] = "Character by Jerome";sub_element_slot++;
	slot_property_array[color_slot,sub_element_slot] = "Using magic for show is a very nice novelty. I wish my magic wasn't so destructive.";sub_element_slot++;
	color_slot++;sub_element_slot = 0;
		//Slot 45
	slot_property_array[color_slot,sub_element_slot] = "Delphox";sub_element_slot++;
	slot_property_array[color_slot,sub_element_slot] = "Pokemon Color";sub_element_slot++;
	slot_property_array[color_slot,sub_element_slot] = "Sometimes the best way to fix something is to burn it down and start anew.";sub_element_slot++;
	color_slot++;sub_element_slot = 0;
		//Slot 45
	slot_property_array[color_slot,sub_element_slot] = "Zoroark";sub_element_slot++;
	slot_property_array[color_slot,sub_element_slot] = "Pokemon Color";sub_element_slot++;
	slot_property_array[color_slot,sub_element_slot] = "Illusionary magic is wonderful. I hope I can learn to become adept at it in the future.";sub_element_slot++;
	color_slot++;sub_element_slot = 0;
		//Slot 
	slot_property_array[color_slot,sub_element_slot] = "Driftblim";sub_element_slot++;
	slot_property_array[color_slot,sub_element_slot] = "Pokemon Color";sub_element_slot++;
	slot_property_array[color_slot,sub_element_slot] = "I am a wayward soul. I go where the wind takes me, and it has guided me well so far.";sub_element_slot++;
	color_slot++;sub_element_slot = 0;
		//Slot 
	slot_property_array[color_slot,sub_element_slot] = "Maractus";sub_element_slot++;
	slot_property_array[color_slot,sub_element_slot] = "Pokemon Color";sub_element_slot++;
	slot_property_array[color_slot,sub_element_slot] = "The desert is a harsh environment. That may be the one place were I have absoultely no power.";sub_element_slot++;
	color_slot++;sub_element_slot = 0;
		//Slot 50
	slot_property_array[color_slot,sub_element_slot] = "Baiken";sub_element_slot++;
	slot_property_array[color_slot,sub_element_slot] = "Character from Samsho";sub_element_slot++;
	slot_property_array[color_slot,sub_element_slot] = "To continue fighting even if you are gravely injured is the way of my ancestors.";sub_element_slot++;
	color_slot++;sub_element_slot = 0;
		//Slot 
	slot_property_array[color_slot,sub_element_slot] = "Ikazuchi";sub_element_slot++;
	slot_property_array[color_slot,sub_element_slot] = "Pocky & Rocky Character";sub_element_slot++;
	slot_property_array[color_slot,sub_element_slot] = "I have held a couple of roles, but my job as a shrine maiden was the most relaxed.";sub_element_slot++;
	color_slot++;sub_element_slot = 0;
		//Slot 
	slot_property_array[color_slot,sub_element_slot] = "U-Sa";sub_element_slot++;
	slot_property_array[color_slot,sub_element_slot] = "Character by Usagibun1";sub_element_slot++;
	slot_property_array[color_slot,sub_element_slot] = "When my family was destroyed. I felt a part of me shatter. I would never be whole or complete again.";sub_element_slot++;
	color_slot++;sub_element_slot = 0;
		//Slot 
	slot_property_array[color_slot,sub_element_slot] = "Unbackedcon";sub_element_slot++;
	slot_property_array[color_slot,sub_element_slot] = "Color for Unbackedcon";sub_element_slot++;
	slot_property_array[color_slot,sub_element_slot] = "I must admit, the neon lights in he city are quite dazzling.";sub_element_slot++;
	color_slot++;sub_element_slot = 0;
		//Slot 55
	slot_property_array[color_slot,sub_element_slot] = "Unfiltered Fury";sub_element_slot++;
	slot_property_array[color_slot,sub_element_slot] = "Color for Raging Bagon";sub_element_slot++;
	slot_property_array[color_slot,sub_element_slot] = "My fury can get the best of me, and cause me to do things I regret.";sub_element_slot++;
	color_slot++;sub_element_slot = 0;
		//Slot 
	slot_property_array[color_slot,sub_element_slot] = "Mako";sub_element_slot++;
	slot_property_array[color_slot,sub_element_slot] = "Kill la Kill Color";sub_element_slot++;
	slot_property_array[color_slot,sub_element_slot] = "When I am not fighting evil, I can be a tad lazy... ";sub_element_slot++;
	color_slot++;sub_element_slot = 0;
		//Slot 
	slot_property_array[color_slot,sub_element_slot] = "Baja";sub_element_slot++;
	slot_property_array[color_slot,sub_element_slot] = "";sub_element_slot++;
	slot_property_array[color_slot,sub_element_slot] = "";sub_element_slot++;
	color_slot++;sub_element_slot = 0;
		//Slot 
	slot_property_array[color_slot,sub_element_slot] = "Zexiphi";sub_element_slot++;
	slot_property_array[color_slot,sub_element_slot] = "";sub_element_slot++;
	slot_property_array[color_slot,sub_element_slot] = "";sub_element_slot++;
	color_slot++;sub_element_slot = 0;
		//Slot 60
	slot_property_array[color_slot,sub_element_slot] = "Yuupi";sub_element_slot++;
	slot_property_array[color_slot,sub_element_slot] = "Color for MrLasa / Chamma";sub_element_slot++;
	slot_property_array[color_slot,sub_element_slot] = "I was hated as a child for being a half-breed. But my lineage makes me stronger than most.";sub_element_slot++;
	color_slot++;sub_element_slot = 0;
		//Slot 
	slot_property_array[color_slot,sub_element_slot] = "Neo Wolf";sub_element_slot++;
	slot_property_array[color_slot,sub_element_slot] = "Color for TehEnd";sub_element_slot++;
	slot_property_array[color_slot,sub_element_slot] = "Roekoko and I typically fight along side each other. We compliment each other's weakness well.";sub_element_slot++;
	color_slot++;sub_element_slot = 0;
		//Slot 
	slot_property_array[color_slot,sub_element_slot] = "Ouro Kronii";sub_element_slot++;
	slot_property_array[color_slot,sub_element_slot] = "Color for Jmillions";sub_element_slot++;
	slot_property_array[color_slot,sub_element_slot] = "The slow cruel hands of time has taken their toll on me.";sub_element_slot++;
	color_slot++;sub_element_slot = 0;
		//Slot 64 DO NOT USE
	slot_property_array[color_slot,sub_element_slot] = "64 Not used yet";sub_element_slot++;
	slot_property_array[color_slot,sub_element_slot] = "Pallet Description";sub_element_slot++;
	slot_property_array[color_slot,sub_element_slot] = "Flavor Text";sub_element_slot++;
	color_slot++;sub_element_slot = 0;
	
	// Where Extra 2 would start
		//Slot 
	slot_property_array[color_slot,sub_element_slot] = "Can't Shift Alt 0";sub_element_slot++;
	slot_property_array[color_slot,sub_element_slot] = "Color Shifted Default";sub_element_slot++;
	slot_property_array[color_slot,sub_element_slot] = "The default color cannot be shifted due to the way code works.";sub_element_slot++;
	color_slot++;sub_element_slot = 0;
		//Slot 
	slot_property_array[color_slot,sub_element_slot] = "Craum";sub_element_slot++;
	slot_property_array[color_slot,sub_element_slot] = "Alt for Craum";sub_element_slot++;
	slot_property_array[color_slot,sub_element_slot] = "";sub_element_slot++;
	color_slot++;sub_element_slot = 0;
		//Slot 
	slot_property_array[color_slot,sub_element_slot] = "Zaora";sub_element_slot++;
	slot_property_array[color_slot,sub_element_slot] = "Alt for MGAM";sub_element_slot++;
	slot_property_array[color_slot,sub_element_slot] = "";sub_element_slot++;
	color_slot++;sub_element_slot = 0;
		//Slot 
	slot_property_array[color_slot,sub_element_slot] = "Nezuko";sub_element_slot++;
	slot_property_array[color_slot,sub_element_slot] = "";sub_element_slot++;
	slot_property_array[color_slot,sub_element_slot] = "";sub_element_slot++;
	color_slot++;sub_element_slot = 0;
		//Slot 
	slot_property_array[color_slot,sub_element_slot] = "Kumaki";sub_element_slot++;
	slot_property_array[color_slot,sub_element_slot] = "Alt for EcK$";sub_element_slot++;
	slot_property_array[color_slot,sub_element_slot] = "";sub_element_slot++;
	color_slot++;sub_element_slot = 0;
		//Slot 
	slot_property_array[color_slot,sub_element_slot] = "Ringtail";sub_element_slot++;
	slot_property_array[color_slot,sub_element_slot] = "Color for The Burger TV";sub_element_slot++;
	slot_property_array[color_slot,sub_element_slot] = "I can be sneaky and resourcesful when I need to be. It doesn't come up much though.";sub_element_slot++;
	color_slot++;sub_element_slot = 0;
			//Slot 
	slot_property_array[color_slot,sub_element_slot] = "Keiki";sub_element_slot++;
	slot_property_array[color_slot,sub_element_slot] = "Touhou character";sub_element_slot++;
	slot_property_array[color_slot,sub_element_slot] = "There are sprits all around us. Show everything respect.";sub_element_slot++;
	color_slot++;sub_element_slot = 0;
		//Slot 
	slot_property_array[color_slot,sub_element_slot] = "Nakiri Ayame";sub_element_slot++;
	slot_property_array[color_slot,sub_element_slot] = "Vtuber Character";sub_element_slot++;
	slot_property_array[color_slot,sub_element_slot] = "I get a lot of questions about the horns. I am half dragon, not an Oni.";sub_element_slot++;
	color_slot++;sub_element_slot = 0;
			//Slot 
	slot_property_array[color_slot,sub_element_slot] = "Slime";sub_element_slot++;
	slot_property_array[color_slot,sub_element_slot] = "Color for Prober";sub_element_slot++;
	slot_property_array[color_slot,sub_element_slot] = "Slime is a sign that something is unclean. Not really what I want to see or step in.";sub_element_slot++;
	color_slot++;sub_element_slot = 0;
			//Slot 
	slot_property_array[color_slot,sub_element_slot] = "Tak";sub_element_slot++;
	slot_property_array[color_slot,sub_element_slot] = "Character by Tak";sub_element_slot++;
	slot_property_array[color_slot,sub_element_slot] = "I would never use a plasma sword, it is the ultimate tool of aggression from the Neo Fire Capital.";sub_element_slot++;
	color_slot++;sub_element_slot = 0;
	//Slot 
	slot_property_array[color_slot,sub_element_slot] = "Autumn Leaves";sub_element_slot++;
	slot_property_array[color_slot,sub_element_slot] = "Colors for Bee";sub_element_slot++;
	slot_property_array[color_slot,sub_element_slot] = "";sub_element_slot++;
	color_slot++;sub_element_slot = 0;
		//Slot 
	slot_property_array[color_slot,sub_element_slot] = "Golden Dragon";sub_element_slot++;
	slot_property_array[color_slot,sub_element_slot] = "Ribbon by MrLasa";sub_element_slot++;
	slot_property_array[color_slot,sub_element_slot] = "";sub_element_slot++;
	color_slot++;sub_element_slot = 0;
		//Slot 
	slot_property_array[color_slot,sub_element_slot] = "Pure Furies";sub_element_slot++;
	slot_property_array[color_slot,sub_element_slot] = "Junko for Renecup";sub_element_slot++;
	slot_property_array[color_slot,sub_element_slot] = "";sub_element_slot++;
	color_slot++;sub_element_slot = 0;
		//Slot 
	slot_property_array[color_slot,sub_element_slot] = "Rushing Rei";sub_element_slot++;
	slot_property_array[color_slot,sub_element_slot] = "Giovanna(GG) for Inverted";sub_element_slot++;
	slot_property_array[color_slot,sub_element_slot] = "";sub_element_slot++;
	color_slot++;sub_element_slot = 0;
		//Slot 
	slot_property_array[color_slot,sub_element_slot] = "Lilac";sub_element_slot++;
	slot_property_array[color_slot,sub_element_slot] = "Alt by Cam for Aperson";sub_element_slot++;
	slot_property_array[color_slot,sub_element_slot] = "";sub_element_slot++;
	color_slot++;sub_element_slot = 0;
		//Slot 
	slot_property_array[color_slot,sub_element_slot] = "Bloody Roar";sub_element_slot++;
	slot_property_array[color_slot,sub_element_slot] = "Alt by Flasher";sub_element_slot++;
	slot_property_array[color_slot,sub_element_slot] = "";sub_element_slot++;
	color_slot++;sub_element_slot = 0;
		//Slot 
	slot_property_array[color_slot,sub_element_slot] = "Vaporwave";sub_element_slot++;
	slot_property_array[color_slot,sub_element_slot] = "Alt for Jashy";sub_element_slot++;
	slot_property_array[color_slot,sub_element_slot] = "";sub_element_slot++;
	color_slot++;sub_element_slot = 0;
		//Slot 
	slot_property_array[color_slot,sub_element_slot] = "Mint";sub_element_slot++;
	slot_property_array[color_slot,sub_element_slot] = "Alt for Furi";sub_element_slot++;
	slot_property_array[color_slot,sub_element_slot] = "";sub_element_slot++;
	color_slot++;sub_element_slot = 0;

	
		num_of_shifted_alts = color_slot - 96;
		
	//print(num_of_shifted_alts);
	// Fill out rest with placeholders
	for(var current_color_slot = color_slot;current_color_slot < 95;current_color_slot++;){
		slot_property_array[current_color_slot,0] = slot_property_array[current_color_slot - 32,0];
		slot_property_array[current_color_slot,1] = slot_property_array[current_color_slot - 32,1];
		slot_property_array[current_color_slot,2] = slot_property_array[current_color_slot - 32,2];
	}

/*
	Blank Version
	//Slot 
	slot_property_array[color_slot,sub_element_slot] = "Name";sub_element_slot++;
	slot_property_array[color_slot,sub_element_slot] = "Pallet Description";sub_element_slot++;
	slot_property_array[color_slot,sub_element_slot] = "Flavor Text";sub_element_slot++;
	color_slot++;sub_element_slot = 0;
*/
}