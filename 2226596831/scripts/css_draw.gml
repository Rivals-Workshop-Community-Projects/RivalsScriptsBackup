//test

draw_sprite_ext(sprite_get("aaa_vernum"),1,x+180,y+94,2,2,0,-1,1);

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


var temp_x = x + 8;
var temp_y = y + 9;

draw_set_halign(fa_left);

// ae code

//this is my single most user-UNfriendly code.
//read my code and suffer.
//if you want to use this code... sure????????????????????????????????????????? go ahead????????????????????
//just be ready to deal with my nightmarish code????????????
var qe_b = "RHSNM"
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
	
	col_max = 15;
	ce[0,0] = make_color_rgb(214, 240, 245)
	ce[0,1] = "Reckless"
	ce[1,0] = make_color_rgb(0, 200, 222)
	ce[1,1] = "Cyan"
	ce[2,0] = make_color_rgb(227, 23, 23)
	ce[2,1] = "Red"
	ce[3,0] = make_color_rgb(144, 224, 83)
	ce[3,1] = "Lime"
	ce[4,0] = make_color_rgb(180, 199, 214)
	ce[4,1] = "Silver"
	ce[5,0] = make_color_rgb(255, 92, 132)
	ce[5,1] = "Pink"
	ce[6,0] = make_color_rgb(48, 51, 54)
	ce[6,1] = "Kuro"
	ce[7,0] = make_color_rgb(83, 122, 62)
	ce[7,1] = "Game Boy"
	ce[8,0] = make_color_rgb(148, 4, 4)
	ce[8,1] = "Wii Mini"
	ce[9,0] = make_color_rgb(168, 14, 28)
	ce[9,1] = "Mario"
	ce[10,0] = make_color_rgb(26, 171, 60)
	ce[10,1] = "Luigi"
	ce[11,0] = make_color_rgb(252, 86, 168)
	ce[11,1] = "Peach"
	ce[12,0] = make_color_rgb(118, 217, 52)
	ce[12,1] = "Yoshi"
	ce[13,0] = make_color_rgb(204, 164, 69)
	ce[13,1] = "Link"
	ce[14,0] = make_color_rgb(81, 71, 168)
	ce[14,1] = "GameCube Indigo"
	ce[15,0] = make_color_rgb(255, 119, 0)
	ce[15,1] = "Matt"
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
	sound_stop(sound_get("altsel"));
	sound_play(sound_get("altsel"));
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
	
textDraw(temp_x + 2, temp_y + 130, "fName", c_white, 0, 1000, 1, true, tw_g, ce[ue,1]);
	
	ee--;
}
	ue = get_player_color(player);

//ae code end







//muno's functions;

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



#define rectDraw(x1, y1, x2, y2, color, out_color, alpha)

draw_set_alpha(argument[6]);
draw_rectangle_color(argument[0], argument[1], argument[2], argument[3], argument[5], argument[5], argument[5], argument[5], false);
draw_set_alpha(argument[6]*1.5);
draw_rectangle_color(argument[0]+2, argument[1]+2, argument[2]-2, argument[3]-2, argument[4], argument[4], argument[4], argument[4], false);
draw_set_alpha(1);

//#define outRectDraw(x1, y1, x2, y2)
