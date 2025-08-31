var temp_x = x + 8;
var temp_y = y + 9;
 
var num_alts = 28;
var alt_cur = get_player_color(player);

//Alt name init. var doesn't work with arrays lol
 
alt_name[0]  = "Plague Knight";
alt_name[1]  = "Treasure Trappings";
alt_name[2]  = "Ward Robe";
alt_name[3]  = "Goo Garment";
alt_name[4]  = "Monochrome Getup";
alt_name[5]  = "Cascade Powder";
alt_name[6]  = "Abyss";
alt_name[7]  = "Early Access";
alt_name[8]  = "Dandy Duds";
alt_name[9]  = "Toasted Experiment";
alt_name[10] = "Contrasting Colors";
alt_name[11] = "Component Powder";
alt_name[12] = "Variable Mixture";
alt_name[13] = "Seafoam Suit";
alt_name[14] = "Treasure Trove";
alt_name[15] = "Pandemonium Cloak";
alt_name[16] = "Infamous";
alt_name[17] = "Pure Gold";
alt_name[18] = "Ranked Gold";
alt_name[19] = "Champion";
alt_name[20] = "Percy";
alt_name[21] = "Lunatic Cultist";
alt_name[22] = "Vortex Gallery '25";
alt_name[23] = "Unmapped";
alt_name[24] = "template";
alt_name[25] = "template";
alt_name[26] = "template";
alt_name[27] = "Unmapped";

//Alt
 
//rectDraw(temp_x, temp_y + 135, temp_x + 201, temp_y + 142, c_black);
 
for(i = 0; i < num_alts; i++){//>
    //var draw_color = (i == alt_cur) ? c_white : c_gray;
    //var draw_x = temp_x + 2 + 10 * i;
    //rectDraw(draw_x, temp_y + 137, draw_x + 7, temp_y + 140, draw_color);
}
 
draw_set_halign(fa_left);

// print("ok im making sure this var exists LOL");
// print("whats even the val of this LOL " + string(pandCloakWhiteFlashThing))
if (otherRandomFlashVarPleaseWork > 0){
	//var myCharSelectSpr = get_char_info(player, INFO_CHARSELECT);
	var myCharSelectSpr = sprite_get("_css_white_flash");
	
	//print("yes?");
	
	//gpu_set_fog(1, c_white, 0, 1)
	draw_sprite_ext(myCharSelectSpr, 0, x + 8, y + 8, 2, 2, 0, c_white, otherRandomFlashVarPleaseWork)
	//gpu_set_fog(0, c_white, 0, 1)
	
	otherRandomFlashVarPleaseWork -= 0.05;
	
	// we change colors here
	if (didIChangeColorsOnPandemonium == false){
	
		//print("DOES THIS RUN PLEASE");
		
		sound_play(sound_get("sfx_SKPoS_pandcloak_change"));

		pandemoniumCloakColors[0] = [$a4e8fc, $6ba3e8, $4d5ae8, $4d5ae8, $a4e8fc, $6ba3e8];
		pandemoniumCloakColors[1] = [$fff97a, $fc8f12, $5c6055, $5c6055, $fff97a, $fcbc12];
		pandemoniumCloakColors[2] = [$fc3800, $940000, $520e00, $520e00, $fc3800, $940000];
		pandemoniumCloakColors[3] = [$f77bb9, $de335e, $4603ab, $4603ab, $f77bb9, $de335e];
		pandemoniumCloakColors[4] = [$01cde8, $0171e8, $007a43, $007a43, $01cde8, $0171e8];
		pandemoniumCloakColors[5] = [$cacaca, $898989, $525252, $525252, $cacaca, $cacaca];
		pandemoniumCloakColors[6] = [$fcb800, $db5b00, $8c1800, $8c1800, $fcb800, $fcb800];
		pandemoniumCloakColors[7] = [$58f89c, $22a376, $ac0028, $ac0028, $ac0028, $58f89c];
		pandemoniumCloakColors[8] = [$00b800, $00731d, $4640a3, $4640a3, $00731d, $00360e];
		pandemoniumCloakColors[9] = [$fcaeef, $bd5772, $633c00, $633c00, $fcaeef, $bd5772];
		pandemoniumCloakColors[10] = [$f5b98e, $de7919, $d93500, $d93500, $f5b98e, $f5b98e];
		pandemoniumCloakColors[11] = [$99ffdc, $00c956, $0088fc, $0088fc, $bcffe8, $bcffe8];
		pandemoniumCloakColors[12] = [$f5a9b8, $e04848, $5bcefa, $5bcefa, $eeeeee, $eeeeee];
		pandemoniumCloakColors[13] = [$fce762, $d99e29, $e40060, $d99e29, $d99e29, $e40060];
		pandemoniumCloakColors[14] = [$9e9e5c, $855609, $41305e, $41305e, $855609, $9e9e5c];
		pandemoniumCloakColors[15] = [$7f9aff, $5849ca, $3f414d, $3f414d, $7f9aff, $7f9aff];
		pandemoniumCloakColors[16] = [$f8b803, $a66601, $6d4201, $6d4201, $a66601, $f8b803];
		pandemoniumCloakColors[17] = [$fbb700, $999f61, $83884d, $83884d, $fbb700, $fbb700];
		pandemoniumCloakColors[18] = [$00b800, $788183, $7818a1, $7818a1, $00b800, $00b800];
		pandemoniumCloakColors[19] = [$ddf779, $58d858, $004a66, $004a66, $c1de63, $c1de63];
	
		didIChangeColorsOnPandemonium = true;
		
		init_shader();
	}
}

shader_end();

//Outlines
if (get_player_color(player) == 7){
	draw_sprite(sprite_get("_css_outlines"),1,x + 8,y + 8);
}
if (get_player_color(player) == 17){
	draw_sprite(sprite_get("_css_outlines"),2,x + 8,y + 8);
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
	case 8:
	case 16:
	case 17:
	case 19:
		// star icon
		draw_sprite(sprite_get("_css_icons"),2,icon_draw_x,icon_draw_y);
	break;
	case 18:
		// Ranked Gold
		draw_sprite(sprite_get("_css_icons"),3,icon_draw_x,icon_draw_y);
	break;
	case 15:
		// Pandemonium Cloak
		draw_sprite(sprite_get("_css_icons"),4,icon_draw_x,icon_draw_y);
	case 22:
		// Vortex Gallery 2025
		draw_sprite(sprite_get("_css_icons"),6,icon_draw_x,icon_draw_y);
}

//>

//include alt. name
//textDraw(temp_x + 2, temp_y + 130, "fName", c_white, 0, 1000, 1, true, 1, "" + (alt_cur < 9 ? "" : "") + alt_name[alt_cur]);
textDraw(temp_x + 2 + ((player==0)?32:0), temp_y + 130, "fName", c_white, 0, 1000, 1, true, 1, "" + (alt_cur < 9 ? "" : "") + string(alt_cur + 1) + ": " + alt_name[alt_cur]);
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