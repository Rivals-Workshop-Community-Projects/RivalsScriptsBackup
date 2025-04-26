//css_init.gml

css_anim_time = 0;

icon_x_pos = x + 174;
icon_y_pos = y + 108;

preview_x = floor(x+10);
preview_y = floor(y+10);

alt_name = []; //refresh name array in case other characters use the same system

//ALT NAMES
//seasonal alt names
season_name[1] = "V-day";
season_name[2] = "Summer";
season_name[3] = "Halloween";
season_name[4] = "Christmas";

//alts
//there can be a total of 32 (0 - 31) alts normally
alt_name[0] = "Default";
alt_name[1] = "Classic";
alt_name[2] = "Drybones";
alt_name[3] = "Dino";
alt_name[4] = "Underground";
alt_name[5] = "Ink";
alt_name[6] = "Glad";
alt_name[7] = "Gaurdian";
alt_name[8] = "Rotten";
alt_name[9] = "Karma";
alt_name[10] = "Pretty";
alt_name[11] = "Frosty";
alt_name[12] = "Octo";

//everything in between abyss and gold rank alts can be anything, i just like to put these in this pattern
//if you change it don't forget to change the icon order!
alt_name[13] = "Pale"; //has the abyss death effect
alt_name[14] = "Pride";
alt_name[15] = "BLW";
alt_name[16] = "Lily of the valley";
alt_name[17] = "Hivemind";
alt_name[18] = "Sickly love"; //has the shiny effect
alt_name[19] = "Wonderer";
alt_name[20] = "Ancient";
alt_name[21] = "Outcast";
alt_name[22] = "Fall";


alt_cur = 0;
alt_prev = 0;
alt_total = array_length(alt_name);



//ANIMATION VARS
sprite_change_offset("idle", 23, 47); //"load.gml offsets"

preview_idle = sprite_get("idle");
preview_scale = 1; //depends on if we have small sprites on, if we do, type 2, if not type 1
preview_anim_speed = 0.15; //"idle_anim_speed"