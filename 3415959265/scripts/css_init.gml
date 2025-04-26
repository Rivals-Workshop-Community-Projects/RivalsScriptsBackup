//css_init.gml

css_anim_time = 0;
animation_timer = 0;

icon_x_pos = x + 174;
icon_y_pos = y + 108;

preview_x = floor(x+10);
preview_y = floor(y+10);



//ALT NAMES
//seasonal alt names
season_name[1] = "V-day";
season_name[2] = "Summer";
season_name[3] = "Halloween";
season_name[4] = "Christmas";

//alts
//there can be a total of 32 (0 - 31) alts normally
alt_name[0] = "The Last Guardian";
alt_name[1] = "Blaze";
alt_name[2] = "Shock";
alt_name[3] = "Sea Lantern";
alt_name[4] = "Winter";
alt_name[5] = "Retribution";
alt_name[6] = "Iwana";
alt_name[7] = "Green";
alt_name[8] = "Villainous";
alt_name[9] = "Slime Time";
alt_name[10] = "Bloom";
alt_name[11] = "Reckoning";
alt_name[12] = "Tangy";

//everything in between abyss and gold rank alts can be anything, i just like to put these in this pattern
//if you change it don't forget to change the icon order!
alt_name[13] = "Endless Abyss"; //has the abyss death effect
alt_name[14] = "Verdant";
alt_name[15] = "Justice";
alt_name[16] = "Emerald"
alt_name[17] = "Rosey";
alt_name[18] = "Ranked Gold"; //has the shiny effect



alt_name[19] = "Violet Storm";
alt_name[20] = "Chilled";
alt_name[21] = "Chi";
alt_name[22] = "Royal";
alt_name[23] = "Prime";
alt_name[24] = "Flow";
alt_name[25] = "Inked";
alt_name[26] = "Hermit";
alt_name[27] = "Poisonous";



//alt_cur = 0;
alt_prev = 0;
alt_total = array_length(alt_name);



//ANIMATION VARS
sprite_change_offset("css_idle", 50, 60); //"load.gml offsets"

preview_idle = sprite_get("css_idle");
preview_scale = 2; //depends on if we have small sprites on, if we do, type 2, if not type 1
preview_anim_speed = 0.15; //"idle_anim_speed"




// Voice
onlpl = "alt_fix" in self? alt_fix: player;
set_synced_var(onlpl, get_synced_var(onlpl)%100);
voicebutton = (get_synced_var(onlpl)%10)*3;
alt_cur = get_player_color("alt_fix" in self? alt_fix: player);
button_off = 3;
portrait = floor(get_synced_var(onlpl)/10)%10;
pbutton = portrait * 3;
css_select = 0;
old_button = pbutton;



//template
cpu_hover_init(); //put this anywhere above your #defines

//as always, #defines go at the bottom of the script.
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