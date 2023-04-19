var temp_x = x + 8;
var temp_y = y + 9;
 
patch_ver = "";
patch_day = "";
patch_month = "";
 
var num_alts = 17;
var alt_cur = get_player_color(player);
 
 
 
//Alt name init. var doesn't work with arrays lol
 
alt_name[0]  = "Bringer of Chaos";
alt_name[1]  = "Pyroblaze";
alt_name[2]  = "Floodtorrent";
alt_name[3]  = "Starflare";
alt_name[4]  = "Gloomshadow";
alt_name[5]  = "Satellite Edge";
alt_name[6]  = "Embercakes";
alt_name[7]  = "Magical";
alt_name[8]  = "Karma's a Bitch";
alt_name[9]  = "Salvager's Code";
alt_name[10]  = "Ready or Gormotti";
alt_name[11] = "Tiger! Tiger!";
alt_name[12] = "Special Inquisitor";
alt_name[13] = "Mega Muscle";
alt_name[14] = "Master Driver";
alt_name[15] = "Endbringer";
alt_name[16] = "Grit & Gall";

//Pandoria alt
shader_end();
draw_sprite_ext(sprite_get("css_pandorialts"), alt_cur, temp_x, temp_y, 2, 2, 0, c_white, 1);

//Patch
 
draw_set_halign(fa_left);
 
//textDraw(temp_x + 2, temp_y + 34, "fName", c_white, 0, 1000, 1, true, 1, "VER. " + patch_ver);
 
//textDraw(temp_x + 2, temp_y + 50, "fName", c_white, 0, 1000, 1, true, 1, patch_day + " " + patch_month);
 //Alt

rectDraw(temp_x, temp_y + 135, temp_x + 201, temp_y + 142, c_black);
 
for(i = 0; i < num_alts; i++){
    var draw_color = (i == alt_cur) ? c_white : c_gray;
    var draw_x = temp_x + 2 + 10 * i;
    rectDraw(draw_x, temp_y + 137, draw_x + 7, temp_y + 140, draw_color);
}

//css button
draw_sprite_ext(sprite_get("css_va_button"), css_va_type + (css_button_highlight * 3), temp_x + 158, temp_y + 104, 2, 2, 0, c_white, 1);

draw_set_halign(fa_left);
 
//include alt. name
textDraw(temp_x + 6 + ((player==0)?32:0), temp_y + 120, "fName", c_white, 0, 1000, 1, true, 1, /*"Alt. " + (alt_cur < 9 ? "0" : "") + string(alt_cur + 1) + ": " +*/ alt_name[alt_cur]);

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