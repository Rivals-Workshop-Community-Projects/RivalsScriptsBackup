var temp_x = x + 8;
var temp_y = y + 9;
 
seasonal_override = false;
color_overriden = -1;

patch_ver = " ";
patch_day = " ";
patch_month = " ";
 
var num_alts = 16;
var alt_cur = get_player_color(player);

//Draw overlay
//draw_sprite(sprite_get("css_overlay"), 0, x + 8, y + 8);
//draw_sprite_ext(sprite_get("css_overlay"), 0, x + 8, y + 8, 2, 2, 0, c_gray, 1);

if (alt_cur == 7 || alt_cur == 8 || alt_cur == 9 || alt_cur == 10) {
	set_ui_element( UI_HUD_ICON, sprite_get("hud_ex"));
} else if (alt_cur == 11) {
	set_ui_element( UI_HUD_ICON, sprite_get("hud_gb"));
} else {
	set_ui_element( UI_HUD_ICON, sprite_get("hud_def"));
}

if (alt_cur == 7 || alt_cur == 8 || alt_cur == 9 || alt_cur == 10 || alt_cur == 11) {
	draw_sprite(sprite_get("css_extra"), 0, x + 8, y + 8);
	if (alt_cur == 11) {
		draw_sprite(sprite_get("css_gb"), 0, x + 8, y + 8);
	}
}
 
//Alt name init. var doesn't work with arrays lol
 
alt_name[0]  = "Default";
alt_name[1]  = "Movie";
alt_name[2]  = "Mario";
alt_name[3]  = "Luigi";
alt_name[4]  = "Wario";
alt_name[5]  = "Waluigi";
alt_name[6]  = "Oyaji";
alt_name[7]  = "Eggplant Man";
alt_name[8]  = "Gotcha Wrench";
alt_name[9]  = "Dogu";
alt_name[10] = "Abyss";
alt_name[11] = "Game-boy";
alt_name[12] = "Custom";
alt_name[13] = "Black Race";
alt_name[14] = "DGR Dave";
alt_name[15] = "Bob the Builder";



//Patch
 
draw_set_halign(fa_left);
 
textDraw(temp_x + 2, temp_y + 50, "fName", c_white, 0, 1000, 1, true, 1, patch_day + " " + patch_month);
 
 
 
//Alt
 
shader_end();
 
rectDraw(temp_x, temp_y + 135, temp_x + 201, temp_y + 142, c_black);
 
for(i = 0; i < num_alts; i++){
    var draw_color = (i == alt_cur) ? c_white : c_gray;
    var draw_x = temp_x + 2 + 10 * i;
    rectDraw(draw_x, temp_y + 137, draw_x + 7, temp_y + 140, draw_color);
}
 
draw_set_halign(fa_left);
 
//include alt. name
textDraw(temp_x + 2, temp_y + 124, "fName", c_white, 0, 1000, 1, true, 1, "Alt. " + (alt_cur < 9 ? "0" : "") + string(alt_cur + 1) + ": " + alt_name[alt_cur]);
 
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
