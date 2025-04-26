//css_init.gml

css_anim_time = 0;

icon_x_pos = x + 174;
icon_y_pos = y + 108;

preview_x = floor(x+10);
preview_y = floor(y+10);

//same as init.gml, recording the ranges of slots 1 (hair) and 6 (main vfx color)
orig_hsv[0] = [get_color_profile_slot_range(1, 0), get_color_profile_slot_range(1, 1), get_color_profile_slot_range(1, 2)];
orig_hsv[1] = [get_color_profile_slot_range(6, 0), get_color_profile_slot_range(6, 1), get_color_profile_slot_range(6, 2)];

alt_name = [];

//ALT NAMES
//seasonal alt names
season_name[1] = "Busy Day";
season_name[2] = "Warm Sunset";
season_name[3] = "Practice Medicine";
season_name[4] = "Cold and Cozy";

//alts
//there can be a total of 32 (0 - 31) alts normally
alt_name[0] = "Cupids' Resolve";
alt_name[1] = "Ready Player 2";
alt_name[2] = "Elemental Guardian";
alt_name[3] = "Umbra Princess";
alt_name[4] = "Mysterious Friend";
alt_name[5] = "Death Comes";
alt_name[6] = "Impure Toxicity";
alt_name[7] = "Ocean Lover";
alt_name[8] = "My Sweet Passion";
alt_name[9] = "Heartache";
alt_name[10] = "Youkai Monk";
alt_name[11] = "Anemos";
alt_name[12] = "Great Gospel";

alt_name[13] = "Endless Abyss"; //has the abyss death effect
alt_name[14] = "Early Access";
alt_name[15] = "2013";
alt_name[16] = season_name[get_match_setting(SET_SEASON)];
alt_name[17] = "Infamous";
alt_name[18] = "Ranked Gold"; //has the shiny effect

alt_name[19] = "Starman Princess";
alt_name[20] = "Sullied Blossom";
alt_name[21] = "Honeycrisp Punch";
alt_name[22] = "Electromagnetism";
alt_name[23] = "Ultimate Pianist";
alt_name[24] = "Time Agent";
alt_name[25] = "Driving Thunder";
alt_name[26] = "Youkai of Dusk";
alt_name[27] = "Érota Iroída"; //theikos
alt_name[28] = "All-Star Heroine"
alt_name[29] = "Vortex Gallery";
alt_name[30] = "Trustee Team Player"; //hud color


alt_cur = 0;
alt_prev = 0;
alt_total = array_length(alt_name);

s_alt = false;



//ANIMATION VARS
sprite_change_offset("idle", 23, 47); //"load.gml offsets"
sprite_change_offset("ex1_preview", 23, 47);

preview_idle = sprite_get("idle");
preview_scale = 2; //depends on if we have small sprites on, if we do, type 2, if not type 1
preview_anim_speed = 0.14; //"idle_anim_speed"