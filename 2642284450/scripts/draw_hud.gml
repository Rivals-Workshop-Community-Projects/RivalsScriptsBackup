
//hyuponia's simple music select template HORRIBLE VERSION
//this goes in draw_hud.gml

//this simple system allows you to select music with Right Stick while the match is starting.
//no need to rely on random music and waiting until the music you want comes on anymore!!

/* the only things you have to alter */


/*



!!!!!!!!!!!NOTICE!!!!!!!!!!
!!!!!!!!!!!NOTICE!!!!!!!!!!
!!!!!!!!!!!NOTICE!!!!!!!!!!
!!!!!!!!!!!NOTICE!!!!!!!!!!
!!!!!!!!!!!NOTICE!!!!!!!!!!

this template. or something.
you can like use this if you want but IT'S HORRIBLE.
YOU SHOULD NOT USE THIS. BUT YOU CAN. IF YOU WANTED. YOU HAVE MY PERMISSION.
sorry for strong words and caps its just that this code I MADE MYSELF is SO HORRIBLE.



*/


//music file name, in your /sounds folder
//if you want to keep it empty, keep the placeholder name and it will disallow selecting that music
var music_1 = "Aleccio";
var music_2 = "Zeroh";
var music_3 = "music_loop";
var music_4 = "music_loop2";

var music_b_1 = "offbrand";
var music_b_2 = "murderbydeals";
var music_b_3 = "deadringer";
var music_b_4 = "adblock";

var music_s_1 = "kris";
var music_s_2 = "ralsei";
var music_s_3 = "susie";
var music_s_4 = "noelle";
var music_s_5 = "64";
var music_s_6 = "void";

//confirmation sound to play when music has been changed
//sound_get and asset_get both works here.
var confirm_sound = sound_get("EyeFlash");

//music name title
var music_title_1 = "BIG SHOT (Arrangement) - Aleccio";
var music_title_2 = "BIG SHOT (Divided By Zero) - Zeroh";
var music_title_3 = "[[SPAMTON G. SPAMTON]] - BobTheGUYYYYY";
var music_title_4 = "BIG SHOT (Original) - Toby Fox";


var alt_notice = "Press the direction again for alternate music!"

var music_title_b_1 = "Off-Brand(TM) - Aleccio";
var music_title_b_2 = "Murder by Deals - Wicher";
var music_title_b_3 = "DEAD RINGER - Jamangar";
var music_title_b_4 = "ADBLOCK - Onyx Blaster";


var special_notice = "Press PARRY to select a special, character-specific music!"
//kris.
var music_title_s_1 = "GIGA PUDDING (Cover by Rare) - utgdumpsterfire";//as a japanese i refuse to write the japanese
//ralsei.
var music_title_s_2 = "MERCEDES BENZ - Yosh27";
//susie.
var music_title_s_3 = "RUDE BUSTER V2 - RavenJess";
//noelle.
var music_title_s_4 = "HAPPY NEW YEAR - The Joker";
//64 mario.
var music_title_s_5 = "BIG SHOT (Super Spamton 64) - BWGLite";
//n/a??
var music_title_s_6 = "TAKE ME WITH YOU. - Ciphgowhat";


//title name bar position
//false for below GO, true for above GO
//change when the bar overlaps the players at intial spawn point
var music_bar_above = false;

//accent line color: optional
//make it match one of your stage colors for best effect
var music_line_color = make_color_rgb(255,230,0);

//bg color: very optional
//for if black bg is hard to see in your stage or something
var music_bg_color = make_color_rgb(0,0,0);

//text color: very optional
//for when you chose white bg or something
var music_txt_color = make_color_rgb(255,255,255);



/* below is code, don't alter unless you know what you're doing */
/* yes it's kind a mess of a code, sorry */

if (!variable_instance_exists(id, "mus_phase")){
mus_phase = 0;
mus = 0;
mus_timer = 0;
extra_sel = 0;
special_available = 0;
//look at this hill of a condition its HORRIBLE
	for (var i = 4; i > 0; i -= 1) { //reads from last port to first, so it prioritizes early ports
		with (asset_get("oPlayer")){
			if (player == i){
				//print("player pass");
				if (url != ""){
					switch(real(url)){
						//i'll update this list once we have the 2 new kris's
						//regina kris 2 here
						case 1867608473: //equi kris 1
						case 2237173861: //equi kris classic
						//regina kris here
						case 2811835840: //regina ssl kris
						case 2709410073: //"kris" by Bidolf. i thought itd be fully if he counted as kris
							other.special_available = "Kris";
							//print(string(real(url)));
							break;
							
						case 2249417003: //ralsei with gun
							other.special_available = "Ralsei";
							break;
							
						case 2631618904: //susie by squidaccus
							other.special_available = "Susie";
							break;
							
						case 2904134945: //lukaru noelle
						case 2801480574: //snowgrave noelle by bonejackglitz
							other.special_available = "Noelle";
							break;
							
						case 2310580951: //64 mario
						case 1980310460: //"mariomario54321" idk who he is
						case 2190448871: //ferpe speedrunner mario
						case 2083345997: //speedrunner mario by jpacheco
						case 2977263722: //bully (from mario 64) by flophawk
							other.special_available = "64";
							break;
							
						case 2229832619: //n/a???
						case 2977835488: //qoedil too i guess
							other.special_available = "Void";
							break;
						default:
							break;
					}
				}
			}
		}
	}
//print(string(special_available));
//special_available = "64";//skip for debug

	
}

var placeholder_name = "MUSIC_FILE_NAME_HERE";

if (get_gameplay_time() <= 122){
	if (mus_phase == 0){
	with (asset_get("oPlayer")){
		
		if (left_stick_down && music_1 != placeholder_name){
			other.mus_phase = 1;
			other.mus = 1;
			
			clear_button_buffer( PC_LEFT_STICK_PRESSED );
		}
		if (right_stick_down && music_2 != placeholder_name){
			other.mus_phase = 1;
			other.mus = 2;
			
			clear_button_buffer( PC_RIGHT_STICK_PRESSED );
		}
		if (up_stick_down && music_3 != placeholder_name){
			other.mus_phase = 1;
			other.mus = 3;
			
			clear_button_buffer( PC_UP_STICK_PRESSED );
		}
		if (down_stick_down && music_4 != placeholder_name){
			other.mus_phase = 1;
			other.mus = 4;
			
			clear_button_buffer( PC_DOWN_STICK_PRESSED );
		}
		if (other.special_available != 0){
			if (shield_down){
				switch(other.special_available){
					case "Kris":
						other.mus_phase = 1;
						other.mus = 11;
					break;
					case "Ralsei":
						other.mus_phase = 1;
						other.mus = 12;
					break;
					case "Susie":
						other.mus_phase = 1;
						other.mus = 13;
					break;
					case "Noelle":
						other.mus_phase = 1;
						other.mus = 14;
					break;
					case "64":
						other.mus_phase = 1;
						other.mus = 15;
					break;
					case "Void":
						other.mus_phase = 1;
						other.mus = 16;
					break;
				}
			}
		}
		
	}//with
	if (mus_phase == 1){
		sound_play(confirm_sound)
		mus_timer = 0;
		special_available = 0;
	}
	
	}else if (mus_phase == 1){//preelse; if musphase 0
		
		with (asset_get("oPlayer")){
		
		if (other.mus == 1 && left_stick_pressed && music_b_1 != placeholder_name){
		other.mus_phase = 2;
		other.mus = 5;
		
		}
		if (other.mus == 2 && right_stick_pressed && music_b_2 != placeholder_name){
		other.mus_phase = 2;
		other.mus = 6;
		
		}
		if (other.mus == 3 && up_stick_pressed && music_b_3 != placeholder_name){
		other.mus_phase = 2;
		other.mus = 7;
		
		}
		if (other.mus == 4 && down_stick_pressed && music_b_4 != placeholder_name){
		other.mus_phase = 2;
		other.mus = 8;
		
		}
		
		}//with
		
		if (mus_phase == 2){
		sound_play(confirm_sound)
		mus_timer = 0;
		special_available = 0;
		extra_sel = 1;
		}
		
	}//if musphase 1



}//timechecker


if (get_gameplay_time() > 125 && (mus_phase == 1||mus_phase == 2)){
	switch(mus){
		case 1:
			music_play_file(music_1);
			break;
		case 2:
			music_play_file(music_2);
			break;
		case 3:
			music_play_file(music_3);
			break;
		case 4:
			music_play_file(music_4);
			break;
			
		case 5:
			music_play_file(music_b_1);
			break;
		case 6:
			music_play_file(music_b_2);
			break;
		case 7:
			music_play_file(music_b_3);
			break;
		case 8:
			music_play_file(music_b_4);
			break;
			
		case 11:
			music_play_file(music_s_1);
			break;
		case 12:
			music_play_file(music_s_2);
			break;
		case 13:
			music_play_file(music_s_3);
			break;
		case 14:
			music_play_file(music_s_4);
			break;
		case 15:
			music_play_file(music_s_5);
			break;
		case 16:
			music_play_file(music_s_6);
			break;
	}
	mus_phase = 3;//close
	mus_timer = 0;
}
if (get_gameplay_time() > 125 && special_available != 0 && mus_phase == 0){
	mus_phase = 3;
	mus_timer = 0;
}

if (mus_phase == 1 || mus_phase == 2 || mus_phase == 3 || special_available != 0){
	switch(mus){
		case 1:
			var mus_name = music_title_1
			break;
		case 2:
			var mus_name = music_title_2
			break;
		case 3:
			var mus_name = music_title_3
			break;
		case 4:
			var mus_name = music_title_4
			break;
			
		case 5:
			var mus_name = music_title_b_1
			break;
		case 6:
			var mus_name = music_title_b_2
			break;
		case 7:
			var mus_name = music_title_b_3
			break;
		case 8:
			var mus_name = music_title_b_4
			break;
			
		case 11:
			var mus_name = music_title_s_1
			break;
		case 12:
			var mus_name = music_title_s_2
			break;
		case 13:
			var mus_name = music_title_s_3
			break;
		case 14:
			var mus_name = music_title_s_4
			break;
		case 15:
			var mus_name = music_title_s_5
			break;
		case 16:
			var mus_name = music_title_s_6
			break;
	}
	
var vw = view_get_wview()

mus_timer++;
if (mus_phase == 3){
	var tw1 = ease_quartIn(1, 0, clamp(mus_timer,0,30), 30);
	var tw2 = ease_quartIn(30, 60, clamp(mus_timer,0,30), 30);
}else{ //(mus_phase == 1 || mus_phase == 2 || mus_phase == 5){ etc
	var tw1 = ease_quartOut(0, 1, clamp(mus_timer,0,40), 40);
	var tw2 = ease_quartOut(0, 30, clamp(mus_timer,0,40), 40);	
}

var bh = (music_bar_above)?130:330;
draw_set_alpha(tw1/2);
draw_rectangle_colour(0, bh, vw, bh+40, music_bg_color, music_bg_color, music_bg_color, music_bg_color, false);
draw_set_alpha(tw1);
draw_rectangle_colour(0, bh+4, vw, bh+5, music_line_color, music_line_color, music_line_color, music_line_color, false);


draw_set_font(asset_get("fName"));
if (special_available == 0){
	draw_text_ext_transformed_colour(30+tw2, bh+15, "Music Selected: "+mus_name, 1, 1000, 1, 1, 0, music_txt_color, music_txt_color, music_txt_color, music_txt_color, tw1);
	if ( (mus_phase == 1 || mus_phase == 3) && extra_sel==0 && mus<=4 ){
		draw_text_ext_transformed_colour(30+tw2, bh+15+24, alt_notice, 1, 1000, 1, 1, 0, music_line_color, music_line_color, music_line_color, music_line_color, tw1);
	}
}else{//special is availabale
	draw_text_ext_transformed_colour(30+tw2, bh+15, special_notice+" ("+string(special_available)+")", 1, 1000, 1, 1, 0, music_line_color, music_line_color, music_line_color, music_line_color, tw1/1.5);
}
draw_set_alpha(1);

if (mus_phase == 3){
	if (mus_timer > 30){
	mus_phase = -1;
	special_available = 0;
	}
}

}//musphase check 123



//music select template HORRIBLE VERSION end










