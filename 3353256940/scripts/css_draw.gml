
init_shader();

//extra sprites
//bgs
switch (get_player_color( player ) ){
   case 6:
        draw_sprite_ext(sprite_get("css_bg_alts"),0,x+8,y+8,2,2,0,-1,1);
    	break;
   case 17:
        draw_sprite_ext(sprite_get("css_bg_alts"),1,x+8,y+8,2,2,0,-1,1);
    	break;
    case 20:
        draw_sprite_ext(sprite_get("css_bg_alts"),2,x+8,y+8,2,2,0,-1,1);
    	break;
    default:
		draw_sprite_ext(sprite_get("css_bg_main"),0,x+8,y+8,2,2,0,-1,1);
		break;
}

//bomb icons
switch (get_player_color( player ) ){
   case 6:
        draw_sprite_ext(sprite_get("b_scrapbomb_variants"),0,x+132,y-18,1,1,0,-1,1);
    	break;
    case 9:
    	draw_sprite_ext(sprite_get("b_scrapbomb_variants"),1,x+132,y-18,1,1,0,-1,1);
    	break;
    case 13:
    	draw_sprite_ext(sprite_get("b_scrapbomb_variants"),2,x+132,y-18,1,1,0,-1,1);
    	break;
    case 15:
    	draw_sprite_ext(sprite_get("b_scrapbomb_variants"),6,x+132,y-18,1,1,0,-1,1);
    	break;
   case 16:
    	draw_sprite_ext(sprite_get("b_scrapbomb_variants"),3,x+132,y-18,1,1,0,-1,1);
    	break;
   case 17:
    	draw_sprite_ext(sprite_get("b_scrapbomb_variants"),4,x+132,y-18,1,1,0,-1,1);
    	break;
    case 18:
    	draw_sprite_ext(sprite_get("b_scrapbomb_variants"),5,x+132,y-18,1,1,0,-1,1);
    	break;
    case 19:
    	draw_sprite_ext(sprite_get("b_scrapbomb_variants"),7,x+132,y-18,1,1,0,-1,1);
    	break;
}

if (get_player_color(player) != 20) {
	shader_end();
	var a = 0.02*(1+sin(pi*css_intro_timer/16));
	gpu_set_fog(true, c_white, 0, 0);
	draw_sprite_ext(sprite_get("css_bg_main"), 0, x+8, y+8, 2, 2, 0, c_white, a);
	gpu_set_fog(false, c_white, 0, 0);
	init_shader();
}
// 


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
//--- --
var qe_b = "Twenny"

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
	stance = 3;
	char_flash_alpha = 0
	
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
	
	col_max = 20; // number of alternate color palettes. 0 is the default color, count it accordingly.
	
	//first array index is for alternate color. second array index is for distinguishing the information in it.
	ce[0,0] = make_color_rgb(187, 70, 135) // "color preview square" color. can be any color!
	ce[0,1] = "An Ambrosian Anomaly" // the name of the alternate color.
	ce[0,2] = "> NAME'S TWENNY. D0N'T WEAR IT 0UT!" // description to display if "alt color description button" is on. keep it blank if none, and you can remove it if you didn't turn it on.
	
	ce[1,0] = make_color_rgb(68, 151, 219)
	ce[1,1] = "New Horizon"
	ce[1,2] = "> IS THE SKY AS PRETTY AS THIS BLUE? I'D L0VE T0 TASTE IT SOMEDAY."
	
	ce[2,0] = make_color_rgb(237, 81, 104)
	ce[2,1] = "Fiery Passion"
	ce[2,2] = "> A RED LIKE THIS REMINDS ME 0F L0VE... WILL I EVER FIND MY TWIN PR0CESS0R?"
	
	ce[3,0] = make_color_rgb(74, 214, 117)
	ce[3,1] = "Green Envy"
	ce[3,2] = "> WHAT'S THIS AB0UT ENVY?? I'M N0T JEAL0US 0F ANY 0F Y0U GERMS!!"
	
	ce[4,0] = make_color_rgb(142, 109, 214)
	ce[4,1] = "Of Hearts and Acid"
	ce[4,2] = "> THE PINK STUFF? GUESS THAT'S KIND 0F ACID. IT D0ES MAKE GH0STS TINGLE."
	
	ce[5,0] = make_color_rgb(123, 127, 145)
	ce[5,1] = "Monochrome Monitor"
	ce[5,2] = "> I'D NEVER WEAR S0METHING S0 DRAB! S0... S0... SULLEN."
	
    ce[6,0] = make_color_rgb(167, 186, 74)
	ce[6,1] = "Small Nostalgia"
	ce[6,2] = "> SUPER SMALL LADS? S0RRY PAL, TH0SE KINDS 0F GAMES ARE F0R D0RKS."

	ce[7,0] = make_color_rgb(173, 133, 98)
	ce[7,1] = "Bittersweet Memories"
	ce[7,2] = "> LIKE A SEPIA P0LAR0ID... KIND 0F MAKES ME REMEMB"
	
    ce[8,0] = make_color_rgb(180, 69, 254)
	ce[8,1] = "Infamous Star"
	ce[8,2] = "> INFAM0US? N0 DUH!! I AM ALWAYS 'IN FAME'!"
	
    ce[9,0] = make_color_rgb(255, 189, 237)
	ce[9,1] = "A Real Girl"
	ce[9,2] = "> I SET MY MIND L0NG AG0, BUT JUST S0 WE'RE CLEAR, THIS IS WH0 I AM BABY!!!"
	
    ce[10,0] = make_color_rgb(66, 185, 212)
	ce[10,1] = "Virtual Attachment"
	ce[10,2] = " > HAUNTED S0FTWARE FR0M A WEIRD T0WN? WHAT A L0AD 0F BAL0NEY!!"
	
	ce[11,0] = make_color_rgb(137, 232, 231)
	ce[11,1] = "Singing Software"
	ce[11,2] = "> THIS JUST REMINDS ME H0W L0NG IT T00K T0 FIGURE 0UT MY DAMN V0ICEB0XX!"
	
	ce[12,0] = make_color_rgb(99, 99, 97)
	ce[12,1] = "Want You Gone"
	ce[12,2] = "> I D0 KNOW A THING 0R TW0 AB0UT THINKING WITH P0RTALS. TW0."
	
	ce[13,0] = make_color_rgb(48, 122, 32)
	ce[13,1] = "She Is Here"
	ce[13,2] = "> 0H WHAT AN IC0N! H0W CAN I N0T GUSH?"
	
    ce[14,0] = make_color_rgb(48, 91, 182)
	ce[14,1] = "Turquoise Troll"
	ce[14,2] = "> WHAT'S THIS GUY'S DEAL?? IMAGINE SP0UTING AS MUCH INC0HERENT N0NSENSE AS THIS GUY!"
	
	ce[15,0] = make_color_rgb(150, 237, 119)
	ce[15,1] = "Evil Genius"
	ce[15,2] = "> THIS BROAD IS K0CA CRAZY! WH0 TURNS HALF THEIR B0DY INT0 G00P??"
	
    ce[16,0] = make_color_rgb(255, 135, 142)
	ce[16,1] = "Maddened Mew"
	ce[16,2] = "> THE CUTEST DULLAHAN EVER? YEAH, Y0U F-CK*NG WISH."
	
    ce[17,0] = make_color_rgb(143, 184, 49)
	ce[17,1] = "Your Best Nightmare"
	ce[17,2] = "> S0ME FL0WER FREAK, RIGHT? WHAT D0ES HE EVEN HAVE T0 D0 WITH SCREENS??"
	
	ce[18,0] = make_color_rgb(111, 209, 255)
	ce[18,1] = "Q5U4EX7YY2E9N"
	ce[18,2] = " > THIS W0MAN IS A C0MPUTER T00? I'D L0VE T0 GRAB A GLASS 0F ACID WITH HER!"
	
	ce[19,0] = make_color_rgb(148, 181, 174)
	ce[19,1] = "Creative Freedom"
	ce[19,2] = "> T0 BE F0RG0TTEN LIKE THAT... P- PSSH! IMAGINE THAT! SUCKER!!"
	
	ce[20,0] = make_color_rgb(0, 0, 0)
	ce[20,1] = "An End."
	ce[20,2] = "Note: FATAL ERROR .We are sorry, but an internal error occurred. Please re-install the product to fix the problem."
	

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
	draw_set_alpha(dial_ease/120);
	draw_rectangle_colour(x+10, y+82-round(dial_ease/30), x+210, y+153, c_black, c_black, c_black, c_black, false);
	draw_set_alpha(dial_ease/500);
	draw_rectangle_colour(tmp_xl1, tmp_yl1+3, tmp_xl2, tmp_yl2, c_white, c_white, c_white, c_white, false);
	draw_set_alpha(1);
	textDraw(x+14, (y+87)-round(dial_ease/30), "fName", ce[clamp(ue,0,col_max),0], 18, 200, 1, false, dial_ease/100, string(ue)+": "+ce[ue,1]);
	textDraw(x+14, (y+107)-round(dial_ease/30), "fName", c_gray, 18, 200, 1, false, dial_ease/100, ce[ue,2]);
}
//ae code end


//aesthetics
shader_end();

switch css_intro_state {
	// black -> white fade
	case 0:
		if (css_intro_timer == 0) sound_play(sound_get("charselect"));
	
		var a = (4 < css_intro_timer) ? ease_circIn(0, 1, css_intro_timer-4, 16) : 0;
	
		draw_sprite_ext(sprite_get("css_bg_aframes"), 0, x+8, y+8, 2, 2, 0, c_black, 1);
		gpu_set_fog(true, c_white, 0, 0);
		draw_sprite_ext(sprite_get("css_bg_aframes"), 0, x+8, y+8, 2, 2, 0, c_white, a);
		gpu_set_fog(false, c_white, 0, 0);
		
		if (css_intro_timer >= 20) {
			css_intro_state = 1;
			css_intro_timer = 0;
		}
		break;
	// glitchy
	case 1:
		var a = (css_intro_timer < 8) ? ease_circOut(1, 0, css_intro_timer, 8) : 0.05*(1+sin(pi*css_intro_timer/16));
		var i = (75 < css_intro_timer) ? (css_intro_timer-75)/3 : 0;
		
		draw_sprite_ext(sprite_get("css_bg_aframes"), i, x+8, y+8, 2, 2, 0, c_white, 1);
		gpu_set_fog(true, c_white, 0, 0);
		draw_sprite_ext(sprite_get("css_bg_aframes"), 0, x+8, y+8, 2, 2, 0, c_white, a);
		gpu_set_fog(false, c_white, 0, 0);
		
		if (css_intro_timer == 80) sound_play(sound_get("charselect"));
		
		if (css_intro_timer >= 90) {
			css_intro_state = 2;
			css_intro_timer = 0;
		}
		break;
	// glitchy -> white fade
	case 2:
		var a = ease_circIn(0, 1, css_intro_timer, 8);
		var i = css_intro_timer/3;
		
		draw_sprite_ext(sprite_get("css_bg_aframes"), i, x+8, y+8, 2, 2, 0, c_white, 1);
		gpu_set_fog(true, c_white, 0, 0);
		draw_sprite_ext(sprite_get("css_bg_aframes"), 0, x+8, y+8, 2, 2, 0, c_white, a);
		gpu_set_fog(false, c_white, 0, 0);
		
		if (css_intro_timer >= 8) {
			css_intro_state = 3;
			css_intro_timer = 0;
		}
		break;
	// white -> css fade
	case 3:
		var a = ease_circOut(1, 0, css_intro_timer, 8);
		
		gpu_set_fog(true, c_white, 0, 0);
		draw_sprite_ext(sprite_get("css_bg_aframes"), 0, x+8, y+8, 2, 2, 0, c_white, a);
		gpu_set_fog(false, c_white, 0, 0);
		
		if (css_intro_timer >= 8) {
			css_intro_state = 4;
			css_intro_timer = 0;
			sound_play(sound_get("charselect_laugh"), false, noone, 3);
		}
		break;
}
css_intro_timer++;

if (get_player_color( player ) != 0) {
	css_intro_state = 4;
	css_intro_timer = 0;
}

//

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

//starred land

//draw_set_alpha(argument[6]);
//main
draw_sprite_ext( sprite_get("css_wireslots"), 0, argument[0], argument[1], 1, 1, 0, argument[4], argument[6] )
//draw_rectangle_color(argument[0], argument[1], argument[2], argument[3], argument[5], argument[5], argument[5], argument[5], false);
//outline
//draw_set_alpha(argument[6]*1.5);
draw_sprite_ext( sprite_get("css_wireslots"), 1, argument[0], argument[1], 1, 1, 0, argument[5], argument[6]*1.5 )
//draw_rectangle_color(argument[0]+2, argument[1]+2, argument[2]-2, argument[3]-2, argument[4], argument[4], argument[4], argument[4], false);
//draw_set_alpha(1);

