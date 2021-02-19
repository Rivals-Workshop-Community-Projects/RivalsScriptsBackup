if (get_color_profile_slot_r(2, 3) == 34)
{
    image_alpha = 6;
	set_color_profile_slot(2, 3, 35, 18, 59);//armor red
	//print_debug("Init");
	currentAlt = get_player_color(player);
}

if ("currentAlt" not in self)
	currentAlt = get_player_color(player);

var temp_x = x + 8;
var temp_y = y + 9;

patch_ver = "1.2";
patch_day = "16";
patch_month = "JAN";

var num_alts = 10;

//Fade out the css_draw but refresh alpha when changing alts
var prevAlt = get_player_color(player);
if (prevAlt != currentAlt)
	image_alpha = 6;

currentAlt = prevAlt;
//Fade out alpha
image_alpha = max(image_alpha-0.05, 0);


alt_name[0]  = "Default";
alt_name[1]  = "Lightweight Plate";
alt_name[2]  = "Vestments of Vigor";
alt_name[3]  = "Battery Brigandine";
alt_name[4]  = "Rodent Regalia";
alt_name[5]  = "Resplendent Cape";
alt_name[6]  = "Code A&CHOED";
alt_name[7]  = "Code A&THIAB";
alt_name[8]  = "Code A&STIUJ";
alt_name[9]  = "Early Access";



//Patch Text
draw_set_halign(fa_left);

var verPatchPosX = temp_x + 2;
var verPatchPosY = temp_y + 30;
//Fake outline. Using real outlines causes alpha problems
fakeOutlineBigTextDraw(verPatchPosX, verPatchPosY, "medFont", c_black, 0, 1000, 1, false, image_alpha, "VER. " + patch_ver);
//Actual text
textDraw(verPatchPosX, verPatchPosY, "medFont", c_white, 0, 1000, 1, false, image_alpha, "VER. " + patch_ver);

var patchDayMonthPosX = temp_x + 2;
var patchDayMonthPosY = temp_y + 50;
//Fake outline
fakeOutlineTextDraw(patchDayMonthPosX, patchDayMonthPosY, "fName", c_black, 0, 1000, 1, false, image_alpha, patch_day + " " + patch_month);
textDraw(patchDayMonthPosX, patchDayMonthPosY, "fName", c_white, 0, 1000, 1, false, image_alpha, patch_day + " " + patch_month);



//Alt
rectDraw(temp_x, temp_y + 135, temp_x + 201, temp_y + 142, c_black, image_alpha);

for(i = 0; i < num_alts; i++){
	var draw_color = (i == currentAlt) ? c_white : c_gray;
	var draw_x = temp_x + 2 + 10 * i;
	rectDraw(draw_x, temp_y + 137, draw_x + 7, temp_y + 140, draw_color, image_alpha);
}

draw_set_halign(fa_left);

//include alt. name
fakeOutlineTextDraw(temp_x + 2, temp_y + 124, "fName", c_black, 0, 1000, 1, false, image_alpha, "Alt. " + (currentAlt < 9 ? "0" : "") + string(currentAlt + 1) + ": " + alt_name[currentAlt]);
textDraw(temp_x + 2, temp_y + 124, "fName", c_white, 0, 1000, 1, false, image_alpha, "Alt. " + (currentAlt < 9 ? "0" : "") + string(currentAlt + 1) + ": " + alt_name[currentAlt]);

//exclude alt. name
//textDraw(temp_x + 2, temp_y + 124, "fName", c_white, 0, 1000, 1, true, 1, "Alt. " + (alt_cur < 9 ? "0" : "") + string(alt_cur + 1));

//Early Access (Game Boy) shading
if (get_player_color(player) == 12){
    for(i = 0; i < 6; i++){
        set_character_color_shading(i, 0);
    }
}

//user_event(12);

#define textDraw(x, y, font, color, lineb, linew, scale, outline, alpha, string)

draw_set_font(asset_get(argument[2]));

if argument[7]{ //outline. doesn't work
    for (i = -1; i < 2; i++){
        for (j = -1; j < 2; j++){
            draw_text_ext_transformed_color(argument[0] + i * 2, argument[1] + j * 2, argument[9], argument[4], argument[5], argument[6], argument[6], 0, c_black, c_black, c_black, c_black, 1);
        }
    }
}

draw_text_ext_transformed_color(argument[0], argument[1], argument[9], argument[4], argument[5], argument[6], argument[6], 0, argument[3], argument[3], argument[3], argument[3], argument[8]);

return string_width_ext(argument[9], argument[4], argument[5]);



#define rectDraw(x1, y1, x2, y2, color, alpha)
draw_set_alpha( argument[5]);
draw_rectangle_color(argument[0], argument[1], argument[2], argument[3], argument[4], argument[4], argument[4], argument[4], false);
draw_set_alpha(1);

#define fakeOutlineTextDraw(x, y, font, color, lineb, linew, scale, outline, alpha, string)
textDraw(argument[0] + 2, argument[1], argument[2], argument[3], 0, 1000, 1, false, image_alpha, argument[9]);
textDraw(argument[0] - 2, argument[1], argument[2], argument[3], 0, 1000, 1, false, image_alpha, argument[9]); 
textDraw(argument[0], argument[1] - 2, argument[2], argument[3], 0, 1000, 1, false, image_alpha, argument[9]); 
textDraw(argument[0], argument[1] + 2, argument[2], argument[3], 0, 1000, 1, false, image_alpha, argument[9]);
textDraw(argument[0] + 2, argument[1] + 2, argument[2], argument[3], 0, 1000, 1, false, image_alpha, argument[9]);
textDraw(argument[0] - 2, argument[1] - 2, argument[2], argument[3], 0, 1000, 1, false, image_alpha, argument[9]); 
textDraw(argument[0] + 2, argument[1] - 2, argument[2], argument[3], 0, 1000, 1, false, image_alpha, argument[9]); 
textDraw(argument[0] - 2, argument[1] + 2, argument[2], argument[3], 0, 1000, 1, false, image_alpha, argument[9]);

#define fakeOutlineBigTextDraw(x, y, font, color, lineb, linew, scale, outline, alpha, string)
textDraw(argument[0] + 2, argument[1] + 2, argument[2], argument[3], 0, 1000, 1, false, image_alpha, argument[9]);
textDraw(argument[0] - 2, argument[1] - 2, argument[2], argument[3], 0, 1000, 1, false, image_alpha, argument[9]); 
textDraw(argument[0] + 2, argument[1] - 2, argument[2], argument[3], 0, 1000, 1, false, image_alpha, argument[9]); 
textDraw(argument[0] - 2, argument[1] + 2, argument[2], argument[3], 0, 1000, 1, false, image_alpha, argument[9]);
