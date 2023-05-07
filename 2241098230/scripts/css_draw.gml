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
var qe_b = string(sprite_get("idle")) //my sneaky trick to make sure every reload refreshes -supersonic
// ! you can now scroll down until you reach "the primary part you should change."
 
shader_end();
prepare_shader();
switch (alt_cur)
{
    case 14: set_outline(15, 56, 15); break; //early access / gameboy
    default: set_outline(0, 0, 0); break;
}

shader_start();
//we need to draw over the portrait so the outline colors apply to it too
draw_sprite_ext(css_port_select ? sprite_get( "charselect_o" ) : sprite_get( "charselect"), 0, x+8, y+8, 2, 2, 0, c_white, 1);

shader_end();
prepare_shader(); //resets shader

if ((get_instance_x(cursor_id) >= x + button_cord[0] && get_instance_x(cursor_id) <= x + button_cord[0] + 30) && (get_instance_y(cursor_id) >= y + button_cord[1] && get_instance_y(cursor_id) <= y + button_cord[1] + 26)) {
	suppress_cursor = true;
	draw_sprite_ext(sprite_get("css_change"), 1, x + button_cord[0], y + button_cord[1], 1, 1, 0, c_white, 1);
} else {
	draw_sprite_ext(sprite_get("css_change"), 0, x + button_cord[0], y + button_cord[1], 1, 1, 0, c_white, 1);
}

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
    color_desc_activate = true; // optional "alt color description button". set to "true" to turn it on.
    
    //first array index is for alternate color. second array index is for distinguishing the information in it.
    var col = 0;
    ce[col,0] = make_color_rgb(get_color_profile_slot_r(col, 1), get_color_profile_slot_g(col, 1), get_color_profile_slot_b(col, 1));
    ce[col,1] = "Smokescreen Powerhouse" // the name of the alternate color.
    ce[col,2] = "" // description to display if "alt color description button" is on. keep it blank if none, and you can remove it if you didn't turn it on.
    col++;
    ce[col,0] = make_color_rgb(get_color_profile_slot_r(col, 1), get_color_profile_slot_g(col, 1), get_color_profile_slot_b(col, 1));
    ce[col,1] = "Blue" // the name of the alternate color.
    ce[col,2] = "" // description to display if "alt color description button" is on. keep it blank if none, and you can remove it if you didn't turn it on.
    col++;
    ce[col,0] = make_color_rgb(get_color_profile_slot_r(col, 1), get_color_profile_slot_g(col, 1), get_color_profile_slot_b(col, 1));
    ce[col,1] = "Red" // the name of the alternate color.
    ce[col,2] = "" // description to display if "alt color description button" is on. keep it blank if none, and you can remove it if you didn't turn it on.
    col++;
    ce[col,0] = make_color_rgb(get_color_profile_slot_r(col, 1), get_color_profile_slot_g(col, 1), get_color_profile_slot_b(col, 1));
    ce[col,1] = "Green" // the name of the alternate color.
    ce[col,2] = "" // description to display if "alt color description button" is on. keep it blank if none, and you can remove it if you didn't turn it on.
    col++;
    ce[col,0] = make_color_rgb(get_color_profile_slot_r(col, 1), get_color_profile_slot_g(col, 1), get_color_profile_slot_b(col, 1));
    ce[col,1] = "Black" // the name of the alternate color.
    ce[col,2] = "" // description to display if "alt color description button" is on. keep it blank if none, and you can remove it if you didn't turn it on.
    col++;
    ce[col,0] = make_color_rgb(get_color_profile_slot_r(col, 1), get_color_profile_slot_g(col, 1), get_color_profile_slot_b(col, 1));
    ce[col,1] = "Purple" // the name of the alternate color.
    ce[col,2] = "" // description to display if "alt color description button" is on. keep it blank if none, and you can remove it if you didn't turn it on.
    col++;
    ce[col,0] = make_color_rgb(get_color_profile_slot_r(col, 1), get_color_profile_slot_g(col, 1), get_color_profile_slot_b(col, 1));
    ce[col,1] = "Forest's Howl" // the name of the alternate color.
    ce[col,2] = "Sylvanos" // description to display if "alt color description button" is on. keep it blank if none, and you can remove it if you didn't turn it on.
    col++;
    ce[col,0] = make_color_rgb(get_color_profile_slot_r(col, 1), get_color_profile_slot_g(col, 1), get_color_profile_slot_b(col, 1));
    ce[col,1] = "Three-Tailed" // the name of the alternate color.
    ce[col,2] = "Tauros" // description to display if "alt color description button" is on. keep it blank if none, and you can remove it if you didn't turn it on.
    col++;
    ce[col,0] = make_color_rgb(get_color_profile_slot_r(col, 1), get_color_profile_slot_g(col, 1), get_color_profile_slot_b(col, 1));
    ce[col,1] = "Cursed King" // the name of the alternate color.
    ce[col,2] = "Ganondorf" // description to display if "alt color description button" is on. keep it blank if none, and you can remove it if you didn't turn it on.
    col++;
    ce[col,0] = make_color_rgb(get_color_profile_slot_r(col, 1), get_color_profile_slot_g(col, 1), get_color_profile_slot_b(col, 1));
    ce[col,1] = "Fire's Roar" // the name of the alternate color.
    ce[col,2] = "Zetterburn" // description to display if "alt color description button" is on. keep it blank if none, and you can remove it if you didn't turn it on.
    col++;
    ce[col,0] = make_color_rgb(get_color_profile_slot_r(col, 1), get_color_profile_slot_g(col, 1), get_color_profile_slot_b(col, 1));
    ce[col,1] = "Avian Champ" // the name of the alternate color.
    ce[col,2] = "Rawk Hawk" // description to display if "alt color description button" is on. keep it blank if none, and you can remove it if you didn't turn it on.
    col++;
    ce[col,0] = make_color_rgb(get_color_profile_slot_r(col, 1), get_color_profile_slot_g(col, 1), get_color_profile_slot_b(col, 1));
    ce[col,1] = "Thunderous Howl" // the name of the alternate color.
    ce[col,2] = "
    Iroh" // description to display if "alt color description button" is on. keep it blank if none, and you can remove it if you didn't turn it on.
    col++;
    ce[col,0] = make_color_rgb(get_color_profile_slot_r(col, 1), get_color_profile_slot_g(col, 1), get_color_profile_slot_b(col, 1));
    ce[col,1] = "The Turtle King" // the name of the alternate color.
    ce[col,2] = "Bowser" // description to display if "alt color description button" is on. keep it blank if none, and you can remove it if you didn't turn it on.
    col++;
    ce[col,0] = make_color_rgb(get_color_profile_slot_r(col, 1), get_color_profile_slot_g(col, 1), get_color_profile_slot_b(col, 1));
    ce[col,1] = "Abyss" // the name of the alternate color.
    ce[col,2] = "" // description to display if "alt color description button" is on. keep it blank if none, and you can remove it if you didn't turn it on.
    col++;
    ce[col,0] = make_color_rgb(get_color_profile_slot_r(col, 1), get_color_profile_slot_g(col, 1), get_color_profile_slot_b(col, 1));
    ce[col,1] = "EA" // the name of the alternate color.
    ce[col,2] = "" // description to display if "alt color description button" is on. keep it blank if none, and you can remove it if you didn't turn it on.
    col++;
    ce[col,0] = make_color_rgb(get_color_profile_slot_r(col, 1), get_color_profile_slot_g(col, 1), get_color_profile_slot_b(col, 1));
    ce[col,1] = "Thirty Dollar Haircut" // the name of the alternate color.
    ce[col,2] = "
    Android 13" // description to display if "alt color description button" is on. keep it blank if none, and you can remove it if you didn't turn it on.
    col++;
    ce[col,0] = make_color_rgb(get_color_profile_slot_r(col, 1), get_color_profile_slot_g(col, 1), get_color_profile_slot_b(col, 1));
    ce[col,1] = "Riptide" // the name of the alternate color.
    ce[col,2] = "Riptide" // description to display if "alt color description button" is on. keep it blank if none, and you can remove it if you didn't turn it on.
    col++;
    ce[col,0] = make_color_rgb(get_color_profile_slot_r(col, 1), get_color_profile_slot_g(col, 1), get_color_profile_slot_b(col, 1));
    ce[col,1] = "Genesis" // the name of the alternate color.
    ce[col,2] = "Genesis" // description to display if "alt color description button" is on. keep it blank if none, and you can remove it if you didn't turn it on.
    col++;
    ce[col,0] = make_color_rgb(get_color_profile_slot_r(col, 1), get_color_profile_slot_g(col, 1), get_color_profile_slot_b(col, 1));
    ce[col,1] = "Gold Rank" // the name of the alternate color.
    ce[col,2] = "You did not earn this." // description to display if "alt color description button" is on. keep it blank if none, and you can remove it if you didn't turn it on.
    col++;
    ce[col,0] = make_color_rgb(get_color_profile_slot_r(col, 1), get_color_profile_slot_g(col, 1), get_color_profile_slot_b(col, 1));
    ce[col,1] = "Eye of the Storm" // the name of the alternate color.
    ce[col,2] = "
    Daora" // description to display if "alt color description button" is on. keep it blank if none, and you can remove it if you didn't turn it on.
    col++;
    ce[col,0] = make_color_rgb(get_color_profile_slot_r(col, 1), get_color_profile_slot_g(col, 1), get_color_profile_slot_b(col, 1));
    ce[col,1] = "Chad Win" // the name of the alternate color.
    ce[col,2] = "Chad Win" // description to display if "alt color description button" is on. keep it blank if none, and you can remove it if you didn't turn it on.
    col++;
    ce[col,0] = make_color_rgb(get_color_profile_slot_r(col, 1), get_color_profile_slot_g(col, 1), get_color_profile_slot_b(col, 1));
    ce[col,1] = "Might of the Embers" // the name of the alternate color.
    ce[col,2] = "
    Exetior" // description to display if "alt color description button" is on. keep it blank if none, and you can remove it if you didn't turn it on.
    col++;
    ce[col,0] = make_color_rgb(get_color_profile_slot_r(col, 1), get_color_profile_slot_g(col, 1), get_color_profile_slot_b(col, 1));
    ce[col,1] = "Sorcerer of Doom" // the name of the alternate color.
    ce[col,2] = "
    Dr. Doom" // description to display if "alt color description button" is on. keep it blank if none, and you can remove it if you didn't turn it on.
    col++;
    ce[col,0] = make_color_rgb(get_color_profile_slot_r(col, 1), get_color_profile_slot_g(col, 1), get_color_profile_slot_b(col, 1));
    ce[col,1] = "Galactic" // the name of the alternate color.
    ce[col,2] = "idk man space" // description to display if "alt color description button" is on. keep it blank if none, and you can remove it if you didn't turn it on.
    col++;
    ce[col,0] = make_color_rgb(get_color_profile_slot_r(col, 1), get_color_profile_slot_g(col, 1), get_color_profile_slot_b(col, 1));
    ce[col,1] = "Regismolder" // the name of the alternate color.
    ce[col,2] = "un" // description to display if "alt color description button" is on. keep it blank if none, and you can remove it if you didn't turn it on.
    col++;
    // you can add more, by copypasting and changing the first index of the array accordingly.
    // ! changing part end.
    // you can ignore the mess below...
    col_max = col-1; // number of alternate color palettes. 0 is the default color, count it accordingly.
    
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
 
 
//functions by supersonic
#define prepare_shader()
{
    //init_shader(); fails to generate these variables for some reason,
    //so we assign them to these completely equivalent values
    //this allows shader_start() to be run in css_draw.gml!!!
    static_colorB = colorB;
    static_colorO = colorO;
    static_colorT = colorT;
    static_colorI = colorI;
    init_shader();
}
#define set_outline(r, g, b)
{
    //we use this function to add custom outlines to our character's portrait
    var start = 8*4; //outline
    static_colorO[start] = r/255;
    static_colorO[start+1] = g/255;
    static_colorO[start+2] = b/255;
}
 
 
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