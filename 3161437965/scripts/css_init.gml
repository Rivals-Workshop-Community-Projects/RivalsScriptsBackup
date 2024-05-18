//css_init.gml
//every script that has the word "init" will run only for the first frame of the "update" of it
//this script is used to assign character select screen variables
//css_init.gml runs as soon as the character loads in on the character select screen
//NOTE: CSS is short for Character Select Screen

css_anim_time = 0;

//set these positions in css_update, not here
icon_x_pos = 0; //icon placement for the event/unlock based alts from rivals
icon_y_pos = 0;
preview_x = 0; //preview char
preview_y = 0;

alt_name = []; //reset list on load

//ALT NAMES
//there can be a total of 32 (0 - 31) alts normally
alt_name[0] = "Default";
alt_name[1] = "Pacifist";
alt_name[2] = "Friend";
alt_name[3] = "Guardian";
alt_name[4] = "Loner";
alt_name[5] = "Trainee";
alt_name[6] = "Comedian";
alt_name[7] = "Bartender";
alt_name[8] = "Knight";
alt_name[9] = "Rage";
alt_name[10] = "Graduate";
alt_name[11] = "Scientist";
alt_name[12] = "Host";
alt_name[13] = "Shopkeep";
alt_name[14] = "King";
alt_name[15] = "Dreamer";
alt_name[16] = "Memory";
alt_name[17] = "Login";
alt_name[18] = "Fallen";
alt_name[19] = "X-Event";
alt_name[20] = "Dark Hero";
alt_name[21] = "Hikikomori";
alt_name[22] = "Infernal";
alt_name[23] = "Theory";
alt_name[24] = "Story of Undertale";
alt_name[25] = "Curse";
alt_name[26] = "TKS";
alt_name[27] = "BLW";
alt_name[28] = "VAE";
alt_name[29] = "Abyss";
alt_name[30] = "Early Access";

alt_cur = 0; //checks current alt
alt_prev = 0; //checks previous alt
alt_total = array_length(alt_name); //sets the alt total depending on the amount of alt names provided



//ANIMATION VARS
sprite_change_offset("idle", 46, 82); //should mimic the load.gml offsets
sprite_change_offset("f_idle", 46, 82);

preview_idle = [sprite_get("idle"), sprite_get("f_idle")];
preview_scale = 1; //depends on if we have small sprites on, if we do, type 2, if not type 1
preview_anim_speed = 0.15; //should mimic "idle_anim_speed" - controls the sprites animation speed



//css button stuff
cur_skin = 0; //0 = default, 1 = frisk
skin_but_state = 0; //0 = normal | 1 = hover | 2 = press
press_delay = 0;

skin_but_x = 150;
skin_but_y = 100;

skin_but_pos = [
    x + skin_but_x,
    y + skin_but_y,
    x + skin_but_x + sprite_get_width(sprite_get("css_altswitch")),
    y + skin_but_y + sprite_get_height(sprite_get("css_altswitch"))
];


//CPU shenanigans by supersonic
cpu_hovering_player = -1;
cpu_is_hovered = -1;
cpu_hover_time = 0;
cpu_color_swap_time = 0;

cursors = [-4,-4,-4,-4,-4]
with (asset_get("cs_playercursor_obj")) {
    other.cursors[get_instance_player(self)] = self;
}
x = floor(x);
y = floor(y);
plate_bounds = [x,y,x+219,y+207];
portrait_bounds = [x+10,y+10,x+210,y+151];



//save data
var p_check = (room == 114) ? 0 : self.player;
if (get_synced_var(p_check) > 1) set_synced_var(p_check, 0);
cur_skin = get_synced_var(p_check);