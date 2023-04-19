muno_event_type = 6;
user_event(14);

// Start of Retroblast-specific code

var selected_color = get_player_color(player);

switch (selected_color) {
	case 0 : // 0th alt needs to be recolored
	    draw_sprite_ext(sprite_get("charselect_original"), 0, x + 8, y + 8, 2, 2, 0, c_white, 1);
		break;
	case 21 :
		if (!tournament_legal_mode_active) {
			draw_sprite_ext(sprite_get("charselect_hologram"), 0, x + 8, y + 8, 2, 2, 0, c_white, 1);
		} else {
			draw_sprite_ext(sprite_get("charselect"), 0, x + 8, y + 8, 2, 2, 0, c_white, 1);
		}
	    break;
	case 23 :
		if (!tournament_legal_mode_active) {
			draw_sprite_ext(sprite_get("charselect_queen"), 0, x + 8, y + 8, 2, 2, 0, c_white, 1);
		} else {
        	set_character_color_slot( 7, 51, 51, 51, 1 ); //feet
			draw_sprite_ext(sprite_get("charselect"), 0, x + 8, y + 8, 2, 2, 0, c_white, 1);
		}
		break;
	case 25 :
		if (!tournament_legal_mode_active) {
			draw_sprite_ext(sprite_get("charselect_rotom"), 0, x + 8, y + 8, 2, 2, 0, c_white, 1);
		} else {
        	set_character_color_slot( 7, 243, 130, 88, 1 ); //feet
			draw_sprite_ext(sprite_get("charselect"), 0, x + 8, y + 8, 2, 2, 0, c_white, 1);
		}
		break;
	default :
		draw_sprite_ext(sprite_get("charselect"), 0, x + 8, y + 8, 2, 2, 0, c_white, 1);
		break;
}

prepare_shader();
shader_end();
if (special_color_available) {
	// frame 0 == unselected, 1 == unselected and hovering, 2 == selected, 3 == selected and hovering
	draw_sprite_ext(sprite_get("special_button"), special_button_frame, x + special_button_origin_x, y + special_button_origin_y, 1, 1, 0, c_white, 1);
}

draw_sprite_ext(sprite_get("party_button"), party_button_frame, x + party_button_origin_x, y + party_button_origin_y, 1, 1, 0, c_white, 1);
shader_start();
prepare_shader();

switch (selected_color) {
	case 20 : // disable shading for EA
		set_character_color_shading(0, 0);
		set_character_color_shading(1, 0);
		set_character_color_shading(2, 0);
		set_character_color_shading(3, 0);
		set_character_color_shading(4, 0);
		set_character_color_shading(5, 0);
		set_character_color_shading(6, 0);
		set_character_color_shading(7, 0);
	    break;
	case 21 : // disable shading for Hologram
		set_character_color_shading(0, 0);
		set_character_color_shading(1, 0);
		set_character_color_shading(2, 0);
		set_character_color_shading(3, 0);
		set_character_color_shading(4, 0);
		set_character_color_shading(5, 0);
		set_character_color_shading(6, 0);
		set_character_color_shading(7, 0);
	    break;
	default :
		set_character_color_shading(0, 1);
		set_character_color_shading(1, 1);
		set_character_color_shading(2, 1);
		set_character_color_shading(3, 1);
		set_character_color_shading(4, 1);
		set_character_color_shading(5, 1);
		set_character_color_shading(6, 1);
		set_character_color_shading(7, 1);
		break;
}

// End of Retroblast-specific code

// The following was contributed by Hyuponia's css tile swapping code tempalte

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
var qe_b = "Retroblast"
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
	
	col_max = 26; // number of alternate color palettes. 0 is the default color, count it accordingly.
	
	//first array index is for alternate color. second array index is for distinguishing the information in it.
	ce[0,0] = make_color_rgb(111, 0, 255) // "color preview square" color. can be any color!
	ce[0,1] = "Retroblast" // the name of the alternate color.
	ce[0,2] = "The future of the past." // description to display if "alt color description button" is on. keep it blank if none, and you can remove it if you didn't turn it on.
	ce[1,0] = make_color_rgb(255, 0, 0)
	ce[1,1] = "Hero"
	ce[1,2] = "Freedom is the right of all sentient beings."
	ce[2,0] = make_color_rgb(122, 122, 122)
	ce[2,1] = "Villain"
	ce[2,2] = "Is it fear or courage that compels you?"
	ce[3,0] = make_color_rgb(255, 221, 0)
	ce[3,1] = "Yellow Stinger"
	ce[3,2] = "This is our home - we have to fight for it!"
	ce[4,0] = make_color_rgb(255, 106, 0)
	ce[4,1] = "New Management"
	ce[4,2] = "All hail ME!"
	ce[5,0] = make_color_rgb(253, 110, 255)
	ce[5,1] = "Remote Control"
	ce[5,2] = "Locked and loaded!"
	ce[6,0] = make_color_rgb(130, 255, 46)
	ce[6,1] = "Construction"
	ce[6,2] = "This is not your planet to rule."
	ce[7,0] = make_color_rgb(34, 77, 214)
	ce[7,1] = "Variable"
	ce[7,2] = "Got equipped!"
	ce[8,0] = make_color_rgb(255, 170, 0)
	ce[8,1] = "Bounty Hunter"
	ce[8,2] = "See you next mission!"
	ce[9,0] = make_color_rgb(37, 143, 61)
	ce[9,1] = "Military Grade"
	ce[9,2] = "I need a weapon."
	ce[10,0] = make_color_rgb(248, 143, 250)
	ce[10,1] = "Increased APM"
	ce[10,2] = "Please don't actually nerf this..."
	ce[11,0] = make_color_rgb(207, 174, 133)
	ce[11,1] = "R.E.T.R.O."
	ce[11,2] = "*Happy whirring noises*"
	ce[12,0] = make_color_rgb(245, 198, 117)
	ce[12,1] = "Ult. Weapon"
	ce[12,2] = "Show me your power. Or I shall not obey."
	ce[13,0] = make_color_rgb(255, 255, 255)
	ce[13,1] = "Science"
	ce[13,2] = "We do what we must because we can."
	ce[14,0] = make_color_rgb(255, 0, 0)
	ce[14,1] = "Avenging Red"
	ce[14,2] = "I am Iron Man."
	ce[15,0] = make_color_rgb(89, 161, 255)
	ce[15,1] = "Justice Blue"
	ce[15,2] = "Booyah!"
	ce[16,0] = make_color_rgb(153, 18, 18)
	ce[16,1] = "Mischeivious"
	ce[16,2] = "Shake-shake!"
	ce[17,0] = make_color_rgb(8, 14, 33)
	ce[17,1] = "Ugh"
	ce[17,2] = "Ugh"
	ce[18,0] = make_color_rgb(255, 204, 16)
	ce[18,1] = "Gold"
	ce[18,2] = "Forged in battle, earned in earnest."
	ce[19,0] = make_color_rgb(79, 61, 94)
	ce[19,1] = "Abyss"
	ce[19,2] = "Forged in hubris, leaking shadows."
	ce[20,0] = make_color_rgb(84, 122, 62)
	ce[20,1] = "Early Access"
	ce[20,2] = "Forged in a bygone era, echoing the past."
	ce[21,0] = make_color_rgb(0, 255, 0)
	ce[21,1] = "Hologram"
	ce[21,2] = "...it was a hologram."
	ce[22,0] = make_color_rgb(255, 51, 228)
	ce[22,1] = "Beautiful"
	ce[22,2] = "Oh, YES."
	ce[23,0] = make_color_rgb(0, 136, 255)
	ce[23,1] = "Royalty"
	ce[23,2] = "Ohohohoho!~"
	ce[24,0] = make_color_rgb(0, 122, 94)
	ce[24,1] = "Arcade Carpet"
	ce[24,2] = "This must be what love would have felt like..."
	ce[25,0] = make_color_rgb(243, 130, 88)
	ce[25,1] = "Possession"
	ce[25,2] = "It likes to wreak havoc in electronic devices."
	ce[26,0] = make_color_rgb(0, 163, 248)
	ce[26,1] = "Vortex Gallery"
	ce[26,2] = "Retroblast is leagal in Vortex Gallery?!"
//	ce[26,0] = make_color_rgb(255, 0, 0)
//	ce[26,1] = "Overheated"
//	ce[26,2] = "Original, red"
//	ce[27,0] = make_color_rgb(37, 143, 61)
//	ce[27,1] = "Overgrown"
//	ce[27,2] = "Original, green"
//	ce[28,0] = make_color_rgb(41, 80, 255)
//	ce[28,1] = "Oversaturated"
//	ce[28,2] = "Original, blue"
//	ce[29,0] = make_color_rgb(112, 255, 117)
//	ce[29,1] = "RGB Gamer Rig"
//	ce[29,2] = "Original, red"
//	ce[25,0] = make_color_rgb(255, 0, 0)
//	ce[25,1] = "Robot"
//	ce[25,2] = "Hey look, it's me! :)"
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