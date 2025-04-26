var temp_x = x + 8;
var temp_y = y + 9;
 
var num_alts = 32;
var alt_cur = get_player_color(player);

//Alt name init. var doesn't work with arrays lol
 
alt_name[0]  = "Koopa Troopa";
alt_name[1]  = "Blue Shell";
alt_name[2]  = "Red Shell";
alt_name[3]  = "Greener Shell";
alt_name[4]  = "Dry Bones";
alt_name[5]  = "Purple Shell";
alt_name[6]  = "Endless Abyss";
alt_name[7]  = "Early Access";
alt_name[8]  = "Yellow Shell";
alt_name[9]  = "Rustic Shell";
alt_name[10] = "Super Mario Land";
alt_name[11] = "Rolla Koopa";
alt_name[12] = "Yoshi";
alt_name[13] = "Kuzzle";
alt_name[14] = "Underground";
alt_name[15] = "Retro";
alt_name[16] = "Infamous";
alt_name[17] = "Pure Gold";
alt_name[18] = "Ranked Gold";
alt_name[19] = "Champion";
alt_name[20] = "Roving Racer";
alt_name[21] = "Roving Racer (B)";
alt_name[22] = "Roving Racer (R)";
alt_name[23] = "Roving Racer (P)";
alt_name[24] = "Kooper";
alt_name[25] = "Parakarry";
alt_name[26] = "Kammy Koopa";
alt_name[27] = "Koopa Bros.";
alt_name[28] = "Koops";
alt_name[29] = "Koopie Koo";
alt_name[30] = "Mario";
alt_name[31] = "King K";

//Alt
 
//rectDraw(temp_x, temp_y + 135, temp_x + 201, temp_y + 142, c_black);
 
for(i = 0; i < num_alts; i++){//>
    //var draw_color = (i == alt_cur) ? c_white : c_gray;
    //var draw_x = temp_x + 2 + 10 * i;
    //rectDraw(draw_x, temp_y + 137, draw_x + 7, temp_y + 140, draw_color);
}
 
draw_set_halign(fa_left);

if (!instance_exists(curr_alt_costume)){
	// print("HELP ME")
	if (get_player_color(player) == 24
	|| get_player_color(player) == 25
	|| get_player_color(player) == 26
	|| get_player_color(player) == 27){
		// draw_sprite(sprite_get("charselect_kooper"),0,x + 8,y + 8);
	
		
		// eye whites, pants
		set_color_profile_slot( 0, 6, 249, 249, 240 );
		set_color_profile_slot_range( 6, 6, 4, 22 );
		
		// eye col, scarf, hoodie
		set_color_profile_slot( 0, 7, 93, 192, 244 );
		set_color_profile_slot_range( 7, 1, 31, 46 );
		
		init_shader();
	} else if (get_player_color(player) == 28
	|| get_player_color(player) == 29
	|| get_player_color(player) == 30
	|| get_player_color(player) == 31){
	
		// draw_sprite(sprite_get("charselect_koops"),0,x + 8,y + 8);
		
		// eye whites, pants
		// eye whites, pants
		set_color_profile_slot( 0, 6, 0, 81, 184 );
		set_color_profile_slot_range( 6, 1, 1, 30 );

		// eye col, scarf, hoodie
		set_color_profile_slot( 0, 7, 93, 192, 244 );
		set_color_profile_slot_range( 7, 1, 31, 46 );
		
		init_shader();
	} else {
		// eye whites, pants
		set_color_profile_slot( 0, 6, 249, 249, 240 );
		set_color_profile_slot_range( 6, 6, 4, 22 );

		// eye col, scarf, hoodie
		set_color_profile_slot( 0, 7, 77, 97, 91 );
		set_color_profile_slot_range( 7, 11, 17, 49 );
		
		init_shader();
	}
}

init_shader();

shader_end();


// readd these once you input the stuff

if (get_player_color(player) == 24
	|| get_player_color(player) == 25
	|| get_player_color(player) == 26
	|| get_player_color(player) == 27){
		draw_sprite(sprite_get("charselect_kooper_alts"),alt_cur-24,x + 8,y + 8);
	} else if (get_player_color(player) == 28
	|| get_player_color(player) == 29
	|| get_player_color(player) == 30
	|| get_player_color(player) == 31){
		draw_sprite(sprite_get("charselect_koops_alts"),alt_cur-28,x + 8,y + 8);
	}

//Outlines
if (get_player_color(player) == 7){
	draw_sprite(sprite_get("_css_outlines"),1,x + 8,y + 8);
}
if (get_player_color(player) == 17){
	draw_sprite(sprite_get("_css_outlines"),2,x + 8,y + 8);
}

var icon_draw_x = x + 174;
var icon_draw_y = y + 108;
//Special Icons n shit
if (get_player_color(player) == 6){
	draw_sprite(sprite_get("_css_icons"),0,icon_draw_x,icon_draw_y);
} else if (get_player_color(player) == 7){
	draw_sprite(sprite_get("_css_icons"),1,icon_draw_x,icon_draw_y);
} else if (get_player_color(player) == 18){
	draw_sprite(sprite_get("_css_icons"),3,icon_draw_x,icon_draw_y);
} else if (get_player_color(player) == 16 || get_player_color(player) == 17 || get_player_color(player) == 19){
	draw_sprite(sprite_get("_css_icons"),2,icon_draw_x,icon_draw_y);
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