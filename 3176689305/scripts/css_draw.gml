
switch (get_player_color( player ) ){
    case 21:
        draw_sprite_ext(sprite_get("charselect_ea"),1,x+8,y+8,2,2,0,-1,1);
    break;
}

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
var qe_b = "The Knight"

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
	
	col_max = 19; // number of alternate color palettes. 0 is the default color, count it accordingly.
	
	//first array index is for alternate color. second array index is for distinguishing the information in it.
	ce[0,0] = make_color_rgb(242, 246, 255) // "color preview square" color. can be any color!
	ce[0,1] = "Wanderer" // the name of the alternate color.
	ce[0,2] = "The default color." // description to display if "alt color description button" is on. keep it blank if none, and you can remove it if you didn't turn it on.
	ce[1,0] = make_color_rgb(179, 201, 227)
	ce[1,1] = "City of Tears"
	ce[1,2] = "References this thing, etc. a a a a a a a a a a"
	ce[2,0] = make_color_rgb(155, 196, 186)
	ce[2,1] = "Greenpath"
	ce[2,2] = ""
	ce[3,0] = make_color_rgb(216, 150, 237)
	ce[3,1] = "Crystal Peak"
	ce[3,2] = ""
	ce[4,0] = make_color_rgb(137, 156, 173)
	ce[4,1] = "Fungal Wastes"
	ce[4,2] = ""
	ce[5,0] = make_color_rgb(171, 159, 144)
	ce[5,1] = "Ancient Basin"
	ce[5,2] = ""
    ce[6,0] = make_color_rgb(235, 213, 114)
	ce[6,1] = "Hive"
	ce[6,2] = ""
    ce[7,0] = make_color_rgb(148, 174, 170)
	ce[7,1] = "Kingdom's Edge"
	ce[7,2] = ""
    ce[8,0] = make_color_rgb(235, 236, 242)
	ce[8,1] = "White Palace"
	ce[8,2] = ""
    ce[9,0] = make_color_rgb(30, 30, 31)
	ce[9,1] = "Abyss"
	ce[9,2] = ""
    ce[10,0] = make_color_rgb(48, 221, 236)
	ce[10,1] = "Lifeblood"
	ce[10,2] = ""
    ce[11,0] = make_color_rgb(165, 46, 70)
	ce[11,1] = "Hornet"
	ce[11,2] = ""
    ce[12,0] = make_color_rgb(94, 113, 138)
	ce[12,1] = "Quirrel"
	ce[12,2] = ""
    ce[13,0] = make_color_rgb(60, 79, 91)
	ce[13,1] = "Lost Kin"
	ce[13,2] = ""
    ce[14,0] = make_color_rgb(228, 186, 150)
	ce[14,1] = "Godseeker"
	ce[14,2] = ""
    ce[15,0] = make_color_rgb(239, 96, 105)
	ce[15,1] = "Troupe Master Grimm"
	ce[15,2] = ""
    ce[16,0] = make_color_rgb(160, 172, 154)
	ce[16,1] = "Moss Prophet"
	ce[16,2] = ""
    ce[17,0] = make_color_rgb(85, 94, 82)
	ce[17,1] = "The Hollow Knight"
	ce[17,2] = ""
    ce[18,0] = make_color_rgb(146, 143, 148)
	ce[18,1] = "Pure Vessel"
	ce[18,2] = ""
    ce[19,0] = make_color_rgb(245, 235, 235)
	ce[19,1] = "Absolute Radiance"
	ce[19,2] = ""
	ce[20,0] = make_color_rgb(184, 244, 131)
	ce[20,1] = "The Agendered Child"
	ce[20,2] = ""
	ce[21,0] = make_color_rgb(167, 186, 74)
	ce[21,1] = "Early Access"
	ce[21,2] = ""
	ce[22,0] = make_color_rgb(144, 99, 184)
	ce[22,1] = "Abyss"
	ce[22,2] = ""
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
    sound_stop(asset_get("mfx_change_color"));
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
	var tw_b = (ease_quartOut(0, 1, ee, ee_m)/4) - (ease_quartIn(0, 1, ee, ee_m)/4);
	var tw_c = (ease_quartOut(0, 1, ee, ee_m)/8) - (ease_quartIn(0, 1, ee, ee_m)/8);
	var tw_d = (ease_quartOut(0, 1, ee, ee_m)/4) + (ease_quartIn(0, 1, ee, ee_m));
	var tw_e = (ease_quartOut(0, 1, ee, ee_m)/8) + (ease_quartIn(0, 1, ee, ee_m)/4);
	var tw_f = (ease_quartOut(0, 1, ee, ee_m)/12) + (ease_quartIn(0, 1, ee, ee_m)/8);
	var tw_g = (ease_quartOut(0, 1, ee, ee_m)) + (ease_quartIn(0, 1, ee, ee_m)/4);
	var dist = 32;//14
	var typ = round(ease_expoIn(0, dist, ee, ee_m-2));
	//using muno's function;
	//up
	if (ue-2>=0){
	rectDraw(temp_x + 2, temp_y + 70 +(0-(dist*2)-10+(typ*ie)), temp_x + 16, temp_y + 91 +(0-(dist*2)-6+(typ*ie)),
	ce[clamp(ue-2,0,col_max),0], c_gray, (ie==-1) ? tw_c : tw_e );
	}
	if (ue-1>=0){
	rectDraw(temp_x + 2, temp_y + 70 +(0-dist-5+(typ*ie)), temp_x + 16, temp_y + 91 +(0-dist-3+(typ*ie)),
	ce[clamp(ue-1,0,col_max),0], c_gray, (ie==-1) ? tw_b : tw_d );
	}
	
	rectDraw(temp_x + 2, temp_y + 74 +(typ*ie), temp_x + 16, temp_y + 91 +(typ*ie), ce[ue,0], c_white, tw);
	
	if (ue+1<=col_max){
	rectDraw(temp_x + 2, temp_y + 78 +(dist+5+(typ*ie)), temp_x + 16, temp_y + 91 +(dist+3+(typ*ie)),
	ce[clamp(ue+1,0,col_max),0], c_gray, (ie==1) ? tw_b : tw_d );
	}
	if (ue+2<=col_max){
	rectDraw(temp_x + 2, temp_y + 78 +((dist*2)+10+(typ*ie)), temp_x + 16, temp_y + 91 +((dist*2)+6+(typ*ie)),
	ce[clamp(ue+2,0,col_max),0], c_gray, (ie==1) ? tw_c : tw_e );
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


#define rectDraw(x1, y1, x2, y2, color, out_color, alpha)

//sealed land

//draw_set_alpha(argument[6]);
//main
draw_sprite_ext( sprite_get("sealCSS"), 0, argument[0], argument[1], 1, 1, 0, argument[4], argument[6] )
//draw_rectangle_color(argument[0], argument[1], argument[2], argument[3], argument[5], argument[5], argument[5], argument[5], false);
//outline
//draw_set_alpha(argument[6]*1.5);
draw_sprite_ext( sprite_get("sealCSS"), 1, argument[0], argument[1], 1, 1, 0, argument[5], argument[6]*1.5 )
//draw_rectangle_color(argument[0]+2, argument[1]+2, argument[2]-2, argument[3]-2, argument[4], argument[4], argument[4], argument[4], false);
//draw_set_alpha(1);

#define cpu_hover_draw()
if (cpu_hover_time > 0) {
    var prog = min(cpu_hover_time/10, 1);
    var colprog = min(cpu_color_swap_time/5, 1);
    var col = merge_color(cpuh_prev_color, cpuh_new_color, colprog);
    draw_sprite_ext(cpu_hover_sprite, 0, x - 4, y - 6, 2, 2, 0, col, prog);
    draw_set_alpha(prog);
    draw_debug_text(plate_bounds[2]-17, plate_bounds[3]+1, `P${cpu_hovering_player}`);
    draw_set_alpha(1);
}

//set_synced_var(player, voice_button);
//set_synced_var(player, alt_button);

#define cpu_hover_update()
var p = player;
var is_cpu = (get_player_hud_color(p) == 8421504);