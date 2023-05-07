//if (get_color_profile_slot_r(1, 0) == 255) {
//    sound_play(sound_get("sfx_spring"));
//    set_color_profile_slot(0, 0, 172, 50, 50);
//}
//This is for setting sound effects for changing alts.

var temp_x = x + 8;
var temp_y = y + 9;

patch_ver = "";
patch_day = "";
patch_month = "";

//CHANGE THIS SECTION ONLY 
var num_alts = 30;
var alt_cur = get_player_color(player);

//Alt name init. var doesn't work with arrays lol

alt_name[0]  = "Default Drip";
alt_name[1]  = "Soothing Blue";
alt_name[2]  = "Honeycrisp Punch";
alt_name[3]  = "Midnight Ice";
alt_name[4]  = "Citrus Blast";
alt_name[5]  = "Dueling Desire";
alt_name[6]  = "Rooster's Caw";
alt_name[7]  = "Sparknight Glitter";
alt_name[8]  = "Cherry Lime Beam";
alt_name[9]  = "Ret-2-Goo";
alt_name[10]  = "Ink of Courage";
alt_name[11]  = "Shrouding Sky Sword";
alt_name[12]  = "Kikopen";
alt_name[13]  = "Cyan Crusader";
alt_name[14]  = "Rolling Drip";
alt_name[15]  = "Distant Drip";
alt_name[16]  = "Hero of Blue Ink";
alt_name[17]  = "Princess Pastelle";
alt_name[18]  = "G-pen IV";
alt_name[19]  = "Check It";
alt_name[20]  = "G-Brush";
alt_name[21]  = "Stained Ink";
alt_name[22]  = "Ink of the Abyss";
alt_name[23]  = "Trans Ink";
alt_name[24]  = "BLM Ink";
alt_name[25]  = "Mushroom Ink";
alt_name[26]  = "A New Beginning";
alt_name[27]  = "Strawberry Jam";
alt_name[28]  = "Grape Jelly";
alt_name[29]  = "Derby Drip";

//Patch

draw_set_halign(fa_left);

shader_end();

textDraw(temp_x + 4, temp_y + 92, "medFont", c_white, 0, 1000, 1, true, 1, " " + patch_ver);

textDraw(temp_x + 4, temp_y + 112, "fName", c_white, 0, 1000, 1, true, 1, patch_day + " " + patch_month);

if (get_player_color( player ) == 8){
textDraw(temp_x + 4, temp_y + 32, "fName", c_white, 0, 1000, 1, true, 1, " ");

shader_end();
}

//Alt

rectDraw(temp_x, temp_y + 135, temp_x + 201, temp_y + 142, c_black);

for(i = 0; i < num_alts; i++){
	var draw_color = (i == alt_cur) ? c_white : c_gray;
	var draw_x = temp_x + 2 + 5 * i;
	rectDraw(draw_x, temp_y + 137, draw_x + 3, temp_y + 140, draw_color);
}

draw_set_halign(fa_left);

//include alt. name
textDraw(temp_x + 4, temp_y + 124, "fName", c_white, 0, 1000, 1, true, 1, alt_name[alt_cur]);


//exclude alt. name
//textDraw(temp_x + 2, temp_y + 124, "fName", c_white, 0, 1000, 1, true, 1, "Alt. " + (alt_cur < 9 ? "0" : "") + string(alt_cur + 1));



#define textDraw(x, y, font, color, lineb, linew, 
scale, outline, alpha, string)

draw_set_font(asset_get(argument[2]));

if argument[7]{ //outline. doesn't work lol
    for (i = -1; i < 2; i++){
        for (j = -1; j < 2; j++){
            draw_text_ext_transformed_color(argument[0] + i * 2, argument[1] + j * 2, argument[9], argument[4], argument[5], argument[6], argument[6], 0, c_black, c_black, c_black, c_black, 1);
        }
    }
}

draw_text_ext_transformed_color(argument[0], argument[1], argument[9], argument[4], argument[5], argument[6], argument[6], 0, argument[3], argument[3], argument[3], argument[3], argument[8]);

return string_width_ext(argument[9], argument[4], argument[5]);



#define rectDraw(x1, y1, x2, y2, color)

draw_rectangle_color(argument[0], argument[1], argument[2], argument[3], argument[4], argument[4], argument[4], argument[4], false);