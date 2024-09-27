//css_draw.gml
//this script allows us to draw anything over the CSS - icons, text etc.
//NOTE: CSS is short for Character Select Screen

//thanks to supersonic, we can use colors directly from init_shader.gml
//which is useful for adding special colored outlines to our alts
shader_end();
prepare_shader();

//outline colors - the set_outline function is similar to the outline_color array- the numbers are red, green and blue values
switch (alt_cur){
    case 7: set_outline(15, 56, 15); break; //early access / gameboy
}

shader_start();
//we need to draw over the portrait so the outline colors apply to it too
draw_sprite_ext(get_char_info(player, INFO_CHARSELECT), 0, x+8, y+8, 2, 2, 0, c_white, 1);
sprite_change_offset("idle", 46, 57); //should mimic the load.gml offsets
//animation - character
if (css_anim_time < 140)
{
    draw_sprite_ext(
        preview_idle,
        css_anim_time * preview_anim_speed,
        preview_x + (css_anim_time < 60 ?  + 24 + (css_anim_time / 20) : 16 + (css_anim_time / 5)), //if css_anim time is under 60 it positions the character differently
        preview_y + 128,
        preview_scale, //so it is affected by small_sprites aswell
        preview_scale,
        0,
        c_white,
        css_anim_time > 10 ? (css_anim_time * -0.01 + 1.25) + 0.2 : css_anim_time * 0.1 //if css_anim_time is over 10 the sprite's transperency acts differently
    );
}

shader_end();
prepare_shader(); //resets shader
//everything below this point shouldn't use shaders (which means it won't recolor with alts)


//alt icons
//alts 13(abyss) to 18(gold rank) reffer to the rivals time based/unlockable alts


//alt boxes
draw_set_halign(fa_left);
var thin = alt_total > 16; //if we have more than 16 alts, the box sizes change accordingly

rectDraw2(x+78, y+9, 132, 6, c_black);
for (i = 0; i < alt_total; i++)
{
	var draw_color = (i == alt_cur) ? c_white : c_gray * 0.5;
	var draw_x = x + 78 + (thin ? 4 : 8) * i;
	rectDraw2(draw_x, y + 9, thin ? 1 : 5, 4, draw_color);
}

var txt = "#" + string(alt_cur);
rectDraw2(x + 76, y + 15, 42, 20, c_black);

textDraw2(x + 82, y + 19, "fName", c_white, 20, 1000, fa_left, 1, false, 1, txt, false);


//animation - alt name text
//this is not in the same place as the character sprites because it shouldn't be affected by the shader (unless you want it to be)
if (css_anim_time < 140)
{
    textDraw2(
        floor(x) + (css_anim_time < 10 ? 10 + floor(css_anim_time) : 20 + floor(css_anim_time / 10)), //if css_anim_time is under 10 the positioning work differently
        floor(y) + 43,
        "fName",
        c_white,
        0,
        1000,
        fa_left,
        1,
        true,
        css_anim_time < 10 ? css_anim_time * 0.1 : css_anim_time*-0.05+7, //if css_anim_time is under 10 the alpha works differently
        string(alt_name[alt_cur]),
        false
    );
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
    altsel = 0; // change the alt select sound here. if you don't want to change the sound, put 0 here.
    color_desc_activate = true; // optional "alt color description button". set to "true" to turn it on.
    
    col_max = 31; // number of alternate color palettes. 0 is the default color, count it accordingly.
    
    //first array index is for alternate color. second array index is for distinguishing the information in it.
    ce[0,0] = make_color_rgb(71, 71, 71) // "color preview square" color. can be any color!
    ce[0,1] = "Monroe" //
    ce[0,2] = "Yes, that is his real name." 
    ce[1,0] = make_color_rgb(49, 89, 211)
    ce[1,1] = "Blue"
    ce[1,2] = "ITS BLUE DABBA DEE DABBA DIE"
    ce[2,0] = make_color_rgb(194, 15, 36)
    ce[2,1] = "Red"
    ce[2,2] = "aw look he's embarrassed"
    ce[3,0] = make_color_rgb(131, 218, 122)
    ce[3,1] = "Green"
    ce[3,2] = "stink colored"
    ce[4,0] = make_color_rgb(176, 176, 176)
    ce[4,1] = "Monochrome"
    ce[4,2] = "is this a skeleton"
    ce[5,0] = make_color_rgb(229, 104, 232)
    ce[5,1] = "Pride"
    ce[5,2] = "Trans rights are human rights!"
    ce[6,0] = make_color_rgb(79, 61, 94)
    ce[6,1] = "Abyss"
    ce[6,2] = "Palette based on the Abyss creatures."
    ce[7,0] = make_color_rgb(83, 122, 62)
    ce[7,1] = "Early Access"
    ce[7,2] = "Based on the classic Game Boy games color scheme."
    ce[8,0] = make_color_rgb(255, 255, 255)
    ce[8,1] = "Ghostly"
    ce[8,2] = "Never able to move on..."
    ce[9,0] = make_color_rgb(43, 34, 34)
    ce[9,1] = "STINKER.EXE"
    ce[9,2] = "I SEE YOU"
    ce[10,0] = make_color_rgb(78, 196, 154)
    ce[10,1] = "Keep Dancing"
    ce[10,2] = "Random Slep alt, the colors reminded me of Just Dance."
    ce[11,0] = make_color_rgb(180, 198, 211)
    ce[11,1] = "Stinker?"
    ce[11,2] = "An invert of Stinker's default palette."
    ce[12,0] = make_color_rgb(99, 80, 72)
    ce[12,1] = "Otherworld"
    ce[12,2] = "???"
    ce[13,0] = make_color_rgb(207, 44, 44)
    ce[13,1] = "Red Treat"
    ce[13,2] = "The flavor is unknown."
    ce[14,0] = make_color_rgb(255, 255, 2)
    ce[14,1] = "Stinger"
    ce[14,2] = "He stings with his butt."
    ce[15,0] = make_color_rgb(139, 82, 151)
    ce[15,1] = "Takky"
    ce[15,2] = "Alt based on the OC skunk, Solo."
    ce[16,0] = make_color_rgb(233, 80, 126)
    ce[16,1] = "Time and Rhythm"
    ce[16,2] = "Palette based on the WS/Time RPG character Liz."
    ce[17,0] = make_color_rgb(137, 40, 166)
    ce[17,1] = "Memory Keeper"
    ce[17,2] = "Palette based on the missing but not forgotten Draziw."
    ce[18,0] = make_color_rgb(41, 108, 153)
    ce[18,1] = "Shoe Shiner"
    ce[18,2] = "Palette based on Kicks from Animal Crossing."
    ce[19,0] = make_color_rgb(170, 149, 58)
    ce[19,1] = "Exiled Flame"
    ce[19,2] = "Palette based on Rivals very own Forsburn."
    ce[20,0] = make_color_rgb(135, 74, 158)
    ce[20,1] = "Diamond and Pearl"
    ce[20,2] = "Palette based on the 4 Gen Pokémon Skuntank."
    ce[21,0] = make_color_rgb(71, 71, 71)
    ce[21,1] = "Illusion"
    ce[21,2] = "Palette based on the 5 Gen Pokémon Zoroark."
    ce[22,0] = make_color_rgb(84, 116, 129)
    ce[22,1] = "Rough and Tumble"
    ce[22,2] = "Alt based on Rough from the Sonic IDW comics."
    ce[23,0] = make_color_rgb(224, 107, 193)
    ce[23,1] = "Acid Doggo"
    ce[23,2] = "Alt based on Acrid from Risk of Rain."
    ce[24,0] = make_color_rgb(73, 146, 194)
    ce[24,1] = "Night Warrior"
    ce[24,2] = "Alt based of Jon Talbain from Darkstalkers."
    ce[25,0] = make_color_rgb(71, 71, 71)
    ce[25,1] = "Stardust"
    ce[25,2] = "Alt based of Iggy from Jojo Bizarre Adventures"
    ce[26,0] = make_color_rgb(87, 42, 194)
    ce[26,1] = "Prehistoric Stink"
    ce[26,2] = "Alt based on Kunka from the Gon series."
    ce[27,0] = make_color_rgb(90, 90, 105)
    ce[27,1] = "Acrid"
    ce[27,2] = "Palette based on Acrid by Azelinuu."
    ce[28,0] = make_color_rgb(255, 149, 74)
    ce[28,1] = "Camilla"
    ce[28,2] = "OC Palette (MatchesYashi)"
    ce[29,0] = make_color_rgb(130, 203, 255)
    ce[29,1] = "Sweet"
    ce[29,2] = "OC Palette (MatchesYashi)"
    ce[30,0] = make_color_rgb(191, 191, 191)
    ce[30,1] = "Rat Thief"
    ce[30,2] = "Alt based on Daroach from the Kirby series."
    ce[31,0] = make_color_rgb(122, 90, 78)
    ce[31,1] = "The Poison Wind"
    ce[31,2] = "Alt based on Knell by GrenadesInSpades."
    // you can add more, by copypasting and changing the first index of the array accordingly.
    // ! changing part end.
    // you can ignore the mess below...
}

 shader_end();
 
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
    
//textDraw(temp_x + 2 + ((player==0)?32:0), temp_y + 130, "fName", c_white, 0, 1000, 1, true, tw_g, ce[ue,1]);
    
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
    textDraw(x+14, (y+100)-round(dial_ease/30), "fName", c_white, 18, 200, 1, false, dial_ease/100, "Color "+string(ue)+": "+ce[ue,1]);
    textDraw(x+14, (y+120)-round(dial_ease/30), "fName", c_white, 18, 200, 1, false, dial_ease/100, ce[ue,2]);
}
 
//ae code end

jestermode = floor(get_synced_var(player) / 10);
shadelessmode = get_synced_var(player) % 10;

//draw_sprite_ext(sprite_get("ShadelessModeCSButton"), 0, x + 170, y + 90, 1, 1, 0, !shadelessmode? c_gray:c_white, 1); 
 
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

//functions by muno
#define rectDraw2(x1, y1, width, height, color)
{
    draw_rectangle_color(x1, y1, x1 + width, y1 + height, color, color, color, color, false);
}
#define textDraw2(x1, y1, font, color, lineb, linew, align, scale, outline, alpha, text, array_bool)
{
    draw_set_font(asset_get(font));
    draw_set_halign(align);

    if outline {
        for (i = -1; i < 2; i++) {
            for (j = -1; j < 2; j++) {
                draw_text_ext_transformed_color(x1 + i * 2, y1 + j * 2, text, lineb, linew, scale, scale, 0, c_black, c_black, c_black, c_black, alpha);
            }
        }
    }

    if alpha draw_text_ext_transformed_color(x1, y1, text, lineb, linew, scale, scale, 0, color, color, color, color, alpha);

    if array_bool return [string_width_ext(text, lineb, linew), string_height_ext(text, lineb, linew)];
    else return;
}


