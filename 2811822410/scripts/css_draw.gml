var temp_x = x + 8;
var temp_y = y + 9;

patch_ver = "Alpha v1";
patch_day = "24";
patch_month = "APR";

var num_alts = 32;
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

alt_name[0]  = "The Scandalous Superstar Idol" //Rise Kujikawa
alt_name[1]  = "Blue"
alt_name[2]  = "Red"
alt_name[3]  =  "Green"
alt_name[4]  =  "White"
alt_name[5]  =  "Purple"

//Persona 4
alt_name[6]  =  "The Sister Complex Kingpin Of Steel" //Yu Narukami
alt_name[7]  =  "Captain Ressentiment" //Yosuke Hanamura
alt_name[8]  =  "Spunky Dragon With Deadly Legs" //Chie Satonaka
alt_name[9]  =  "The Blood Curdling Beefcake Emperor" //Kanji Tatsumi
alt_name[10] =  "The 2,000-IQ Killjoy Detective" //Naoto Shirogane
alt_name[11] =  "The Beast In Heat" //Teddie
alt_name[12] =  "The Unconquerable Snow Black" //Yukiko Amagi
alt_name[13] =  "The Antisocial Poet Of The Hollow Forest" //Marie
alt_name[14] =  "The Egocentric Police Dick" //Tohru Adachi

//Persona 3
alt_name[15] =  "The Unsightly Pink Sniper" //Yukari Takeba			    
alt_name[16]  = "The Imperious Queen Of Executions" //Mitsuru Kirijo
alt_name[17]  = "The Two-Fisted Protein Junkie" //Akihiko Sanada
alt_name[18]  = "The Pretentious Tenderfoot Duo" //Ken Amada And Koromaru
alt_name[19]  = "The Mighty Strike-Out Slugger" //Junpei Iori
alt_name[20]  = "The Heartless Armed Angel" //Aigis
alt_name[21]  = "The Lethal Elevator Attendant" //Elizabeth

//Persona 5
alt_name[22]  = "Joker" //Joker
alt_name[23]  = "Skull" //Ryuji Saktamoto
alt_name[24]  = "Panther" //Ann Tamaki
alt_name[25]  = "Queen" //Makota Nijima
alt_name[26]  = "Oracle" //Futaba Sakura
alt_name[27] = "Violet" //Sumire Yoshizawa
alt_name[28] = "Fox" //Yusuke Kitagawa
alt_name[29] = "Crow" //Goro Akechi

//Other
alt_name[30] = "Hatsune Miku" //Miku Alt
alt_name[31] = "Brook" //Brook Alt

//Other

//Patch
	//sprite_change_offset("taunt_dance", 162, 192);
	//draw_sprite_ext(sprite_get("taunt_dance"), alt_cur, x + 192, y, 1, 1, 0, c_white, 1);
//if !game_show {
	draw_set_halign(fa_left);

	textDraw(temp_x + 6, temp_y + 35, "fName", c_white, 0, 1000, 1, true, 1, patch_ver);

	textDraw(temp_x + 6, temp_y + 51, "fName", c_white, 0, 1000, 1, true, 1, patch_day + " " + patch_month);
//}


draw_set_halign(fa_left);
	
textDraw(temp_x + 6, temp_y + 67, "fName", c_white, 0, 1000, 1, true, 1, alt_name[alt_cur]);



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

