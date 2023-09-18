//#region Local Variables
//online player is actually player 0, alt_fix communicates with the css, and changes the player based on that
alt_cur = "alt_fix" in self ? get_player_color(alt_fix) : get_player_color(player);
//#endregion

if "__syncvar" not in self __syncvar = split_synced_var(2, 2);
var tag_pal_value = __syncvar[1]; //change the 0 to the synced var index for the tag palette.
// IMPORTANT: The 12 (first argument) in this function should be the same number as the user event.
var tag_pal = player_tag_palettes(12, tag_pal_value);

// This is your final alt value, which is the current alt palette the player has selected.
var real_alt = tag_pal != -1 ? tag_pal : alt_cur;

if ("alt_glow_timer" not in self) {
	alt_glow_timer = 0;
}

alt_glow_timer ++;

var alt_glow_timer_max = 480;

switch (real_alt)
{
    case 15: //gameboy / early access - gameboy palletes don't have shading
    	set_shading([5, 2, 1, 1, -14, 1, 2, 1]);
    break;
    case 16: //gameboy / early access - gameboy palletes don't have shading
    	set_shading([4, 2, 1, 1, -16, 1, 2, 1]);
    break;
    case 18: //gameboy / early access - gameboy palletes don't have shading
    	set_shading([5, 1, 1.7, -50, 1, 1, 2, 1]);
    break;
    case 19: //gameboy / early access - gameboy palletes don't have shading
    	set_shading([1, 1, 1, 1, 3, 1, 1, 1]);
    break;
    case 20: //gameboy / early access - gameboy palletes don't have shading
    	set_shading([1, 1, 1, 1, -2, 1, 1, 1]);
    break;
    case 21: //gameboy / early access - gameboy palletes don't have shading
    	set_shading([1, 1, 1.7, 0, 1, 1, 1.1, 2]);
    break;
    case 23: //gameboy / early access - gameboy palletes don't have shading
    	set_shading([5, 1, 1, 1, 3, 1, 1.5, 1]);
    break;
    case 29: //gameboy / early access - gameboy palletes don't have shading
    	var color_orange = /*#*/$002cd4;
    	var color_purple = /*#*/$6101a2;
    	var color_merged = merge_color(color_purple, color_orange, pingpong(0, 1, alt_glow_timer, 480))
    	set_character_color_slot(4, color_get_red(color_merged), color_get_green(color_merged), color_get_blue(color_merged));
    break;
}

#define set_shading(arr)
for (var i = 0; i < 8; i++) set_character_color_shading(i,arr[i]);

#define pingpong(_s, _e, _time, _time_max)
var dir = 1
if (_time % _time_max >= _time_max / 2)
	dir = -1;
return lerp(_s, _e, (dir == 1 ? (_time % _time_max) / (_time_max / 2) : (_time_max - (_time % _time_max))/ (_time_max / 2)))

// As usual, #defines all go at the bottom of the script.
#define player_tag_palettes
///(user_event, ?arg)
__ssnk_tagpal_scr = script_get_name(1);
__ssnk_tagpal_arg = argument_count > 1 ? argument[1] : 0;
user_event(argument[0]);
return "__ssnk_tagpal_res" in self ? __ssnk_tagpal_res : 0;

// https://github.com/SupersonicNK/roa-workshop-templates/tree/master/generate-synced-var 
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
