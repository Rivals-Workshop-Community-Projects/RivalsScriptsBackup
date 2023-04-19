//css_init.gml

css_anim_time = 0;

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
alt_name[0] = "Charlie Brown";
alt_name[1] = "Linus";
alt_name[2] = "Lucy";
alt_name[3] = "Red Haired Girl";
alt_name[4] = "Snoopy";
alt_name[5] = "Woodstock";
alt_name[6] = "Sally";
alt_name[7] = "Schroeder";
alt_name[8] = "Peppermint Patty";
alt_name[9] = "PigPen";
alt_name[10] = "Marcy";
alt_name[11] = "Franklin";
alt_name[12] = "Frieda";
alt_name[13] = "Rerun";
alt_name[14] = "Abyss";
alt_name[15] = "Early Access";
alt_name[16] = "Eric Cartman";
alt_name[17] = "Kenny";
alt_name[18] = "Garfield";
alt_name[19] = "Wimpy Kid";
alt_name[20] = "Nate Wright";
alt_name[21] = "Homer Simpson";
alt_name[22] = "Peter Griffin";
alt_name[23] = "Shrek";
alt_name[24] = "Caliou";
alt_name[25] = "Tulutle";



alt_cur = 0;
alt_prev = 0;
alt_total = array_length(alt_name);



//ANIMATION VARS
sprite_change_offset("char", 23, 47); //"load.gml offsets"

preview_idle = sprite_get("char");
preview_scale = 2; //depends on if we have small sprites on, if we do, type 2, if not type 1
preview_anim_speed = 0.15; //"idle_anim_speed"