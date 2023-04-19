var temp_x = x + 8;
var temp_y = y + 9;
 
var num_alts = 20;
var alt_cur = get_player_color(player);

if (get_color_profile_slot_r(0, 0) == 238) {
    sound_play(sound_get("sfx_monkey_ball_2_banana"));
    set_color_profile_slot(0, 0, get_color_profile_slot_r(0, 0) + 1, get_color_profile_slot_g(0, 0), get_color_profile_slot_b(0, 0));
}

//Alt name init. var doesn't work with arrays lol
 
alt_name[0]  = "Default";
alt_name[1]  = "Blue";
alt_name[2]  = "GonGon";
alt_name[3]  = "Green";
alt_name[4]  = "White";
alt_name[5]  = "MeeMee";
alt_name[6]  = "Abyss";
alt_name[7]  = "Gameboy";
alt_name[8]  = "Yellow";
alt_name[9]  = "Dr. BadBoon";
alt_name[10] = "Inverse";
alt_name[11] = "Magenta";
alt_name[12] = "Cyan";
alt_name[13] = "Monochrome";
alt_name[14] = "Baby";
alt_name[15] = "Sonic";
alt_name[16] = "Infamous";
alt_name[17] = "Pure Gold";
alt_name[18] = "Ranked Gold";
alt_name[19] = "Champion";
 
//Alt
 
//rectDraw(temp_x, temp_y + 135, temp_x + 201, temp_y + 142, c_black);
 
for(i = 0; i < num_alts; i++){
    //var draw_color = (i == alt_cur) ? c_white : c_gray;
    //var draw_x = temp_x + 2 + 10 * i;
    //rectDraw(draw_x, temp_y + 137, draw_x + 7, temp_y + 140, draw_color);
}
 
draw_set_halign(fa_left);

shader_end();

//Outlines
if (get_player_color(player) == 7){
	draw_sprite(sprite_get("css_ea_outline"),0,x + 8,y + 8);
}
if (get_player_color(player) == 17){
	draw_sprite(sprite_get("css_gold_outline"),0,x + 8,y + 8);
}

//Special Icons n shit
if (get_player_color(player) == 6){
	draw_sprite(sprite_get("css_icon_abyss"),0,x+10,y+42);
} else if (get_player_color(player) == 7){
	//draw_sprite(sprite_get("css_ea_outline"),0,x + 8,y + 8);
	draw_sprite(sprite_get("css_icon_ea"),0,x+10,y+42);
} else if (get_player_color(player) == 18){
	draw_sprite(sprite_get("css_icon_ranked"),0,x+10,y+46);
} else if (get_player_color(player) == 16 || get_player_color(player) == 17 || get_player_color(player) == 19){
	if (get_player_color(player) == 17){
		draw_sprite(sprite_get("css_gold_outline"),0,x + 8,y + 8);
	}
	draw_sprite(sprite_get("css_icon_special"),0,x+10,y+42);
}

//include alt. name
textDraw(temp_x + 2, temp_y + 130, "fName", c_white, 0, 1000, 1, true, 1, "Alt. " + (alt_cur < 9 ? "" : "") + string(alt_cur+1) + ": " +  alt_name[alt_cur]);
 
//exclude alt. name
//textDraw(temp_x + 2, temp_y + 124, "fName", c_white, 0, 1000, 1, true, 1, "Alt. " + (alt_cur < 9 ? "0" : "") + string(alt_cur + 1));

shader_end();

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