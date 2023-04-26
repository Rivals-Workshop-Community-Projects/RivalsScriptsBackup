//To do a fake initalization, we add a 1 to the red value in the profile color slot. We'll do this for Amber's Peppercat alt since it's red
if (get_color_profile_slot_r(2, 1) == 177)
{
    image_alpha = 6;
	set_color_profile_slot( 2, 1, 178, 0, 30 ); //Main 2
	//print_debug("Init");
	currentAlt = get_player_color(player);
}

if ("currentAlt" not in self)
	currentAlt = get_player_color(player);

var temp_x = x + 8;
var temp_y = y + 9;

patch_ver = "3.0";
patch_day = "24";
patch_month = "APR";

var num_alts = 20;

//Fade out the css_draw but refresh alpha when changing alts
var prevAlt = get_player_color(player);
if (prevAlt != currentAlt)
	image_alpha = 6;

currentAlt = prevAlt;
//Fade out alpha
image_alpha = max(image_alpha-0.05, 0);


alt_name[0]  = "Default";
alt_name[1]  = "Ori";
alt_name[2]  = "Peppercat";
alt_name[3]  = "Niko";
alt_name[4]  = "Morgana";
alt_name[5]  = "Happy";
alt_name[6]  = "Blaze the Cat";
alt_name[7]  = "Felyne";
alt_name[8]  = "Skitty";
alt_name[9]  = "Zale (Catjitsu)";
alt_name[10] = "Boki";
alt_name[11] = "Shadow (K.H)";
alt_name[12] = "E.Access (GB)";
alt_name[13] = "Retro Amber";
alt_name[14] = "Abyss";
alt_name[15] = "Nyan Cat";
alt_name[16] = "Blanc";
alt_name[17] = "Nor";
alt_name[18] = "Gold";
alt_name[19] = "Casper";


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
