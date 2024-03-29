//Fancy CSS template by Muno
//Put in css_draw.gml

//GB Icon
if (get_player_color(player)==7){
		draw_sprite(sprite_get("css_ea_outline"),0,x + 8,y + 8);
        draw_sprite(sprite_get("ea_icon"),0,x+10,y+42);
    }

if (get_color_profile_slot_r(0, 0) == 31) {
    sound_play(sound_get("css_vc"));
    set_color_profile_slot(0, 0, get_color_profile_slot_r(0, 0) + 1, get_color_profile_slot_g(0, 0), get_color_profile_slot_b(0, 0));
}

var temp_x = x + 8;
var temp_y = y + 9;
 
var num_alts = 16;
var alt_cur = get_player_color(player);
 
 
 
//Alt name init. var doesn't work with arrays lol
 
alt_name[0]  = "Default";
alt_name[1]  = "Classic";
alt_name[2]  = "Knuckles";
alt_name[3]  = "Teal";
alt_name[4]  = "Clone Fighter";
alt_name[5]  = "Pink";
alt_name[6]  = "Abyss";
alt_name[7]  = "EARLY ACCESS";
alt_name[8]  = "Seasonal";
alt_name[9]  = "Purple (Smash)";
alt_name[10] = "Super Sonic";
alt_name[11] = "G8";
alt_name[12] = "Pocket Adventure";
alt_name[13] = "Shadow";
alt_name[14] = "Silver";
alt_name[15] = "Obama Bootleg";

 
 
//Alt
 
//rectDraw(temp_x, temp_y + 135, temp_x + 201, temp_y + 142, c_black);
 
for(i = 0; i < num_alts; i++){
    //var draw_color = (i == alt_cur) ? c_white : c_gray;
    //var draw_x = temp_x + 2 + 10 * i;
    //rectDraw(draw_x, temp_y + 137, draw_x + 7, temp_y + 140, draw_color);
}
 
draw_set_halign(fa_left);
 
//include alt. name
//textDraw(temp_x + 2, temp_y + 124, "fName", c_white, 0, 1000, 1, true, 1, "Alt. " + (alt_cur < 9 ? "0" : "") + string(alt_cur + 1) + ": " + alt_name[alt_cur]);

shader_end();
//exclude alt. name
//textDraw(temp_x + 2, temp_y + 124, "fName", c_white, 0, 1000, 1, true, 1, "Alt. " + (alt_cur < 9 ? "0" : "") + string(alt_cur + 1));
 
//ricE's colorgrid css_draw stuffs.
if (alt_cur < 16){
	draw_sprite(sprite_get("colorgrid"),alt_cur,x + 8, y - 24);
	draw_sprite(sprite_get("colorgrid_pagenum1"),alt_cur,x + 202, y - 28);
} else {
	draw_sprite(sprite_get("colorgrid_part2"),alt_cur,x + 8, y - 24);
	draw_sprite(sprite_get("colorgrid_pagenum2"),alt_cur,x + 202, y - 28);
} 

//Special Icons n shit
if (get_player_color(player) == 6){
	draw_sprite(sprite_get("css_icon_abyss"),0,x+10,y+42);
} else if (get_player_color(player) == 7){
	draw_sprite(sprite_get("css_ea_outline"),0,x + 8,y + 8);
	draw_sprite(sprite_get("css_icon_ea"),0,x+10,y+42);
} else if (get_player_color(player) == 18){
	draw_sprite(sprite_get("css_icon_ranked"),0,x+10,y+46);
} else if (get_player_color(player) == 16 || get_player_color(player) == 17 || get_player_color(player) == 19){
	if (get_player_color(player) == 17){
		draw_sprite(sprite_get("css_gold_outline"),0,x + 8,y + 8);
	}
	draw_sprite(sprite_get("css_icon_special"),0,x+10,y+42);
} 

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