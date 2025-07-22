//AO css draw


var icon_x = 176
var icon_y = 112
if (var_localstorage==0){//A
	switch(get_player_color( player )){
		case 6:
		draw_sprite_ext(sprite_get("z_css_icons"),3,x+icon_x,y+icon_y,2,2,0,-1,1);
		break;
		case 7:
		draw_sprite_ext(sprite_get("z_ea_outline"),1,x+8,y+8,2,2,0,-1,1);
		draw_sprite_ext(sprite_get("z_css_icons"),6,x+icon_x,y+icon_y,2,2,0,-1,1);
		break;
		case 8:
		draw_sprite_ext(sprite_get("z_css_icons"),0,x+icon_x,y+icon_y,2,2,0,-1,1);
		break;
		case 9:
		case 10:
		draw_sprite_ext(sprite_get("z_css_icons"),5,x+icon_x,y+icon_y,2,2,0,-1,1);
		break;
		case 11:
		draw_sprite_ext(sprite_get("z_css_icons"),1,x+icon_x,y+icon_y,2,2,0,-1,1);
		break;
		case 16:
		draw_sprite_ext(sprite_get("z_css_icons"),8,x+icon_x,y+icon_y,2,2,0,-1,1);
		break;
		default: break;
	}
}
if (var_localstorage==3){//D
	switch(get_player_color( player )){
		case 1://great riptide icon by reiga its open source its free
		draw_sprite_ext(sprite_get("z_css_icons"),10,x+icon_x,y+icon_y,2,2,0,-1,1);
		break;
		case 2:
		case 3:
		draw_sprite_ext(sprite_get("z_css_icons"),7,x+icon_x,y+icon_y,2,2,0,-1,1);
		break;
		default: break;
	}
}
if (var_localstorage==4){//EXTRA???
	switch(get_player_color( player )){
		case 1:
		draw_sprite_ext(sprite_get("z_css_icons"),9,x+icon_x,y+icon_y,2,2,0,-1,1);
		break;
		case 2:
		draw_sprite_ext(sprite_get("z_css_icons"),4,x+icon_x,y+icon_y,2,2,0,-1,1);
		break;
		case 8:
		draw_sprite_ext(sprite_get("z_css_icons"),2,x+icon_x,y+icon_y,2,2,0,-1,1);
		break;
		case 9:
		draw_sprite_ext(sprite_get("z_css_icons"),0,x+icon_x,y+icon_y,2,2,0,-1,1);
		break;
		default: break;
	}
}

/*
 
There are two pictures of a
door.
 
In the first picture, the door is
closed.
 
In the second picture, taken
later, the door is open.
 
Nobody opened the door.
 
The door did not open itself.
 
The door, in fact, did not open at
all.
 
What happened?

*/

//--- ---
//
// hyuponia's "ae" css code
//
// empty template here!: https://pastebin.com/u9Z4hmzk
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
var qe_b = "ushr"
// ! you can now scroll down until you reach "the primary part you should change."

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
	reset_color_list = true;
	
	//--- ---
	// the primary part you should change.
	//--- ---
	altsel = sound_get("altsel"); // change the alt select sound here. if you don't want to change the sound, put 0 here.
	
}
/*if (!variable_instance_exists(id, "ce")){
	reset_color_list = true;
}*/
if (reset_color_list == true){
	
	reset_color_list = false;
	ie = 0.3
	ne = ue;
	ae = "ne";
	
	col_max = 17;
	
	/*if (!variable_instance_exists(id, "var_localstorage")){
		var_localstorage = 0;
	}*/
	
	if (var_localstorage == 0){
	ce[0,0] = make_color_rgb(29, 226, 135)
	ce[0,1] = "Usher"
	ce[1,0] = make_color_rgb(70, 82, 232)
	ce[1,1] = "Cobalt"
	ce[2,0] = make_color_rgb(230, 30, 62)
	ce[2,1] = "Sundawn"
	ce[3,0] = make_color_rgb(130, 224, 0)
	ce[3,1] = "Stratosphere"
	ce[4,0] = make_color_rgb(113, 133, 129)
	ce[4,1] = "Overcast"
	ce[5,0] = make_color_rgb(134, 117, 217)
	ce[5,1] = "Mobius"
	ce[6,0] = make_color_rgb(218, 99, 255)
	ce[6,1] = "Abyss"
	ce[7,0] = make_color_rgb(167, 186, 74)
	ce[7,1] = "Early Access"
	switch(get_match_setting( SET_SEASON )){
		case 1: //spring
			ce[8,0] = make_color_rgb(255, 163, 238)
			ce[8,1] = "Seasonal ~ Cupid"
		break;
		case 2: //summer
			ce[8,0] = make_color_rgb(99, 226, 230)
			ce[8,1] = "Seasonal ~ Seafoam"
		break;
		case 3: //autumn
			ce[8,0] = make_color_rgb(57, 64, 60)
			ce[8,1] = "Seasonal ~ Interloper"
		break;
		case 4: //winter
			ce[8,0] = make_color_rgb(235, 66, 82)
			ce[8,1] = "Seasonal ~ SANTA!!"
		break;
	}
	ce[9,0] = make_color_rgb(48, 74, 60)
	ce[9,1] = "Doomsday Forever"
	ce[10,0] = make_color_rgb(113, 230, 119)
	ce[10,1] = "Lens"
	ce[11,0] = make_color_rgb(255, 207, 13)
	ce[11,1] = "Ranked Gold"
	ce[12,0] = make_color_rgb(255, 106, 0)
	ce[12,1] = "Orange"
	ce[13,0] = make_color_rgb(106, 161, 107)
	ce[13,1] = "Twinleaf"
	ce[14,0] = make_color_rgb(203, 139, 232)
	ce[14,1] = "Lavender"
	ce[15,0] = make_color_rgb(138, 57, 75)
	ce[15,1] = "Moondusk"
	ce[16,0] = make_color_rgb(134, 90, 184)
	ce[16,1] = "ASHe"
	ce[17,0] = make_color_rgb(255, 223, 61)
	ce[17,1] = "hymNBook"
	}
	//--------------------------------------------
	
	if (var_localstorage == 1){
	ce[0,0] = make_color_rgb(255, 158, 179)
	ce[0,1] = "Usher : B"
	ce[1,0] = make_color_rgb(155, 235, 150)
	ce[1,1] = "Verdigris"
	ce[2,0] = make_color_rgb(63, 204, 167)
	ce[2,1] = "Future Media"
	ce[3,0] = make_color_rgb(105, 96, 166)
	ce[3,1] = "Swaying"
	ce[4,0] = make_color_rgb(27, 171, 72)
	ce[4,1] = "Frogge bip a smal beaste"
	ce[5,0] = make_color_rgb(181, 82, 235)
	ce[5,1] = "Absinthe Past"
	ce[6,0] = make_color_rgb(74, 217, 224)
	ce[6,1] = "Smooth Ice"
	ce[7,0] = make_color_rgb(255, 208, 0)
	ce[7,1] = "Illu"
	ce[8,0] = make_color_rgb(232, 86, 110)
	ce[8,1] = "Nipalensis"
	ce[9,0] = make_color_rgb(255, 156, 222)
	ce[9,1] = "paintyourworld"
	ce[10,0] = make_color_rgb(69, 42, 150)
	ce[10,1] = "Shadow"
	ce[11,0] = make_color_rgb(230, 110, 138)
	ce[11,1] = "Cytherean"
	ce[12,0] = make_color_rgb(119, 100, 189)
	ce[12,1] = "Between the Times"
	ce[13,0] = make_color_rgb(214, 81, 81)
	ce[13,1] = "Box of Chocolates"
	ce[14,0] = make_color_rgb(255, 87, 219)
	ce[14,1] = "Starlove"
	ce[15,0] = make_color_rgb(94, 51, 222)
	ce[15,1] = "Mirror"
	ce[16,0] = make_color_rgb(181, 76, 126)
	ce[16,1] = "Anemone"
	ce[17,0] = make_color_rgb(130, 215, 255)
	ce[17,1] = "Trigonomatrix Op."
	}
	//--------------------------------------------
	
	if (var_localstorage == 2){
	ce[0,0] = make_color_rgb(247, 255, 254)
	ce[0,1] = "Usher : C"
	ce[1,0] = make_color_rgb(133, 222, 199)
	ce[1,1] = "Green Herring"
	ce[2,0] = make_color_rgb(122, 164, 207)
	ce[2,1] = "Dreaming Starburst"
	ce[3,0] = make_color_rgb(89, 74, 135)
	ce[3,1] = "Border of Atmosphere"
	ce[4,0] = make_color_rgb(255, 198, 64)
	ce[4,1] = "Forest of Mirrors"
	ce[5,0] = make_color_rgb(255, 238, 138)
	ce[5,1] = "The sun is deeply sick"
	ce[6,0] = make_color_rgb(25, 25, 112)
	ce[6,1] = "Magitech"
	ce[7,0] = make_color_rgb(175, 143, 181)
	ce[7,1] = "Surging Fate"
	ce[8,0] = make_color_rgb(242, 123, 32)
	ce[8,1] = "Clockwork Fate"
	ce[9,0] = make_color_rgb(133, 127, 227)
	ce[9,1] = "Bell Toll of the Lily"
	ce[10,0] = make_color_rgb(89, 82, 138)
	ce[10,1] = "Frozen Armory"
	ce[11,0] = make_color_rgb(47, 222, 150)
	ce[11,1] = "Thru Blade's Vision"
	ce[12,0] = make_color_rgb(248, 247, 255)
	ce[12,1] = "Windrose"
	ce[13,0] = make_color_rgb(240, 96, 102)
	ce[13,1] = "Raincoat Poppy"
	ce[14,0] = make_color_rgb(189, 64, 78)
	ce[14,1] = "Syndrome"
	ce[15,0] = make_color_rgb(79, 104, 214)
	ce[15,1] = "Snowball"
	ce[16,0] = make_color_rgb(49, 184, 155)
	ce[16,1] = "So-called Ghost Snake"
	ce[17,0] = make_color_rgb(255, 66, 139)
	ce[17,1] = "Pancake Bacon"
	}
	//--------------------------------------------
	
	if (var_localstorage == 3){
	ce[0,0] = make_color_rgb(71, 112, 99)
	ce[0,1] = "Usher : D"
	ce[1,0] = make_color_rgb(255, 213, 0)
	ce[1,1] = "Sorbet ~ Riptide"
	ce[2,0] = make_color_rgb(51, 255, 242)
	ce[2,1] = "Infamous"
	ce[3,0] = make_color_rgb(124, 135, 135)
	ce[3,1] = "Steampunk"
	ce[4,0] = make_color_rgb(176, 80, 74)
	ce[4,1] = "Ashveil"
	ce[5,0] = make_color_rgb(154, 117, 191)
	ce[5,1] = "Dilemma"
	ce[6,0] = make_color_rgb(64, 76, 247)
	ce[6,1] = "Cora Overwater"
	ce[7,0] = make_color_rgb(146, 255, 51)
	ce[7,1] = "Heartbeat of Havoc"
	ce[8,0] = make_color_rgb(158, 43, 43)
	ce[8,1] = "For The Flowers"
	ce[9,0] = make_color_rgb(151, 199, 48)
	ce[9,1] = "Hometown's Heart"
	ce[10,0] = make_color_rgb(255, 133, 33)
	ce[10,1] = "Godspeed You!"
	ce[11,0] = make_color_rgb(48, 179, 129)
	ce[11,1] = "Otherside"
	ce[12,0] = make_color_rgb(154, 250, 175)
	ce[12,1] = "Supermint"
	ce[13,0] = make_color_rgb(104, 130, 65)
	ce[13,1] = "Tealeaf"
	ce[14,0] = make_color_rgb(207, 146, 66)
	ce[14,1] = "Teapack"
	ce[15,0] = make_color_rgb(165, 207, 182)
	ce[15,1] = "A Written Song"
	ce[16,0] = make_color_rgb(156, 122, 112)
	ce[16,1] = "Forlorn Egodeth"
	ce[17,0] = make_color_rgb(154, 0, 179)
	ce[17,1] = "ACronym: E"
	}
	//--------------------------------------------
	
	if (var_localstorage == 4){
	ce[0,0] = make_color_rgb(0, 255, 146)
	ce[0,1] = "Usher : E ~ PSASBR"
	ce[1,0] = make_color_rgb(255, 77, 77)
	ce[1,1] = "GENESIS: BEYOND"
	ce[2,0] = make_color_rgb(209, 255, 237)
	ce[2,1] = "Champion"
	ce[3,0] = make_color_rgb(179, 181, 255)
	ce[3,1] = "Klein Bottle"
	ce[4,0] = make_color_rgb(48, 232, 240)
	ce[4,1] = "Wish..."
	ce[5,0] = make_color_rgb(255, 80, 74)
	ce[5,1] = "Wish Sunset"
	ce[6,0] = make_color_rgb(162, 191, 185)
	ce[6,1] = "Steel Bamboo"
	ce[7,0] = make_color_rgb(255, 94, 18)
	ce[7,1] = "Scarlet like Cinnabar Fire"
	ce[8,0] = make_color_rgb(184, 186, 219)
	ce[8,1] = "Grid"
	switch(get_match_setting( SET_SEASON )){
		case 1: //spring
			ce[9,0] = make_color_rgb(255, 163, 238)
			ce[9,1] = "Seasonal ~ Cupid"
		break;
		case 2: //summer
			ce[9,0] = make_color_rgb(99, 226, 230)
			ce[9,1] = "Seasonal ~ Seafoam"
		break;
		case 3: //autumn
			ce[9,0] = make_color_rgb(57, 64, 60)
			ce[9,1] = "Seasonal ~ Interloper"
		break;
		case 4: //winter
			ce[9,0] = make_color_rgb(235, 66, 82)
			ce[9,1] = "Seasonal ~ SANTA!!"
		break;
	}
	ce[10,0] = make_color_rgb(0, 255, 123)
	ce[10,1] = "Hymn"
	ce[11,0] = make_color_rgb(242, 255, 245)
	ce[11,1] = "it's the end of all things"
	ce[12,0] = make_color_rgb(128, 0, 128)
	ce[12,1] = "---"
	ce[13,0] = make_color_rgb(128, 0, 128)
	ce[13,1] = "---"
	ce[14,0] = make_color_rgb(128, 0, 128)
	ce[14,1] = "---"
	ce[15,0] = make_color_rgb(128, 0, 128)
	ce[15,1] = "---"
	ce[16,0] = make_color_rgb(128, 0, 128)
	ce[16,1] = "---"
	ce[17,0] = make_color_rgb(128, 0, 128)
	ce[17,1] = "---"
	}
	//--------------------------------------------
	
	// you can add more, by copypasting and changing the first index of the array accordingly.
	// ! changing part end.
	// you can ignore the mess below...
	
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


//ae code end


//the other ui stuff
shader_end()

draw_sprite_ext(sprite_get("aaa_vernum"),0,x+180,y+48,2,2,0,-1,1);


var buttonloc_x = 14;//166
var buttonloc_y = 44;//38
draw_sprite_ext(sprite_get("z_cssthing"),var_localstorage,x+buttonloc_x,y+buttonloc_y,2,2,0,-1,1);
if (button_hover){ draw_sprite_ext(sprite_get("z_cssthing"),5,x+buttonloc_x,y+buttonloc_y,2,2,0,-1,1); }

//textDraw(temp_x + 20, temp_y + 114, "fName", c_orange, 0, 1000, 1, true, 1, "--USHER BETA v.RC2----");



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








