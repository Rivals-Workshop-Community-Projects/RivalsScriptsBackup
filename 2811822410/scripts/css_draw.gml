var temp_x = x + 8;
var temp_y = y + 9;

patch_ver = "1.4";
patch_day = "8";
patch_month = "JUL";

var num_alts = 29;
var alt_cur = get_player_color(player);

/*
if "timer" !in self {
	timer = 0;
} else {
	timer += 1
	print(timer);
}
*/
//Alt name init. var doesn't work with arrays lol

alt_name[0]  = "Hatsune Miku" //Hatsune Miku
alt_name[1]  = "Strawberry"
alt_name[2]  = "Green Apple"
alt_name[3]  = "Blueberry"
alt_name[4]  = "Cookies & Cream"
alt_name[5]  = "Grape" //This is just a purple alt and if anyone says otherwise I am going to remove it.
alt_name[6]  = "Banana" //Hiyoko Saionji
alt_name[7]  = "Cupcake" //Natsuki
alt_name[8]  = "Bubblegum"
alt_name[9]  = "Mint"
alt_name[10] = "Lemon" //Rin & Len
alt_name[11] = "Cherry" //Teto
alt_name[12] = "Coconut" //Donkey Kong
alt_name[13] = "Bread"
alt_name[14] = "Chestnut" //Chihiro Fujisaki
alt_name[15] = "Carrot" //Creeper Mob Talker

alt_name[16]  = "Prune" //Cave Spider Mob Talker
alt_name[17]  = "Peach" //Princess Peach
alt_name[18]  = "Daisy"
alt_name[19]  = "Lavender"
alt_name[20]  = "Three Musketeers"
alt_name[21]  = "Watermelon"
alt_name[22]  = "Candy" //Callie
alt_name[23]  = "Cotton Candy"
alt_name[24]  = "Pink Lemonade"
alt_name[25]  = "Sussy Baka #1"
alt_name[26]  = "Funky!"
alt_name[27] =  "Lucina"
alt_name[28] =  "Rainbow"
alt_name[29] = ""
alt_name[30] = ""
alt_name[31] = ""

//Dino Gaming
//dino_game()


//Patch
	//sprite_change_offset("taunt_dance", 162, 192);
	//draw_sprite_ext(sprite_get("taunt_dance"), alt_cur, x + 192, y, 1, 1, 0, c_white, 1);
//if !game_show {
	draw_set_halign(fa_left);

	textDraw(temp_x + 6, temp_y + 35, "fName", c_white, 0, 1000, 1, true, 1, patch_ver);

	textDraw(temp_x + 6, temp_y + 51, "fName", c_white, 0, 1000, 1, true, 1, patch_day + " " + patch_month);
//}


//Alt


for(i = 0; i < num_alts; i++){
	var draw_color = (i == alt_cur) ? c_white : c_gray;
	if i > 15 {
		var draw_x = temp_x + 2 + 10 * (i - 16);
		rectDraw(draw_x, temp_y - 16, draw_x + 7, temp_y - 13, draw_color);
	} else {
		var draw_x = temp_x + 2 + 10 * i;
		rectDraw(draw_x, temp_y - 22, draw_x + 7, temp_y - 19, draw_color);
	}
}

draw_set_halign(fa_left);

//include alt. name
//if !game_show {
	textDraw(temp_x + 6, temp_y + 67, "fName", c_white, 0, 1000, 1, true, 1, alt_name[alt_cur]);
//}

//exclude alt. name
//textDraw(temp_x + 6, temp_y + 82, "fName", c_white, 0, 1000, 1, true, 1, "Alt. " + (alt_cur < 9 ? "0" : "") + string(alt_cur + 1));



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

