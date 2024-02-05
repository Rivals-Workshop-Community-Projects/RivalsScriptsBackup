//outline for css junk

switch (get_player_color( player ) ){
    case 9:
        draw_sprite_ext(sprite_get("css_galaxy"),1,x+8,y+8,2,2,0,-1,1);
    break;
    case 10:
        draw_sprite_ext(sprite_get("mari_outline"),1,x+8,y+8,2,2,0,-1,1);
    break;
    case 20:
        draw_sprite_ext(sprite_get("ghost_outline"),1,x+8,y+8,2,2,0,-1,1);
    break;
    case 23:
        draw_sprite_ext(sprite_get("genesis_charselect"),1,x+8,y+8,2,2,0,-1,1);
    break;
    case 25:
        draw_sprite_ext(sprite_get("css_hopes"),1,x+8,y+8,2,2,0,-1,1);
    break;
}

//special icons
switch (get_player_color(player)){
    case 19:
        draw_sprite(sprite_get("css_icon_infamous"),0,x+176,y+110);
        break;
    case 18:
	    draw_sprite(sprite_get("css_icon_ranked"),0,x+176,y+110);
	break;
    case 22:
	    draw_sprite(sprite_get("css_icon_riptide"),0,x+176,y+110);
	break;
    case 23:
	    draw_sprite(sprite_get("css_icon_genny"),0,x+176,y+110);
	break;
	case 25:
	    draw_sprite(sprite_get("css_icon_hopes"),0,x+176,y+110);
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
var qe_b = "mal"
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
    
    col_max = 24; // number of alternate color palettes. 0 is the default color, count it accordingly.
    
    //first array index is for alternate color. second array index is for distinguishing the information in it.
    ce[0,0] = make_color_rgb(225, 92, 198) // "color preview square" color. can be any color!
    ce[0,1] = "Hexchained" // the name of the alternate color.
    ce[0,2] = "The default color." // description to display if "alt color description button" is on. keep it blank if none, and you can remove it if you didn't turn it on.
    ce[1,0] = make_color_rgb(129, 168, 255)
    ce[1,1] = "Spin"
    ce[1,2] = "Based on Ward, another OC of Reiga."
    ce[2,0] = make_color_rgb(230, 135, 69)
    ce[2,1] = "Vampirista"
    ce[2,2] = "Based on Viv, another OC of Reiga."
    ce[3,0] = make_color_rgb(210, 77, 60)
    ce[3,1] = "Marauder"
    ce[3,2] = "Based on Morgan, another OC of Reiga."
    ce[4,0] = make_color_rgb(115, 188, 137)
    ce[4,1] = "Mental Mint"
    ce[4,2] = "Based on Mal's aunt, Ms. Seong, another OC of Reiga."
    ce[5,0] = make_color_rgb(41, 44, 51)
    ce[5,1] = "Chromatic"
    ce[5,2] = "An original color. Black and white, so be it."
    ce[6,0] = make_color_rgb(50, 77, 187)
    ce[6,1] = "Pretty Pink"
    ce[6,2] = "An original color. It is pretty pink."
    ce[7,0] = make_color_rgb(128, 0, 128)
    ce[7,1] = "Ace in the Hole"
    ce[7,2] = "Ace Rights!"  
    ce[8,0] = make_color_rgb(245, 205, 61)
    ce[8,1] = "Black Matter"
    ce[8,2] = "Black Lives Matter!"
    ce[9,0] = make_color_rgb(236, 89, 68)
    ce[9,1] = "Celestial"
    ce[9,2] = "This is it, Madeline. Based on Madeline from Celeste. A 'deluxe' alt."
    ce[10,0] = make_color_rgb(83, 37, 230)
    ce[10,1] = "By Your Side"
    ce[10,2] = "All it costs is your love! Based on MARI from OMORI. A 'deluxe' alt."    
    ce[11,0] = make_color_rgb(94, 94, 94)
    ce[11,1] = "Subway"
    ce[11,2] = "Try not to become a ghost yourself! Based on Cassandra from Subway Midnight."
    ce[12,0] = make_color_rgb(226, 250, 254)
    ce[12,1] = "Fragile"
    ce[12,2] = "80% of her diet is headache medicine. Based on Mera from Epithet Erased."
    ce[13,0] = make_color_rgb(108, 239, 179)
    ce[13,1] = "Go Fish"
    ce[13,2] = "Based on Macka, original character by Sunfished."
    ce[14,0] = make_color_rgb(108, 96, 208)
    ce[14,1] = "Dreamscaper"
    ce[14,2] = "Based on Remie, original character by Clay."
    ce[15,0] = make_color_rgb(153, 177, 255)
    ce[15,1] = "Mechanical Magic"
    ce[15,2] = "Based on Alexis, original character by JH."  
    ce[16,0] = make_color_rgb(71, 185, 89)
    ce[16,1] = "End of Love"
    ce[16,2] = "Based on Heartbrake, original character by Trail Mix."
    ce[17,0] = make_color_rgb(255, 217, 176)
    ce[17,1] = "Step"
    ce[17,2] = "Based on Natsumi from the Natsumi STEP! flash animation."    
    ce[18,0] = make_color_rgb(252, 201, 0)
    ce[18,1] = "Gilded Ranking"
    ce[18,2] = "Ranked Gold alt. Includes shine."
    ce[19,0] = make_color_rgb(0, 255, 168)
    ce[19,1] = "Infamous"
    ce[19,2] = "Among the paint and the fumes. The 'Infamous' color palette."
    ce[20,0] = make_color_rgb(252, 255, 255)
    ce[20,1] = "Ghost"
    ce[20,2] = "An original color. A white spectre."  
    ce[21,0] = make_color_rgb(255, 0, 0)
    ce[21,1] = "Canada??"
    ce[21,2] = "Thought it would be kinda funny. Mal is canadian."    
    ce[22,0] = make_color_rgb(52, 182, 194)
    ce[22,1] = "Riptide"
    ce[22,2] = "Color scheme based on the Riptide Major logo."    
    ce[23,0] = make_color_rgb(179, 12, 12)
    ce[23,1] = "Genesis"
    ce[23,2] = "Color scheme based on the Genesis Major logo. A 'deluxe' alt."       
    ce[24,0] = make_color_rgb(179, 255, 209)
    ce[24,1] = "Champion's Key"
    ce[24,2] = "For true champions. Your handle is your key."      
    ce[25,0] = make_color_rgb(32, 32, 32)
    ce[25,1] = "Hopes & Dreams"
    ce[25,2] = "Color scheme based on the Hopes & Dreams Major logo."    


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
	var tw_b = (ease_quartOut(0, 1, ee, ee_m)/3) - (ease_quartIn(0, 1, ee, ee_m)/3);
	var tw_c = (ease_quartOut(0, 1, ee, ee_m)/6) - (ease_quartIn(0, 1, ee, ee_m)/6);
	var tw_d = (ease_quartOut(0, 1, ee, ee_m)/3) + (ease_quartIn(0, 1, ee, ee_m));
	var tw_e = (ease_quartOut(0, 1, ee, ee_m)/6) + (ease_quartIn(0, 1, ee, ee_m)/8);
	var tw_f = (ease_quartOut(0, 1, ee, ee_m)/8) + (ease_quartIn(0, 1, ee, ee_m)/6);
	var tw_g = (ease_quartOut(0, 1, ee, ee_m)) + (ease_quartIn(0, 1, ee, ee_m)/3);
	var dist = 24;//14
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
	
	if (dial_time == 0){
		textDraw(temp_x + 2 + ((player==0)?32:0), temp_y + 130, "fName", c_white, 0, 1000, 1, true, tw_g, ce[ue,1]);
	}
	
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
	draw_set_alpha(0.4);
	draw_rectangle_colour(tmp_xl2-1, tmp_yl1+7, tmp_xl2, tmp_yl2, c_dkgray, c_dkgray, c_dkgray, c_dkgray, false);
	textDraw(round(tmp_xl1+(tmp_bw/2))-3, round(tmp_yl1+(tmp_bh/2))-4, "fName", c_dkgray, 0, 100, 1, false, 0.3, "?");
	var dial_ease = ease_linear( 0, 100, dial_time, dial_max )
	draw_set_alpha(dial_ease/130);
	draw_rectangle_colour(x+10, y+82-round(dial_ease/30), x+210, y+153, c_black, c_black, c_black, c_black, false);
	draw_set_alpha(dial_ease/500);
	draw_rectangle_colour(tmp_xl1, tmp_yl1+3, tmp_xl2, tmp_yl2, c_white, c_white, c_white, c_white, false);
	draw_set_alpha(1);
	textDraw(x+14, (y+87)-round(dial_ease/30), "fName", c_white, 18, 200, 1, false, dial_ease/100, "Color "+string(ue)+": "+ce[ue,1]);
	textDraw(x+14, (y+107)-round(dial_ease/30), "fName", c_gray, 18, 200, 1, false, dial_ease/100, ce[ue,2]);
}
//ae code end


//aesthetics
if (!variable_instance_exists(id, "hue_offset")){

hue_offset=0; }

hue_speed=1; //change this to change the speed of the hueshift

hue_offset+=hue_speed;
hue_offset=hue_offset mod 255; //keeps hue_offset within the 0-255 range


//--- ---
// altered version of muno's functions. if you have other css codes, this part needs to be at the bottom of the code.
//--- ---

//aesthetics
if (!variable_instance_exists(id, "hue_offset")){

hue_offset=0; }

hue_speed=0.4; //change this to change the speed of the hueshift

hue_offset+=hue_speed;
hue_offset=hue_offset mod 255; //keeps hue_offset within the 0-255 range

if (get_player_color( player ) == 25) { //THE RAINBOW FOR THE LGBTQ?

    hue_offset+=hue_speed;
    hue_offset=hue_offset mod 255; //keeps hue_offset within the 0-255 range

    color_rgb=make_color_rgb(249, 74, 255); //input rgb values here, uses rgb to create a gamemaker colour variable

    hue=(color_get_hue(color_rgb)+hue_offset) mod 255; //finds the hue and shifts it
 
    color_hsv=make_color_hsv(hue,color_get_saturation(color_rgb),color_get_value(color_rgb)); //creates a new gamemaker colour variable using the shifted hue

    
    set_color_profile_slot( 25, 3, color_get_red(color_hsv),color_get_green(color_hsv),color_get_blue(color_hsv)); //uses that variable to set the slot's new colours
    set_color_profile_slot( 25, 5, color_get_red(color_hsv),color_get_green(color_hsv),color_get_blue(color_hsv)); //uses that variable to set the slot's new colours
    set_color_profile_slot( 25, 7, color_get_red(color_hsv),color_get_green(color_hsv),color_get_blue(color_hsv)); //uses that variable to set the slot's new colours
    
    set_article_color_slot( 3, color_get_red(color_hsv),color_get_green(color_hsv),color_get_blue(color_hsv)); //uses that variable to set the slot's new colours
    set_article_color_slot( 5, color_get_red(color_hsv),color_get_green(color_hsv),color_get_blue(color_hsv)); //uses that variable to set the slot's new colours
    set_article_color_slot( 7, color_get_red(color_hsv),color_get_green(color_hsv),color_get_blue(color_hsv)); //uses that variable to set the slot's new colours
    
    init_shader();
}
//


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

//hexed land

//draw_set_alpha(argument[6]);
//main
draw_sprite_ext( sprite_get("css_hexglass"), 0, argument[0], argument[1], 1, 1, 0, argument[4], argument[6] )
//draw_rectangle_color(argument[0], argument[1], argument[2], argument[3], argument[5], argument[5], argument[5], argument[5], false);
//outline
//draw_set_alpha(argument[6]*1.5);
draw_sprite_ext( sprite_get("css_hexglass"), 1, argument[0], argument[1], 1, 1, 0, argument[5], argument[6]*1.5 )
//draw_rectangle_color(argument[0]+2, argument[1]+2, argument[2]-2, argument[3]-2, argument[4], argument[4], argument[4], argument[4], false);
//draw_set_alpha(1);

