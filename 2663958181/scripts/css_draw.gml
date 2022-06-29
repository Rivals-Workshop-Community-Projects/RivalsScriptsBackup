//test

//--- ---
//
// hyuponia's "ae" css code
//
// this is my single most user-UNfriendly code.
// read my code and suffer, or just simply edit the only things you need to change.
// feel free to use or edit or redistribute, long as you don't claim the original template as yours.
// shoutouts to muno for css+ functions.
//
// to refresh the custom code proper, you have to temporarily change qe_b value or load another character with this code,
// for example hyuponia's characters, and then load your character back. sorry, there wasn't really any better way i could find.
//
// and just in case, this code goes into css_draw.gml.
//
// now, please change this string to your character's name. used for resetting the values after other characters.
//--- ---
var qe_b = "Bubbles"
// ! you can now scroll down until you reach "the primary part you should change."

var charuuid = string(sprite_get("idle"));
if ("css_char" not in self || css_char != charuuid) {
    css_char = charuuid;
}


var tmp_cur = 0;
var tmp_i = [0, 0, 0, 0, 0];
var tmp_x = [0, 0, 0, 0, 0];
var tmp_y = [0, 0, 0, 0, 0];
with(asset_get("cs_playercursor_obj")){
	tmp_cur = (!tmp_i[0])?0:(!tmp_i[1])?1:(!tmp_i[2])?2:(!tmp_i[3])?3:4
	tmp_i[tmp_cur] = 1
	tmp_x[tmp_cur] = get_instance_x( self )
	tmp_y[tmp_cur] = get_instance_y( self )
}
var tmp_pt = abs(player-5)-1
var temp_x = x + 8;
var temp_y = y + 9;
var tmp_xl = 9
var tmp_bw = 32
var tmp_yl = 151
var tmp_bh = 20
var tmp_xl1 = x+tmp_xl
var tmp_xl2 = tmp_xl1+tmp_bw
var tmp_yl1 = y+tmp_yl
var tmp_yl2 = tmp_yl1+tmp_bh
draw_set_halign(fa_left);

var ye = false;
if (variable_instance_exists(id,"qe")){
	if (qe != qe_b){
	ye = true;
	}
}

if (!variable_instance_exists(id,"ae") || ye == true){
	qe = qe_b
	ae = "ae"
	oe = 0;
	ue = 0; //cur
	ne = 0; //tmp
	ee = 0;
	ee_m = 60;
	ie = 0;
	ye = false;
	dial_time = 0;
	dial_max = 8;
	
	//--- ---
	// the primary part you should change.
	//--- ---
	altsel = sound_get("altsel"); // change the alt select sound here. if you don't want to change the sound, put 0 here.
	color_desc_activate = true; // optional "alt color description button". set to "true" to turn it on.
	
	col_max = 30;
	ce[0,0] 	= make_color_rgb(149, 222, 246)
	ce[0,1] 	= "Default"
	ce[0,2] 	= "Designed by Aozane. Modified by Softcore. Mod by EquinoxDoodles."
	ce[1,0] 	= make_color_rgb(181, 206, 255)
	ce[1,1] 	= "Blue"
	ce[1,2] 	= "[ROAACO] Inspired by Shiny Squirtle."
	ce[2,0] 	= make_color_rgb(255, 148, 90)
	ce[2,1] 	= "Red"
	ce[2,2] 	= "[ROAACO] Inspired by Charmander and Torkoal."
	ce[3,0] 	= make_color_rgb(134, 198, 208)
	ce[3,1] 	= "Green"
	ce[3,2] 	= "[ROAACO] Shiny Moemon Squirtle."
	ce[4,0] 	= make_color_rgb(214, 206, 214)
	ce[4,1] 	= "White"
	ce[4,2] 	= "[ROAACO] Inspired by Oshawott."
	ce[5,0] 	= make_color_rgb(189, 142, 214)
	ce[5,1] 	= "Crystal"
	ce[5,2] 	= "[ROAACO] Inspired by Shiny Blastoise."
	
	switch(get_match_setting(SET_SEASON)){
	    case 1:
        	ce[6,0] = make_color_rgb(255, 133, 193)
        	ce[6,1] = "Seasonal (ILY)"
        	ce[6,2] = "[ROAACO] Inspired by Valentine's Day."
	        break;
	    case 2:
        	ce[6,0] = make_color_rgb(255, 163, 40)
        	ce[6,1] = "Seasonal (Surfer)"
        	ce[6,2] = "[ROAACO] Inspired by Summer."
	        break;
	    case 3:
        	ce[6,0] = make_color_rgb(25, 140, 101)
        	ce[6,1] = "Seasonal (Cowabunga)"
        	ce[6,2] = "[ROAACO] Inspired by Michaelangelo from TMNT."
	        break;
	    case 4:
        	ce[6,0] = make_color_rgb(222, 72, 72)
        	ce[6,1] = "Seasonal (Festive)"
        	ce[6,2] = "[ROAACO] Inspired by the Holiday Season."
	        break;
	}
	ce[7,0]		= make_color_rgb(255, 214, 66)
	ce[7,1]		= "Yellow"
	ce[7,2]		= "Inspired by Numel and Koopa Troopa."
	ce[8,0]		= make_color_rgb(247, 174, 189)
	ce[8,1]		= "Pearl"
	ce[8,2]		= "Inspired by Mew and Lickitung."
	ce[9,0]		= make_color_rgb(115, 214, 132)
	ce[9,1]		= "Emerald"
	ce[9,2]		= "Colors from Project+."
	ce[10,0]	= make_color_rgb(48, 90, 171)
	ce[10,1]	= "Sapphire"
	ce[10,2]	= "Inspired by Carracosta."
	ce[11,0]	= make_color_rgb(181, 173, 148)
	ce[11,1]	= "Platinum"
	ce[11,2]	= "Inspired by Turtonator."
	ce[12,0]	= make_color_rgb(165, 190, 107)
	ce[12,1]	= "Green"
	ce[12,2]	= "[ROAACO] Inspired by Turtwig."
	ce[13,0]	= make_color_rgb(123, 134, 171)
	ce[13,1]	= "Gale of Darkness"
	ce[13,2]	= "[ROAACO] A Shadow Moemon!?"
	ce[14,0]	= make_color_rgb(255, 201, 240)
	ce[14,1]	= "Cotton Candy"
	ce[14,2]	= "Bubbles says you're valid."
	ce[15,0]	= make_color_rgb(255, 208, 0)
	ce[15,1]	= "Inner Strength"
	ce[15,2]	= "Designed for InnerOtaku, the mad lad who allowed this to happen."
	ce[16,0]	= make_color_rgb(255, 255, 255)
	ce[16,1]	= "Mathematical"
	ce[16,2]	= "Inspired by Finn from Adventure Time."
	ce[17,0]	= make_color_rgb(220, 105, 250)
	ce[17,1]	= "Come and Learn"
	ce[17,2]	= "Inspired by Pibby from Come Learn with Pibby."
	ce[18,0]	= make_color_rgb(255, 221, 30)
	ce[18,1]	= "Golden"
	ce[18,2]	= "She deserves it."
	ce[19,0]	= make_color_rgb(149, 222, 246)
	ce[19,1]	= "It's a Reference"
	ce[19,2]	= "You'll never guess what it is."
	ce[20,0]	= make_color_rgb(255, 255, 0)
	ce[20,1]	= "Everything Nice"
	ce[20,2]	= "with a healthy dose of Chemical X."
	ce[21,0]	= make_color_rgb(130, 192, 117)
	ce[21,1]	= "when day is dark"
	ce[21,2]	= "always rember happy day - 4chan Green Text."
	ce[22,0]	= make_color_rgb(201, 153, 81)
	ce[22,1]	= "Targma"
	ce[22,2]	= "Balls. Based on the workshop character, Targma, a volcano themed turtle."
	ce[23,0]	= make_color_rgb(86, 144, 61)
	ce[23,1]	= "Lode & Puul"
	ce[23,2]	= "When's the DE? Based on the workshop character, Lode & Puul, a magnet themed turtle."
	ce[24,0]	= make_color_rgb(164, 150, 149)
	ce[24,1]	= "Torga"
	ce[24,2]	= "Balls. Based on the workshop character, Torga, a water themed turtle."
	ce[25,0]	= make_color_rgb(145, 139, 127)
	ce[25,1]	= "Galega"
	ce[25,2]	= "Tugma... wink. Based on the workshop character, Galega, an air themed turtle."
	ce[26,0]	= make_color_rgb(172, 33, 50)
	ce[26,1]	= "Wild Fire"
	ce[26,2]	= "The Feral Flame. You'll see soon enough..."
	ce[27,0]	= make_color_rgb(246, 104, 148)
	ce[27,1]	= "Liz"
	ce[27,2]	= "oh my gosh its liz timerpg from friday night funkin by slep16 omg"
	ce[28,0]	= make_color_rgb(125, 204, 221)
	ce[28,1]	= "Only On Wednesdays"
	ce[28,2]	= "For Wombat and their P+ Tournaments! Hold Attack for Cowboy instead of shades."
	ce[29,0]	= make_color_rgb(232, 63, 63)
	ce[29,1]	= "The Ravyn Alt"
	ce[29,2]	= "every tiny little girl character needs the palette rhat makes them look Evil - Ravyn"
	ce[30,0]	= make_color_rgb(254, 238, 238)
	ce[30,1]	= "Kanna"
	ce[30,2]	= "ちゅうちゅう、Yeah! Based on Kanna from Miss Kobayashi's Dragon Maid."
	//ce[31,0]	= make_color_rgb(232, 63, 63)
	//ce[31,1]	= "???"
	//ce[31,2]	= "This is a secret color that will hopefully be unlocked later"
}

if (ae == "ae"){
	ae = "oe";
}
if (ae == "oe"){
	ae = "ue";
}
if (ne != ue){
	ie = (ue == col_max && ne == 0) ? -1 : (ue == 0 && ne == col_max) ? 1 : (ne < ue) ? 1 : -1 
	ne = ue;
	ae = "ne";
	if (altsel!=0){
	sound_stop(altsel);
	sound_play(altsel);
	sound_stop(asset_get("mfx_change_color"))
	}
}
if (ae == "ne"){
	ee = ee_m;
	ae = "ue";
}
if (ee > 0){
	var tw = ease_quartOut(0, 1, ee, ee_m);
	var tw_b = (ease_quartOut(0, 1, ee, ee_m)/2) - (ease_quartIn(0, 1, ee, ee_m)/2);
	var tw_c = (ease_quartOut(0, 1, ee, ee_m)/4) - (ease_quartIn(0, 1, ee, ee_m)/4);
	var tw_d = (ease_quartOut(0, 1, ee, ee_m)/2) + (ease_quartIn(0, 1, ee, ee_m));
	var tw_e = (ease_quartOut(0, 1, ee, ee_m)/4) + (ease_quartIn(0, 1, ee, ee_m)/2);
	var tw_f = (ease_quartOut(0, 1, ee, ee_m)/6) + (ease_quartIn(0, 1, ee, ee_m)/4);
	var tw_g = (ease_quartOut(0, 1, ee, ee_m)) + (ease_quartIn(0, 1, ee, ee_m)/2);
	var dist = 14;
	var typ = round(ease_expoIn(0, dist, ee, ee_m-2));
	//using muno's function;
	if (ue-2>=0){
	rectDraw(temp_x + 2, temp_y + 77 +(0-(dist*2)-6+(typ*ie)), temp_x + 16, temp_y + 91 +(0-(dist*2)-6+(typ*ie)),
	ce[clamp(ue-2,0,col_max),0], c_gray, (ie==-1) ? tw_c : tw_e );
	}
	if (ue-1>=0){
	rectDraw(temp_x + 2, temp_y + 77 +(0-dist-3+(typ*ie)), temp_x + 16, temp_y + 91 +(0-dist-3+(typ*ie)),
	ce[clamp(ue-1,0,col_max),0], c_gray, (ie==-1) ? tw_b : tw_d );
	}
	
	rectDraw(temp_x + 2, temp_y + 77 +(typ*ie), temp_x + 16, temp_y + 91 +(typ*ie), ce[ue,0], c_white, tw);
	
	if (ue+1<=col_max){
	rectDraw(temp_x + 2, temp_y + 77 +(dist+3+(typ*ie)), temp_x + 16, temp_y + 91 +(dist+3+(typ*ie)),
	ce[clamp(ue+1,0,col_max),0], c_gray, (ie==1) ? tw_b : tw_d );
	}
	if (ue+2<=col_max){
	rectDraw(temp_x + 2, temp_y + 77 +((dist*2)+6+(typ*ie)), temp_x + 16, temp_y + 91 +((dist*2)+6+(typ*ie)),
	ce[clamp(ue+2,0,col_max),0], c_gray, (ie==1) ? tw_c : tw_e );
	}
	
	if (ue+(3*-ie)<=col_max && ue+(3*-ie)>=0){
	rectDraw(temp_x + 2, temp_y + 77 +((((dist*3)+9)*-ie)+(typ*ie)),
	temp_x + 16, temp_y + 91 +((((dist*3)+9)*-ie)+(typ*ie)),
	ce[clamp(ue+(3*-ie),0,col_max),0], c_gray, tw_f);
	}
	
textDraw(temp_x + 2 + ((player==0)?32:0), temp_y + 130, "fName", c_white, 0, 1000, 1, true, tw_g, ce[ue,1]);
	
	ee--;
}
	ue = get_player_color(player);

//this part does button stuff, drawing etc

if (color_desc_activate){
	if (tmp_x[tmp_pt]>tmp_xl1 && tmp_x[tmp_pt]<tmp_xl2 && tmp_y[tmp_pt]>tmp_yl1 && tmp_y[tmp_pt]<tmp_yl2){
		if (dial_time<dial_max){ dial_time++; }
	}else{
		if (dial_time>0){ dial_time--; }
	}
	draw_set_alpha(0.6);
	draw_rectangle_colour(tmp_xl2-1, tmp_yl1+3, tmp_xl2, tmp_yl2, c_dkgray, c_dkgray, c_dkgray, c_dkgray, false);
	textDraw(round(tmp_xl1+(tmp_bw/2))-3, round(tmp_yl1+(tmp_bh/2))-4, "fName", c_dkgray, 0, 100, 1, false, 0.8, "?");
	var dial_ease = ease_linear( 0, 100, dial_time, dial_max )
	draw_set_alpha(dial_ease/130);
	if ue == 22 or ue == 23 or ue == 25 or ue == 29{
		draw_rectangle_colour(x+10, y+45-round(dial_ease/30), x+210, y+153, c_black, c_black, c_black, c_black, false);
	} else {
		draw_rectangle_colour(x+10, y+75-round(dial_ease/30), x+210, y+153, c_black, c_black, c_black, c_black, false);
	}
	draw_set_alpha(dial_ease/500);
	draw_rectangle_colour(tmp_xl1, tmp_yl1+3, tmp_xl2, tmp_yl2, c_white, c_white, c_white, c_white, false);
	draw_set_alpha(1);
	if ue == 22 or ue == 23 or ue == 25 or ue == 29{
		textDraw(x+14, (y+60)-round(dial_ease/30), "fName", c_white, 18, 200, 1, false, dial_ease/100, "- '"+ce[ue,1]+"'");
		textDraw(x+14, (y+80)-round(dial_ease/30), "fName", c_white, 18, 200, 1, false, dial_ease/100, ce[ue,2]);
	} else {
		textDraw(x+14, (y+80)-round(dial_ease/30), "fName", c_white, 18, 200, 1, false, dial_ease/100, "- '"+ce[ue,1]+"'");
		textDraw(x+14, (y+100)-round(dial_ease/30), "fName", c_white, 18, 200, 1, false, dial_ease/100, ce[ue,2]);
	}
}

//ae code end



//--- ---
// altered version of muno's functions. if you have other css codes, this part needs to be at the bottom of the code.
//--- ---

#define textDraw(x, y, font, color, lineb, linew, scale, outline, alpha, string)

draw_set_font(asset_get(argument[2]));

if argument[7]{
    for (i = -1; i < 2; i++){
        for (j = -1; j < 2; j++){
            draw_text_ext_transformed_color(argument[0] + i * 2, argument[1] + j * 2, argument[9], argument[4], argument[5], argument[6], argument[6], 0, c_black, c_black, c_black, c_black, 1);
        }
    }
}

draw_text_ext_transformed_color(argument[0], argument[1], argument[9], argument[4], argument[5], argument[6], argument[6], 0, argument[3], argument[3], argument[3], argument[3], argument[8]);

return string_width_ext(argument[9], argument[4], argument[5]);


#define rectDraw(x1, y1, x2, y2, color, out_color, alpha)

draw_set_alpha(argument[6]);
draw_rectangle_color(argument[0], argument[1], argument[2], argument[3], argument[5], argument[5], argument[5], argument[5], false);
draw_set_alpha(argument[6]*1.5);
draw_rectangle_color(argument[0]+2, argument[1]+2, argument[2]-2, argument[3]-2, argument[4], argument[4], argument[4], argument[4], false);
draw_set_alpha(1);
