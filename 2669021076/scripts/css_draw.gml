//Fancy CSS template by Muno -- (this is his old template with some modifications)
var temp_x = x + 8;
var temp_y = y + 9;
 
var num_alts = 22;
var alt_cur = get_player_color(player);

// Alt name init. var doesn't work with arrays lol
if "alt_name" not in self {
	alt_name = array_create(num_alts, "");

	alt_name[0]		= "Krabby";
	alt_name[1] 	= "Clauncher";
	alt_name[2] 	= "Venipede";
	alt_name[3] 	= "Spinarak";
	alt_name[4] 	= "Nincada";
	alt_name[5] 	= "Gligar";
	alt_name[6] 	= "Kabuto";
	alt_name[7] 	= "Skorupi";
	alt_name[8] 	= "Dunsparce";
	alt_name[9] 	= "Parasect";
	alt_name[10]	= "Wimpod";
	alt_name[11]	= "Vikavolt";
	alt_name[12]	= "Anorith";
	alt_name[13]	= "Dottler"; // abyss effect
	alt_name[14]	= "Crabominable"; 
	alt_name[15]	= "Crustle";
	alt_name[16]	= "Yanmega";
	alt_name[17]	= "Volcarona";
	alt_name[18]	= "Shiny"; // ranked effect
	alt_name[19]	= "Early Access";
	alt_name[20]	= "Tamatoa";
	alt_name[21]	= "Eugene Krabs";
	
}
var krabs_alt = 21;

// Special alts
var badge_num = -1;
var costume_num = -1;
switch alt_cur {
	case 18: // shiny
	    badge_num = 5;
	    break;
    case 19: // early access
    	badge_num = 2;
    	break;
	case 21: // krabs
	    // play funny sound
	    if (get_color_profile_slot_b(krabs_alt, 3) == 255) {
			sound_play(asset_get("sfx_shop_buy"));
			set_color_profile_slot(krabs_alt, 3, 148, 203, 256);
		}
	case 20: // tomatoa
		badge_num = 4;
		break;
}

// draw fancy stuff
shader_end();
if (costume_num>=0) draw_sprite_ext(sprite_get("css_costumes"), costume_num, x + 8, y + 8, 2, 2, 0, c_white, 1);
if (badge_num>=0) draw_sprite_ext(sprite_get("css_badges"), badge_num, x + 176, y + 112, 2, 2, 0, c_white, 1);

// Reset sound trigger
if (alt_cur!=krabs_alt) set_color_profile_slot(krabs_alt, 3, 148, 203, 255);
 

// ==================== 
// Draw alt hud
rectDraw(temp_x, temp_y + 135, temp_x + 201, temp_y + 142, c_black);
 
for(i = 0; i < num_alts; i++){
	var draw_color = (i == alt_cur) ? c_white : c_gray;
	var draw_x = temp_x + 2 + 8 * i;
	rectDraw(draw_x, temp_y + 137, draw_x + 5, temp_y + 140, draw_color);
}

// Draw alt name
draw_set_halign(fa_left);
textDraw(temp_x + 2, temp_y + 124, "fName", c_white, 0, 1000, 1, true, 1,alt_name[alt_cur]);
 


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