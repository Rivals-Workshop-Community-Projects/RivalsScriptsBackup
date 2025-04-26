//css_init.gml

cpu_hover_init();
press_delay = 0;

css_anim_time = 0;

icon_x_pos = x + 174;
icon_y_pos = y + 108;

preview_x = floor(x+10);
preview_y = floor(y+10);

vo_x = 180;
vo_y = 40;
vo_button_state = 0; //0 = normal | 1 = hover | 2 = press
cur_select = 1; //0 = mute | 1 = On

vo_pos = [
    x + vo_x,
    y + vo_y,
    x + vo_x + sprite_get_width(sprite_get("cssvoice_button")) * 2,
    y + vo_y + sprite_get_height(sprite_get("cssvoice_button")) * 2
];

synced_vars = split_synced_var(2);
cur_select = synced_vars[0];
voice_init(cur_select)


//ALT NAMES
//seasonal alt names
//season_name[1] = "V-day";
//season_name[2] = "Summer";
//season_name[3] = "Halloween";
//season_name[4] = "Christmas";

//alts
//there can be a total of 32 (0 - 31) alts normally
alt_name[0] = "Default";
alt_name[1] = "Power";
alt_name[2] = "Demon Hunter";
alt_name[3] = "Vampire Queen";
alt_name[4] = "Mean Girl";
alt_name[5] = "Demon Sword";
alt_name[6] = "Bloodrage";
alt_name[7] = "Dohma";
alt_name[8] = "Fear in Darkness";
alt_name[9] = "Rokesha";
alt_name[10] = "Iced Coffee";
alt_name[11] = "Umbra Princess";
alt_name[12] = "Soul Reaper";
alt_name[13] = "Dull Flamingo";
alt_name[14] = "Mercenary Green";
alt_name[15] = "Dark Magician";
alt_name[16] = "Raging Demon";
alt_name[17] = "Queen of Evil";
alt_name[18] = "Heavenly Pierce";
alt_name[19] = "Sandai Kitetsu";
alt_name[20] = "Reploid Defender";
alt_name[21] = "Lab Rat";
alt_name[22] = "Bloom and Doom";
alt_name[23] = "All-Star";
alt_name[24] = "Vortex Gallery";
alt_name[25] = "Spectral Thief";

//everything in between abyss and gold rank alts can be anything, i just like to put these in this pattern
//if you change it don't forget to change the icon order!
//alt_name[13] = "Endless Abyss"; //has the abyss death effect
//alt_name[14] = "Early Access";
//alt_name[15] = "Milestone";
//alt_name[16] = season_name[get_match_setting(SET_SEASON)];
//alt_name[17] = "Infamous";
//alt_name[18] = "Ranked Gold"; //has the shiny effect



alt_cur = 0;
alt_prev = 0;
alt_total = array_length(alt_name);



//ANIMATION VARS
sprite_change_offset("idle", 23, 47); //"load.gml offsets"

preview_idle = sprite_get("idle");
preview_scale = 2; //depends on if we have small sprites on, if we do, type 2, if not type 1
preview_anim_speed = 0.15; //"idle_anim_speed"

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