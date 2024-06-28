var temp_x = x + 8;
var temp_y = y + 9;


patch_ver = "";
patch_day = "";
patch_month = "";

var num_alts = 30;
var alt_cur = get_player_color(player);

// Intro Sound
//sound_play(sound_get("oh"));
//Alt name init. var doesn't work with arrays lol

var qe_b = string(sprite_get("idle")) //my sneaky trick to make sure every reload refreshes -supersonic
online_fix = player; //this is used in init_shader to fix the online init_shader bug.

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
	
var coldarkest = make_colour_rgb(35, 67, 49)
var coldark = make_colour_rgb(83, 122, 62)
var collight = make_colour_rgb(167, 186, 74)
var collightest = make_colour_rgb(211, 226, 154)
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
    altsel = sound_get("altsel"); // gb tetris sound babeyy
    color_desc_activate = false; // optional "alt color description button". set to "true" to turn it on.
    
    var col = 0;
    ce[col,0] = make_color_rgb(get_color_profile_slot_r(col, 1), get_color_profile_slot_g(col, 1), get_color_profile_slot_b(col, 1));
    ce[col,1]  = "Default";
    ce[col,2] = "";
    col++;
    ce[col,0] = make_color_rgb(get_color_profile_slot_r(col, 1), get_color_profile_slot_g(col, 1), get_color_profile_slot_b(col, 1));
	ce[col,1]  = "Blue";
    ce[col,2] = "";
    col++;
    ce[col,0] = make_color_rgb(get_color_profile_slot_r(col, 1), get_color_profile_slot_g(col, 1), get_color_profile_slot_b(col, 1));
	ce[col,1]  = "Red";
    ce[col,2] = "";
    col++;
    ce[col,0] = make_color_rgb(get_color_profile_slot_r(col, 1), get_color_profile_slot_g(col, 1), get_color_profile_slot_b(col, 1));
	ce[col,1]  = "Green";
    ce[col,2] = "";
    col++;
    ce[col,0] = make_color_rgb(get_color_profile_slot_r(col, 1), get_color_profile_slot_g(col, 1), get_color_profile_slot_b(col, 1));
	ce[col,1]  = "Black & White";
    ce[col,2] = "";
    col++;
    ce[col,0] = make_color_rgb(get_color_profile_slot_r(col, 1), get_color_profile_slot_g(col, 1), get_color_profile_slot_b(col, 1));
	ce[col,1]  = "Purple";
    ce[col,2] = "";
    col++;
    ce[col,0] = make_color_rgb(get_color_profile_slot_r(col, 1), get_color_profile_slot_g(col, 1), get_color_profile_slot_b(col, 1));
	ce[col,1]  = "Rykenburn";
    ce[col,2] = "";
    col++;
    ce[col,0] = make_color_rgb(get_color_profile_slot_r(col, 1), get_color_profile_slot_g(col, 1), get_color_profile_slot_b(col, 1));
	ce[col,1]  = "Abyss";
    ce[col,2] = "";
    col++;
    ce[col,0] = make_color_rgb(get_color_profile_slot_r(col, 1), get_color_profile_slot_g(col, 1), get_color_profile_slot_b(col, 1));
	ce[col,1]  = "Infamous";
    ce[col,2] = "";
    col++;
    ce[col,0] = make_color_rgb(get_color_profile_slot_r(col, 1), get_color_profile_slot_g(col, 1), get_color_profile_slot_b(col, 1));
	ce[col,1]  = "Pretty in Pink";
    ce[col,2] = "";
    col++;
    ce[col,0] = make_color_rgb(get_color_profile_slot_r(col, 1), get_color_profile_slot_g(col, 1), get_color_profile_slot_b(col, 1));
	ce[col,1]  = "Yellow";
    ce[col,2] = "";
    col++;
    ce[col,0] = make_color_rgb(get_color_profile_slot_r(col, 1), get_color_profile_slot_g(col, 1), get_color_profile_slot_b(col, 1));
	ce[col,1]  = "Magma";
    ce[col,2] = "";
    col++;
    ce[col,0] = make_color_rgb(get_color_profile_slot_r(col, 1), get_color_profile_slot_g(col, 1), get_color_profile_slot_b(col, 1));
	ce[col,1]  = "Cook";
    ce[col,2] = "";
    col++;
    ce[col,0] = make_color_rgb(get_color_profile_slot_r(col, 1), get_color_profile_slot_g(col, 1), get_color_profile_slot_b(col, 1));
	ce[col,1]  = "Warlock";
    ce[col,2] = "";
    col++;
    ce[col,0] = make_color_rgb(get_color_profile_slot_r(col, 1), get_color_profile_slot_g(col, 1), get_color_profile_slot_b(col, 1));
	ce[col,1]  = "Edge Red";
    ce[col,2] = "";
    col++;
    ce[col,0] = make_color_rgb(get_color_profile_slot_r(col, 1), get_color_profile_slot_g(col, 1), get_color_profile_slot_b(col, 1));
	ce[col,1]  = "Edge Blue";
    ce[col,2] = "";
    col++;
    ce[col,0] = make_color_rgb(get_color_profile_slot_r(col, 1), get_color_profile_slot_g(col, 1), get_color_profile_slot_b(col, 1));
	ce[col,1]  = "Bronze";
    ce[col,2] = "";
    col++;
    ce[col,0] = make_color_rgb(get_color_profile_slot_r(col, 1), get_color_profile_slot_g(col, 1), get_color_profile_slot_b(col, 1));
	ce[col,1]  = "Silver";
    ce[col,2] = "";
    col++;
    ce[col,0] = make_color_rgb(get_color_profile_slot_r(col, 1), get_color_profile_slot_g(col, 1), get_color_profile_slot_b(col, 1));
	ce[col,1]  = "Gold";
    ce[col,2] = "";
    col++;
    ce[col,0] = make_color_rgb(get_color_profile_slot_r(col, 1), get_color_profile_slot_g(col, 1), get_color_profile_slot_b(col, 1));
	ce[col,1]  = "Coal";
    ce[col,2] = "";
    col++;
    ce[col,0] = make_color_rgb(get_color_profile_slot_r(col, 1), get_color_profile_slot_g(col, 1), get_color_profile_slot_b(col, 1));
	ce[col,1]  = "Cold";
    ce[col,2] = "";
    col++;
    ce[col,0] = make_color_rgb(get_color_profile_slot_r(col, 1), get_color_profile_slot_g(col, 1), get_color_profile_slot_b(col, 1));
	ce[col,1]  = "Hot";
    ce[col,2] = "";
    col++;
    ce[col,0] = make_color_rgb(get_color_profile_slot_r(col, 1), get_color_profile_slot_g(col, 1), get_color_profile_slot_b(col, 1));
	ce[col,1]  = "Colorful";
    ce[col,2] = "";
    col++;
    ce[col,0] = make_color_rgb(get_color_profile_slot_r(col, 1), get_color_profile_slot_g(col, 1), get_color_profile_slot_b(col, 1));
	ce[col,1]  = "Monstrous";
    ce[col,2] = "";
    col++;
    ce[col,0] = make_color_rgb(get_color_profile_slot_r(col, 1), get_color_profile_slot_g(col, 1), get_color_profile_slot_b(col, 1));
	ce[col,1]  = "Superb";
    ce[col,2] = "";
    col++;
    ce[col,0] = make_color_rgb(get_color_profile_slot_r(col, 1), get_color_profile_slot_g(col, 1), get_color_profile_slot_b(col, 1));
	ce[col,1]  = "Pocket";
    ce[col,2] = "";
    col++;
    ce[col,0] = make_color_rgb(get_color_profile_slot_r(col, 1), get_color_profile_slot_g(col, 1), get_color_profile_slot_b(col, 1));
	ce[col,1]  = "Inverted";
    ce[col,2] = "";
    col++;
    ce[col,0] = make_color_rgb(get_color_profile_slot_r(col, 1), get_color_profile_slot_g(col, 1), get_color_profile_slot_b(col, 1));
	ce[col,1]  = "Dark";
    ce[col,2] = "";
    col++;
    ce[col,0] = make_color_rgb(get_color_profile_slot_r(col, 1), get_color_profile_slot_g(col, 1), get_color_profile_slot_b(col, 1));
	ce[col,1]  = "Darkest";
    ce[col,2] = "";
    col++;
    ce[col,0] = make_color_rgb(get_color_profile_slot_r(col, 1), get_color_profile_slot_g(col, 1), get_color_profile_slot_b(col, 1));
	ce[col,1]  = "Light";
    ce[col,2] = "";
    col_max = col; // number of alternate color palettes. 0 is the default color, count it accordingly.
    
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
	sound_stop(asset_get("mfx_change_color"));//this attempts to stop the base-game color change sound. feel free to remove this!
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
    var tw_g = ((floor(((ease_sineOut(0, 1, ee, ee_m)) + (ease_sineIn(0, 1, ee, ee_m))*400)/25)*25)/100)
	//WHAT A MESS OF MATH
    //print(string(tw_g));
    var dist = 15;
    //var typ = round(ease_expoIn(0, dist, ee, ee_m-2));//floor(move_ref.x/4)*4 - x;
    var typ = floor(round(ease_expoIn(0, dist, ee, ee_m+3))/4)*4;//floor(move_ref.x/4)*4 - x;
	
    //using muno's function;
	rectDraw(temp_x, temp_y, temp_x + 21, temp_y + 142, collightest, collightest, 1 );
	rectDraw(temp_x, temp_y, temp_x + 19, temp_y + 142, coldarkest, coldarkest, 1 );
	
    if (ue-2>=0){
    rectDraw(temp_x + 2, temp_y + 69 +(0-(dist*2)-6+(typ*ie)), temp_x + 17, temp_y + 84 +(0-(dist*2)-6+(typ*ie)),
    ce[clamp(ue-2,0,col_max),0], coldark, (ie==-1) ? tw_g : tw_g );
    }
    if (ue-1>=0){
    rectDraw(temp_x + 2, temp_y + 69 +(0-dist-3+(typ*ie)), temp_x + 17, temp_y + 84 +(0-dist-3+(typ*ie)),
    ce[clamp(ue-1,0,col_max),0], coldark, (ie==-1) ? tw_g : tw_g );
    }
    
    rectDraw(temp_x + 2, temp_y + 69 +(typ*ie), temp_x + 17, temp_y + 84 +(typ*ie), ce[ue,0], collightest, tw_g);
    
    if (ue+1<=col_max){
    rectDraw(temp_x + 2, temp_y + 69 +(dist+3+(typ*ie)), temp_x + 17, temp_y + 84 +(dist+3+(typ*ie)),
    ce[clamp(ue+1,0,col_max),0], coldark, (ie==1) ? tw_g : tw_g );
    }
    if (ue+2<=col_max){
    rectDraw(temp_x + 2, temp_y + 69 +((dist*2)+6+(typ*ie)), temp_x + 17, temp_y + 84 +((dist*2)+6+(typ*ie)),
    ce[clamp(ue+2,0,col_max),0], coldark, (ie==1) ? tw_g : tw_g );
    }
    
    if (ue+(3*-ie)<=col_max && ue+(3*-ie)>=0){
    rectDraw(temp_x + 2, temp_y + 69 +((((dist*3)+9)*-ie)+(typ*ie)),
    temp_x + 17, temp_y + 84 +((((dist*3)+9)*-ie)+(typ*ie)),
    ce[clamp(ue+(3*-ie),0,col_max),0], coldark, tw_g);
    }
    
textDraw(temp_x + 2 + ((player==0)?32:2), temp_y + 130, "fName", collightest, 16, 1000, 1, true, tw_g, ce[ue,1]);
    
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

draw_button(button_cord[0], button_cord[1], 30, 26, sprite_get(button_mode ? "ssl_hud_css" : "ssl_hud_css_bw"), button_mode ? false : false);
//Patch

draw_set_halign(fa_left);

textDraw(temp_x + 6, temp_y + 36, "fName", collightest, 0, 1000, 1, true, 1, button_mode  ? "Hud: On" : "Hud: Off");


#define draw_button(_x, _y, _width, _height, _image, _use_player_color)
if ((get_instance_x(cursor_id) >= x + _x && get_instance_x(cursor_id) <= x + _x + _width) && (get_instance_y(cursor_id) >= y + _y && get_instance_y(cursor_id) <= y + _y + _height)) {
    suppress_cursor = true;
    draw_sprite_ext(_image, 1, x + _x, y + _y, 1, 1, 0, _use_player_color ? get_player_hud_color(player) : c_white , 1);
    return true;
} else {
    draw_sprite_ext(_image, 0, x + _x, y + _y, 1, 1, 0, _use_player_color ? get_player_hud_color(player) : c_white, 1);
    return false;
}

//--- ---
// altered version of muno's functions. if you have other css codes, this part needs to be at the bottom of the code.
//--- ---
 
#define textDraw(x, y, font, color, lineb, linew, scale, outline, alpha, string)
 
draw_set_font(asset_get(argument[2]));
 
	var coldarkest = make_colour_rgb(35, 67, 49)
if argument[7]{
    for (i = -1; i < 2; i++){
        for (j = -1; j < 2; j++){
            draw_text_ext_transformed_color(argument[0] + i * 2, argument[1] + j * 2, argument[9], argument[4], argument[5], argument[6], argument[6], 0, coldarkest, coldarkest, coldarkest, coldarkest, 1);
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



