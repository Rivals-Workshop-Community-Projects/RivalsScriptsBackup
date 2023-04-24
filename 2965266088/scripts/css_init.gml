//css_init.gml

css_anim_time = 0;

icon_x_pos = x + 174;
icon_y_pos = y + 108;

preview_x = floor(x+10);
preview_y = floor(y+10);



//ALT NAMES
//seasonal alt names
season_name[1] = "Spring Path";
season_name[2] = "Summer Day Dream";
season_name[3] = "Koakuma-Like Youkai";
season_name[4] = "Winter Saint";

//alts
//there can be a total of 32 (0 - 31) alts normally
alt_name[0] = "Youkai of Dusk";
alt_name[1] = "Beloved Tomboyish Girl";
alt_name[2] = "Rainbow Gatekeeper";
alt_name[3] = "Locked Girl";
alt_name[4] = "Perfect Maid";
alt_name[5] = "The Scarlet Devil";
alt_name[6] = "Diabolic Wave";
alt_name[7] = "Eternal Shrine Maiden";
alt_name[8] = "The Strange Magician";
alt_name[9] = "Cute Rabbit";
alt_name[10] = "Megalo Strike Back";
alt_name[11] = "A bouncy little pumpkin";
alt_name[12] = "Sparky Child";

//everything in between abyss and gold rank alts can be anything, i just like to put these in this pattern
//if you change it don't forget to change the icon order!
alt_name[13] = "Endless Abyss"; //has the abyss death effect
alt_name[14] = "Early Access";
alt_name[15] = "Champion";
alt_name[16] = season_name[get_match_setting(SET_SEASON)];
alt_name[17] = "Infamous";
alt_name[18] = "Ranked Gold"; //has the shiny effect

alt_name[19] = "Totsugeki!!!"; // has voicelines of the announcer from guilty gear strive
alt_name[20] = "Emergence of Evil";
alt_name[21] = "Triforce of Power";
alt_name[22] = "Skyp'd Racer";
alt_name[23] = "Elemental Guardian";
alt_name[24] = "Driving Thunder";



alt_cur = 0;
alt_prev = 0;
alt_total = array_length(alt_name);



//ANIMATION VARS
sprite_change_offset("idle", 24, 47); //"load.gml offsets"

preview_idle = sprite_get("idle");
preview_scale = 2; //depends on if we have small sprites on, if we do, type 2, if not type 1
preview_anim_speed = 0.1; //"idle_anim_speed"