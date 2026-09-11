//css_init.gml
//every script that has the word "init" will run only for the first frame of the "update" of it
//this script is used to assign character select screen variables
//css_init.gml runs as soon as the character loads in on the character select screen
//NOTE: CSS is short for Character Select Screen

css_anim_time = 0;

//icon placement for the event/unlock based alts from rivals
icon_x_pos = x + 175;
icon_y_pos = y + 108;

//preview char
preview_x = floor(x+135);
preview_y = floor(y+215);



//ALT NAMES
//seasonal alt names
//season_name[1] = "V-day";
//season_name[2] = "Summer";
//season_name[3] = "Halloween";
//season_name[4] = "Christmas";

//alts
//there can be a total of 32 (0 - 31) alts normally
alt_name[0] = "Radiant";
alt_name[1] = "Father";
alt_name[2] = "Calvary";
alt_name[3] = "Knight";
alt_name[4] = "Mercenary";
alt_name[5] = "Preist";
alt_name[6] = "Veteran";
alt_name[7] = "Veteran";
alt_name[8] = "General";
alt_name[9] = "Tipper";
alt_name[10] = "Hilt";
alt_name[11] = "Mage";
alt_name[12] = "Dragon";
alt_name[13] = "Leader";
alt_name[14] = "Professor";
alt_name[15] = "Plains";
alt_name[16] = "Abyss"
alt_name[17] = "Early Access";
alt_name[18] = "Ranked";
alt_name[19] = "Prince";
alt_name[20] = "Merchant";
alt_name[21] = "Salvation";
alt_name[22] = "Monado";
alt_name[23] = "Angel";
alt_name[24] = "Quest";
alt_name[25] = "Legend";
alt_name[26] = "Wild";
alt_name[27] = "Castle";
alt_name[28] = "Classroom";
alt_name[29] = "Rune";
alt_name[30] = "Underacheiver";


alt_cur = 0; //checks current alt
alt_prev = 0; //checks previous alt
alt_total = array_length(alt_name); //sets the alt total depending on the amount of alt names provided



//ANIMATION VARS
sprite_change_offset("idle", 133, 163); //should mimic the load.gml offsets

preview_idle = sprite_get("idle");
preview_scale = 2; //depends on if we have small sprites on, if we do, type 2, if not type 1
preview_anim_speed = 0.1; //should mimic "idle_anim_speed" - controls the sprites animation speed