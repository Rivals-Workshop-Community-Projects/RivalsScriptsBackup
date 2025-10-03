//css_init.gml
//every script that has the word "init" will run only for the first frame of the "update" of it
//this script is used to assign character select screen variables
//css_init.gml runs as soon as the character loads in on the character select screen
//NOTE: CSS is short for Character Select Screen

css_anim_time = 0;


//ANIMATION VARS
sprite_change_offset("idle", 14, 33); //should mimic the load.gml offsets

preview_idle = sprite_get("idle");
preview_scale = 2; //depends on if we have small sprites on, if we do, type 2, if not type 1
preview_anim_speed = 0.15; //should mimic "idle_anim_speed" - controls the sprites animation speed

alt_cur = 0; //checks current alt
alt_prev = 0; //checks previous alt

css_init_stuff();
cpu_hover_init();

init_alt_directives();

synced_vars = split_synced_var(6, 2);

rush_hovering_button = false;
rush_button_pos = [180, 40];
rush_button_timer = 0;
rush_toggle = synced_vars[0];

info_hovering_button = false;
info_button_pos = [80, 12];
info_button_timer = 0;

last_shader_tick = get_gameplay_time();

alt_desc = [
	"The True Blue",
	"Armor Not Included - Mega Man 3",
	"Nice Shield - Mega Man 2",
	"Just an Alt - Mega Man 2",
	"I'm more-so a Leo - Mega Man 3",
	"SNIKT! - Mega Man 7",
	"Hot to the Touch - Mega Man 8",
	"Not-so Shocking - Mega Man 1",
	"Rock-Rock Man! - Mega Man 11",
	"Atomic, no less! - Mega Man 2",
	"Knucklehead - Mega Man 3",
	"Looks Shiny - Mega Man 9",
	"Where's the Outlet? - Mega Man 9",
	"Thanks Daniel Vallée - Mega Man 6",
	"DOS Not Compute - Mega Man DOS",
	"Not a Lottery - Mega Man 8",
	"Crash B- Wrong One - Mega Man 2",
	"Crush Noise? How? - Mega Man 7",
	"Sticky Bomb! - Mega Man 11",
	"Boing. - Mega Man 7",
	"Mine! - Mega Man and Bass",
	"Hedgehog's Prize - Mega Man 4",
	"Hue Hue Hue! - ...Sonic CD?",
	"Hmm...Nice. - Mega Man 2",
	"FLAME ON! - Mega Man 11",
	"Canadian Frog - Mega Man DOS",
	"Purple is King - Mega Man 2 DOS",
	"Bad but European! - Mega Man 3",
	"Admit It, You Love Him - Mega Man",
	"Beep-Boop - Mega Man Gameboy",
	"Clash of Super Heroes! - MvC1",
	"Changes palettes to match weapon."
];

/*
voice_hovering_button = false;
voice_button_pos = [180, 80];
voice_button_timer = 0;
voice_toggle = synced_vars[1];
voice_init(voice_toggle)
*/

setting_hover_time = 0;
setting_message = "";

info_hover_time = 0;

#define css_init_stuff()
//print("init");
//soupcss_char = uuid //unique identifier for your character, derived from your idle sprite index. 
undefinedcolor = c_lime;
/*
my_cursor = noone; 
with (asset_get("cs_playercursor_obj")) {
	if get_instance_player(self) == other.player {
		other.my_cursor = self;
	}
}*/
//the css y is 316.01. the change will literally not be visible, 
//so im just gonna floor it myself and never worry again
x = floor(x); 
y = floor(y); 
//set alt data 
alts = []; 
default_shade_slot = 0; //shade slot used for if a color is not defined in an alt. 
//add each alt here! in order from top to bottom.

add_alt("Rockman");
add_alt("Rush Coil");
add_alt("Leaf Shield");
add_alt("Metal Blade");
add_alt("Gemini Laser");
add_alt("Slash Claw");
add_alt("Flame Sword");
add_alt("Thunder Beam");
add_alt("Block Dropper");
add_alt("Atomic Fire");
add_alt("Hard Knuckle");
add_alt("Jewel Satellite");
add_alt("Plug Ball");
add_alt("Knight Crusher");
add_alt("Dyna Attack");
add_alt("Mega Ball");
add_alt("Crash Bomber");
add_alt("Noise Crusher");
add_alt("Chain Blast");
add_alt("Wild Coil");
add_alt("Remote Mine");
add_alt("Ring Boomerang");
add_alt("[DEAD OR ALIVE]");
add_alt("Wooden Armor");
add_alt("Blazing Torch");
add_alt("Leaping Frog");
add_alt("Violet Overkill");
add_alt("Weird European Box Man");
add_alt("The Bad-Box-Man");
add_alt("Handheld Vintage");
add_alt("Magnetic Shockwave");
add_alt("Accurate Mega Man");

css_timer = 0; 
swap_timer = 0; 
slide_timer = 0; 
slide_pos = 0; 
prev_alt = 0; 
css_hover_time = 0;
css_highlight_time = 0;
css_highlight_max = 8;
__clr_p = alts[0][1]; 
__clr_c = alts[0][1]; 
press_delay = false;

#define voice_init(_lang_var)
lang = 0; 
//Voice clips
switch (_lang_var)
{
	default: lang = 0; break;
	case 1: lang = 1; break;
}
cur_voiceclip = [noone, noone];
voice_cooldown = 0;
voice_cooldown_set = 60; //cooldown for regular voiceclips
voice_cooldown_set_100 = 120; //cooldown for high % lines

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
//print(chunk_arr);
return chunk_arr;

#define cpu_hover_init()
cpu_hovering_player = -1; //the current player that's hovering the cpu. -1 for nobody
cpu_is_hovered = -1; //whether the cpu is hovered currently.
cpu_hovered = -1; //whether the cpu is hovered currently.
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

#define define_alt_directives
// define_alt_directives(alt, ...)
///#args ...
var alt = argument[0];
var altdir = __soup_alt_directives;
for (var i = 1; i < argument_count; i++) {
	altdir[@alt, array_length(altdir[@alt])] = argument[i];
}
#define init_alt_directives()
__soup_alt_directives = array_create(31,0);
var altdir = __soup_alt_directives; //optimization, trust me this works LOL
var len = array_length(altdir)
for (var i = 0; i < len; i++)
	altdir[i] = [];
__selected_alt_dir = 0;
#define add_alt
///add_alt(name, ?color, ?icons) 
var name = argument[0], 
	color = (argument_count > 1 && argument[1] != -1) ? argument[1] : make_color_rgb(		 
		get_color_profile_slot_r(array_length(alts),default_shade_slot),		
		get_color_profile_slot_g(array_length(alts),default_shade_slot), 
		get_color_profile_slot_b(array_length(alts),default_shade_slot)
		),
	icons = argument_count > 2 ? argument[2] : [] 
array_push(alts,[name,color,icons]);

#macro CSSICON_ABYSS 0
#macro CSSICON_EARLY 1
#macro CSSICON_MILESTONE 2
#macro CSSICON_SEASONAL 3
#macro CSSICON_PREMIUM 4
#macro CSSICON_CHAMP 5
#macro CSSICON_HEROINES 6