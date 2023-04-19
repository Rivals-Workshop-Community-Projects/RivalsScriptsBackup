//css_init.gml

css_anim_time = 0;

icon_x_pos = x + 174;
icon_y_pos = y + 108;

preview_x = floor(x+10);
preview_y = floor(y+10);

le_stinkeyBingus = true;

//ALT NAMES
//seasonal alt names
season_name[1] = "V-day";
season_name[2] = "Summer";
season_name[3] = "Halloween";
season_name[4] = "Christmas";

//alts
//there can be a total of 32 (0 - 31) alts normally
alt_name[0] = "A Normal Melon";
alt_name[1] = "Actually Normal Melon";
alt_name[2] = "Equipment melon";
alt_name[3] = "Dreaming Melon";
alt_name[4] = "Skull Emoji Melon";
alt_name[5] = "Water Melon";
alt_name[6] = "Pepper Melon";
alt_name[7] = "Honeydew Melon";
alt_name[8] = "Pumpkin Melon";
alt_name[9] = "Lemon Melon";
alt_name[10] = "Dernic Melon";
alt_name[11] = "Snow Melon";
alt_name[12] = "Edgy Melon";

//everything in between abyss and gold rank alts can be anything, i just like to put these in this pattern
//if you change it don't forget to change the icon order!
alt_name[13] = "Endless Melon"; //has the abyss death effect
alt_name[14] = "Wise Tree Melon";
alt_name[15] = "Maurice Melon";
alt_name[16] = "Marki Melon";
alt_name[17] = "Virtual Melon";
alt_name[18] = "Money Melon"; //has the shiny effect
alt_name[19] = "Milestone Melon";
alt_name[20] = "Kel Melon";
alt_name[21] = "Unpleasant Melon";
alt_name[22] = "VAE Melon";
alt_name[23] = "Trans Melon";
alt_name[24] = "Krispy Melon";
alt_name[25] = "Festive Melon";
alt_name[26] = "Smiley Melon";
alt_name[27] = "Rosar Melon";
alt_name[28] = "VForce Melon";
//alt_name[26] = "26";
//alt_name[27] = "27";
//alt_name[28] = "28";
//alt_name[29] = "29";
//alt_name[30] = "Villains of Aether"; // has an icon
//alt_name[31] = "Trans Rights"; // has an icon

alt_cur = 0;
alt_prev = 0;
alt_total = array_length(alt_name);

//ANIMATION VARS
sprite_change_offset("idle", 115, 170); //"load.gml offsets"

preview_idle = sprite_get("idle");
preview_scale = 1; //depends on if we have small sprites on, if we do, type 2, if not type 1
preview_anim_speed = 0.15; //"idle_anim_speed"