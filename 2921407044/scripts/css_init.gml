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

// Menu variables
current_box_draw = 0;
button_latch_timer = 0;

//sprite_change_offset("css_guide_qr", 25, 25);

// Set up Timer Function
timer = 1;
current_button_selected = 0;

// Set sprite offset to align the buttons to the size, currently it is a 64x64 (after 2x scaling)
sprite_change_offset("css_menu_buttons", 16, 16);
sprite_change_offset("css_menu_buttons_highlight", 16, 16);
sprite_change_offset("css_cursor_hover", 16, 16);
sprite_change_offset("idle", 128, 170);
sprite_change_offset("css_tlc_icon",12,12);
//sprite_change_offset("css_guide_QR",26,26);

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

//SL Idle Sprite Toggle
css_idle_sprite_to_use = sprite_get("idle");
toggle_sl_sprite = false;

// Color Shifter
last_frame_color_alt = get_player_color(player); // Color slot variable for memory
color_shift = 0;
run_init_shader_for_character_draw = false;
num_of_shifted_alts = 0;

// Initialie colors
initialize_color_slot_info();

// Supersonic's Synched Variable Code
generated_var = 0;
flag_win_quote_enabled = false;
flag_round_start_dialog = false;
swap_nspec_dspec_input = false;
portrait_to_use = 0;

//#region Synced Variable

// Synced Variable Stuff -Should run to reset these valus on game load
/* Synced Variable should account for these. We have 32 bits to work with.
1. Color Shift - 2 bits - Off / Extra 1 / Extra 2
2. Status of Win Quotes Enabled - 1 bit
*/

//This function takes the bit lengths you put in the previous function, in the same order, and outputs an array with the values you put in (assuming you put in the correct bit lengths), also in the same order.
//split_var = split_synced_var(bit_length_1, bit_length_2...);
split_var = split_synced_var(2,1);
//print(split_var);
/*
print(split_var[0]); // Color_Shift;
print(split_var[1]); // WinQuote
*/
color_shift = split_var[0];
flag_win_quote_enabled = split_var[1];

//print("color_shift: " + string(color_shift)); // Color_Shift;
//print("flag_win_quote_enabled: " + string(flag_win_quote_enabled)); // WinQuote

// Recall shader on select
manual_init_shader_call = true;
init_shader();
/*
print("color_shift: " + string(color_shift));
print("flag_win_quote_enabled: " + string(flag_win_quote_enabled));

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
	slot_property_array[color_slot,sub_element_slot] = "Default";sub_element_slot++;
	slot_property_array[color_slot,sub_element_slot] = "Default Palette";sub_element_slot++;
	slot_property_array[color_slot,sub_element_slot] = "I was once the chief engineer of Loxodont's army. Now I will destroy what I built.";sub_element_slot++;
	color_slot++;sub_element_slot = 0;
	//Slot 
	slot_property_array[color_slot,sub_element_slot] = "OG Colors";sub_element_slot++;
	slot_property_array[color_slot,sub_element_slot] = "Colors before Rivals";sub_element_slot++;
	slot_property_array[color_slot,sub_element_slot] = "If only you had known me before the accident, what you see is what is left. ";sub_element_slot++;
	color_slot++;sub_element_slot = 0;
	// Slot 
	slot_property_array[color_slot,sub_element_slot] = "Water Dragon";sub_element_slot++;
	slot_property_array[color_slot,sub_element_slot] = "Daora Colors";sub_element_slot++;
	slot_property_array[color_slot,sub_element_slot] = "I have always admired Daora, composed even in the face of death. Wish I could be that brave.";sub_element_slot++;
	color_slot++;sub_element_slot = 0;
	//Slot 
	slot_property_array[color_slot,sub_element_slot] = "Tricks and Clones";sub_element_slot++;
	slot_property_array[color_slot,sub_element_slot] = "Roekoko Colors";sub_element_slot++;
	slot_property_array[color_slot,sub_element_slot] = "Roekoko's a little confused, but she's got the spirit.";sub_element_slot++;
	color_slot++;sub_element_slot = 0;
	//Slot 
	slot_property_array[color_slot,sub_element_slot] = "Jet Boosted";sub_element_slot++;
	slot_property_array[color_slot,sub_element_slot] = "Baja Colors";sub_element_slot++;
	slot_property_array[color_slot,sub_element_slot] = "Baja and I go way back, we were part of the Midnight Club street racers back in the day.";sub_element_slot++;
	color_slot++;sub_element_slot = 0;
	//Slot 
	slot_property_array[color_slot,sub_element_slot] = "Vanu Sovereignty";sub_element_slot++;
	slot_property_array[color_slot,sub_element_slot] = "Planetside Faction";sub_element_slot++;
	slot_property_array[color_slot,sub_element_slot] = "Might through Technology, but damn if it don't come at a cost.";sub_element_slot++;
	color_slot++;sub_element_slot = 0;
	//Slot 
	slot_property_array[color_slot,sub_element_slot] = "New Congolmerate";sub_element_slot++;
	slot_property_array[color_slot,sub_element_slot] = "Planetside Faction";sub_element_slot++;
	slot_property_array[color_slot,sub_element_slot] = "Freedom until Death, but death is close by these days.";sub_element_slot++;
	color_slot++;sub_element_slot = 0;
	//Slot 
	slot_property_array[color_slot,sub_element_slot] = "Terran Republic";sub_element_slot++;
	slot_property_array[color_slot,sub_element_slot] = "Planetside Faction";sub_element_slot++;
	slot_property_array[color_slot,sub_element_slot] = "Sometimes you gotta do it old school to get it done.";sub_element_slot++;
	color_slot++;sub_element_slot = 0;
	//Slot 5
	slot_property_array[color_slot,sub_element_slot] = "Aspect of Fear";sub_element_slot++;
	slot_property_array[color_slot,sub_element_slot] = "Phobos Colors for St. Dan";sub_element_slot++;
	slot_property_array[color_slot,sub_element_slot] = "No tears and no fears, that's the vision here.";sub_element_slot++;
	color_slot++;sub_element_slot = 0;
	//Slot 
	slot_property_array[color_slot,sub_element_slot] = "Bold Kobold";sub_element_slot++;
	slot_property_array[color_slot,sub_element_slot] = "Gelris Colors for LogLord";sub_element_slot++;
	slot_property_array[color_slot,sub_element_slot] = "What kind of job is adventuring anyways?";sub_element_slot++;
	color_slot++;sub_element_slot = 0;
	//Slot 
	slot_property_array[color_slot,sub_element_slot] = "Undead Companion";sub_element_slot++;
	slot_property_array[color_slot,sub_element_slot] = "Cracker Colors by SoA";sub_element_slot++;
	slot_property_array[color_slot,sub_element_slot] = "Being Undead ain't so bad, no soul left to steal.";sub_element_slot++;
	color_slot++;sub_element_slot = 0;
	//Slot 
	slot_property_array[color_slot,sub_element_slot] = "Empire's Enforcer";sub_element_slot++;
	slot_property_array[color_slot,sub_element_slot] = "Xillian Colors by Napkinbot";sub_element_slot++;
	slot_property_array[color_slot,sub_element_slot] = "There's few people who deserve a shotgun shell more than Xillian.";sub_element_slot++;
	color_slot++;sub_element_slot = 0;
	//Slot 
	slot_property_array[color_slot,sub_element_slot] = "Colorblind";sub_element_slot++;
	slot_property_array[color_slot,sub_element_slot] = "Grayscale Colors";sub_element_slot++;
	slot_property_array[color_slot,sub_element_slot] = "My color receptors are a bit faulty.";sub_element_slot++;
	color_slot++;sub_element_slot = 0;
	//Slot 
	slot_property_array[color_slot,sub_element_slot] = "Trans Rights";sub_element_slot++;
	slot_property_array[color_slot,sub_element_slot] = "Support Colors";sub_element_slot++;
	slot_property_array[color_slot,sub_element_slot] = "";sub_element_slot++;
	color_slot++;sub_element_slot = 0;
	//Slot 
	slot_property_array[color_slot,sub_element_slot] = "BLM";sub_element_slot++;
	slot_property_array[color_slot,sub_element_slot] = "Support Colors";sub_element_slot++;
	slot_property_array[color_slot,sub_element_slot] = "";sub_element_slot++;
	color_slot++;sub_element_slot = 0;
	//Slot 
	slot_property_array[color_slot,sub_element_slot] = "Road Warrior";sub_element_slot++;
	slot_property_array[color_slot,sub_element_slot] = "Mad Max Colors";sub_element_slot++;
	slot_property_array[color_slot,sub_element_slot] = "Sometimes all you can rely on is your car and your gun.";sub_element_slot++;
	color_slot++;sub_element_slot = 0;
	//Slot 
	slot_property_array[color_slot,sub_element_slot] = "Radiant Mercenary";sub_element_slot++;
	slot_property_array[color_slot,sub_element_slot] = "Ike Colors";sub_element_slot++;
	slot_property_array[color_slot,sub_element_slot] = "We fight for our homies, especially the fallen ones.";sub_element_slot++;
	color_slot++;sub_element_slot = 0;
	//Slot 
	slot_property_array[color_slot,sub_element_slot] = "Warrior of the Sun";sub_element_slot++;
	slot_property_array[color_slot,sub_element_slot] = "Solaire Colors";sub_element_slot++;
	slot_property_array[color_slot,sub_element_slot] = "Gotta take care of the homies, else they might get gone.";sub_element_slot++;
	color_slot++;sub_element_slot = 0;
	//Slot 
	slot_property_array[color_slot,sub_element_slot] = "Future Fowl";sub_element_slot++;
	slot_property_array[color_slot,sub_element_slot] = "Future Ducky Colors";sub_element_slot++;
	slot_property_array[color_slot,sub_element_slot] = "If you defeat multiple enemies in a row, you'll get ourselves a NICE bonus.";sub_element_slot++;
	color_slot++;sub_element_slot = 0;
	//Slot 
	slot_property_array[color_slot,sub_element_slot] = "Mountain Parrot";sub_element_slot++;
	slot_property_array[color_slot,sub_element_slot] = "Parrot Colors by CAMaera";sub_element_slot++;
	slot_property_array[color_slot,sub_element_slot] = "Who are you calling a parrot? Who? Hoot? Hoot?";sub_element_slot++;
	color_slot++;sub_element_slot = 0;
	//Slot 
	slot_property_array[color_slot,sub_element_slot] = "Flicorian";sub_element_slot++;
	slot_property_array[color_slot,sub_element_slot] = "Flicorian Colors by CAMaera";sub_element_slot++;
	slot_property_array[color_slot,sub_element_slot] = "";sub_element_slot++;
	color_slot++;sub_element_slot = 0;
	//Slot 
	slot_property_array[color_slot,sub_element_slot] = "Sunset";sub_element_slot++;
	slot_property_array[color_slot,sub_element_slot] = "Sunset Colors by CAMaera";sub_element_slot++;
	slot_property_array[color_slot,sub_element_slot] = "When the sun starts to set, that's when we started street racing. We were the Midnight Club.";sub_element_slot++;
	color_slot++;sub_element_slot = 0;
	//Slot
	slot_property_array[color_slot,sub_element_slot] = "Vapor";sub_element_slot++;
	slot_property_array[color_slot,sub_element_slot] = "Vapor Colors by CAMaera";sub_element_slot++;
	slot_property_array[color_slot,sub_element_slot] = "Vaporized Steam jump jets power my movement. Ain't as good as Baja's but they ain't bad.";sub_element_slot++;
	color_slot++;sub_element_slot = 0;
	//Slot 
	slot_property_array[color_slot,sub_element_slot] = "Stars & Projectors";sub_element_slot++;
	slot_property_array[color_slot,sub_element_slot] = "Lines Colors by CAMaera";sub_element_slot++;
	slot_property_array[color_slot,sub_element_slot] = "And the stars are projectors. Projectin' our lives down to this planet Earth";sub_element_slot++;
	color_slot++;sub_element_slot = 0;
	//Slot 25
	slot_property_array[color_slot,sub_element_slot] = "24";sub_element_slot++;
	slot_property_array[color_slot,sub_element_slot] = "";sub_element_slot++;
	slot_property_array[color_slot,sub_element_slot] = "";sub_element_slot++;
	color_slot++;sub_element_slot = 0;
	//Slot 
	slot_property_array[color_slot,sub_element_slot] = "25";sub_element_slot++;
	slot_property_array[color_slot,sub_element_slot] = "";sub_element_slot++;
	slot_property_array[color_slot,sub_element_slot] = "";sub_element_slot++;
	color_slot++;sub_element_slot = 0;
	//Slot 
	slot_property_array[color_slot,sub_element_slot] = "26";sub_element_slot++;
	slot_property_array[color_slot,sub_element_slot] = "";sub_element_slot++;
	slot_property_array[color_slot,sub_element_slot] = "";sub_element_slot++;
	color_slot++;sub_element_slot = 0;
	//Slot 
	slot_property_array[color_slot,sub_element_slot] = "27";sub_element_slot++;
	slot_property_array[color_slot,sub_element_slot] = "";sub_element_slot++;
	slot_property_array[color_slot,sub_element_slot] = "";sub_element_slot++;
	color_slot++;sub_element_slot = 0;
	//Slot 
	slot_property_array[color_slot,sub_element_slot] = "28";sub_element_slot++;
	slot_property_array[color_slot,sub_element_slot] = "";sub_element_slot++;
	slot_property_array[color_slot,sub_element_slot] = "";sub_element_slot++;
	color_slot++;sub_element_slot = 0;
	//Slot 15
	slot_property_array[color_slot,sub_element_slot] = "29";sub_element_slot++;
	slot_property_array[color_slot,sub_element_slot] = "";sub_element_slot++;
	slot_property_array[color_slot,sub_element_slot] = "";sub_element_slot++;
	color_slot++;sub_element_slot = 0;
	//Slot 30
	slot_property_array[color_slot,sub_element_slot] = "30";sub_element_slot++;
	slot_property_array[color_slot,sub_element_slot] = "";sub_element_slot++;
	slot_property_array[color_slot,sub_element_slot] = "";sub_element_slot++;
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
		//Slot 32
	slot_property_array[color_slot,sub_element_slot] = "Extra 1";sub_element_slot++;
	slot_property_array[color_slot,sub_element_slot] = "";sub_element_slot++;
	slot_property_array[color_slot,sub_element_slot] = "";sub_element_slot++;
	color_slot++;sub_element_slot = 0;
	//Slot 
	slot_property_array[color_slot,sub_element_slot] = "Extra 2";sub_element_slot++;
	slot_property_array[color_slot,sub_element_slot] = "";sub_element_slot++;
	slot_property_array[color_slot,sub_element_slot] = "";sub_element_slot++;
	color_slot++;sub_element_slot = 0;
	//Slot 
	slot_property_array[color_slot,sub_element_slot] = "Extra 3";sub_element_slot++;
	slot_property_array[color_slot,sub_element_slot] = "";sub_element_slot++;
	slot_property_array[color_slot,sub_element_slot] = "";sub_element_slot++;
	color_slot++;sub_element_slot = 0;
	//Slot 
	slot_property_array[color_slot,sub_element_slot] = "Extra 4";sub_element_slot++;
	slot_property_array[color_slot,sub_element_slot] = "";sub_element_slot++;
	slot_property_array[color_slot,sub_element_slot] = "";sub_element_slot++;
	color_slot++;sub_element_slot = 0;
	//Slot 
	slot_property_array[color_slot,sub_element_slot] = "Extra 5";sub_element_slot++;
	slot_property_array[color_slot,sub_element_slot] = "";sub_element_slot++;
	slot_property_array[color_slot,sub_element_slot] = "";sub_element_slot++;
	color_slot++;sub_element_slot = 0;
	//Slot 
	slot_property_array[color_slot,sub_element_slot] = "Extra 6";sub_element_slot++;
	slot_property_array[color_slot,sub_element_slot] = "";sub_element_slot++;
	slot_property_array[color_slot,sub_element_slot] = "";sub_element_slot++;
	color_slot++;sub_element_slot = 0;
	
	num_of_shifted_alts = color_slot - 32;
	//print(num_of_shifted_alts);
	// Fill out rest with placeholders
	for(var current_color_slot = color_slot;current_color_slot < 63;current_color_slot++;){
		slot_property_array[current_color_slot,0] = slot_property_array[current_color_slot - 32,0];
		slot_property_array[current_color_slot,1] = slot_property_array[current_color_slot - 32,1];
		slot_property_array[current_color_slot,2] = slot_property_array[current_color_slot - 32,2];
		
	}
	color_slot = 64;
		//Slot 64 DO NOT USE
	slot_property_array[color_slot,sub_element_slot] = "64 Not used yet";sub_element_slot++;
	slot_property_array[color_slot,sub_element_slot] = "Pallet Description";sub_element_slot++;
	slot_property_array[color_slot,sub_element_slot] = "Flavor Text";sub_element_slot++;
	color_slot++;sub_element_slot = 0;
	// Where Extra 2 would start
	

/*
	Blank Version
	//Slot 
	slot_property_array[color_slot,sub_element_slot] = "Name";sub_element_slot++;
	slot_property_array[color_slot,sub_element_slot] = "Pallet Description";sub_element_slot++;
	slot_property_array[color_slot,sub_element_slot] = "Flavor Text";sub_element_slot++;
	color_slot++;sub_element_slot = 0;
*/
}