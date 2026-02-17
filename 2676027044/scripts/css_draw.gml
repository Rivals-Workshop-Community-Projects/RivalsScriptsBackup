/////////////////////////////////
if (get_player_color( player ) == 12) {
	draw_set_font(asset_get("fName"));
	draw_set_halign(fa_right);
	draw_set_valign(fa_top);
	draw_text_color(x + 228, y - 14, "Changes colors with Play Rough!", c_white, c_white, c_white, c_white, 1);
}

init_shader();


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
var qe_b = "Mimikyu"

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
	
	col_max = 29; // number of alternate color palettes. 0 is the default color, count it accordingly.
	
	//first array index is for alternate color. second array index is for distinguishing the information in it.
	ce[0,0] = make_color_rgb(122, 69, 200) // "color preview square" color. can be any color!
	ce[0,1] = "Copycat" // the name of the alternate color.

	ce[1,0] = make_color_rgb(189, 151, 188)
	ce[1,1] = "Shiny"

	ce[2,0] = make_color_rgb(242, 214, 121)
	ce[2,1] = "Pikachu"

	ce[3,0] = make_color_rgb(219, 155, 87)
	ce[3,1] = "Raichu"
	
	ce[4,0] = make_color_rgb(200, 148, 74)
	ce[4,1] = "Alolan Raichu"
	
	ce[5,0] = make_color_rgb(250, 240, 152)
	ce[5,1] = "Pichu"
	
    ce[6,0] = make_color_rgb(219, 95, 100)
	ce[6,1] = "Plusle"
	
    ce[7,0] = make_color_rgb(91, 191, 245)
	ce[7,1] = "Minun'"
	
    ce[8,0] = make_color_rgb(103, 172, 181)
	ce[8,1] = "Pachirisu"
	
    ce[9,0] = make_color_rgb(255, 223, 113)
	ce[9,1] = "Emolga"
	
	ce[10,0] = make_color_rgb(227, 161, 37)
	ce[10,1] = "Dedenne"
	
	ce[11,0] = make_color_rgb(181, 177, 172)
	ce[11,1] = "Togedemaru"
	
    ce[12,0] = make_color_rgb(241, 238, 157)
	ce[12,1] = "Morpeko"
	
    ce[13,0] = make_color_rgb(232, 138, 36)
	ce[13,1] = "Pawmi"
	
    ce[14,0] = make_color_rgb(78, 182, 232)
	ce[14,1] = "'Pikablu'"
	
    ce[15,0] = make_color_rgb(148, 115, 181)
	ce[15,1] = "Gengar"
	
    ce[16,0] = make_color_rgb(142, 146, 147)
	ce[16,1] = "Banette"
	
    ce[17,0] = make_color_rgb(239, 115, 41)
	ce[17,1] = "Rotom"
	
    ce[18,0] = make_color_rgb(255, 189, 49)
	ce[18,1] = "Cofagrigus"
	
    ce[19,0] = make_color_rgb(94, 60, 214)
	ce[19,1] = "Chandelure"
	
    ce[20,0] = make_color_rgb(138, 97, 80)
	ce[20,1] = "Minior"
	
    ce[21,0] = make_color_rgb(42, 131, 135)
	ce[21,1] = "Marshadow"
	
	ce[22,0] = make_color_rgb(177, 211, 211)
	ce[22,1] = "Polteageist"
	
    ce[23,0] = make_color_rgb(207, 202, 141)
	ce[23,1] = "Sinistcha"
	
    ce[24,0] = make_color_rgb(58, 120, 136)
	ce[24,1] = "Flutter Mane"
	
    ce[25,0] = make_color_rgb(163, 191, 151)
	ce[25,1] = "Substitute"
	
    ce[26,0] = make_color_rgb(247, 156, 173)
	ce[26,1] = "Sylveon"
	
    ce[27,0] = make_color_rgb(75, 76, 77)
	ce[27,1] = "Black Lives"
	
    ce[28,0] = make_color_rgb(255, 103, 112)
	ce[28,1] = "Grass/Steel"
	
    ce[29,0] = make_color_rgb(61, 116, 238)
	ce[29,1] = "Ghost/Water"
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
	rectDraw(temp_x + 2, temp_y + 74 +(0-(dist*2)-10+(typ*ie)), temp_x + 16, temp_y + 91 +(0-(dist*2)-6+(typ*ie)),
	ce[clamp(ue-2,0,col_max),0], c_gray, (ie==-1) ? tw_c : tw_e );
	}
	if (ue-1>=0){
	rectDraw(temp_x + 2, temp_y + 74 +(0-dist-5+(typ*ie)), temp_x + 16, temp_y + 91 +(0-dist-3+(typ*ie)),
	ce[clamp(ue-1,0,col_max),0], c_gray, (ie==-1) ? tw_b : tw_d );
	}
	
	rectDraw(temp_x + 2, temp_y + 74 +(typ*ie), temp_x + 16, temp_y + 91 +(typ*ie), ce[ue,0], c_white, tw);
	
	//shadowball icon
	var ballSpeed = 120;
	var ballFrames = 4;
	
	var ballFreq = 10
    var ballAmp = 2
	
	draw_sprite_ext(sprite_get("shadowball"), (css_time % ballSpeed) / ballFrames ,temp_x+172,temp_y+25+(dsin(css_time  * ballFreq ) * ballAmp),1,1,0,c_white,tw);
	
	if (ue+1<=col_max){
	rectDraw(temp_x + 2, temp_y + 74 +(dist+5+(typ*ie)), temp_x + 16, temp_y + 91 +(dist+3+(typ*ie)),
	ce[clamp(ue+1,0,col_max),0], c_gray, (ie==1) ? tw_b : tw_d );
	}
	if (ue+2<=col_max){
	rectDraw(temp_x + 2, temp_y + 74 +((dist*2)+10+(typ*ie)), temp_x + 16, temp_y + 91 +((dist*2)+6+(typ*ie)),
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

//mimicked land

//draw_set_alpha(argument[6]);
//main
draw_sprite_ext( sprite_get("mimiCSS_neo"), 0, argument[0], argument[1], 1, 1, 0, argument[4], argument[6] )
//draw_rectangle_color(argument[0], argument[1], argument[2], argument[3], argument[5], argument[5], argument[5], argument[5], false);
//outline
//draw_set_alpha(argument[6]*1.5);
draw_sprite_ext( sprite_get("mimiCSS_neo"), 1, argument[0], argument[1], 1, 1, 0, argument[5], argument[6]*1.5 )
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