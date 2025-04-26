//css_init.gml
//every script that has the word "init" will run only for the first frame of the "update" of it
//this script is used to assign character select screen variables
//css_init.gml runs as soon as the character loads in on the character select screen
//NOTE: CSS is short for Character Select Screen

css_anim_time = 0;
css_char_anim_time = 0;
//css_char_pic = sprite_get("charselect");

//ANIMATION VARS
sprite_change_offset("minion_active", 130, 170); //should mimic the load.gml offsets

preview_idle = sprite_get("minion_active");
preview_scale = 1; //depends on if we have small sprites on, if we do, type 2, if not type 1
preview_anim_speed = 0.144; //should mimic "idle_anim_speed" - controls the sprites animation speed


alt_cur = 0; //checks current alt
alt_prev = 0; //checks previous alt

//cpu css toggle helper (by supersonic)
cpu_hover_init();

//css_port_select = get_synced_var(player) % 2;
button_cord = [[136, 96],[170,96]];

// Color Shifter
last_frame_color_alt = get_player_color(player); // Color slot variable for memory
color_shift = 0;
total_num_color_shifts = 2; // change this to add more shifts

//#region Synced Variable
// Supersonic's Synched Variable Code
generated_var = 0;

// Synced Variable Stuff -Should run to reset these valus on game load
/* Synced Variable should account for these. We have 32 bits to work with.
1. Color Shift - 2 bits - Off / Extra 1 / Extra 2
2. Dino's button - Should Switch - 1 bit
3. Results portrait - Awesome -  1 bit
*/

//This function takes the bit lengths you put in the previous function, in the same order, and outputs an array with the values you put in (assuming you put in the correct bit lengths), also in the same order.
//split_var = split_synced_var(bit_length_1, bit_length_2...);
split_var = split_synced_var(2,1,1);

color_shift = split_var[0];
css_port_select = split_var[1]; // Swap this name to your other button. Also swap it in CSS update
awesome = split_var[2] // swap this to Rick's result variable. Also swat it in CSS update

// Recall shader on selecting character or returning from match
manual_init_shader_call = true;
init_shader();

//#endregion

#define cpu_hover_init()
cpu_hovering_player = -1; //the current player that's hovering the cpu. -1 for nobody
cpu_is_hovered = -1; //whether the cpu is hovered currently.
cpu_hover_time = 0; //the timer for the cpu hover indicator
cpu_color_swap_time = 0; //the timer for the cpu indicator's smooth color swap
cpuh_prev_color = c_gray;
cpuh_new_color = c_gray;

var c = [-4,-4,-4,-4,-4];
with (asset_get("cs_playercursor_obj")) { //this sets the cursor array
    c[get_instance_player(self)] = self;
}
cursors = c;

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

x = floor(x); //hehe
y = floor(y);
plate_bounds = [x,y,x+219,y+207]; //boundaries of the player plate
portrait_bounds = [x+10,y+10,x+210,y+151]; //boundaries of the player portrait. unused but useful
cpu_hover_sprite = sprite_get("cpu_controllingplayer_outline"); //the outline sprite.