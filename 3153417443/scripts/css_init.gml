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
alt_name[0] = "Fizzing Frenzy";
alt_name[1] = "Cokey Coley";
alt_name[2] = "Gators Aid";
alt_name[3] = "Ain't a Crime";
alt_name[4] = "Cream Soda";
alt_name[5] = "Grape";
alt_name[6] = "Mug Moment";
alt_name[7] = "Steamed";
alt_name[8] = "Poisonous";
alt_name[9] = "Legendary";
alt_name[10] = "Ironclad";
alt_name[11] = "Starred Wolf";
alt_name[12] = "Killing Moon";
alt_name[13] = "Wulfamania";
alt_name[14] = "Crystalized";
alt_name[15] = "Gief";
alt_name[16] = "16";
alt_name[17] = "Rude";
alt_name[18] = "Marketable";
alt_name[19] = "Nunya Business";
alt_name[20] = "Transcendant";
alt_name[21] = "LETS GO LESBIANS";
alt_name[22] = "Pierce the Heavens";
alt_name[23] = "Wog";
alt_name[24] = "Medicinal Spices";
alt_name[25] = "Tropical Climate";
alt_cur = 0; //checks current alt
alt_prev = 0; //checks previous alt
alt_total = array_length(alt_name); //sets the alt total depending on the amount of alt names provided



//ANIMATION VARS
sprite_change_offset("idle", 128, 190);

preview_idle = sprite_get("idle");
preview_scale = 1; //depends on if we have small sprites on, if we do, type 2, if not type 1
preview_anim_speed = 0.15; //should mimic "idle_anim_speed" - controls the sprites animation speed