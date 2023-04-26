shader_end();

//test


draw_sprite_ext(sprite_get("aaa_vernum"),1,x+146,y+118,2,2,0,-1,1);

var icon_x = 176
var icon_y = 112
switch(get_player_color( player )){
	case 7:
	draw_sprite_ext(sprite_get("na_ea_outline"),1,x+8,y+8,2,2,0,-1,1);
	draw_sprite_ext(sprite_get("na_css_icons"),6,x+icon_x,y+icon_y,2,2,0,-1,1);
	break;
	case 12:
	draw_sprite_ext(sprite_get("na_css_icons"),3,x+icon_x,y+icon_y,2,2,0,-1,1);
	break;
	case 18:
	draw_sprite_ext(sprite_get("na_css_icons"),1,x+icon_x,y+icon_y,2,2,0,-1,1);
	break;
	case 19:
	draw_sprite_ext(sprite_get("na_css_icons"),4,x+icon_x,y+icon_y,2,2,0,-1,1);
	break;
    default: break;
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


var temp_x = x + 8;
var temp_y = y + 9;

draw_set_halign(fa_left);

// ae code

//this is my single most user-UNfriendly code.
//read my code and suffer.
//if you want to use this code... sure????????????????????????????????????????? go ahead????????????????????
//just be ready to deal with my nightmarish code????????????

var qe_b = "NA" //change this for identification
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
	
	col_max = 19; //max colors
	ce[0,0] = make_color_rgb(71, 49, 87)
	ce[0,1] = "Void Melanoid"
	ce[1,0] = make_color_rgb(58, 154, 228)
	ce[1,1] = "Aqua"
	ce[2,0] = make_color_rgb(255, 115, 0)
	ce[2,1] = "Ignis"
	ce[3,0] = make_color_rgb(127, 166, 92)
	ce[3,1] = "Terra"
	ce[4,0] = make_color_rgb(75, 78, 82)
	ce[4,1] = "Axanthic" //dark axolotl
	ce[5,0] = make_color_rgb(120, 121, 161)
	ce[5,1] = "Aer" //4 aethereal elements were then divided by black/white alt in roaaco
	ce[6,0] = make_color_rgb(255, 74, 131)
	ce[6,1] = "Leucistic" //"not" abyss
	ce[7,0] = make_color_rgb(167, 186, 74)
	ce[7,1] = "Turris" //tower
	ce[8,0] = make_color_rgb(255, 246, 245)
	ce[8,1] = "Angel" //02
	ce[9,0] = make_color_rgb(0, 89, 84)
	ce[9,1] = "Crown" //magolor
	ce[10,0] = make_color_rgb(79, 6, 2)
	ce[10,1] = "Astral Birth" //void
	ce[11,0] = make_color_rgb(0, 222, 130)
	ce[11,1] = "doomsday"
	ce[12,0] = make_color_rgb(79, 61, 94)
	ce[12,1] = "Traditional Abyss"
	ce[13,0] = make_color_rgb(95, 0, 102)
	ce[13,1] = "True Purple"
	ce[14,0] = make_color_rgb(112, 64, 255)
	ce[14,1] = "True Grey"
	ce[15,0] = make_color_rgb(180, 255, 41)
	ce[15,1] = "True Green"
	ce[16,0] = make_color_rgb(232, 72, 9)
	ce[16,1] = "True Red"
	ce[17,0] = make_color_rgb(30, 50, 184)
	ce[17,1] = "True Blue"
	ce[18,0] = make_color_rgb(252, 196, 30)
	ce[18,1] = "Ranked Gold"
	ce[19,0] = make_color_rgb(87, 10, 33)
	ce[19,1] = "Genesis"
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
	sound_stop(sound_get("altsel")); //change these sounds for alt selection sound
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
	
	var txtdisp_x = (player==0)?32:0
	//var txtdisp_y = -12
textDraw(temp_x + 2 + txtdisp_x, temp_y + 130, "fName", c_white, 0, 1000, 1, true, tw_g, ce[ue,1]);
	
	ee--;
}
	ue = get_player_color(player);

//ae code end



if (get_player_color( player ) == 10) {
init_shader();
}




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
