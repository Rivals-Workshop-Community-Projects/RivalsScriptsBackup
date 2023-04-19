if !("hue" in self) hue = 0
if get_player_color(player) = 18 {
	hue+=1 
	if hue>255 hue-=255;
	//make hue shift every step + loop around

	color_rgb=make_color_rgb(23, 57, 230);
	//make a gamemaker color variable using kirby's default color (body)
	hue2=(color_get_hue(color_rgb)+hue) mod 255;
	//shift that colour by Hue, make sure it also loops
	color_hsv=make_color_hsv(hue2,color_get_saturation(color_rgb),color_get_value(color_rgb)); 
	//make a gamemaker color variable using the new hue
	set_color_profile_slot(18,0,color_get_red(color_hsv),color_get_green(color_hsv),color_get_blue(color_hsv));
	//set the new color using rgb values from the gamemaker color

    	color_rgb=make_color_rgb(0, 128, 255);
	//make a gamemaker color variable using kirby's default color (body)
	hue2=(color_get_hue(color_rgb)+hue) mod 255;
	//shift that colour by Hue, make sure it also loops
	color_hsv=make_color_hsv(hue2,color_get_saturation(color_rgb),color_get_value(color_rgb)); 
	//make a gamemaker color variable using the new hue
	set_color_profile_slot(18,1,color_get_red(color_hsv),color_get_green(color_hsv),color_get_blue(color_hsv));
	//set the new color using rgb values from the gamemaker color

        	color_rgb=make_color_rgb(0, 0, 204);
	//make a gamemaker color variable using kirby's default color (body)
	hue2=(color_get_hue(color_rgb)+hue) mod 255;
	//shift that colour by Hue, make sure it also loops
	color_hsv=make_color_hsv(hue2,color_get_saturation(color_rgb),color_get_value(color_rgb)); 
	//make a gamemaker color variable using the new hue
	set_color_profile_slot(18,4,color_get_red(color_hsv),color_get_green(color_hsv),color_get_blue(color_hsv));
	//set the new color using rgb values from the gamemaker color
}
init_shader();

if "is_css" not in self is_css = true;
var temp_x = floor(x+10);
var temp_y = floor(y+10);
var alt = get_player_color(player);
var charuuid = string(sprite_get("idle"));

if ("css_char" not in self || css_char != charuuid) {
drawtime = 0
drawing = 1
    css_char = charuuid;

    introtime = 0
    drawtime2 = -1
}
    
if ("prev_alt" in self && prev_alt != alt){
     drawing = random_func(4, 4, true)
     drawtime = 0
     introanim = random_func(1,4,true)
}

drawtime += 1 

if drawtime2 >= 0 {
    drawtime2 ++
}
introtime ++

if drawtime == 1 && alt == 29{
    sound_play(sound_get("drip"));    
}

prev_alt = alt;

draw_sprite_ext(sprite_get("CSS"), min(6, introtime/5),temp_x-2,temp_y-2,2,2,0,-1,1);

if drawing > 3 {
    drawing = 0
}
var alt = get_player_color(player);

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
var qe_b = "Blaze";
// ! you can now scroll down until you reach "the primary part you should change."
 
var tmp_cur = 0;
var tmp_i = [0, 0, 0, 0, 0];
var tmp_x = [0, 0, 0, 0, 0];
var tmp_y = [0, 0, 0, 0, 0];
with(asset_get("cs_playercursor_obj")){
    tmp_cur = (!tmp_i[0])?0:(!tmp_i[1])?1:(!tmp_i[2])?2:(!tmp_i[3])?3:4;
    tmp_i[tmp_cur] = 1;
    tmp_x[tmp_cur] = get_instance_x( self );
    tmp_y[tmp_cur] = get_instance_y( self );
}
var tmp_pt = abs(player-5)-1;
var temp_x = x + 8;
var temp_y = y + 9;
var tmp_xl = 9;
var tmp_bw = 32;
var tmp_yl = 151;
var tmp_bh = 20;
var tmp_xl1 = x+tmp_xl;
var tmp_xl2 = tmp_xl1+tmp_bw;
var tmp_yl1 = y+tmp_yl;
var tmp_yl2 = tmp_yl1+tmp_bh;

var alt = get_player_color(player);

draw_set_halign(fa_left);
 
var ye = false;
if (variable_instance_exists(id,"qe")){
    if (qe != qe_b){
    ye = true;
    }
}
 
if (!variable_instance_exists(id,"ae") || ye == true){
    qe = qe_b;
    ae = "ae";
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
    altsel = asset_get("sfx_ell_small_missile_fire"); // change the alt select sound here. if you don't want to change the sound, put 0 here.
    color_desc_activate = true; // optional "alt color description button". set to "true" to turn it on.
    
    col_max = 27; // number of alternate color palettes. 0 is the default color, count it accordingly.
    
     //first array index is for alternate color. second array index is for distinguishing the information in it.
    ce[0,0] = make_color_rgb(23, 57, 230) // "color preview square" color. can be any color!
    ce[0,1] = "Lapis Blue" // the name of the alternate color.
    ce[0,2] = "The classic colors" // description to display if "alt color description button" is on. keep it blank if none, and you can remove it if you didn't turn it on.
    ce[1,0] = make_color_rgb(255, 0, 0)
    ce[1,1] = "Ruby Red"
    ce[1,2] = "Full of fiery passion!"
    ce[2,0] = make_color_rgb(0, 204, 0)
    ce[2,1] = "Emerald Green"
    ce[2,2] = "Go touch grass"
    ce[3,0] = make_color_rgb(255, 255, 0)
    ce[3,1] = "Topaz Yellow"
    ce[3,2] = "Topaz referncing his own gem SMH"
    ce[4,0] = make_color_rgb(158, 64, 255)
    ce[4,1] = "Amethyst Purple"
    ce[4,2] = "I LOVE LEAN"
    ce[5,0] = make_color_rgb(48, 98, 48)
    ce[5,1] = "Early Access"
    ce[5,2] = "Game Boy"
    ce[6,0] = make_color_rgb(173, 159, 194)
    ce[6,1] = "Abyss"
    ce[6,2] = "The Faker"
    ce[7,0] = make_color_rgb(0, 158, 209)
    ce[7,1] = "Hero of the Wild"
    ce[7,2] = "Your weapon broke!"
    ce[8,0] = make_color_rgb(64, 63, 62)
    ce[8,1] = "Hero of Hyrule"
    ce[8,2] = "HYAHHH!"
    ce[9,0] = make_color_rgb(224, 71, 17)
    ce[9,1] = "Rubies"
    ce[9,2] = "Lamp oil, rope, bombs?"
    ce[10,0] = make_color_rgb(58, 40, 101)
    ce[10,1] = "Limit Breaker"
    ce[10,2] = "Not interested"
    ce[11,0] = make_color_rgb(63, 84, 140)
    ce[11,1] = "Salvager"
    ce[11,2] = "Driver of the Aegis"
    ce[12,0] = make_color_rgb(241, 246, 254)
    ce[12,1] = "The Aegis"
    ce[12,2] = "Pervert!"
    ce[13,0] = make_color_rgb(187, 42, 65)
    ce[13,1] = "Other Aegis"
    ce[13,2] = "Right here!"
    ce[14,0] = make_color_rgb(191, 22, 27)
    ce[14,1] = "Phantom Thief"
    ce[14,2] = "Ravage them!"
    ce[15,0] = make_color_rgb(0, 195, 227)
    ce[15,1] = "Classic"
    ce[15,2] = "The old design"
    ce[16,0] = make_color_rgb(176, 108, 175)
    ce[16,1] = "Grandmaster"
    ce[16,2] = "The Tactician Magician"
    ce[17,0] = make_color_rgb(182, 53, 53)
    ce[17,1] = "Sword + Magic"
    ce[17,2] = "Another FF alt?"
    ce[18,0] = make_color_rgb(255, 0, 0)
    ce[18,1] = "Prismatic"
    ce[18,2] = "Battle through the rainbow"
    ce[19,0] = make_color_rgb(232, 77, 85)
    ce[19,1] = "Trainer";
    ce[19,2] = "You are challenged!"
    ce[20,0] = make_color_rgb(85, 144, 51)
    ce[20,1] = "The Luminary"
    ce[20,2] = "Erdrick"
    ce[21,0] = make_color_rgb(232, 231, 223)
    ce[21,1] = "Traveler"
    ce[21,2] = "Looking for his long lost twin..."
    ce[22,0] = make_color_rgb(232, 231, 223)
    ce[22,1] = "Not Omori"
    ce[22,2] = "It's going to be okay."   
    ce[23,0] = make_color_rgb(19, 167, 167)
    ce[23,1] = "Mining"
    ce[23,2] = "Diamonds!"   
    ce[24,0] = make_color_rgb(78, 123, 68)
    ce[24,1] = "Crafting"
    ce[24,2] = "Emeralds!"
    ce[24,0] = make_color_rgb(78, 123, 68)
    ce[24,1] = "Crafting"
    ce[24,2] = "Emeralds!"
    ce[25,0] = make_color_rgb(70, 119, 54)
    ce[25,1] = "Zombie"
    ce[25,2] = "bruuuuhhh..."
    ce[26,0] = make_color_rgb(206, 151, 226)
    ce[26,1] = "Ender"
    ce[26,2] = "Look for the eye."
    ce[27,0] = make_color_rgb(179, 82, 183)
    ce[27,1] = "Infamous"
    ce[27,2] = "Before the Definitive Edition."
    ce[28,0] = make_color_rgb(0, 30, 225)
    ce[28,1] = "Rune Guy"
    ce[28,2] = "I am Epic."
    ce[29,0] = make_color_rgb(236, 36, 20)
    ce[29,1] = "Drip"
    ce[29,2] = "Supreme."
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