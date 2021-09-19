// Klock's CSS is a modified version of Hyu's tempalte. Thanks Hyu! -Opengunner
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
var qe_b = "Daora"
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
//Button Location
var tmp_xl = 10
var tmp_bw = 40 // button width
var tmp_yl = 150
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
	ee_m = 60; // original 60
	ie = 0;
	ye = false;
	dial_time = 0;
	dial_max = 8;
	
	//--- ---
	// the primary part you should change.
	//--- ---
	altsel = asset_get("sfx_bubblepop"); // change the alt select sound here. if you don't want to change the sound, put 0 here.
	color_desc_activate = true; // optional "alt color description button". set to "true" to turn it on.
	
	col_max = 32; // number of alternate color palettes. 0 is the default color, count it accordingly.
	
	//ce variable, array of character entry data.
	//0,0 "color preview square" color. can be any color! 62, 61, 92
	//0,1 Name of the pallet
	//0,2 Description after hitting the button
	//0,3 Credit to the source
	//0,4 Icon to use from the charactrer strip.
	// Line for Credit
	var color_slot = 0;
	var sub_element_slot = 0;
	// Slot 0
	ce[color_slot,sub_element_slot] = make_color_rgb(13, 99, 195);sub_element_slot++;
	ce[color_slot,sub_element_slot] = "Daora";sub_element_slot++;
	ce[color_slot,sub_element_slot] = "Everything I ever loved was destroyed in a single day. I will make sure that Loxodont will pay.";sub_element_slot++;
	ce[color_slot,sub_element_slot] = "Default Palette";sub_element_slot++;
	ce[color_slot,sub_element_slot] = 0; sub_element_slot = 0;
	color_slot++;
	// Slot 1
	ce[color_slot,sub_element_slot] = make_color_rgb(235, 51, 31);sub_element_slot++;
	ce[color_slot,sub_element_slot] = "OG Colors";sub_element_slot++;
	ce[color_slot,sub_element_slot] = "The lake of my home village runs red with the blood of my family.";sub_element_slot++;
	ce[color_slot,sub_element_slot] = "Original Palette";sub_element_slot++;
	ce[color_slot,sub_element_slot] = 0;sub_element_slot = 0;
	color_slot++;
	//Slot 2
	ce[color_slot,sub_element_slot] = make_color_rgb(140, 132, 148);sub_element_slot++;
	ce[color_slot,sub_element_slot] = "Klockwurth";sub_element_slot++;
	ce[color_slot,sub_element_slot] = "I used to know Cosworth before he became shell of what he is now...";sub_element_slot++;
	ce[color_slot,sub_element_slot] = "Character by Opengunner";sub_element_slot++;
	ce[color_slot,sub_element_slot] = 0;sub_element_slot = 0;
	color_slot++;
	//Slot 3
	ce[color_slot,sub_element_slot] = make_color_rgb(123, 37, 201);sub_element_slot++;
	ce[color_slot,sub_element_slot] = "Iroh";sub_element_slot++;
	ce[color_slot,sub_element_slot] = "Somebody told me I look like one of my ancestors with a wig...";sub_element_slot++;
	ce[color_slot,sub_element_slot] = "Character by SoA";sub_element_slot++;
	ce[color_slot,sub_element_slot] = 0;sub_element_slot = 0;
	color_slot++;
	//Slot 4
	ce[color_slot,sub_element_slot] = make_color_rgb(255, 130, 47);sub_element_slot++;
	ce[color_slot,sub_element_slot] = "Lyca";sub_element_slot++;
	ce[color_slot,sub_element_slot] = "There are legends of a spectre that weaponized her own children";sub_element_slot++;
	ce[color_slot,sub_element_slot] = "Character by SoA";sub_element_slot++;
	ce[color_slot,sub_element_slot] = 0;sub_element_slot = 0;
	color_slot++;
	//Slot 5
	ce[color_slot,sub_element_slot] = make_color_rgb(227, 235, 250);sub_element_slot++;
	ce[color_slot,sub_element_slot] = "Zerra";sub_element_slot++;
	ce[color_slot,sub_element_slot] = "A true marvel to behold the grace of an ice skater. I aspire for such grace.";sub_element_slot++;
	ce[color_slot,sub_element_slot] = "Character by SoA";sub_element_slot++;
	ce[color_slot,sub_element_slot] = 0;sub_element_slot = 0;
	color_slot++;
	//Slot 6
	ce[color_slot,sub_element_slot] = make_color_rgb(62, 61, 92);sub_element_slot++;
	ce[color_slot,sub_element_slot] = "R-00";sub_element_slot++;
	ce[color_slot,sub_element_slot] = "Technology like this is what makes the warriors of the Neo Fire Capital formidable.";sub_element_slot++;
	ce[color_slot,sub_element_slot] = "Character by Archytas";sub_element_slot++;
	ce[color_slot,sub_element_slot] = 0;sub_element_slot = 0;
	color_slot++;
	//Slot 7
	ce[color_slot,sub_element_slot] = make_color_rgb(162, 255, 10);sub_element_slot++;
	ce[color_slot,sub_element_slot] = "Void Fox";sub_element_slot++;
	ce[color_slot,sub_element_slot] = "I made sure I was never good with a bladed weapon, in case I ever learned to enjoy killing.";sub_element_slot++;
	ce[color_slot,sub_element_slot] = "Character by Sai";sub_element_slot++;
	ce[color_slot,sub_element_slot] = 0;sub_element_slot = 0;
	color_slot++;
	//Slot 8
	ce[color_slot,sub_element_slot] = make_color_rgb(235, 168, 248);sub_element_slot++;
	ce[color_slot,sub_element_slot] = "Hikaru";sub_element_slot++;
	ce[color_slot,sub_element_slot] = "I admire powerful illusionary Magic, you can get what you want without being destructive.";sub_element_slot++;
	ce[color_slot,sub_element_slot] = "Character by Lukaru";sub_element_slot++;
	ce[color_slot,sub_element_slot] = 0;sub_element_slot = 0;
	color_slot++;
	//Slot 9
	ce[color_slot,sub_element_slot] = make_color_rgb(47, 35, 74);sub_element_slot++;
	ce[color_slot,sub_element_slot] = "Kunoichi";sub_element_slot++;
	ce[color_slot,sub_element_slot] = "I spent alot of time operating in the shadows, more than I care to admit...";sub_element_slot++;
	ce[color_slot,sub_element_slot] = "Palette by Regina";sub_element_slot++;
	ce[color_slot,sub_element_slot] = 0;sub_element_slot = 0;
	color_slot++;
	//Slot 10
	ce[color_slot,sub_element_slot] = make_color_rgb(179, 32, 29);sub_element_slot++;
	ce[color_slot,sub_element_slot] = "Amvira";sub_element_slot++;
	ce[color_slot,sub_element_slot] = "May my soul be finally cleansed when I reach the fires of hell.";sub_element_slot++;
	ce[color_slot,sub_element_slot] = "Character by Varrkarus";sub_element_slot++;
	ce[color_slot,sub_element_slot] = 0;sub_element_slot = 0;
	color_slot++;
	//Slot 11
	ce[color_slot,sub_element_slot] = make_color_rgb(247, 54, 54);sub_element_slot++;
	ce[color_slot,sub_element_slot] = "Tuqiu";sub_element_slot++;
	ce[color_slot,sub_element_slot] = "My anger lingers long after, would I remain a vengeful spirit after I fall?";sub_element_slot++;
	ce[color_slot,sub_element_slot] = "Character by Usagibun1";sub_element_slot++;
	ce[color_slot,sub_element_slot] = 0;sub_element_slot = 0;
	color_slot++;
	//Slot 12
	ce[color_slot,sub_element_slot] = make_color_rgb(12, 53, 178);sub_element_slot++;
	ce[color_slot,sub_element_slot] = "Namielle";sub_element_slot++;
	ce[color_slot,sub_element_slot] = "A distant dark tide...";sub_element_slot++;
	ce[color_slot,sub_element_slot] = "Monster Hunter";sub_element_slot++;
	ce[color_slot,sub_element_slot] = 0;sub_element_slot = 0;
	color_slot++;
	//Slot 13
	ce[color_slot,sub_element_slot] = make_color_rgb(255, 255, 0);sub_element_slot++;
	ce[color_slot,sub_element_slot] = "Sailee";sub_element_slot++;
	ce[color_slot,sub_element_slot] = "A warm smile can hide a power unimaginable.";sub_element_slot++;
	ce[color_slot,sub_element_slot] = "Character by Opengunner";sub_element_slot++;
	ce[color_slot,sub_element_slot] = 0;sub_element_slot = 0;
	color_slot++;
	//Slot 14
	ce[color_slot,sub_element_slot] = make_color_rgb(255, 255, 255);sub_element_slot++;
	ce[color_slot,sub_element_slot] = "Roekoko";sub_element_slot++;
	ce[color_slot,sub_element_slot] = "It's always important to find time to laugh.";sub_element_slot++;
	ce[color_slot,sub_element_slot] = "Character by Opengunner";sub_element_slot++;
	ce[color_slot,sub_element_slot] = 0;sub_element_slot = 0;
	color_slot++;
	//Slot 15
	ce[color_slot,sub_element_slot] = make_color_rgb(255, 0, 0);sub_element_slot++;
	ce[color_slot,sub_element_slot] = "Solarei";sub_element_slot++;
	ce[color_slot,sub_element_slot] = "The Sun is sometimes fierce and sometimes gentle...";sub_element_slot++;
	ce[color_slot,sub_element_slot] = "Character by Opengunner";sub_element_slot++;
	ce[color_slot,sub_element_slot] = 0;sub_element_slot = 0;
	color_slot++;
	//Slot 16
	ce[color_slot,sub_element_slot] = make_color_rgb(64, 64, 64);sub_element_slot++;
	ce[color_slot,sub_element_slot] = "Tzukiyo";sub_element_slot++;
	ce[color_slot,sub_element_slot] = "There are two wolves in side of you, which wolf will you choose to feed?";sub_element_slot++;
	ce[color_slot,sub_element_slot] = "Character by Opengunner";sub_element_slot++;
	ce[color_slot,sub_element_slot] = 0;sub_element_slot = 0;
	color_slot++;
	//Slot 17
	ce[color_slot,sub_element_slot] = make_color_rgb(54, 69, 101);sub_element_slot++;
	ce[color_slot,sub_element_slot] = "U-sa";sub_element_slot++;
	ce[color_slot,sub_element_slot] = "We are all fractured but each facture contributes to the whole.";sub_element_slot++;
	ce[color_slot,sub_element_slot] = "Character by Usagibun1";sub_element_slot++;
	ce[color_slot,sub_element_slot] = 0;sub_element_slot = 0;
	color_slot++;
	//Slot 18
	ce[color_slot,sub_element_slot] = make_color_rgb(207, 88, 179);sub_element_slot++;
	ce[color_slot,sub_element_slot] = "Walkya";sub_element_slot++;
	ce[color_slot,sub_element_slot] = "Ferocity and rage in all of its beauty.";sub_element_slot++;
	ce[color_slot,sub_element_slot] = "Character by Loglord";sub_element_slot++;
	ce[color_slot,sub_element_slot] = 0;sub_element_slot = 0;
	color_slot++;
	//Slot 19
	ce[color_slot,sub_element_slot] = make_color_rgb(120, 50, 50);sub_element_slot++;
	ce[color_slot,sub_element_slot] = "Blood Moon";sub_element_slot++;
	ce[color_slot,sub_element_slot] = "The moon shifts the tide, it ebbs and flows, like blood in my eyes.";sub_element_slot++;
	ce[color_slot,sub_element_slot] = "Palette by Causeimapilot";sub_element_slot++;
	ce[color_slot,sub_element_slot] = 0;sub_element_slot = 0;
	color_slot++;
	//Slot 20
	ce[color_slot,sub_element_slot] = make_color_rgb(251, 139, 55);sub_element_slot++;
	ce[color_slot,sub_element_slot] = "Slime";sub_element_slot++;
	ce[color_slot,sub_element_slot] = "Slime manipulation is not a very othrodox use of water magic.";sub_element_slot++;
	ce[color_slot,sub_element_slot] = "Palette by Prober";sub_element_slot++;
	ce[color_slot,sub_element_slot] = 0;sub_element_slot = 0;
	color_slot++;
	//Slot 21
	ce[color_slot,sub_element_slot] = make_color_rgb(139, 60, 232);sub_element_slot++;
	ce[color_slot,sub_element_slot] = "Voidborn";sub_element_slot++;
	ce[color_slot,sub_element_slot] = "An improvised weapon can be just as deadly as real one. We can fight with tools.";sub_element_slot++;
	ce[color_slot,sub_element_slot] = "Palette by Dragou";sub_element_slot++;
	ce[color_slot,sub_element_slot] = 0;sub_element_slot = 0;
	color_slot++;
	//Slot 22
	ce[color_slot,sub_element_slot] = make_color_rgb(94, 67, 37);sub_element_slot++;
	ce[color_slot,sub_element_slot] = "Sacramentum";sub_element_slot++;
	ce[color_slot,sub_element_slot] = "Loosely based off the band Mili's mascot, Torino.";sub_element_slot++;
	ce[color_slot,sub_element_slot] = "Palette by Masqerade";sub_element_slot++;
	ce[color_slot,sub_element_slot] = 0;sub_element_slot = 0;
	color_slot++;
	//Slot 23
	ce[color_slot,sub_element_slot] = make_color_rgb(128, 0, 12);sub_element_slot++;
	ce[color_slot,sub_element_slot] = "Dazzle";sub_element_slot++;
	ce[color_slot,sub_element_slot] = "Using magic to entertain people may be a novel use of such destructive power.";sub_element_slot++;
	ce[color_slot,sub_element_slot] = "Character by JustJerome";sub_element_slot++;
	ce[color_slot,sub_element_slot] = 0;sub_element_slot = 0;
	color_slot++;
	//Slot 24
	ce[color_slot,sub_element_slot] = make_color_rgb(245, 169, 184);sub_element_slot++;
	ce[color_slot,sub_element_slot] = "Trans Rights";sub_element_slot++;
	ce[color_slot,sub_element_slot] = "Trans Rights";sub_element_slot++;
	ce[color_slot,sub_element_slot] = "Support Pallet";sub_element_slot++;
	ce[color_slot,sub_element_slot] = 0;sub_element_slot = 0;
	color_slot++;
	//Slot 25
	ce[color_slot,sub_element_slot] = make_color_rgb(255, 255, 255);sub_element_slot++;
	ce[color_slot,sub_element_slot] = "BLM";sub_element_slot++;
	ce[color_slot,sub_element_slot] = "Black Lives Matter";sub_element_slot++;
	ce[color_slot,sub_element_slot] = "Support Pallet";sub_element_slot++;
	ce[color_slot,sub_element_slot] = 0;sub_element_slot++;
	color_slot++;
	//Slot 26
	ce[color_slot,sub_element_slot] = make_color_rgb(255, 255, 255);sub_element_slot++;
	ce[color_slot,sub_element_slot] = "Name";sub_element_slot++;
	ce[color_slot,sub_element_slot] = "Flavor Text";sub_element_slot++;
	ce[color_slot,sub_element_slot] = "Pallet Name";sub_element_slot++;
	ce[color_slot,sub_element_slot] = 0;sub_element_slot++;
	color_slot++;
	//Slot 27
	ce[color_slot,sub_element_slot] = make_color_rgb(255, 255, 255);sub_element_slot++;
	ce[color_slot,sub_element_slot] = "Name";sub_element_slot++;
	ce[color_slot,sub_element_slot] = "Flavor Text";sub_element_slot++;
	ce[color_slot,sub_element_slot] = "Pallet Name";sub_element_slot++;
	ce[color_slot,sub_element_slot] = 0;sub_element_slot++;
	color_slot++;
	//Slot 28
	ce[color_slot,sub_element_slot] = make_color_rgb(255, 255, 255);sub_element_slot++;
	ce[color_slot,sub_element_slot] = "Name";sub_element_slot++;
	ce[color_slot,sub_element_slot] = "Flavor Text";sub_element_slot++;
	ce[color_slot,sub_element_slot] = "Pallet Name";sub_element_slot++;
	ce[color_slot,sub_element_slot] = 0;sub_element_slot++;
	color_slot++;
	//Slot 29
	ce[color_slot,sub_element_slot] = make_color_rgb(255, 255, 255);sub_element_slot++;
	ce[color_slot,sub_element_slot] = "Name";sub_element_slot++;
	ce[color_slot,sub_element_slot] = "Flavor Text";sub_element_slot++;
	ce[color_slot,sub_element_slot] = "Pallet Name";sub_element_slot++;
	ce[color_slot,sub_element_slot] = 0;sub_element_slot++;
	color_slot++;
	//Slot 30
	ce[color_slot,sub_element_slot] = make_color_rgb(255, 255, 255);sub_element_slot++;
	ce[color_slot,sub_element_slot] = "Name";sub_element_slot++;
	ce[color_slot,sub_element_slot] = "Flavor Text";sub_element_slot++;
	ce[color_slot,sub_element_slot] = "Pallet Name";sub_element_slot++;
	ce[color_slot,sub_element_slot] = 0;sub_element_slot++;
	color_slot++;
	//Slot 31
	ce[color_slot,sub_element_slot] = make_color_rgb(255, 255, 255);sub_element_slot++;
	ce[color_slot,sub_element_slot] = "Name";sub_element_slot++;
	ce[color_slot,sub_element_slot] = "Flavor Text";sub_element_slot++;
	ce[color_slot,sub_element_slot] = "Pallet Name";sub_element_slot++;
	ce[color_slot,sub_element_slot] = 0;sub_element_slot++;
	color_slot++;
	//Slot 32
	ce[color_slot,sub_element_slot] = make_color_rgb(255, 255, 255);sub_element_slot++;
	ce[color_slot,sub_element_slot] = "Name";sub_element_slot++;
	ce[color_slot,sub_element_slot] = "Flavor Text";sub_element_slot++;
	ce[color_slot,sub_element_slot] = "Pallet Name";sub_element_slot++;
	ce[color_slot,sub_element_slot] = 0;sub_element_slot++;
	//color_slot++;
	/* Blank Version
	//Slot 
	ce[color_slot,sub_element_slot] = make_color_rgb(255, 255, 255);sub_element_slot++;
	ce[color_slot,sub_element_slot] = "Name";sub_element_slot++;
	ce[color_slot,sub_element_slot] = "Flavor Text";sub_element_slot++;
	ce[color_slot,sub_element_slot] = "Pallet Name";sub_element_slot++;
	ce[color_slot,sub_element_slot] = 0;sub_element_slot++;
	color_slot++;
	*/
	// you can add more, by copypasting and changing the first index of the array accordingly.
	// ! changing part end.
	// you can ignore the mess below...
}

// Custom Code, draw these before Hyu's code draws its stuff -------------------------

sprite_change_offset("css_icons", 24, 24);
//sprite_change_offset("icon_inventory", 128, 128);


textDraw(temp_x + 170, temp_y + 40, "fName", c_white, 100, 1000, 1, false, 0.25,"v" + string(get_char_info(player, INFO_VER_MAJOR)) + "." + string(get_char_info(player, INFO_VER_MINOR)));

//draw_sprite_ext(sprite_get("css_icons"),ce[get_player_color(player),4],x+180,y+130,1,1,0,c_white,1);

// TGP Icon Rotation 
sprite_change_offset("tgp_icon",17,17);
if("timer" not in self){timer = 1;}
else timer++;
if(timer > 256){timer = 1;}
draw_sprite_ext(sprite_get("tgp_icon"),4,x+190,y+130,2,2,0,c_white,1);

// Bubbles
sprite_change_offset("bubbles", 128, 128);
if(timer < 64){
draw_sprite_ext(sprite_get("bubbles"),timer/8,x+45,y+84,1,1,0,c_white,1);
}
//draw_sprite_ext(sprite_get("icon_inventory"),1,temp_x+29,temp_y+128,1,1,0,c_white,1);

// End Code ------------------------------------------------------------------

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
	sound_play(altsel,false,noone,.5,1);
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
// Old Code from Hyu
/*
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
	textDraw(x+14, (y+100)-round(dial_ease/30), "fName", c_white, 18, 200, 1, false, dial_ease/100, "#"+string(ue)+": "+ce[ue,1]);
	textDraw(x+14, (y+120)-round(dial_ease/30), "fName", c_white, 18, 200, 1, false, dial_ease/100, ce[ue,2]);
}
*/
//Revamped for new loaction
if (color_desc_activate){
	if (tmp_x[tmp_pt]>tmp_xl1 && tmp_x[tmp_pt]<tmp_xl2 && tmp_y[tmp_pt]>tmp_yl1 && tmp_y[tmp_pt]<tmp_yl2){
		if (dial_time<dial_max){ dial_time++; }
	}else{
		if (dial_time>0){ dial_time--; }
	}
	draw_set_alpha(0.3);
	draw_rectangle_colour(tmp_xl1-1, tmp_yl1+3, tmp_xl2, tmp_yl2, c_black, c_black, c_black, c_black, false); // draws the small block
	textDraw(round(tmp_xl1+(tmp_bw/2))-18, round(tmp_yl1+(tmp_bh/2))-4, "fName", c_white, 0, 100, 1, false, 0.3, "Info"); // Draws the Button text
	var dial_ease = ease_linear( 0, 100, dial_time, dial_max )
	draw_set_alpha(dial_ease/130);
	//draw_rectangle_colour(x+10, y+95-round(dial_ease/30), x+210, y+153, c_black, c_black, c_black, c_black, false); // Original black box draw function
	draw_rectangle_colour(x+10, y+15-round(dial_ease/30), x+210, y+153, c_black, c_black, c_black, c_black, false); // Draws black box that appears
	draw_set_alpha(dial_ease/500);
	draw_rectangle_colour(tmp_xl1, tmp_yl1+3, tmp_xl2, tmp_yl2, c_white, c_white, c_white, c_white, false);
	draw_set_alpha(1);
	textDraw(x+14, (y+45)-round(dial_ease/30), "fName", c_white, 18, 200, 1, false, dial_ease/100, "#"+string(ue)+": "+ce[ue,1]); //String for skin name
	textDraw(x+14, (y+65)-round(dial_ease/30), "fName", c_white, 18, 200, 1, false, dial_ease/100, ce[ue,3]); //Text for skin source
	textDraw(x+14, (y+85)-round(dial_ease/30), "fName", c_white, 18, 200, 1, false, dial_ease/100, ce[ue,2]); //Text for skin description

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
