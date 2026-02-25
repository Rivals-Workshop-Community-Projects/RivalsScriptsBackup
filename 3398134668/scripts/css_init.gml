//css_init.gml

projectEWallJump = get_synced_var(player);
buttonPos = [x+168, y+84];
buttonOffset = 10;
buttonRadius = 20;
cursorPosOffset = 24;

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
alt_name[1] = "Red";
alt_name[2] = "Green";
alt_name[3] = "Yellow";
alt_name[4] = "Berry";
alt_name[5] = "Sunset";
alt_name[6] = "Rosa";
alt_name[7] = "Inverted";
alt_name[8] = "Polar";
alt_name[9] = "Energized";
alt_name[10] = "Phoenix";
alt_name[11] = "Vaporwave";
alt_name[12] = "Contrast";

//everything in between abyss and gold rank alts can be anything, i just like to put these in this pattern
//if you change it don't forget to change the icon order!
alt_name[13] = "Aqua"; //has the abyss death effect
alt_name[14] = "Azul";
alt_name[15] = "Rain";
alt_name[16] = "Dino";
alt_name[17] = "Coco";
alt_name[18] = "Primary"; //has the shiny effect

alt_name[19] = "Rollin'";
alt_name[20] = "Amber";
alt_name[21] = "Edge";
alt_name[22] = "Highlighter";
alt_name[23] = "Son";
alt_name[24] = "Speed";
alt_name[25] = "Rocky";
alt_name[26] = "Sonar";
alt_name[27] = "Air";
alt_name[28] = "Knight";
alt_name[29] = "Divine";
alt_name[30] = "Shadow";
alt_name[31] = "Echo";

alt_cur = 0;
alt_prev = 0;
alt_total = array_length(alt_name);



//ANIMATION VARS
sprite_change_offset("idle", 32, 90); //"load.gml offsets"

preview_idle = sprite_get("idle");
preview_scale = 1; //depends on if we have small sprites on, if we do, type 2, if not type 1
preview_anim_speed = 0.15; //"idle_anim_speed"