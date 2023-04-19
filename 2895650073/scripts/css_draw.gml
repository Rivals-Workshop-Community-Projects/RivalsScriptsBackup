//mado css draw


//draw_sprite_ext(sprite_get("aaa_vernum"),1,x+180,y+102,2,2,0,-1,1);

if (get_player_color( player ) == 7){
//draw_sprite_ext(sprite_get("ea_outline"),1,x+8,y+8,2,2,0,-1,1);
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
var qe_b = "DreamingMado"
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
	color_desc_activate = false; // optional "alt color description button". set to "true" to turn it on.
	
	col_max = 27;
	
	ce[0,0] = make_color_rgb(215, 81, 110)
	ce[0,1] = "Dreaming"
	ce[0,2] = ""
	ce[1,0] = make_color_rgb(232, 237, 255)
	ce[1,1] = "Snow"
	ce[1,2] = ""
	ce[2,0] = make_color_rgb(255, 0, 0)
	ce[2,1] = "Red"
	ce[2,2] = ""
	ce[3,0] = make_color_rgb(230, 215, 136)
	ce[3,1] = "Park"
	ce[3,2] = ""
	ce[4,0] = make_color_rgb(53, 149, 242)
	ce[4,1] = "Lamp"
	ce[4,2] = ""
	ce[5,0] = make_color_rgb(217, 180, 235)
	ce[5,1] = "Angle"
	ce[5,2] = ""
	ce[6,0] = make_color_rgb(110, 39, 95)
	ce[6,1] = "Real"
	ce[6,2] = ""
	ce[7,0] = make_color_rgb(108, 48, 75)
	ce[7,1] = "FC"
	ce[7,2] = ""
	ce[8,0] = make_color_rgb(255, 255, 255)
	ce[8,1] = "Mono"
	ce[8,2] = ""
	ce[9,0] = make_color_rgb(35, 48, 35)
	ce[9,1] = "Utsushiyo"
	ce[9,2] = ""
	ce[10,0] = make_color_rgb(47, 27, 59)
	ce[10,1] = "Tokoyo"
	ce[10,2] = ""
	ce[11,0] = make_color_rgb(29, 36, 89)
	ce[11,1] = "Kochou"
	ce[11,2] = ""
	ce[12,0] = make_color_rgb(74, 28, 48)
	ce[12,1] = "Kantan"
	ce[12,2] = ""
	ce[13,0] = make_color_rgb(255, 212, 243)
	ce[13,1] = "Shallows"
	ce[13,2] = ""
	ce[14,0] = make_color_rgb(255, 150, 0)
	ce[14,1] = "KALIMBA"
	ce[14,2] = ""
	ce[15,0] = make_color_rgb(201, 201, 255)
	ce[15,1] = "Tulips"
	ce[15,2] = ""
	ce[16,0] = make_color_rgb(161, 97, 63)
	ce[16,1] = "Nightnight"
	ce[16,2] = ""
	ce[17,0] = make_color_rgb(171, 171, 171)
	ce[17,1] = "Link"
	ce[17,2] = ""
	ce[18,0] = make_color_rgb(143, 26, 36)
	ce[18,1] = "Museum"
	ce[18,2] = ""
	ce[19,0] = make_color_rgb(77, 45, 45)
	ce[19,1] = "Abducted"
	ce[19,2] = ""
	ce[20,0] = make_color_rgb(255, 234, 0)
	ce[20,1] = "blw"
	ce[20,2] = ""
	ce[21,0] = make_color_rgb(48, 57, 77)
	ce[21,1] = "Arachnid"
	ce[21,2] = ""
	ce[22,0] = make_color_rgb(165, 153, 255)
	ce[22,1] = "Rabbit"
	ce[22,2] = ""
	ce[23,0] = make_color_rgb(70, 82, 126)
	ce[23,1] = "Liar"
	ce[23,2] = ""
	ce[24,0] = make_color_rgb(57, 225, 237)
	ce[24,1] = "Eye"
	ce[24,2] = ""
	ce[25,0] = make_color_rgb(199, 232, 25)
	ce[25,1] = "Flower"
	ce[25,2] = ""
	ce[26,0] = make_color_rgb(89, 71, 78)
	ce[26,1] = "Roam"
	ce[26,2] = ""
	ce[27,0] = make_color_rgb(255, 255, 255)
	ce[27,1] = "Rust"
	ce[27,2] = ""
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
	sound_play(altsel, false, noone, 0.7);
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
	
	//override
	if (ue == 9){//utsushiyo
fakeTextDraw(temp_x + 2 + ((player==0)?32:0), temp_y + 127, 0, 2, true, tw_g);
	}else if (ue == 10){//tokoyo
fakeTextDraw(temp_x + 2 + ((player==0)?32:0), temp_y + 127, 1, 2, true, tw_g);
	}else if (ue == 11){//kochou
fakeTextDraw(temp_x + 2 + ((player==0)?32:0), temp_y + 127, 2, 2, true, tw_g);
	}else if (ue == 12){//kantan
fakeTextDraw(temp_x + 2 + ((player==0)?32:0), temp_y + 127, 3, 2, true, tw_g);
	}else{
textDraw(temp_x + 2 + ((player==0)?32:0), temp_y + 130, "fName", c_white, 0, 1000, 1, true, tw_g, ce[ue,1]);
	}

	
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
	textDraw(x+14, (y+100)-round(dial_ease/30), "fName", c_white, 18, 200, 1, false, dial_ease/100, "- Color "+string(ue)+": "+ce[ue,1]);
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


// !?
#define fakeTextDraw(x, y, index, scale, outline, alpha)

// draw_sprite_ext(sprite_get("aaa_vernum"), 1, x+180, y+102, 2, 2, 0, -1, 1);
if argument[4]{
    for (i = -1; i < 2; i++){
        for (j = -1; j < 2; j++){
            //draw_text_ext_transformed_color(argument[0] + i * 2, argument[1] + j * 2, argument[9], argument[4], argument[5], argument[6], argument[6], 0, c_black, c_black, c_black, c_black, 1);
			draw_sprite_ext(sprite_get("customtext"), argument[2], argument[0] + i * 2, argument[1] + j * 2, argument[3], argument[3], 0, c_black, 1);
        }
    }
}

//draw_text_ext_transformed_color(argument[0], argument[1], argument[9], argument[4], argument[5], argument[6], argument[6], 0, argument[3], argument[3], argument[3], argument[3], argument[8]);
draw_sprite_ext(sprite_get("customtext"), argument[2], argument[0], argument[1], argument[3], argument[3], 0, -1, argument[5]);



#define rectDraw(x1, y1, x2, y2, color, out_color, alpha)

draw_set_alpha(argument[6]);
draw_rectangle_color(argument[0], argument[1], argument[2], argument[3], argument[5], argument[5], argument[5], argument[5], false);
draw_set_alpha(argument[6]*1.5);
draw_rectangle_color(argument[0]+2, argument[1]+2, argument[2]-2, argument[3]-2, argument[4], argument[4], argument[4], argument[4], false);
draw_set_alpha(1);








