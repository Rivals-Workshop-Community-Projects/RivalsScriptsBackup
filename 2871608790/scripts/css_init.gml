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
alt_name[0] = "Default";
alt_name[1] = "Beary";
alt_name[2] = "Nitori";
alt_name[3] = "Umbrella";
alt_name[4] = "Spooky";
alt_name[5] = "Omori";
alt_name[6] = "Finn";
alt_name[7] = "Chocolate";
alt_name[8] = "Trans";
alt_name[9] = "Blw";
alt_name[10] = "Undead";
alt_name[11] = "Liz";
alt_name[12] = "Acid";
alt_name[13] = "Brown"; //has the abyss death effect
alt_name[14] = "Lava";
alt_name[15] = "Power Bag";
alt_name[16] = "Guidance Demon";
alt_name[17] = "Merchant";
alt_name[18] = "Stellar Comet";
alt_name[19] = "Angelic Devil";
alt_name[20] = "Blueberry";
alt_name[21] = "Lagkon";


/*
//everything in between abyss and gold rank alts can be anything, i just like to put these in this pattern
//if you change it don't forget to change the icon order!
alt_name[13] = "Endless Abyss"; //has the abyss death effect
alt_name[14] = "Early Access";
alt_name[15] = "Milestone";
alt_name[16] = season_name[get_match_setting(SET_SEASON)];
alt_name[17] = "Infamous";
alt_name[18] = "Ranked Gold"; //has the shiny effect
*/



alt_cur = 0;
alt_prev = 0;
alt_total = array_length(alt_name);



//ANIMATION VARS
sprite_change_offset("idle", 38, 73); //"load.gml offsets"

preview_idle = sprite_get("idle");
preview_scale = 1; //depends on if we have small sprites on, if we do, type 2, if not type 1
preview_anim_speed = 0.15; //"idle_anim_speed"