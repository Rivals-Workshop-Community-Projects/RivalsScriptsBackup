//css-draw
if !(variable_instance_exists(id, "cssTimer")) {
    cssTimer = 0;
}

cssTimer++;
//print_debug(string(cssTimer));
var alt_cur = get_player_color(player);

var temp_x = x + 8;
var temp_y = y + 9;

var num_alts = 17;
var alt_cur = get_player_color(player);

var alt_new = get_player_color(player);

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

//Alt name init. var doesn't work with arrays lol
 
alt_name[0]  = "R.O.B.";
alt_name[1]  = "Chilly";
alt_name[2]  = "Clean";
alt_name[3]  = "Bumblebee";
alt_name[4]  = "Deep Sea";
alt_name[5]  = "Inverse";
alt_name[6]  = "Purple";
alt_name[7]  = "Melon";
alt_name[8]  = "Famicom";
alt_name[9]  = "Yellow-ed";
alt_name[10]  = "Retro";
alt_name[11]  = "Gameboy";
alt_name[12]  = "Virtual Boy";
alt_name[13]  = "Limited Edition ";
alt_name[14]  = "Royal";
alt_name[15]  = "BLW";
alt_name[16]  = "Trick or Treat";

//Alt

if(get_player_color(player) == 16){
    draw_sprite(sprite_get("icons"), 4, temp_x + 4, temp_y + 101)
}

rectDraw(temp_x, temp_y + 135, temp_x + 201, temp_y + 142, c_black);
 
for(i = 0; i < num_alts; i++){
    var draw_color = (i == alt_cur) ? c_white : c_gray;
    var draw_x = temp_x + 2 + 10 * i;
    rectDraw(draw_x, temp_y + 137, draw_x + 7, temp_y + 140, draw_color);
}
 
draw_set_halign(fa_left);
 
//include alt. name
textDraw(temp_x + 2, temp_y + 124, "fName", c_white, 0, 1000, 1, true, 1, (alt_cur < 9 ? "0" : "") + string(alt_cur + 1) + ": " + alt_name[alt_cur]);
 
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