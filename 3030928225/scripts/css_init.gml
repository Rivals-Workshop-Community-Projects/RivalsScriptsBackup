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



//ALT NAMES
//seasonal alt names
season_name[1] = "V-day";
season_name[2] = "Summer";
season_name[3] = "Halloween";
season_name[4] = "Christmas";

//alts
//there can be a total of 32 (0 - 31) alts normally
alt_name[0] = "Default";
alt_name[1] = "Red";
alt_name[2] = "Blue";
alt_name[3] = "Pink";
alt_name[4] = "Green";
alt_name[5] = "Orange";
alt_name[6] = "Grey";
alt_name[7] = "Shadow";
alt_name[8] = "Cyan";
alt_name[9] = "Purple";
alt_name[10] = "BLW";
alt_name[11] = "Rainbow Ver. 1";
alt_name[12] = "Rainbow Ver. 2";

//everything in between abyss and gold rank alts can be anything, i just like to put these in this pattern
//if you change it don't forget to change the icon order!
alt_name[13] = "Endless Abyss"; //has the abyss death effect
alt_name[14] = "Early Access";
alt_name[15] = "Milestone";
alt_name[16] = season_name[get_match_setting(SET_SEASON)]; //it uses the season_name array above
alt_name[17] = "Infamous";
alt_name[18] = "Ranked Gold"; //has the shiny effect

alt_name[19] = "Enderman";
alt_name[20] = "Spearmint";
alt_name[21] = "THE MAN BEHIND THE TEST";


alt_cur = 0; //checks current alt
alt_prev = 0; //checks previous alt
alt_total = array_length(alt_name); //sets the alt total depending on the amount of alt names provided


// uspecial button to toggel tap/hold functionality
uspecial_button_origin_x = 175; // 14
uspecial_button_origin_y = 94; // 46
uspecial_button_width = 15 * 2;
uspecial_button_height = 13 * 2;
uspecial_button_border_buffer = 0;
uspecial_button_frame = 0;
box_vert_offset = 48;

// Manage synced var
// Synced var is 32 bits, only use ones of interest to us
var synced_var = get_synced_var(player);
va_mode_selected = (synced_var & 0x1) == 0;

//ANIMATION VARS
sprite_change_offset("idle", 23, 47); //should mimic the load.gml offsets

preview_idle = sprite_get("idle");
preview_scale = 2; //depends on if we have small sprites on, if we do, type 2, if not type 1
preview_anim_speed = 0.15; //should mimic "idle_anim_speed" - controls the sprites animation speed