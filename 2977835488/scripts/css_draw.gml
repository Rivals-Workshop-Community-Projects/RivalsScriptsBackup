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
switch (alt_cur)
{
    case 29: set_outline(234, 220, 255); break; //FAR SHORE
    case 30: set_outline(255, 0, 0); break; //IT STEALS
    default: set_outline(0, 0, 0); break;
}

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
    ce[col,0] = make_color_rgb(get_color_profile_slot_r(col, 0), get_color_profile_slot_g(col, 0), get_color_profile_slot_b(col, 0));
    ce[col,1] = "Horror" // the name of the alternate color.
    ce[col,2] = "If it spots you... it's already too late..." // description to display if "alt color description button" is on. keep it blank if none, and you can remove it if you didn't turn it on.
    col++;
    ce[col,0] = make_color_rgb(get_color_profile_slot_r(col, 0), get_color_profile_slot_g(col, 0), get_color_profile_slot_b(col, 0));
    ce[col,1] = "Haze" // the name of the alternate color.
    ce[col,2] = "The earth shakes in anticipation... let it burn..." // description to display if "alt color description button" is on. keep it blank if none, and you can remove it if you didn't turn it on.
    col++;
    ce[col,0] = make_color_rgb(get_color_profile_slot_r(col, 0), get_color_profile_slot_g(col, 0), get_color_profile_slot_b(col, 0));
    ce[col,1] = "Depths" // the name of the alternate color.
    ce[col,2] = "Below the crashing waves... what horrors wait..." // description to display if "alt color description button" is on. keep it blank if none, and you can remove it if you didn't turn it on.
    col++;
    ce[col,0] = make_color_rgb(get_color_profile_slot_r(col, 0), get_color_profile_slot_g(col, 0), get_color_profile_slot_b(col, 0));
    ce[col,1] = "Growth" // the name of the alternate color.
    ce[col,2] = "Time shall pass... and nature shall consume..." // description to display if "alt color description button" is on. keep it blank if none, and you can remove it if you didn't turn it on.
    col++;
    ce[col,0] = make_color_rgb(get_color_profile_slot_r(col, 0), get_color_profile_slot_g(col, 0), get_color_profile_slot_b(col, 0));
    ce[col,1] = "Frost" // the name of the alternate color.
    ce[col,2] = "The snow blinds all... to the monsters hiding within..." // description to display if "alt color description button" is on. keep it blank if none, and you can remove it if you didn't turn it on.
    col++;
    ce[col,0] = make_color_rgb(get_color_profile_slot_r(col, 0), get_color_profile_slot_g(col, 0), get_color_profile_slot_b(col, 0));
    ce[col,1] = "Ominous" // the name of the alternate color.
    ce[col,2] = "Countless rituals beckon... to what, they yet know..." // description to display if "alt color description button" is on. keep it blank if none, and you can remove it if you didn't turn it on.
    col++;
    ce[col,0] = make_color_rgb(get_color_profile_slot_r(col, 0), get_color_profile_slot_g(col, 0), get_color_profile_slot_b(col, 0));
    ce[col,1] = "Endless" // the name of the alternate color.
    ce[col,2] = "The unfathomable void... let all fall deep below..." // description to display if "alt color description button" is on. keep it blank if none, and you can remove it if you didn't turn it on.
    col++;
    ce[col,0] = make_color_rgb(get_color_profile_slot_r(col, 0), get_color_profile_slot_g(col, 0), get_color_profile_slot_b(col, 0));
    ce[col,1] = "Swarm" // the name of the alternate color.
    ce[col,2] = "A mind lost in creation... left an infested puddle..." // description to display if "alt color description button" is on. keep it blank if none, and you can remove it if you didn't turn it on.
    col++;
    ce[col,0] = make_color_rgb(get_color_profile_slot_r(col, 0), get_color_profile_slot_g(col, 0), get_color_profile_slot_b(col, 0));
    ce[col,1] = "Echo" // the name of the alternate color.
    ce[col,2] = "One who mimics all... yet to find its true purpose..." // description to display if "alt color description button" is on. keep it blank if none, and you can remove it if you didn't turn it on.
    col++;
    ce[col,0] = make_color_rgb(get_color_profile_slot_r(col, 0), get_color_profile_slot_g(col, 0), get_color_profile_slot_b(col, 0));
    ce[col,1] = "Apostle" // the name of the alternate color.
    ce[col,2] = "Countless beasts writhe... leaving the mind to rot..." // description to display if "alt color description button" is on. keep it blank if none, and you can remove it if you didn't turn it on.
    col++;
    ce[col,0] = make_color_rgb(get_color_profile_slot_r(col, 0), get_color_profile_slot_g(col, 0), get_color_profile_slot_b(col, 0));
    ce[col,1] = "Unseen" // the name of the alternate color.
    ce[col,2] = "One taken by the night... left only to hunger..." // description to display if "alt color description button" is on. keep it blank if none, and you can remove it if you didn't turn it on.
    col++;
    ce[col,0] = make_color_rgb(get_color_profile_slot_r(col, 0), get_color_profile_slot_g(col, 0), get_color_profile_slot_b(col, 0));
    ce[col,1] = "Corruption" // the name of the alternate color.
    ce[col,2] = "A rage enabled by ones host... destruction awaits..." // description to display if "alt color description button" is on. keep it blank if none, and you can remove it if you didn't turn it on.
    col++;
    ce[col,0] = make_color_rgb(get_color_profile_slot_r(col, 0), get_color_profile_slot_g(col, 0), get_color_profile_slot_b(col, 0));
    ce[col,1] = "Fear" // the name of the alternate color.
    ce[col,2] = "The crows gather... an old monster takes shape..." // description to display if "alt color description button" is on. keep it blank if none, and you can remove it if you didn't turn it on.
    col++;
    ce[col,0] = make_color_rgb(get_color_profile_slot_r(col, 0), get_color_profile_slot_g(col, 0), get_color_profile_slot_b(col, 0));
    ce[col,1] = "Lost" // the name of the alternate color.
    ce[col,2] = "Disowned by one it loved... now it hunts anew..." // description to display if "alt color description button" is on. keep it blank if none, and you can remove it if you didn't turn it on.
    col++;
    ce[col,0] = make_color_rgb(get_color_profile_slot_r(col, 0), get_color_profile_slot_g(col, 0), get_color_profile_slot_b(col, 0));
    ce[col,1] = "Matter" // the name of the alternate color.
    ce[col,2] = "There is no free will... there is only Zero..." // description to display if "alt color description button" is on. keep it blank if none, and you can remove it if you didn't turn it on.
    col++;
    ce[col,0] = make_color_rgb(get_color_profile_slot_r(col, 0), get_color_profile_slot_g(col, 0), get_color_profile_slot_b(col, 0));
    ce[col,1] = "Miserable" // the name of the alternate color.
    ce[col,2] = "One so hopeful, so bright... left as a sad heap..." // description to display if "alt color description button" is on. keep it blank if none, and you can remove it if you didn't turn it on.
    col++;
    ce[col,0] = make_color_rgb(get_color_profile_slot_r(col, 0), get_color_profile_slot_g(col, 0), get_color_profile_slot_b(col, 0));
    ce[col,1] = "Torrent" // the name of the alternate color.
    ce[col,2] = "A ghastly visage... guiding people to the depths..." // description to display if "alt color description button" is on. keep it blank if none, and you can remove it if you didn't turn it on.
    col++;
    ce[col,0] = make_color_rgb(get_color_profile_slot_r(col, 0), get_color_profile_slot_g(col, 0), get_color_profile_slot_b(col, 0));
    ce[col,1] = "Sparkling" // the name of the alternate color.
    ce[col,2] = "Rise, oh lord of dispair... crush the stars..." //description to display if "alt color description button" is on. keep it blank if none, and you can remove it if you didn't turn it on.
    col++;
    ce[col,0] = make_color_rgb(get_color_profile_slot_r(col, 0), get_color_profile_slot_g(col, 0), get_color_profile_slot_b(col, 0));
    ce[col,1] = "Foolish" // the name of the alternate color.
    ce[col,2] = "Naive newcomer... how you will hurt those you cherish..." // description to display if "alt color description button" is on. keep it blank if none, and you can remove it if you didn't turn it on.
    col++;
    ce[col,0] = make_color_rgb(get_color_profile_slot_r(col, 0), get_color_profile_slot_g(col, 0), get_color_profile_slot_b(col, 0));
    ce[col,1] = "Hunger" // the name of the alternate color.
    ce[col,2] = "Childlike innocence... begets a primal urge..." // description to display if "alt color description button" is on. keep it blank if none, and you can remove it if you didn't turn it on.
    col++;
    ce[col,0] = make_color_rgb(get_color_profile_slot_r(col, 0), get_color_profile_slot_g(col, 0), get_color_profile_slot_b(col, 0));
    ce[col,1] = "Blade" // the name of the alternate color.
    ce[col,2] = "A sharp edge grown ever long... born of betrayal..." // description to display if "alt color description button" is on. keep it blank if none, and you can remove it if you didn't turn it on.
    col++;
    ce[col,0] = make_color_rgb(get_color_profile_slot_r(col, 0), get_color_profile_slot_g(col, 0), get_color_profile_slot_b(col, 0));
    ce[col,1] = "Pulse" // the name of the alternate color.
    ce[col,2] = "An artificial beat... left with a hollow chest..." // description to display if "alt color description button" is on. keep it blank if none, and you can remove it if you didn't turn it on.
    col++;
    ce[col,0] = make_color_rgb(get_color_profile_slot_r(col, 0), get_color_profile_slot_g(col, 0), get_color_profile_slot_b(col, 0));
    ce[col,1] = "Prejudice" // the name of the alternate color.
    ce[col,2] = "Travesties are built... on only the worst ideas..." // description to display if "alt color description button" is on. keep it blank if none, and you can remove it if you didn't turn it on.
    col++;
    ce[col,0] = make_color_rgb(get_color_profile_slot_r(col, 0), get_color_profile_slot_g(col, 0), get_color_profile_slot_b(col, 0));
    ce[col,1] = "Devoted" // the name of the alternate color.
    ce[col,2] = "Faithful servants... only fit to be consumed..." // description to display if "alt color description button" is on. keep it blank if none, and you can remove it if you didn't turn it on.
    col++;
    ce[col,0] = make_color_rgb(get_color_profile_slot_r(col, 0), get_color_profile_slot_g(col, 0), get_color_profile_slot_b(col, 0));
    ce[col,1] = "Fated" // the name of the alternate color.
    ce[col,2] = "One who stares to the stars... ignorant to what's there..." // description to display if "alt color description button" is on. keep it blank if none, and you can remove it if you didn't turn it on.
    col++;
    ce[col,0] = make_color_rgb(get_color_profile_slot_r(col, 0), get_color_profile_slot_g(col, 0), get_color_profile_slot_b(col, 0));
    ce[col,1] = "Static" // the name of the alternate color.
    ce[col,2] = "A ghastly wail rings... she is here..." // description to display if "alt color description button" is on. keep it blank if none, and you can remove it if you didn't turn it on.
    col++;
    ce[col,0] = make_color_rgb(get_color_profile_slot_r(col, 0), get_color_profile_slot_g(col, 0), get_color_profile_slot_b(col, 0));
    ce[col,1] = "Ravenous" // the name of the alternate color.
    ce[col,2] = "A hungry spirit... born from countless lives lost..." // description to display if "alt color description button" is on. keep it blank if none, and you can remove it if you didn't turn it on.
    col++;
    ce[col,0] = make_color_rgb(get_color_profile_slot_r(col, 0), get_color_profile_slot_g(col, 0), get_color_profile_slot_b(col, 0));
    ce[col,1] = "Hypogeal" // the name of the alternate color.
    ce[col,2] = "There's no escape... from the ceasless rattling..." // description to display if "alt color description button" is on. keep it blank if none, and you can remove it if you didn't turn it on.
    col++;
    ce[col,0] = make_color_rgb(get_color_profile_slot_r(col, 0), get_color_profile_slot_g(col, 0), get_color_profile_slot_b(col, 0));
    ce[col,1] = "Night" // the name of the alternate color.
    ce[col,2] = "The sky and the cosmos are one... wish upon it..." // description to display if "alt color description button" is on. keep it blank if none, and you can remove it if you didn't turn it on.
    col++;
    ce[col,0] = make_color_rgb(get_color_profile_slot_r(col, 0), get_color_profile_slot_g(col, 0), get_color_profile_slot_b(col, 0));
    ce[col,1] = "Obelisk" // the name of the alternate color.
    ce[col,2] = "It is the fabled prize... the power to defy death..." // description to display if "alt color description button" is on. keep it blank if none, and you can remove it if you didn't turn it on.
    col++;
    ce[col,0] = make_color_rgb(get_color_profile_slot_r(col, 0), get_color_profile_slot_g(col, 0), get_color_profile_slot_b(col, 0));
    ce[col,1] = "IT STEALS" // the name of the alternate color.
    ce[col,2] = "You can run, you can hide... but so can it..." // description to display if "alt color description button" is on. keep it blank if none, and you can remove it if you didn't turn it on.
    col++;
    ce[col,0] = make_color_rgb(get_color_profile_slot_r(col, 0), get_color_profile_slot_g(col, 0), get_color_profile_slot_b(col, 0));
    ce[col,1] = "Gleam" // the name of the alternate color.
    ce[col,2] = "I am... awake..." // description to display if "alt color description button" is on. keep it blank if none, and you can remove it if you didn't turn it on.
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