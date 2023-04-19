//test

//draw_sprite_ext(sprite_get("aaa_vernum"),1,x+180,y+94,2,2,0,-1,1);

if (get_player_color( player ) == 7){
draw_sprite_ext(sprite_get("ea_outline"),1,x+8,y+8,2,2,0,-1,1);
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

//since this character is under my hands id like to preface saying that bit is by hyu ^ i screenshotted it and it goes hard


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
    altsel = sound_get("enterback");; // change the alt select sound here. if you don't want to change the sound, put 0 here.
    color_desc_activate = false; // optional "alt color description button". set to "true" to turn it on.
    
    col_max = 25; // number of alternate color palettes. 0 is the default color, count it accordingly.
    
    //first array index is for alternate color. second array index is for distinguishing the information in it.
    ce[0,0] = make_color_rgb(76, 217, 245) // "color preview square" color. can be any color!
    ce[0,3] = make_color_rgb(255, 53, 28)
    ce[0,1] = "Careless" // the name of the alternate color.
	ce[1,0] = make_color_rgb(109, 114, 118)
    ce[1,3] = make_color_rgb(109, 114, 118)
    ce[1,1] = "Standard"
    ce[2,0] = make_color_rgb(60, 194, 221)
    ce[2,3] = make_color_rgb(60, 194, 221)
    ce[2,1] = "Neon Blue"
    ce[3,0] = make_color_rgb(255, 53, 28)
    ce[3,3] = make_color_rgb(255, 53, 28)
    ce[3,1] = "Neon Red"
    ce[4,0] = make_color_rgb(218, 243, 68)
    ce[4,3] = make_color_rgb(218, 243, 68)
    ce[4,1] = "Neon Yellow"
    ce[5,0] = make_color_rgb(226, 228, 228)
    ce[5,3] = make_color_rgb(226, 228, 228)
    ce[5,1] = "OLED"
    ce[6,0] = make_color_rgb(143, 147, 156)
    ce[6,3] = make_color_rgb(143, 147, 156)
    ce[6,1] = "Smash Bros. Ultimate"
    ce[7,0] = make_color_rgb(211, 226, 154)
    ce[7,3] = make_color_rgb(167, 186, 74)
    ce[7,1] = "Game Girl"
    ce[8,0] = make_color_rgb(255, 53, 28)
    ce[8,3] = make_color_rgb(76, 217, 245)
    ce[8,1] = "Reverse"
    ce[9,0] = make_color_rgb(241, 75, 128)
    ce[9,3] = make_color_rgb(118, 224, 92)
    ce[9,1] = "Splatoon 2"
    ce[10,0] = make_color_rgb(79, 88, 199)
    ce[10,3] = make_color_rgb(221, 241, 120)
    ce[10,1] = "Splatoon 3"
    ce[11,0] = make_color_rgb(255, 179, 5)
    ce[11,3] = make_color_rgb(169, 45, 179)
    ce[11,1] = "Halloween"
    ce[12,0] = make_color_rgb(100, 218, 228)
    ce[12,3] = make_color_rgb(117, 229, 161)
    ce[12,1] = "New Horizons"  
    ce[13,0] = make_color_rgb(55, 57, 180)
    ce[13,3] = make_color_rgb(20, 93, 221)
    ce[13,1] = "Skyward Sword" 
    ce[14,0] = make_color_rgb(245, 215, 73)
    ce[14,3] = make_color_rgb(202, 158, 75)
    ce[14,1] = "Let's Go" 
    ce[15,0] = make_color_rgb(0, 114, 195)
    ce[15,3] = make_color_rgb(253, 209, 50)
    ce[15,1] = "Fortnite (yea.)" 
    ce[16,0] = make_color_rgb(222, 29, 40)
    ce[16,3] = make_color_rgb(222, 29, 40)
    ce[16,1] = "Mario" 
    ce[17,0] = make_color_rgb(26, 171, 60)
    ce[17,3] = make_color_rgb(26, 171, 60)
    ce[17,1] = "Luigi" 
    ce[18,0] = make_color_rgb(70, 70, 72)
    ce[18,3] = make_color_rgb(104, 194, 220)
    ce[18,1] = "Wii Fit Trainer" 
    ce[19,0] = make_color_rgb(253, 186, 0)
    ce[19,3] = make_color_rgb(255, 225, 101)
    ce[19,1] = "My Nintendo Gold" 
    ce[20,0] = make_color_rgb(189, 164, 122)
    ce[20,3] = make_color_rgb(189, 117, 83)
    ce[20,1] = "Ring Fit" 
    ce[21,0] = make_color_rgb(251, 105, 38)
    ce[21,3] = make_color_rgb(251, 105, 38)
    ce[21,1] = "Tipp" 
    ce[22,0] = make_color_rgb(0, 56, 168)
    ce[22,3] = make_color_rgb(214, 2, 112)
    ce[22,1] = "Bichromatic" 
    ce[23,0] = make_color_rgb(255, 125, 202)
    ce[23,3] = make_color_rgb(115, 255, 220)
    ce[23,1] = "Transistor" 
    ce[24,0] = make_color_rgb(158, 16, 32)
    ce[24,3] = make_color_rgb(45, 46, 51)
    ce[24,1] = "Virtual Girl" 
    ce[25,0] = make_color_rgb(214, 240, 245)
    ce[25,3] = make_color_rgb(214, 240, 245)
    ce[25,1] = "Reckless" 
    // you can add more, by copypasting and changing the first index of the array accordingly.
    // ! changing part end.
    // you can ignore the mess below...
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
	sound_stop(mfx_change_color);
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
	var dist = 16;//14
	var typ = round(ease_expoIn(0, dist, ee, ee_m-2));
	//using muno's function;
	//up
	if (ue-2>=0){
	rectDraw(temp_x + 2, temp_y + 74 +(0-(dist*2)-10+(typ*ie)), temp_x + 16, temp_y + 91 +(0-(dist*2)-6+(typ*ie)),
	ce[clamp(ue-2,0,col_max),0], ce[clamp(ue-2,0,col_max),3], c_gray, (ie==-1) ? tw_c : tw_e );
	}
	if (ue-1>=0){
	rectDraw(temp_x + 2, temp_y + 74 +(0-dist-5+(typ*ie)), temp_x + 16, temp_y + 91 +(0-dist-3+(typ*ie)),
	ce[clamp(ue-1,0,col_max),0], ce[clamp(ue-1,0,col_max),3], c_gray, (ie==-1) ? tw_b : tw_d );
	}
	
	rectDraw(temp_x + 2, temp_y + 74 +(typ*ie), temp_x + 16, temp_y + 91 +(typ*ie), ce[ue,0], ce[ue,3], c_white, tw);
	
	if (ue+1<=col_max){
	rectDraw(temp_x + 2, temp_y + 74 +(dist+5+(typ*ie)), temp_x + 16, temp_y + 91 +(dist+3+(typ*ie)),
	ce[clamp(ue+1,0,col_max),0], ce[clamp(ue+1,0,col_max),3], c_gray, (ie==1) ? tw_b : tw_d );
	}
	if (ue+2<=col_max){
	rectDraw(temp_x + 2, temp_y + 74 +((dist*2)+10+(typ*ie)), temp_x + 16, temp_y + 91 +((dist*2)+6+(typ*ie)),
	ce[clamp(ue+2,0,col_max),0], ce[clamp(ue+2,0,col_max),3], c_gray, (ie==1) ? tw_c : tw_e );
	}
	//down
	
	/*if (ue+(3*-ie)<=col_max && ue+(3*-ie)>=0){
	rectDraw(temp_x + 2, temp_y + 77 +((((dist*3)+9)*-ie)+(typ*ie)),
	temp_x + 16, temp_y + 91 +((((dist*3)+9)*-ie)+(typ*ie)),
	ce[clamp(ue+(3*-ie),0,col_max),0], c_gray, tw_f);
	}*/
	
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


#define rectDraw(x1, y1, x2, y2, color, color2, out_color, alpha)
    //thats      0   1   2   3   4      5       6          7

//hearted land

//draw_set_alpha(argument[6]);
//main
draw_sprite_ext( sprite_get("double"), 0, argument[0], argument[1], 1, 1, 0, argument[4], argument[7] )
draw_sprite_ext( sprite_get("double"), 1, argument[0], argument[1], 1, 1, 0, argument[5], argument[7] )
//draw_rectangle_color(argument[0], argument[1], argument[2], argument[3], argument[5], argument[5], argument[5], argument[5], false);
//outline
//draw_set_alpha(argument[6]*1.5);
draw_sprite_ext( sprite_get("double"), 2, argument[0], argument[1], 1, 1, 0, argument[6], argument[7]*1.5 )
//draw_rectangle_color(argument[0]+2, argument[1]+2, argument[2]-2, argument[3]-2, argument[4], argument[4], argument[4], argument[4], false);
//draw_set_alpha(1);