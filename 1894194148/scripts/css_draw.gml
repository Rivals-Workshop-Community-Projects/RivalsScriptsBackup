//test


draw_sprite_ext(sprite_get("aaa_vernum"),1,x+10,y+140,2,2,0,-1,1);
//if (ardev){
//draw_sprite_ext(sprite_get("devindicator"),1,x+10,y+126,2,2,0,-1,1);
//}

if (	get_player_color( player ) == 5 ||
		get_player_color( player ) == 6 ||
		get_player_color( player ) == 7 ||
		get_player_color( player ) == 9)
draw_sprite_ext(sprite_get("specialalt"),1,x+10,y+48,2,2,0,-1,1);

if (get_player_color( player ) == 6){
draw_sprite_ext(sprite_get("ar_jis_outline"),1,x+8,y+8,2,2,0,-1,1);
draw_sprite_ext(sprite_get("ar_jis_eye"),1,x+134,y+62,2,2,0,-1,1);
draw_sprite_ext(sprite_get("ar_jis_mouthcover"),1,x+136,y+78,1,1,0,-1,1);
}
if (get_player_color( player ) == 7){
draw_sprite_ext(sprite_get("ar_ea_outline"),1,x+8,y+8,2,2,0,-1,1);
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
var qe_b = "template"
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
	
	//--- ---
	// the primary part you should change.
	//--- ---
	altsel = sound_get("altsel"); // change the alt select sound here. if you don't want to change the sound, put 0 here.
	color_desc_activate = true; // optional "alt color description button". set to "true" to turn it on.
	
	col_max = 15;
	ce[0,0] = make_color_rgb(182, 73, 218)
	ce[0,1] = "A.R."
	ce[0,2] = "Design by Kaggysmilk"
	ce[1,0] = make_color_rgb(100, 148, 213)
	ce[1,1] = "прекрасно"
	ce[1,2] = "[ROAACO] Нежное это - Будущее прекрасно"
	ce[2,0] = make_color_rgb(221, 49, 60)
	ce[2,1] = "Passion"
	ce[2,2] = "[ROAACO] Burning red passion, inspired by Indeed"
	ce[3,0] = make_color_rgb(65, 191, 101)
	ce[3,1] = "Verdant"
	ce[3,2] = "[ROAACO] Pure otherworldly green"
	ce[4,0] = make_color_rgb(110, 110, 110)
	ce[4,1] = "Usher"
	ce[4,2] = "[ROAACO] Colors of Usher Evalate, from oNote"
	ce[5,0] = make_color_rgb(176, 77, 97)
	ce[5,1] = "False Mado"
	ce[5,2] = "[ROAACO] What dreams
	have led you here?"
	ce[6,0] = make_color_rgb(24, 48, 22)
	ce[6,1] = "SHIfT JIS"
	ce[6,2] = "[ROAACO] Complete illusion forme"
	ce[7,0] = make_color_rgb(83, 122, 62)
	ce[7,1] = "テンゴクノトウ"
	ce[7,2] = "[ROAACO] May peace be
	with thee."
	ce[8,0] = make_color_rgb(213, 219, 114)
	ce[8,1] = "Lime"
	ce[8,2] = "Odd choice of color"
	ce[9,0] = make_color_rgb(206, 41, 74)
	ce[9,1] = "Cannonball"
	ce[9,2] = "Colors taken from Omega Zero, complete with sounds"
	ce[10,0] = make_color_rgb(235, 104, 10)
	ce[10,1] = "Faux-Flowlight"
	ce[10,2] = "Colors of Lumina Methuselah, from oNote"
	ce[11,0] = make_color_rgb(204, 106, 197)
	ce[11,1] = "Autumn"
	ce[11,2] = "Colors of Autumn Felghana, from oNote"
	ce[12,0] = make_color_rgb(223, 183, 49)
	ce[12,1] = "Night Walker"
	ce[12,2] = "Colors of Linne from UNDER NIGHT IN-BIRTH TM Exe Late [st] [cl-r] Thousand night, Recurrence night, Reverie end Invite. and... [7days Immortal] Unreal BLACK THINGS."
	ce[13,0] = make_color_rgb(26, 78, 232)
	ce[13,1] = "Feribows"
	ce[13,2] = "Did you know I helped with Feri? Shoutouts to Azazel"
	ce[14,0] = make_color_rgb(131, 199, 122)
	ce[14,1] = "repentance"
	ce[14,2] = "Colors based on the cover art of repentance"
	ce[15,0] = make_color_rgb(102, 0, 245)
	ce[15,1] = "TWILIGHT"
	ce[15,2] = "Colors based on the cover art of TWILIGHT v2"
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

if (color_desc_activate){
	if (tmp_x[tmp_pt]>tmp_xl1 && tmp_x[tmp_pt]<tmp_xl2 && tmp_y[tmp_pt]>tmp_yl1 && tmp_y[tmp_pt]<tmp_yl2){
		if (dial_time<dial_max){ dial_time++; }
	}else{
		if (dial_time>0){ dial_time--; }
	}
	draw_set_alpha(0.3);
	draw_rectangle_colour(tmp_xl2-1, tmp_yl1+3, tmp_xl2, tmp_yl2, c_dkgray, c_dkgray, c_dkgray, c_dkgray, false);
	textDraw(round(tmp_xl1+(tmp_bw/2))-3, round(tmp_yl1+(tmp_bh/2))-4, "fName", c_dkgray, 0, 100, 1, false, 0.3, "?");
	var dial_ease = ease_linear( 0, 100, dial_time, dial_max )
	draw_set_alpha(dial_ease/130);
	draw_rectangle_colour(x+10, y+95-round(dial_ease/30), x+210, y+153, c_black, c_black, c_black, c_black, false);
	draw_set_alpha(dial_ease/500);
	draw_rectangle_colour(tmp_xl1, tmp_yl1+3, tmp_xl2, tmp_yl2, c_white, c_white, c_white, c_white, false);
	draw_set_alpha(1);
	textDraw(x+14, (y+100)-round(dial_ease/30), "fName", c_white, 18, 200, 1, false, dial_ease/100, "- '"+ce[ue,1]+"'");
	textDraw(x+14, (y+120)-round(dial_ease/30), "fName", c_white, 18, 200, 1, false, dial_ease/100, ce[ue,2]);
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
