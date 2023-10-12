var temp_x = x + 8;
var temp_y = y + 9;

var impatience_1 = 1800+(3*player); //Originally 1800
var impatience_2 = 3600+(3*player);

var wario_leave_anim = (wario_css_impatience-impatience_2)*0.125;


//Hurry Up!!
if wario_css_impatience < impatience_1{
	draw_sprite_ext(sprite_get("charselect"), 1, temp_x, temp_y-1, 2, 2, 0, c_white, 1);
}

//This Stinks!!
if wario_css_impatience >= impatience_1 && wario_css_impatience < impatience_2{
	draw_sprite_ext(sprite_get("charselect_impatient"), 1, temp_x, temp_y-1, 2, 2, 0, c_white, 1);
}

//Gone
if wario_css_impatience >= impatience_2 && wario_leave_anim < 14{
	draw_sprite_ext(sprite_get("charselect_impatient_leave"), wario_leave_anim, temp_x, temp_y-1, 2, 2, 0, c_white, 1);
}

//Fancy CSS template by Muno
//Put in css_draw.gml

patch_ver = " ";
patch_day = " ";
patch_month = " ";

var num_alts = 16;
var alt_cur = get_player_color(player);
var alt_cur_2 = alt_cur;

var alt_cur_2 = alt_cur - 16;

var num_alts = 16;
var alt_cur = get_player_color(player);
var alt_cur_2 = alt_cur;

if alt_cur > 15{
	num_alts = 9;
	alt_cur_2 = alt_cur - 16;
}


//Alt name init. var doesn't work with arrays lol

alt_name[0]  = "Wario";
alt_name[1]  = "Red";
alt_name[2]  = "Blue";
alt_name[3]  = "Green";
alt_name[4]  = "White";
alt_name[5]  = "Brown";
alt_name[6]  = "Fire Wario";
alt_name[7]  = "Biker Wario";
alt_name[8]  = "Wario's Woods";
alt_name[9]  = "Waluigi";
alt_name[10] = "Captain Syrup";
alt_name[11] = "Rudy the Clown";
alt_name[12] = "The Shake King";
alt_name[13] = "General Hazel";
alt_name[14] = "Peppino";
alt_name[15] = "Anton";
alt_name[16] = "Abyss";
alt_name[17] = "Early Access";
alt_name[18] = "Gold Standard";
alt_name[19] = "VirG";
alt_name[20] = "Rick DIO James";
alt_name[21] = "Lowinor";
alt_name[22] = "Robby";
alt_name[23] = "Family Guy";
alt_name[24] = "Virtual Boy";


//Patch

draw_set_halign(fa_left);

textDraw(temp_x + 2, temp_y + 30, "medFont", c_white, 0, 1000, 1, true, 1, " " + patch_ver);

textDraw(temp_x + 2, temp_y + 50, "fName", c_white, 0, 1000, 1, true, 1, patch_day + " " + patch_month);



//Alt

rectDraw(temp_x, temp_y + 135, temp_x + 201, temp_y + 142, c_black);

for(i = 0; i < num_alts; i++){
	var draw_color = (i == alt_cur_2) ? c_white : c_gray;
	var draw_x = temp_x + 2 + 10 * i;
	rectDraw(draw_x, temp_y + 137, draw_x + 7, temp_y + 140, draw_color);
}

draw_set_halign(fa_left);

//include alt. name
textDraw(temp_x + 2, temp_y + 120, "fName", c_white, 0, 1000, 1, true, 1, "Alt. " + (alt_cur < 9 ? "0" : "") + string(alt_cur + 1) + ": " + alt_name[alt_cur]);

//exclude alt. name
//textDraw(temp_x + 2, temp_y + 124, "fName", c_white, 0, 1000, 1, true, 1, "Alt. " + (alt_cur < 9 ? "0" : "") + string(alt_cur + 1));


#define textDraw(x, y, font, color, lineb, linew, scale, outline, alpha, string)

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