//--- ---
//
// hyuponia's "ae" css code
// very complicated stuff here 
//
//--- ---
var qe_b = "Knuckles"
// ! you can now scroll down until you reach "the primary part you should change."
 
//--- ---
//
// hyuponia's "ae" css code
// very complicated stuff here 
//
//--- ---
var qe_b = "Knuckles"
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
    
    col_max = 31; // number of alternate color palettes. 0 is the default color, count it accordingly.
    
    //first array index is for alternate color. second array index is for distinguishing the information in it.
    ce[0,0] = make_color_rgb(235, 27, 0) // "color preview square" color. can be any color!
    ce[0,1] = "Knuckles" // the name of the alternate color.
    
    ce[1,0] = make_color_rgb(56, 106, 255)
    ce[1,1] = "Fastest Hedgehog"
    
    ce[2,0] = make_color_rgb(255, 159, 0)
    ce[2,1] = "Miles Per Hour"
    
    ce[3,0] = make_color_rgb(245, 249, 255)
    ce[3,1] = "Bat Girl"
    
    ce[4,0] = make_color_rgb(247, 130, 165)
    ce[4,1] = "Pink Passion"
    
    ce[5,0] = make_color_rgb(59, 49, 66)
    ce[5,1] = "Ultimate Lifeform"
    
    ce[6,0] = make_color_rgb(186, 186, 186)
    ce[6,1] = "Line of Stars"
	
    ce[7,0] = make_color_rgb(167, 186, 74)
    ce[7,1] = "Abyss-Fists"
	
    ce[8,0] = make_color_rgb(240, 0, 0)
    ce[8,1] = "Pocket Adventurer"
	
    ce[9,0] = make_color_rgb(193, 221, 106)
    ce[9,1] = "Crocodile Detective"
	
    ce[10,0] = make_color_rgb(201, 101, 184)
    ce[10,1] = "Ninja Detective"
	
    ce[11,0] = make_color_rgb(252, 139, 99)
    ce[11,1] = "Bee-tective"

    ce[12,0] = make_color_rgb(65, 72, 99)
    ce[12,1] = "Ore"
	
    ce[13,0] = make_color_rgb(134, 113, 187)
    ce[13,1] = "Fanged Sniper"
	
    ce[14,0] = make_color_rgb(134, 113, 187)
    ce[14,1] = "Big Guy"
	
    ce[15,0] = make_color_rgb(255, 136, 51)
    ce[15,1] = "Prayer Echidna"

    ce[16,0] = make_color_rgb(152, 2, 2)
    ce[16,1] = "Pachacamaniac"

    ce[17,0] = make_color_rgb(224, 193, 1)
    ce[17,1] = "Pure Gold"

    ce[18,0] = make_color_rgb(228, 228, 239)
    ce[18,1] = "Ranked Gold"
	
    ce[19,0] = make_color_rgb(212, 169, 252)
    ce[19,1] = "Another Guardian"
	
    ce[20,0] = make_color_rgb(231, 237, 232)
    ce[20,1] = "ESP Hedgehog"

    ce[21,0] = make_color_rgb(52, 120, 163)
    ce[21,1] = "Werehog"

    ce[22,0] = make_color_rgb(184, 128, 83 )
    ce[22,1] = "Olympic"

    ce[23,0] = make_color_rgb(242, 212, 134 )
    ce[23,1] = "Ashes"

    ce[24,0] = make_color_rgb(0, 166, 166)
    ce[24,1] = "Angaga"

    ce[25,0] = make_color_rgb(187, 155, 143)
    ce[25,1] = "Kraig"

    ce[26,0] = make_color_rgb(164, 150, 148)
    ce[26,1] = "Gale Gah"

    ce[27,0] = make_color_rgb(164, 150, 148)
    ce[27,1] = "Epi Nel"

    ce[28,0] = make_color_rgb(166, 86, 61)
    ce[28,1] = "Donkey Knuckles"

    ce[29,0] = make_color_rgb(166, 86, 61)
    ce[29,1] = "Chronicled Echidna"

    ce[30,0] = make_color_rgb(247, 111, 173)
    ce[30,1] = "HYPER KNUCKLES"
    
    ce[31,0] = make_color_rgb(247, 111, 173)
    ce[31,1] = "Spectral Thief"

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