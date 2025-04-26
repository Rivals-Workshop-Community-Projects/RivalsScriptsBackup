//css_init.gml

css_anim_time = 0;

icon_x_pos = x + 174;
icon_y_pos = y + 108;

preview_x = floor(x+10);
preview_y = floor(y+10);

cpu_hover_init(); //put this anywhere above your #defines

ink_colors = [$2C1DE8, $FF871A, $49BDF8];
ink_names = ["R", "B", "Y"]; //these are BGR (blue, green, red) values

//CSS settings
press_delay = 0;

//language settings
lang_x = 180;
lang_y = 60;

lang_pos = [
    x + lang_x,
    y + lang_y,
    x + lang_x + sprite_get_width(sprite_get("cssvoice_button")) * 2,
    y + lang_y + sprite_get_height(sprite_get("cssvoice_button")) * 2
];

//language settings
inks_x = 180;
inks_y = 32;

inks_pos = [
    x + inks_x,
    y + inks_y,
    x + inks_x + sprite_get_width(sprite_get("cssink_button")) * 2,
    y + inks_y + sprite_get_height(sprite_get("cssink_button")) * 2
];

lang_button_state = 0; //0 = normal | 1 = hover | 2 = press
inks_button_state = 0; //0 = normal | 1 = hover | 2 = press
cur_lang = 0; //0 = mute | 1 = EN | 2 = JP
cur_ink = 1; //0 - Blue | 1 - Red | 2 - Yellow

synced_vars = split_synced_var(2,2,2);
cur_lang = synced_vars[0];
tag_pal_on = synced_vars[1];
cur_ink = synced_vars[2];

voice_init(cur_lang)

#define voice_init(_lang_var)
lang = 0; 
//Voice clips
switch (_lang_var)
{
    default: lang = 0; break;
    case 1: lang = "en"; break;
    case 2: lang = "jp"; break;
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

//ALT NAMES
//seasonal alt names
//season_name[1] = "V-day";
//season_name[2] = "Summer";
//season_name[3] = "Halloween";
//season_name[4] = "Christmas";

//alts
//there can be a total of 32 (0 - 31) alts normally
alt_name[0] = "Default Drip";
alt_name[1] = "Soothing Blue";
alt_name[2] = "Apple Pen";
alt_name[3] = "Soupy Ink";
alt_name[4] = "Crème Brûlée";
alt_name[5] = "Cloudy Sky";
alt_name[6] = "Cotton Candy";
alt_name[7] = "BLM Drip";
alt_name[8] = "Acidic Rainbow";
alt_name[9] = "Half Genie";
alt_name[10] = "Passionate Pirate";
alt_name[11] = "Simple Life";
alt_name[12] = "Shameless Renegade";
alt_name[13] = "Bar Drip";
alt_name[14] = "Da Cup";
alt_name[15] = "Sunshine Shadow";
alt_name[16] = "Daisho Drip";
alt_name[17] = "True Pastel";
alt_name[18] = "Cel-Shaded";
alt_name[19] = "Annie of the Arts";
alt_name[20] = "Minty Fresh";
alt_name[21] = "Enby Gameing";
alt_name[22] = "Chiwawa";
alt_name[23] = "Stage of History";
alt_name[24] = "Sky Realm Wanderer";
alt_name[25] = "Dreamland's Painter";
alt_name[26] = "Limitless Palette";
alt_name[27] = "Blueberry";
alt_name[28] = "Spectral Thief";
alt_name[29] = "Vortex Ink";
alt_name[30] = "Riptide Ink";
alt_name[31] = "All Star Glitter"

//everything in between abyss and gold rank alts can be anything, i just like to put these in this pattern
//if you change it don't forget to change the icon order!
//alt_name[13] = "Endless Abyss"; //has the abyss death effect
//alt_name[14] = "Early Access";
//alt_name[15] = "Milestone";
//alt_name[16] = season_name[get_match_setting(SET_SEASON)];
//alt_name[17] = "Infamous";
//alt_name[18] = "Ranked Gold"; //has the shiny effect
//alt_name[19] = "19"; //has the shiny effect
//alt_name[20] = "20"; //has the shiny effect
//alt_name[21] = "21"; //has the shiny effect
//alt_name[22] = "22"; //has the shiny effect
//alt_name[23] = "22"; //has the shiny effect

alt_cur = 0;
alt_prev = 0;
alt_total = array_length(alt_name);

//ANIMATION VARS
sprite_change_offset("idle", 23, 47); //"load.gml offsets"

preview_idle = sprite_get("idle");
preview_scale = 2; //depends on if we have small sprites on, if we do, type 2, if not type 1
preview_anim_speed = 0.15; //"idle_anim_speed"

//RESET SLIME ALT
set_color_profile_slot( 18, 0, 53, 188, 255 ); //Hair
set_color_profile_slot( 18, 1, 255, 230, 249 ); //Shirt
set_color_profile_slot( 18, 2, 184, 119, 255 ); //Bow
set_color_profile_slot( 18, 3, 251, 217, 175 ); //Skin
set_color_profile_slot( 18, 4, 62, 61, 66 ); //Pants
set_color_profile_slot( 18, 5, 132, 234, 255 ); //Sword
set_color_profile_slot( 18, 6, 193, 55, 90 ); //Gold
set_color_profile_slot( 18, 7, 118, 135, 183 ); //Waist