//css_init.gml
//every script that has the word "init" will run only for the first frame of the "update" of it
//this script is used to assign character select screen variables
//css_init.gml runs as soon as the character loads in on the character select screen
//NOTE: CSS is short for Character Select Screen

css_anim_time = 0;

css_port_select = get_synced_var(player);
button_cord = [170, 36];

//set these positions in css_update, not here
icon_x_pos = 0; //icon placement for the event/unlock based alts from rivals
icon_y_pos = 0;
preview_x = 0; //preview char
preview_y = 0;

//alts
//there can be a total of 32 (0 - 31) alts normally
alt_name[0] = "Carrier's Honour";
alt_name[1] = "Blue";
alt_name[2] = "Red";
alt_name[3] = "Green";
alt_name[4] = "Grey";
alt_name[5] = "Purple";
alt_name[6] = "Abyss";
alt_name[7] = "Early Access";
alt_name[8] = "Legendary";
alt_name[9] = "Marketable";
alt_name[10] = "Love Letter";
alt_name[11] = "Holiday Delivery";
alt_name[12] = "Trick or Treater";
alt_name[13] = "Summertime";
alt_name[14] = "Guild";
alt_name[15] = "Armada";
alt_name[16] = "Swiftwing";
alt_name[17] = "Fizzing Frenzy";
alt_name[18] = "Lookout";
alt_name[19] = "TAG";
alt_name[20] = "TehEnd";
alt_name[21] = "Color-Me Yono";
alt_name[22] = "NB";
alt_name[23] = "Transcendent";
alt_name[24] = "Umbra I";
alt_name[25] = "Umbra II";
alt_name[26] = "Umbra III";
alt_name[27] = "GENESIS";
alt_cur = 0; //checks current alt
alt_prev = 0; //checks previous alt
alt_total = array_length(alt_name); //sets the alt total depending on the amount of alt names provided



//ANIMATION VARS
sprite_change_offset("idle", 110, 176);

preview_idle = sprite_get("idle");
preview_scale = 1; //depends on if we have small sprites on, if we do, type 2, if not type 1
preview_anim_speed = 0.15; //should mimic "idle_anim_speed" - controls the sprites animation speed