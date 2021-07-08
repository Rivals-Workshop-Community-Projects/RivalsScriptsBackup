//Fancy CSS template by Muno
//Put in css_draw.gml
 
var temp_x = x + 8;
var temp_y = y + 9;
 
patch_ver = "1.3";
patch_day = "N";
patch_month = "A";

if !variable_instance_exists(id,"fade_timer"){
	fade_timer = 0;
	current_alt = 0;
	custom_alpha = 1;
}
fade_timer ++

var num_alts = 16;
var alt_cur = get_player_color(player);

if alt_cur != current_alt{
	fade_timer = 0
	current_alt = alt_cur
	custom_alpha = 1;
}

if fade_timer > 50{
	custom_alpha = max((50 - (fade_timer - 50))/50,0)
}

 
//Alt name init. var doesn't work with arrays lol
 
alt_name[0]  = "Default";
alt_name[1]  = "Celebi";
alt_name[2]  = "Dusknoir";
alt_name[3]  = "Wigglytuff";
alt_name[4]  = "Primal Dialga";
alt_name[5]  = "Darkrai";
alt_name[6]  = "Ninetales";
alt_name[7]  = "Absol";
alt_name[8]  = "Slowking";
alt_name[9]  = "Virizion";
alt_name[10] = "Hydregion";
alt_name[11] = "Nuzleaf";
alt_name[12] = "Krookodile";
alt_name[13] = "Shiny";
alt_name[14] = "Abyss";
alt_name[15] = "Early Access";
// "Marshtomp"
// "Combusken"
 
 
 
//Patch
 
draw_set_halign(fa_left);
 
textDraw(temp_x + 4, temp_y + 148, "fName", c_white, 0, 1000, 1, true, 0.5, "V. " + patch_ver);
 
// textDraw(temp_x + 2, temp_y + 50, "fName", c_white, 0, 1000, 1, true, 1, patch_day + " " + patch_month);
 
 
 
//Alt

draw_set_alpha(custom_alpha)
// rectDraw(temp_x, temp_y + 135, temp_x + 201, temp_y + 142, c_black);
rectDraw(temp_x, temp_y + 135, temp_x + 161, temp_y + 142, c_black);
 
for(i = 0; i < num_alts; i++){
	var draw_color = (i == alt_cur) ? c_white : c_gray;
	var draw_x = temp_x + 2 + 10 * i;
	rectDraw(draw_x, temp_y + 137, draw_x + 7, temp_y + 140, draw_color);
}
 
draw_set_halign(fa_left);
 
//include alt. name
textDraw(temp_x + 2, temp_y + 124, "fName", c_white, 0, 1000, 1, true, custom_alpha, "Alt. " + (alt_cur < 9 ? "0" : "") + string(alt_cur + 1) + ": " + alt_name[alt_cur]);

//exclude alt. name
//textDraw(temp_x + 2, temp_y + 124, "fName", c_white, 0, 1000, 1, true, 1, "Alt. " + (alt_cur < 9 ? "0" : "") + string(alt_cur + 1));
 
draw_set_alpha(1)

shader_end();

if (get_player_color(player) == 14)
	draw_sprite_ext(sprite_get("css"), 0, x+176, y+110, 2, 2, 0, c_white, 1);
if (get_player_color(player) == 15)
	draw_sprite_ext(sprite_get("css"), 1, x+176, y+110, 2, 2, 0, c_white, 1);
 
#define textDraw(x, y, font, color, lineb, linew, scale, outline, alpha, string)
 
draw_set_font(asset_get(argument[2]));
 
if argument[7]{ //outline. doesn't work lol
    for (i = -1; i < 2; i++){
        for (j = -1; j < 2; j++){
            draw_text_ext_transformed_color(argument[0] + i * 2, argument[1] + j * 2, argument[9], argument[4], argument[5], argument[6], argument[6], 0, c_black, c_black, c_black, c_black, custom_alpha);
        }
    }
}
 
draw_text_ext_transformed_color(argument[0], argument[1], argument[9], argument[4], argument[5], argument[6], argument[6], 0, argument[3], argument[3], argument[3], argument[3], argument[8]);
 
return string_width_ext(argument[9], argument[4], argument[5]);
 
 
 
#define rectDraw(x1, y1, x2, y2, color)
 
draw_rectangle_color(argument[0], argument[1], argument[2], argument[3], argument[4], argument[4], argument[4], argument[4], false);