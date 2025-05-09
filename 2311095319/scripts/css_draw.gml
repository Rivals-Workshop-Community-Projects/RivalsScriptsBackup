//Fancy CSS template by Muno
//Put in css_draw.gml

//SHOULD prevent Mario's sleeves from being... weird online. If it doesnt work then blane the devs lmao
if (get_player_color(player) != 0){
	draw_sprite(sprite_get("SLEEVES"),0,x + 8,y + 8);
} else if (get_player_color(player) == 0){
	draw_sprite(sprite_get("SLEEVES_BUT_RED"),0,x + 8,y + 8);
}

/*
if (get_color_profile_slot_r(0, 0) == 238) {
    sound_play(sound_get("cssvoice"));
    set_color_profile_slot(0, 0, get_color_profile_slot_r(0, 0) + 1, get_color_profile_slot_g(0, 0), get_color_profile_slot_b(0, 0));
}
*/

var temp_x = x + 8;
var temp_y = y + 9;
 
var num_alts = 28;
var alt_cur = get_player_color(player);

//Alt name init. var doesn't work with arrays
 
alt_name[0]  = "Mario";
alt_name[1]  = "Blue";
alt_name[2]  = "Classic";
alt_name[3]  = "Green";
alt_name[4]  = "Flying";
alt_name[5]  = "Waluigi";
alt_name[6]  = "Abyss";
alt_name[7]  = "Early Access";
alt_name[8]  = "Wario";
alt_name[9]  = "Fire";
alt_name[10] = "Foreman Spike";
alt_name[11] = "Pink";
alt_name[12] = "Shadow Mario";
alt_name[13] = "Luigi";
alt_name[14] = "Bluey";
alt_name[15] = "Princess Peach";
alt_name[16] = "Infamous";
alt_name[17] = "Pure Gold";
alt_name[18] = "Ranked Gold";
alt_name[19] = "Champion";
alt_name[20] = "Turquoise";
alt_name[21] = "Light Blue";
alt_name[22] = "Boomerang";
alt_name[23] = "SMBZ";
alt_name[24] = "Teal";
alt_name[25] = "Pelee Pablo";
alt_name[26] = "Evil Mario";
alt_name[27] = "Seasonal";
alt_name[28] = "Retro";
alt_name[29] = "SMB3";
alt_name[30] = "World";
alt_name[31] = "Unmapped";
 
//Alt
 
//rectDraw(temp_x, temp_y + 135, temp_x + 201, temp_y + 142, c_black);
 
for(i = 0; i < num_alts; i++){
    //var draw_color = (i == alt_cur) ? c_white : c_gray;
    //var draw_x = temp_x + 2 + 10 * i;
    //rectDraw(draw_x, temp_y + 137, draw_x + 7, temp_y + 140, draw_color);
}
 
draw_set_halign(fa_left);

shader_end();

if (get_player_color(player) == 7){
	draw_sprite(sprite_get("css_ea_outline"),0,x + 8,y + 8);
}

var icon_draw_x = x + 174;
var icon_draw_y = y + 108;
// Special Icons
switch (get_player_color(player)){
	case 6:
		// Abyss
		draw_sprite(sprite_get("_css_icons"),0,icon_draw_x,icon_draw_y);
	break;
	case 7:
		// Early Access
		draw_sprite(sprite_get("_css_icons"),1,icon_draw_x,icon_draw_y);
	break;
	case 12:
	case 16:
	case 17:
	case 19:
		// Star
		draw_sprite(sprite_get("_css_icons"),2,icon_draw_x,icon_draw_y);
	break;
	case 18:
		// Ranked Gold
		draw_sprite(sprite_get("_css_icons"),3,icon_draw_x,icon_draw_y);
	break;
	case 27:
		// Seasonal
		draw_sprite(sprite_get("_css_icons"),4,icon_draw_x,icon_draw_y);
	break;
	break;
}

// Outlines
if (get_player_color(player) == 7){
	draw_sprite(sprite_get("css_ea_outline"),0,x + 8,y + 8);
}
if (get_player_color(player) == 17){
	draw_sprite(sprite_get("css_gold_outline"),0,x + 8,y + 8);
}

// CSS button
draw_sprite_ext(sprite_get("css_voicedMode_button"), 0 + buttonShouldHighlight + (css_voicedMode_enabled * 3) + buttonPressed, temp_x + 174 - 4, temp_y + 26, 1, 1, 0, c_white, 1);

//include alt. name
//textDraw(temp_x + 2, temp_y + 130, "fName", c_white, 0, 1000, 1, true, 1, "" + (alt_cur < 9 ? "" : "") + alt_name[alt_cur]);
textDraw(temp_x + 2 + ((player==0)?32:0), temp_y + 130, "fName", c_white, 0, 1000, 1, true, 1, "" + (alt_cur < 9 ? "" : "") + string(alt_cur + 1) + ": " + alt_name[alt_cur]);
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