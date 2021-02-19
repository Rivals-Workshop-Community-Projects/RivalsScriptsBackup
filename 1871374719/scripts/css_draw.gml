// CSS Draw

// Bark when loaded
if (get_color_profile_slot_r(0, 0) == 255)
{
    sound_play(sound_get("sfx_bark"));
    set_color_profile_slot(0, 0, 256, 255, 255);
}

// Rainbow
if (get_player_color(player) = 11)
{
	hue+=.5 if hue>255 hue-=255;
	color_rgb = make_color_rgb(210, 50, 150);
	hue2 = (color_get_hue(color_rgb)+hue) mod 255;
	color_hsv = make_color_hsv(hue2, color_get_saturation(color_rgb), color_get_value(color_rgb)); 
	set_color_profile_slot(11, 0, color_get_red(color_hsv), color_get_green(color_hsv), color_get_blue(color_hsv));
}
else
{
	hue = 0;
}
init_shader();



var temp_x = x + 8;
var temp_y = y + 9;
 
patch_ver = "10.5";
//patch_day = "30";
//patch_month = "MAY";
 
var num_alts = 12;
var alt_cur = get_player_color(player);
 
alt_name[0]  = "Default";
alt_name[1]  = "Patience";
alt_name[2]  = "Determination";
alt_name[3]  = "Kindness";
alt_name[4]  = "Integrity";
alt_name[5]  = "Perseverance";
alt_name[6]  = "Justice";
alt_name[7]  = "Bravery";
alt_name[8]  = "Abyss";
alt_name[9]  = "Early Access";
alt_name[10] = "Glass";
alt_name[11] = "Hopes & Dreams";
//alt_name[12] = "bluh";
//alt_name[13] = "bluh";
//alt_name[14] = "bluh";
//alt_name[15] = "bluh";
 
 
//Patch
 
draw_set_halign(fa_left);
 
textDraw(temp_x + 2, temp_y + 32, "fName", c_white, 0, 1000, 1, true, 1, "VER. " + patch_ver);
//textDraw(temp_x + 2, temp_y + 142, "medFont", c_white, 0, 1000, 1, true, 1, "" + patch_ver);
 
//textDraw(temp_x + 2, temp_y + 50, "fName", c_white, 0, 1000, 1, true, 1, patch_day + " " + patch_month);
 

// Abyss
if (alt_cur == 8)
{
  draw_sprite_ext(sprite_get("cssicons"), 1, temp_x + 168, temp_y + 101, 1, 1, 0, c_white, 1);
}
// Early Access
if (alt_cur == 9)
{
  draw_sprite_ext(sprite_get("cssicons"), 3, temp_x + 168, temp_y + 101, 1, 1, 0, c_white, 1);
}
// Special
if (alt_cur == 10 || alt_cur == 11)
{
  draw_sprite_ext(sprite_get("cssicons"), 2, temp_x + 168, temp_y + 101, 1, 1, 0, c_white, 1);
}
// Fixes the meter being transparent with the glass alt.
if (alt_cur == 10)
{
  draw_sprite_ext(sprite_get("cssfix"), 2, temp_x + 2, temp_y + 135, 1, 1, 0, c_white, 1);
}
 
//Alt
 
rectDraw(temp_x, temp_y + 135, temp_x + 201, temp_y + 142, c_black);
 
for(i = 0; i < num_alts; i++){
	
    var draw_color = (i == alt_cur) ? c_white : c_gray;
    var draw_x = temp_x + 2 + 10 * i;
    rectDraw(draw_x, temp_y + 137, draw_x + 7, temp_y + 140, draw_color);
}
 
draw_set_halign(fa_left);
 
//include alt. name
//textDraw(temp_x + 2, temp_y + 124, "fName", c_white, 0, 1000, 1, true, 1, "Alt. " + (alt_cur < 9 ? "0" : "") + string(alt_cur + 1) + ": " + alt_name[alt_cur]);
textDraw(temp_x + 2, temp_y + 124, "fName", c_white, 0, 1000, 1, true, 1, alt_name[alt_cur]);

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