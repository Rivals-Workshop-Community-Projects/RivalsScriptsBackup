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

shader_end();
prepare_shader();

shader_start();
//we need to draw over the portrait so the outline colors apply to it too
draw_sprite_ext(get_char_info(player, INFO_CHARSELECT), 0, x+8, y+8, 2, 2, 0, c_white, 1);

shader_end();
prepare_shader(); //resets shader

var qe_b = string(sprite_get("idle")) //my sneaky trick to make sure every reload refreshes -supersonic
// ! you can now scroll down until you reach "the primary part you should change."
online_fix = player; //this is used in init_shader to fix the online init_shader bug.
 
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
    ce[col,0] = make_color_rgb(get_color_profile_slot_r(col,0), get_color_profile_slot_g(col, 0), get_color_profile_slot_b(col, 0));
    ce[col,1] = "Patient Gale" // the name of the alternate color.
    ce[col,2] = "One who bends air pressure to his whims" // description to display if "alt color description button" is on. keep it blank if none, and you can remove it if you didn't turn it on.
    col++;
    ce[col,0] = make_color_rgb(get_color_profile_slot_r(col, 0), get_color_profile_slot_g(col, 0), get_color_profile_slot_b(col, 0));
    ce[col,1] = "Wandering Skies" // the name of the alternate color.
    ce[col,2] = "Stand at the pinacle of the the world" // description to display if "alt color description button" is on. keep it blank if none, and you can remove it if you didn't turn it on.
    col++;
    ce[col,0] = make_color_rgb(get_color_profile_slot_r(col, 0), get_color_profile_slot_g(col, 0), get_color_profile_slot_b(col, 0));
    ce[col,1] = "Nightly Breeze" // the name of the alternate color.
    ce[col,2] = "A calm that can only be found in the moonlight" // description to display if "alt color description button" is on. keep it blank if none, and you can remove it if you didn't turn it on.
    col++;
    ce[col,0] = make_color_rgb(get_color_profile_slot_r(col, 0), get_color_profile_slot_g(col, 0), get_color_profile_slot_b(col, 0));
    ce[col,1] = "Verdant Grove" // the name of the alternate color.
    ce[col,2] = "Hidden from sight, yet full of life, forevermore" // description to display if "alt color description button" is on. keep it blank if none, and you can remove it if you didn't turn it on.
    col++;
    ce[col,0] = make_color_rgb(get_color_profile_slot_r(col, 0), get_color_profile_slot_g(col, 0), get_color_profile_slot_b(col, 0));
    ce[col,1] = "Ominous Blizzard" // the name of the alternate color.
    ce[col,2] = "Lost in a cold haze of white" // description to display if "alt color description button" is on. keep it blank if none, and you can remove it if you didn't turn it on.
    col++;
    ce[col,0] = make_color_rgb(get_color_profile_slot_r(col, 0), get_color_profile_slot_g(col, 0), get_color_profile_slot_b(col, 0));
    ce[col,1] = "Lost Garden" // the name of the alternate color.
    ce[col,2] = "A verdant field of pedals, lost to man" // description to display if "alt color description button" is on. keep it blank if none, and you can remove it if you didn't turn it on.
    col++;
    ce[col,0] = make_color_rgb(get_color_profile_slot_r(col, 0), get_color_profile_slot_g(col, 0), get_color_profile_slot_b(col, 0));
    ce[col,1] = "Endless Abyss" // the name of the alternate color.
    ce[col,2] = "The Void goes deeper than Aetherian comprehension" // description to display if "alt color description button" is on. keep it blank if none, and you can remove it if you didn't turn it on.
    col++;
    ce[col,0] = make_color_rgb(get_color_profile_slot_r(col, 0), get_color_profile_slot_g(col, 0), get_color_profile_slot_b(col, 0));
    ce[col,1] = "Forceful Sage" // the name of the alternate color.
    ce[col,2] = "One who brought out a hero's true potential" // description to display if "alt color description button" is on. keep it blank if none, and you can remove it if you didn't turn it on.
    col++;
    ce[col,0] = make_color_rgb(get_color_profile_slot_r(col, 0), get_color_profile_slot_g(col, 0), get_color_profile_slot_b(col, 0));
    ce[col,1] = "Shattered Spiral" // the name of the alternate color.
    ce[col,2] = "One who's psyche was shattered beyond repair" // description to display if "alt color description button" is on. keep it blank if none, and you can remove it if you didn't turn it on.
    col++;
    ce[col,0] = make_color_rgb(get_color_profile_slot_r(col, 0), get_color_profile_slot_g(col, 0), get_color_profile_slot_b(col, 0));
    ce[col,1] = "Ghastly Visage" // the name of the alternate color.
    ce[col,2] = "One who stalks the shadows, always out of sight" // description to display if "alt color description button" is on. keep it blank if none, and you can remove it if you didn't turn it on.
    col++;
    ce[col,0] = make_color_rgb(get_color_profile_slot_r(col, 0), get_color_profile_slot_g(col, 0), get_color_profile_slot_b(col, 0));
    ce[col,1] = "Chaos Pinnacle" // the name of the alternate color.
    ce[col,2] = "One who rends the skies of Pandemonium" // description to display if "alt color description button" is on. keep it blank if none, and you can remove it if you didn't turn it on.
    col++;
    ce[col,0] = make_color_rgb(get_color_profile_slot_r(col, 0), get_color_profile_slot_g(col, 0), get_color_profile_slot_b(col, 0));
    ce[col,1] = "Doom Desire" // the name of the alternate color.
    ce[col,2] = "One who grants wishes through the boundless cosmos" // description to display if "alt color description button" is on. keep it blank if none, and you can remove it if you didn't turn it on.
    col++;
    ce[col,0] = make_color_rgb(get_color_profile_slot_r(col, 0), get_color_profile_slot_g(col, 0), get_color_profile_slot_b(col, 0));
    ce[col,1] = "The Tuner" // the name of the alternate color.
    ce[col,2] = "One who is attuned to the forces of life" // description to display if "alt color description button" is on. keep it blank if none, and you can remove it if you didn't turn it on.
    col++;
    ce[col,0] = make_color_rgb(get_color_profile_slot_r(col, 0), get_color_profile_slot_g(col, 0), get_color_profile_slot_b(col, 0));
    ce[col,1] = "Herald of Dark" // the name of the alternate color.
    ce[col,2] = "One who unwittingly followed a false god to the depths" // description to display if "alt color description button" is on. keep it blank if none, and you can remove it if you didn't turn it on.
    col++;
    ce[col,0] = make_color_rgb(get_color_profile_slot_r(col, 0), get_color_profile_slot_g(col, 0), get_color_profile_slot_b(col, 0));
    ce[col,1] = "Brutish Stream" // the name of the alternate color.
    ce[col,2] = "One who shall never reach the peak of the night" // description to display if "alt color description button" is on. keep it blank if none, and you can remove it if you didn't turn it on.
    col++;
    ce[col,0] = make_color_rgb(get_color_profile_slot_r(col, 0), get_color_profile_slot_g(col, 0), get_color_profile_slot_b(col, 0));
    ce[col,1] = "Artificial Peace" // the name of the alternate color.
    ce[col,2] = "One who searches for a way to reunite the world" // description to display if "alt color description button" is on. keep it blank if none, and you can remove it if you didn't turn it on.
    col++;
    ce[col,0] = make_color_rgb(get_color_profile_slot_r(col, 0), get_color_profile_slot_g(col, 0), get_color_profile_slot_b(col, 0));
    ce[col,1] = "Eternal Spear" // the name of the alternate color.
    ce[col,2] = "One who has reached an everlasting piece of mind" // description to display if "alt color description button" is on. keep it blank if none, and you can remove it if you didn't turn it on.
    col++;
    ce[col,0] = make_color_rgb(get_color_profile_slot_r(col, 0), get_color_profile_slot_g(col, 0), get_color_profile_slot_b(col, 0));
    ce[col,1] = "God of War" // the name of the alternate color.
    ce[col,2] = "One who lashed out against the creator of all things" // description to display if "alt color description button" is on. keep it blank if none, and you can remove it if you didn't turn it on.
    col++;
    ce[col,0] = make_color_rgb(get_color_profile_slot_r(col, 0), get_color_profile_slot_g(col, 0), get_color_profile_slot_b(col, 0));
    ce[col,1] = "Ranked Gold" // the name of the alternate color.
    ce[col,2] = "A peak unattainable to many" // description to display if "alt color description button" is on. keep it blank if none, and you can remove it if you didn't turn it on.
    col++;
    ce[col,0] = make_color_rgb(get_color_profile_slot_r(col, 0), get_color_profile_slot_g(col, 0), get_color_profile_slot_b(col, 0));
    ce[col,1] = "Poison Pacifist" // the name of the alternate color.
    ce[col,2] = "One who has found solice in the polluted waters" // description to display if "alt color description button" is on. keep it blank if none, and you can remove it if you didn't turn it on.
    col++;
    ce[col,0] = make_color_rgb(get_color_profile_slot_r(col, 0), get_color_profile_slot_g(col, 0), get_color_profile_slot_b(col, 0));
    ce[col,1] = "Amethyst Fist" // the name of the alternate color.
    ce[col,2] = "One who seeks strength from the crystals below" // description to display if "alt color description button" is on. keep it blank if none, and you can remove it if you didn't turn it on.
    col++;
    ce[col,0] = make_color_rgb(get_color_profile_slot_r(col, 0), get_color_profile_slot_g(col, 0), get_color_profile_slot_b(col, 0));
    ce[col,1] = "Sky Waltz" // the name of the alternate color.
    ce[col,2] = "One who dances through the clouds in bliss" // description to display if "alt color description button" is on. keep it blank if none, and you can remove it if you didn't turn it on.
    col++;
    ce[col,0] = make_color_rgb(get_color_profile_slot_r(col, 0), get_color_profile_slot_g(col, 0), get_color_profile_slot_b(col, 0));
    ce[col,1] = "Frozen Spring" // the name of the alternate color.
    ce[col,2] = "One who guards the old rejuvenating current" // description to display if "alt color description button" is on. keep it blank if none, and you can remove it if you didn't turn it on.
    col++;
    ce[col,0] = make_color_rgb(get_color_profile_slot_r(col, 0), get_color_profile_slot_g(col, 0), get_color_profile_slot_b(col, 0));
    ce[col,1] = "Stars Hand" // the name of the alternate color.
    ce[col,2] = "One who follows the Amythist Fist's shadow" // description to display if "alt color description button" is on. keep it blank if none, and you can remove it if you didn't turn it on.
    col++;
    ce[col,0] = make_color_rgb(get_color_profile_slot_r(col, 0), get_color_profile_slot_g(col, 0), get_color_profile_slot_b(col, 0));
    ce[col,1] = "Orbital Drifter" // the name of the alternate color.
    ce[col,2] = "One who drifts aimlessly among the stars, lost" // description to display if "alt color description button" is on. keep it blank if none, and you can remove it if you didn't turn it on.
    col++;
    ce[col,0] = make_color_rgb(get_color_profile_slot_r(col, 0), get_color_profile_slot_g(col, 0), get_color_profile_slot_b(col, 0));
    ce[col,1] = "Gorilla Tactics" // the name of the alternate color.
    ce[col,2] = "One who builds many machines of war" // description to display if "alt color description button" is on. keep it blank if none, and you can remove it if you didn't turn it on.
    col++;
    ce[col,0] = make_color_rgb(get_color_profile_slot_r(col, 0), get_color_profile_slot_g(col, 0), get_color_profile_slot_b(col, 0));
    ce[col,1] = "Billiard Brute" // the name of the alternate color.
    ce[col,2] = "One who abandoned his post on a gamble and a prayer" // description to display if "alt color description button" is on. keep it blank if none, and you can remove it if you didn't turn it on.
    col++;
    ce[col,0] = make_color_rgb(get_color_profile_slot_r(col, 0), get_color_profile_slot_g(col, 0), get_color_profile_slot_b(col, 0));
    ce[col,1] = "Poisonous Roar" // the name of the alternate color.
    ce[col,2] = "One who's rage tainted his pacifist ideals" // description to display if "alt color description button" is on. keep it blank if none, and you can remove it if you didn't turn it on.
    col++;
    ce[col,0] = make_color_rgb(get_color_profile_slot_r(col, 0), get_color_profile_slot_g(col, 0), get_color_profile_slot_b(col, 0));
    ce[col,1] = "Mist Dancer" // the name of the alternate color.
    ce[col,2] = "One who has been unseen in the foggy dew" // description to display if "alt color description button" is on. keep it blank if none, and you can remove it if you didn't turn it on.
    col++;
    ce[col,0] = make_color_rgb(get_color_profile_slot_r(col, 0), get_color_profile_slot_g(col, 0), get_color_profile_slot_b(col, 0));
    ce[col,1] = "Sly Swindler" // the name of the alternate color.
    ce[col,2] = "One who's bountiful touch led to boundless fortune" // description to display if "alt color description button" is on. keep it blank if none, and you can remove it if you didn't turn it on.
    col++;
    ce[col,0] = make_color_rgb(get_color_profile_slot_r(col, 0), get_color_profile_slot_g(col, 0), get_color_profile_slot_b(col, 0));
    ce[col,1] = "Wither" // the name of the alternate color.
    ce[col,2] = "Can we trust the sun to rise?" // description to display if "alt color description button" is on. keep it blank if none, and you can remove it if you didn't turn it on.
    col++;
    ce[col,0] = make_color_rgb(get_color_profile_slot_r(col, 0), get_color_profile_slot_g(col, 0), get_color_profile_slot_b(col, 0));
    ce[col,1] = "Tasmanian Glow" // the name of the alternate color.
    ce[col,2] = "The kiss of dawn ends long held dreams" // description to display if "alt color description button" is on. keep it blank if none, and you can remove it if you didn't turn it on.
    col++;
    col_max = col-1;
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