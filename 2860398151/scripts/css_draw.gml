//css_draw

//	Credit to Felix
//	unfortunately
if ("portrait" in self)
{
	var temp_x = floor(x+10);
	var temp_y = floor(y+10);
	var current_alt = get_player_color(player);
	
	draw_sprite_ext(sprite_get("charselectbg"),0,temp_x-2,temp_y-2, 2, 2, 0, -1, 1);
	
	if ("prev_alt" in self && prev_alt != current_alt)
	{
	    portrait = random_func(0, 6, true);
	    
		if (portrait == 0)
		{
		    set_victory_portrait(sprite_get("portrait1"));
		    set_victory_sidebar(sprite_get("result_small1"));
	    }
		
		if (portrait == 1)
		{
		    set_victory_portrait(sprite_get("portrait2"));
		    set_victory_sidebar(sprite_get("result_small2"));
	    }
		
		if (portrait == 2)
		{
		    set_victory_portrait(sprite_get("portrait3"));
		    set_victory_sidebar(sprite_get("result_small3"));
	    }
		
		else if (portrait == 3)
		{
		    set_victory_portrait(sprite_get("portrait4"));
		    set_victory_sidebar(sprite_get("result_small4"));
	    }
		
		else if (portrait == 4)
		{
		    set_victory_portrait(sprite_get("portrait5"));
		    set_victory_sidebar(sprite_get("result_small5"));
	    }
		
		else if (portrait == 5)
		{
		    set_victory_portrait(sprite_get("portrait6"));
		    set_victory_sidebar(sprite_get("result_small6"));
	    }
	}
	
	prev_alt = current_alt;
	
	if (portrait == 0)
	{
	    draw_sprite_ext(sprite_get("charselect1"),0,temp_x-2,temp_y-2,2,2,0,-1,1);
	}
	
	if (portrait == 1)
	{
	    draw_sprite_ext(sprite_get("charselect2"),0,temp_x-2,temp_y-2,2,2,0,-1,1);
	}
	
	if (portrait == 2)
	{
	    draw_sprite_ext(sprite_get("charselect3"),0,temp_x-2,temp_y-2,2,2,0,-1,1);
	}
	
	else if (portrait == 3)
	{
	    draw_sprite_ext(sprite_get("charselect4"),0,temp_x-2,temp_y-2,2,2,0,-1,1);
	}
	
	else if (portrait == 4)
	{
	    draw_sprite_ext(sprite_get("charselect5"),0,temp_x-2,temp_y-2,2,2,0,-1,1);
	}
	
	else if (portrait == 5)
	{
	    draw_sprite_ext(sprite_get("charselect5"),0,temp_x-2,temp_y-2,2,2,0,-1,1);
	}
	     
	if (portrait > 6)
	{
	    portrait = 0;
	}
}

else
{
	portrait = random_func(0, 6, true);
	
	if (portrait == 0)
	{
		set_victory_portrait(sprite_get("portrait1"));
		set_victory_sidebar(sprite_get("result_small1"));
	}
	
	if (portrait == 1)
	{
		set_victory_portrait(sprite_get("portrait2"));
		set_victory_sidebar(sprite_get("result_small2"));
	}
	
	if (portrait == 2)
	{
		set_victory_portrait(sprite_get("portrait3"));
		set_victory_sidebar(sprite_get("result_small3"));
	}
	
	else if (portrait == 3)
	{
		set_victory_portrait(sprite_get("portrait4"));
		set_victory_sidebar(sprite_get("result_small4"));
	}	
	
	else if (portrait == 4)
	{
		set_victory_portrait(sprite_get("portrait5"));
		set_victory_sidebar(sprite_get("result_small5"));
	}
	
	else if (portrait == 5)
	{
		set_victory_portrait(sprite_get("portrait5"));
		set_victory_sidebar(sprite_get("result_small5"));
	}
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

var qe_b = "Kodiak DE"
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
    ce[0,0] = make_color_rgb(94, 53, 82) // "color preview square" color. can be anything.
    ce[0,1] = "Default"
    ce[0,2] = ""
    ce[1,0] = make_color_rgb(176, 212, 255)
    ce[1,1] = "Majora"
    ce[1,2] = ""
    ce[2,0] = make_color_rgb(255, 161, 227)
    ce[2,1] = "Pastel"
    ce[2,2] = ""
    ce[3,0] = make_color_rgb(52, 53, 71)
    ce[3,1] = "Ashes"
    ce[3,2] = ""
    ce[4,0] = make_color_rgb(110, 80, 80)
    ce[4,1] = "Boku"
    ce[4,2] = ""
    ce[5,0] = make_color_rgb(51, 102, 51)
    ce[5,1] = "Tactical"
    ce[5,2] = ""
    ce[6,0] = make_color_rgb(89, 11, 125)
    ce[6,1] = "Aztec"
    ce[6,2] = ""
    ce[7,0] = make_color_rgb(245, 180, 127 )
    ce[7,1] = "Passion"
    ce[7,2] = ""
    ce[8,0] = make_color_rgb(24, 26, 77)
    ce[8,1] = "Spooky"
    ce[8,2] = ""
    ce[9,0] = make_color_rgb(255, 251, 227)
    ce[9,1] = "Nine"
    ce[9,2] = ""
    ce[10,0] = make_color_rgb(255, 43, 150)
    ce[10,1] = "Sun"
    ce[10,2] = ""
    ce[11,0] = make_color_rgb(161, 255, 236)
    ce[11,1] = "Frosty"
    ce[11,2] = ""
    ce[12,0] = make_color_rgb(55, 140, 55)
    ce[12,1] = "Puns"
    ce[12,2] = ""
    ce[13,0] = make_color_rgb(232, 0, 0)
    ce[13,1] = "Chronicles"
    ce[13,2] = ""
    ce[14,0] = make_color_rgb(255, 209, 59)
    ce[14,1] = "Rivet"
    ce[14,2] = ""
    ce[15,0] = make_color_rgb(0, 3, 255)
    ce[15,1] = "Azure"
    ce[15,2] = ""
    ce[16,0] = make_color_rgb(104, 69, 199)
    ce[16,1] = "Magic"
    ce[16,2] = ""
    ce[17,0] = make_color_rgb(144, 255, 177)
    ce[17,1] = "Planter"
    ce[17,2] = ""
	ce[18,0] = make_color_rgb(145, 107, 184)
    ce[18,1] = "Zanzibar"
    ce[18,2] = ""
    ce[19,0] = make_color_rgb(28, 43, 59)
    ce[19,1] = "Nisego"
    ce[19,2] = ""
    ce[20,0] = make_color_rgb(92, 70, 166)
    ce[20,1] = "Luka"
    ce[20,2] = ""	
	ce[21,0] = make_color_rgb(53, 87, 92)
    ce[21,1] = "Dracora"
    ce[21,2] = ""
	ce[22,0] = make_color_rgb(255, 206, 204)
    ce[22,1] = "Neewollah"
    ce[22,2] = ""
	ce[23,0] = make_color_rgb(255, 136, 0)
    ce[23,1] = "Hivemind"
    ce[23,2] = ""
	ce[24,0] = make_color_rgb(252, 228, 123)
    ce[24,1] = "Man Origin"
    ce[24,2] = ""
	ce[25,0] = make_color_rgb(64, 255, 236)
    ce[25,1] = "Dewish"
    ce[25,2] = ""
	ce[26,0] = make_color_rgb(189, 49, 49)
    ce[26,1] = "Trigger"
    ce[26,2] = ""	
	ce[27,0] = make_color_rgb(255, 89, 134)
    ce[27,1] = "Sick Kickem"
    ce[27,2] = ""
	ce[28,0] = make_color_rgb(255, 97, 69)
    ce[28,1] = "Layers"
    ce[28,2] = ""
	ce[29,0] = make_color_rgb(41, 46, 74)
    ce[29,1] = "Pizza Maiden"
    ce[29,2] = ""
	ce[30,0] = make_color_rgb(255, 88, 69)
    ce[30,1] = "Synthwaver"
    ce[30,2] = ""
	ce[31,0] = make_color_rgb(194, 255, 239)
    ce[31,1] = "Rick"
    ce[31,2] = ""
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

//----------------------------CSS Button stuff

if (player == 0)
{ 
	//	player online
	var posX = 16;
	var posY = 48;
}

else
{
	if (get_player_hud_color(player) == 8421504)
	{ 
		//	if CPU offline
		var posX = 58;
		var posY = 178;
	}
	
	else
	{ 
		//	if player offline
		var posX = 74;
		var posY = 178;
	}
}

var cursedBW 	= 30;
var cursedBH 	= 26;
var cursedXLim 	= x + posX;
var cursedYLim 	= y + posY;

if (get_synced_var(player) > 2) 
{
	set_synced_var(player, 0);
}

draw_sprite_ext(sprite_get("mutebuttons"), sound_cycle, x + posX, y + posY, 1, 1, 0, c_white, 1);

if (sound_control > 0)
{
	draw_sprite_ext(sprite_get("mutestatus"), get_synced_var(player), 
	temp_x + 164, temp_y + 50 + floor(sound_control*1.5), 1, 1, 0, 
	c_white, sound_control > 20 ? 1 : (1 - (20-sound_control)/20));
}

//	Credit goes to Supersonic for these CSS scripts

cpu_hover_draw(); 
//	you can put this anywhere above your #defines.
//	i would recommend ending the shader first (shader_end();)

//	as always, #defines go at the bottom of the script.
#define cpu_hover_draw()
if (cpu_hover_time > 0) 
{
    var prog 		= min(cpu_hover_time/10, 1);
    var colprog 	= min(cpu_color_swap_time/5, 1);
    var col 		= merge_color(cpuh_prev_color, cpuh_new_color, colprog);
    
	draw_sprite_ext(cpu_hover_sprite, 0, x - 4, y - 6, 2, 2, 0, col, prog);
    draw_set_alpha(prog);
    draw_debug_text(plate_bounds[2]-17, plate_bounds[3]+1, `P${cpu_hovering_player}`);
    draw_set_alpha(1);
}

//----------------------------

//--- ---
// altered version of muno's functions. if you have other css codes, this part needs to be at the bottom of the code.
//--- ---

muno_event_type = 6;
user_event(14);

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