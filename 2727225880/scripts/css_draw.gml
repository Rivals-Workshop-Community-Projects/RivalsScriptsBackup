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





/*
if (get_player_color(player) == 14) { //AND 26
    
    
	draw_sprite_ext(sprite_get("charselect_gb"),1,x+8,y+8,2,2,0,-1,1);
} else if (get_player_color(player) == 25) { //AND 26
    
    
	draw_sprite_ext(sprite_get("charselect_prism"),1,x+8,y+8,2,2,0,-1,1);
}

*/













var qe_b = "Torren"
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
	altsel = 0; // change the alt select sound here. if you don't want to change the sound, put 0 here.
	color_desc_activate = false; // optional "alt color description button". set to "true" to turn it on.
	
	col_max = 23; // number of alternate color palettes. 0 is the default color, count it accordingly.
	
	//first array index is for alternate color. second array index is for distinguishing the information in it.
	ce[0,0] = make_color_rgb(225, 119, 38 ) // "color preview square" color. can be any color!
	ce[0,1] = "Default" // the name of the alternate color.
	ce[0,2] = "The default color." // description to display if "alt color description button" is on. keep it blank if none, and you can remove it if you didn't turn it on.
	ce[1,0] = make_color_rgb(239, 145, 14 )
	ce[1,1] = "Golden"
	ce[1,2] = ""
	ce[2,0] = make_color_rgb(162, 220, 232)
	ce[2,1] = "White"
	ce[2,2] = ""
	ce[3,0] = make_color_rgb(70, 71, 65)
	ce[3,1] = "Black"
	ce[3,2] = ""
	ce[4,0] = make_color_rgb(203, 157, 118)
	ce[4,1] = "Sepia"
	ce[4,2] = ""
	ce[5,0] = make_color_rgb(222, 177, 64) //Young Link
	ce[5,1] = "Yellow"
	ce[5,2] = ""
	ce[6,0] = make_color_rgb(242, 71, 91) //woolf
	ce[6,1] = "Masters"
	ce[6,2] = ""
	ce[7,0] = make_color_rgb(255, 202, 46) //fox
	ce[7,1] = "Gunshot"
	ce[7,2] = ""
	ce[8,0] = make_color_rgb(250, 247, 251) //falco
	ce[8,1] = "Maneater"
	ce[8,2] = ""
	ce[9,0] = make_color_rgb(60, 122, 24) //link
	ce[9,1] = "Earth Kingdom"
	ce[9,2] = ""
	ce[10,0] = make_color_rgb(255, 182, 62)
	ce[10,1] = "Mysterious Fox"
	ce[10,2] = ""
	ce[11,0] = make_color_rgb(86, 173, 75)
	ce[11,1] = "schephtoo"
	ce[11,2] = ""
	ce[12,0] = make_color_rgb(237, 141, 202) //Lucas
	ce[12,1] = "Amethyst Fist"
	ce[12,2] = ""
	ce[13,0] = make_color_rgb(217, 84, 232)
	ce[13,1] = "One of Many"
	ce[13,2] = ""
	ce[14,0] = make_color_rgb(83, 122, 62)
	ce[14,1] = "Beta Bounty"
	ce[14,2] = ""
	ce[15,0] = make_color_rgb(218, 212, 94) //NA ALT
	ce[15,1] = "Masked Prankster"
	ce[15,2] = ""
	ce[16,0] = make_color_rgb(145, 195, 255) //ROY
	ce[16,1] = "Ice to meet you"
	ce[16,2] = ""
	ce[17,0] = make_color_rgb(123, 37, 201) //PEACH
	ce[17,1] = "Lightning Gladiator"
	ce[17,2] = ""
	ce[18,0] = make_color_rgb(251, 226, 96) //shiny
	ce[18,1] = "1/8192"
	ce[18,2] = ""
	ce[19,0] = make_color_rgb( 211, 31, 81) //SAKURAI
	ce[19,1] = "Bedazzled"
	ce[19,2] = ""
	ce[20,0] = make_color_rgb(60, 57, 53)
	ce[20,1] = "hatsune blaku"
	ce[20,2] = ""
	ce[21,0] = make_color_rgb(249, 208, 85)
	ce[21,1] = "Prototype"
	ce[21,2] = ""
	ce[22,0] = make_color_rgb( 240, 56, 36)
	ce[22,1] = "Flying Dragon"
	ce[22,2] = ""
	ce[23,0] = make_color_rgb( 255, 115, 246)
	ce[23,1] = "Purple"
	ce[23,2] = ""
	ce[24,0] = make_color_rgb( 218, 251, 255)
	ce[24,1] = "The Golden Fur"
	ce[24,2] = ""


	
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


//CODE FOR CSS OUTLINES

/*
//rainboW UWU code
	if (!variable_instance_exists(id, "hue_offset")){

hue_offset=0; }

hue_speed=1; //change this to change the speed of the hueshift



hue_offset+=hue_speed;
hue_offset=hue_offset mod 255; //keeps hue_offset within the 0-255 range

color_rgb=make_color_rgb(255, 27, 24); //input rgb values here, uses rgb to create a gamemaker colour variable
hue=(color_get_hue(color_rgb)+hue_offset) mod 255; //finds the hue and shifts it
color_hsv=make_color_hsv(hue,color_get_saturation(color_rgb),color_get_value(color_rgb)); //creates a new gamemaker colour variable using the shifted hue
set_color_profile_slot(25, 0, 215,215,215); //uses that variable to set the slot's new colours

color_rgb_2=make_color_rgb(255, 145, 208); //input rgb values here, uses rgb to create a gamemaker colour variable
hue_2=(color_get_hue(color_rgb_2)+hue_offset) mod 255; //finds the hue and shifts it
color_hsv_2=make_color_hsv(hue_2,color_get_saturation(color_rgb_2),color_get_value(color_rgb_2)); //creates a new gamemaker colour variable using the shifted hue
set_color_profile_slot(25, 1, color_get_red(color_hsv_2),color_get_green(color_hsv_2),color_get_blue(color_hsv_2)); //uses that variable to set the slot's new colours




init_shader()
*/




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
