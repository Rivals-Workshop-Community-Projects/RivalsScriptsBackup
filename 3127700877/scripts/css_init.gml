//css_init.gml

css_anim_time = 0;

icon_x_pos = x + 174;
icon_y_pos = y + 108;

preview_x = floor(x+10);
preview_y = floor(y+10);



//alts
//there can be a total of 32 (0 - 31) alts normally
alt_name[0] = "Sewer Baroness";
alt_name[1] = "Magma";
alt_name[2] = "Freshwater";
alt_name[3] = "Oil";
alt_name[4] = "Ink";
alt_name[5] = "Gloss";
alt_name[6] = "Lemon and Honey";
alt_name[7] = "Nectar";
alt_name[8] = "Sasparilla";
alt_name[9] = "Bilgewater";
alt_name[10] = "Pop";
alt_name[11] = "Ambrosia";
alt_name[12] = "Rosewater";
alt_name[13] = "Endless Abyss"; //has the abyss death effect
alt_name[14] = "Early Access";
alt_name[15] = "Champion";
alt_name[16] = "Infamous";
alt_name[17] = "Genesis";
alt_name[18] = "Liquid Gold";
alt_name[19] = "Rune Connoisseur";
alt_name[20] = "Penguin Juice";
alt_name[21] = "Trench";
alt_name[22] = "Madame";
alt_name[23] = "Witch";

alt_cur = 0;
alt_prev = 0;
alt_total = array_length(alt_name);



//ANIMATION VARS
sprite_change_offset("taunt", 45, 107); //"load.gml offsets"

preview_idle = sprite_get("taunt");
preview_scale = 1; //depends on if we have small sprites on, if we do, type 2, if not type 1
preview_anim_speed = 0.15; //"idle_anim_speed"