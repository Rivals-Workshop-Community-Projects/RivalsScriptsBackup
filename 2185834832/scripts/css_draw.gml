//css-draw
if !(variable_instance_exists(id, "cssTimer")) {
    cssTimer = 0;
}

cssTimer++;
//print_debug(string(cssTimer));
var alt_cur = get_player_color(player);

var temp_x = x + 8;
var temp_y = y + 9;

var num_alts = 14;
var alt_cur = get_player_color(player);

var alt_new = get_player_color(player);

 
 
//Alt name init. var doesn't work with arrays lol
 
alt_name[0]  = "Default";
alt_name[1]  = "Red";
alt_name[2]  = "Blue";
alt_name[3]  = "Dark";
alt_name[4]  = "Light";
alt_name[5]  = "Sepia";
alt_name[6]  = "Toxic";
alt_name[7]  = "Comic";
alt_name[8]  = "Virtual Boy";
alt_name[9]  = "Torkoal";
alt_name[10]  = "Squirtle";
alt_name[11]  = "Torterra";
alt_name[12]  = "Naturist";
alt_name[13]  = "Hiker";
alt_name[14]  = "Mountain Climber";
alt_name[15]  = "BLM";
alt_name[16]  = "Copper [5k Milestone]";
alt_name[17]  = "Silver [10k Milestone!]";
alt_name[18]  = "Gold [15k Milestone!!]";
alt_name[19]  = "Developer";
alt_name[20]  = "Otaku";
alt_name[21]  = "Snolid";
alt_name[22]  = "Dichi [Lode and Puul]";
alt_name[23]  = "B0wlingKing";
alt_name[24]  = "Bat Monkey";
alt_name[25]  = "Cheddar Circle";
alt_name[26]  = "Firedancer";
alt_name[27]  = "Salt";
alt_name[28]  = "Oog is the Way";
alt_name[29]  = "Dark [Purple Edition]";
alt_name[30]  = "Light [Pink Edition]";
alt_name[31]  = "Parasyte";
 
 
 
if(get_player_color(player) == 31){
    draw_sprite(sprite_get("icons"), 4, temp_x + 4, temp_y + 96)
}

//Patch
 
draw_set_halign(fa_left);
 
//textDraw(temp_x + 2, temp_y + 30, "medFont", c_white, 0, 1000, 1, true, 1, "VER. " + patch_ver);
 
//textDraw(temp_x + 2, temp_y + 50, "fName", c_white, 0, 1000, 1, true, 1, patch_day + " " + patch_month);
 
 
if (!"currAlt" in self)
{
	currAlt = alt_new;
}
else if (alt_new != currAlt)
{
	sound_stop(asset_get("mfx_change_color"));
	sound_play(sound_get("boop"), 0, 0, 2);
	currAlt = alt_new;
}
	sound_stop(asset_get("mfx_change_color"));
 
//Symbols
if (alt_cur == 19 || alt_cur == 20 || alt_cur == 21 || alt_cur == 22 || alt_cur == 23){
  draw_sprite_ext(sprite_get("dev_icon"), 0, temp_x + 3, temp_y + 92, 1, 1, 0, c_white, 1);
}

///Alt
 
rectDraw(temp_x, temp_y + 135, temp_x + 201, temp_y + 142, c_black);
 
for(var i = 0; i < ceil(array_length(alt_name)/16); i++){
    for(var j = 0; j < min(array_length(alt_name)-i*16, 16); j++){
        var draw_color = (j+16*i == alt_cur) ? c_white : c_gray;
        var draw_x = temp_x + 2 + 10 * j;
        rectDraw(draw_x, temp_y + 137 - 5*i, draw_x + 7, temp_y + 140 - 5*i, draw_color);
    }
}
 
draw_set_halign(fa_left);
 
//include alt. name
textDraw(temp_x + 2, temp_y + 124 - 5*(ceil(array_length(alt_name)/16)-1), "fName", c_white, 0, 1000, 1, true, 1, "" + (alt_cur < 9 ? "0" : "") + string(alt_cur+1) + ": " + alt_name[alt_cur]);
 
 
user_event(12);
#define textDraw(x, y, font, color, lineb, linew, scale, outline, alpha, string)
 
draw_set_font(asset_get(argument[2]));
 
if argument[7]{ //outline. doesn't work lol
    for (var i = -1; i < 2; i++){
        for (var j = -1; j < 2; j++){
            draw_text_ext_transformed_color(argument[0] + i * 2, argument[1] + j * 2, argument[9], argument[4], argument[5], argument[6], argument[6], 0, c_black, c_black, c_black, c_black, 1);
        }
    }
}
 
draw_text_ext_transformed_color(argument[0], argument[1], argument[9], argument[4], argument[5], argument[6], argument[6], 0, argument[3], argument[3], argument[3], argument[3], argument[8]);
 
return string_width_ext(argument[9], argument[4], argument[5]);
 
 
 
#define rectDraw(x1, y1, x2, y2, color)
 
draw_rectangle_color(argument[0], argument[1], argument[2], argument[3], argument[4], argument[4], argument[4], argument[4], false);
 
 