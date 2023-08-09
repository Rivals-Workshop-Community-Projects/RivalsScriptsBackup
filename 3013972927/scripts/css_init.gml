//css_init.gml
//every script that has the word "init" will run only for the first frame of the "update" of it
//this script is used to assign character select screen variables
//css_init.gml runs as soon as the character loads in on the character select screen
//NOTE: CSS is short for Character Select Screen

cpu_hover_init();
press_delay = 0;

css_anim_time = 0;

//set these positions in css_update, not here
icon_x_pos = 0; //icon placement for the event/unlock based alts from rivals
icon_y_pos = 0;
preview_x = 0; //preview char
preview_y = 0;

vo_x = 180;
vo_y = 85;
vo_button_state = 0; //0 = normal | 1 = hover | 2 = press
cur_select = 0; //0 = mute | 1 = On

beat_x = 180;
beat_y = 115;
beat_button_state = 0; //0 = normal | 1 = hover | 2 = press
cur1_select = 0; //0 = mute | 1 = On

vo_pos = [
    x + vo_x,
    y + vo_y,
    x + vo_x + sprite_get_width(sprite_get("cssvoice_button")) * 2,
    y + vo_y + sprite_get_height(sprite_get("cssvoice_button")) * 2
];

beat_pos = [
    x + beat_x,
    y + beat_y,
    x + beat_x + sprite_get_width(sprite_get("cssvoice_button")) * 2,
    y + beat_y + sprite_get_height(sprite_get("cssvoice_button")) * 2
];

synced_vars = split_synced_var(2,1);
//synced_vars1 = split_synced_var(2,1,1);
cur_select = synced_vars[0]; // Change Voice toggle


cur1_select = synced_vars[1]; // Change BPM toggle
//voice_bpm_init(cur_select);

//ALT NAMES
//seasonal alt names
season_name[1] = "V-day";
season_name[2] = "Summer";
season_name[3] = "Halloween";
season_name[4] = "Christmas";

//alts
//there can be a total of 32 (0 - 31) alts normally
alt_name[0] = "Chai Tea";
alt_name[1] = "Peppermint";
alt_name[2] = "Macaron";
alt_name[3] = "Korsica";
alt_name[4] = "CNMN";
alt_name[5] = "808 Gigawatt Cat Attack";
alt_name[6] = "Silver Bullet";
alt_name[7] = "N.M.H.";
alt_name[8] = "Friendly Punk";
alt_name[9] = "Not Dracula";
alt_name[10] = "Rowdy Rumble";
alt_name[11] = "Three Minutes Clapping";
alt_name[12] = "UnBEATable";

//everything in between abyss and gold rank alts can be anything, i just like to put these in this pattern
//if you change it don't forget to change the icon order!
alt_name[13] = "Vajra Assist Y"; //has the abyss death effect
alt_name[14] = "Fool on Cool";
alt_name[15] = "Guitar, Loneliness and Blue Planet";
alt_name[16] = "Megalomania"; 
alt_name[17] = "The Runaway";
alt_name[18] = "Fighting Redreamer"; //has the shiny effect
alt_name[19] = "I'm just your problem";
alt_name[20] = "Force of Freakin' Nature";
alt_name[21] = "(Not) Really Feeling It";
alt_name[22] = "Bunk Bed Junction";
alt_name[23] = "Raging 4 Streets";
alt_name[24] = "Rocketbilly Nightow";
alt_name[25] = "Hell Dunk";
alt_name[26] = "Mr. Death Boss";
alt_name[27] = "Red Hot Chili";
alt_name[28] = "Vs. The World";
alt_name[29] = "Dance Water Dance";
alt_name[30] = "This Fffire";

alt_cur = 0; //checks current alt
alt_prev = 0; //checks previous alt
alt_total = array_length(alt_name); //sets the alt total depending on the amount of alt names provided



//ANIMATION VARS
sprite_change_offset("dspecial", 25, 52); //should mimic the load.gml offsets

preview_idle = sprite_get("dspecial");
preview_scale = 2; //depends on if we have small sprites on, if we do, type 2, if not type 1
preview_anim_speed = 0.15; //should mimic "idle_anim_speed" - controls the sprites animation speed

#define voice_init(_voice)
vo = 0; 
//Voice clips
switch (_voice)
{
    default: vo = 0; break;
    case 0: vo = 0; break;
    case 1: vo = "On"; break;
}
cur_voiceclip = [noone, noone];
voice_cooldown = 0;
voice_cooldown_set = 70; //cooldown for regular voiceclips
voice_cooldown_set_100 = 110; //cooldown for high % lines

#define voice_bpm_init(_bpm)
bpm = 0; 
//Voice clips
cur_voiceclip = [noone, noone];
voice_cooldown = 0;
voice_cooldown_set = 70; //cooldown for regular voiceclips
voice_cooldown_set_100 = 110; //cooldown for high % lines

switch (_bpm)
{
    default: 
    	bpm = 0;
    	vo = 0;
    	bpm_toggle = false;
    break;
    
    case 0: 
    	bpm = 0;
    	vo = 0;
    	bpm_toggle = false;
    break;
    
    case 1: 
	    bpm = 0;
	    vo = "On"
	    bpm_toggle = false;
    break;
    
    case 2: 
	    bpm = 1;
	    vo = 0;
	    bpm_toggle = true;
    break;
    
    case 3: 
	    bpm = 1;
	    vo = "On"
	    bpm_toggle = true;
    break;
}

//print("Set BPM to: " + "130" + " / " + string(bpm_toggle));
print(_bpm);


////


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

#define split_synced_var
///args chunk_lengths...
var num_chunks = argument_count;
var chunk_arr = array_create(argument_count);
var player = (room == 113) ? 0 : self.player;
var synced_var = get_synced_var(player);
var chunk_offset = 0
for (var i = 0; i < num_chunks; i++) {
    var chunk_len = argument[i]; //print(chunk_len);
    var chunk_mask = (1 << chunk_len)-1
    chunk_arr[i] = (synced_var >> chunk_offset) & chunk_mask;
    //print(`matching shift = ${chunk_len}`);
    chunk_offset += chunk_len;
}
print(chunk_arr);
return chunk_arr;

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

x = floor(x); //hehe
y = floor(y);
plate_bounds = [x,y,x+219,y+207]; //boundaries of the player plate
portrait_bounds = [x+10,y+10,x+210,y+151]; //boundaries of the player portrait. unused but useful
cpu_hover_sprite = sprite_get("cpu_controllingplayer_outline"); //the outline sprite.