//css_init.gml

css_anim_time = 0;

icon_x_pos = x + 174;
icon_y_pos = y + 108;

preview_x = floor(x+10);
preview_y = floor(y+10);



//alts
//there can be a total of 32 (0 - 31) alts normally
alt_name[0] = "Fennek";
alt_name[1] = "Old Colors";
alt_name[2] = "Shinjiro (P3)";
alt_name[3] = "Dante";
alt_name[4] = "Type-0";
alt_name[5] = "Maypul";
alt_name[6] = "Roekoko";
alt_name[7] = "Iroh";
alt_name[8] = "Torren";
alt_name[9] = "Cupcake";
alt_name[10] = "Fernet";
alt_name[11] = "Hikaru";
alt_name[12] = "Hen";
alt_name[13] = "Krispy"; //has the abyss death effect
alt_name[14] = "Dragou";
alt_name[15] = "Luca";
alt_name[16] = "Fennie";
alt_name[17] = "Usagi";
alt_name[18] = "Ranked Gold"; //has the shiny effect
alt_name[19] = "Gooshi Gaming";
alt_name[20] = "Madeline";
alt_name[21] = "Death's Door";
alt_name[22] = "Momo";
alt_name[23] = "Penitente";
alt_name[24] = "Tunic";
alt_name[25] = "Susie";
alt_name[26] = "Wolf";
alt_name[27] = "Dust";
alt_name[28] = "Fleet";
alt_name[29] = "Sybil";
alt_name[30] = "Keith";
alt_name[31] = "Champion";

alt_cur = 0;
alt_prev = 0;
alt_total = array_length(alt_name);



//ANIMATION VARS
sprite_change_offset("idle", 45, 77); //"load.gml offsets"

preview_idle = sprite_get("idle");
preview_scale = 1; //depends on if we have small sprites on, if we do, type 2, if not type 1
preview_anim_speed = 0.15; //"idle_anim_speed"