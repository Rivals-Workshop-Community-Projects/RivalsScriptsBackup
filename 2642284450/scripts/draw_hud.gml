
//hyuponia's simple music select template
//this goes in draw_hud.gml

//this simple system allows you to select music with Right Stick while the match is starting.
//no need to rely on random music and waiting until the music you want comes on anymore!!

/* the only things you have to alter */



//music file name, in your /sounds folder
//if you want to keep it empty, keep the placeholder name and it will disallow selecting that music
var music_1 = "Aleccio";
var music_2 = "Zeroh";
var music_3 = "music_loop";
var music_4 = "music_loop2";

//confirmation sound to play when music has been changed
//sound_get and asset_get both works here.
var confirm_sound = sound_get("EyeFlash");

//music name title
var music_title_1 = "BIG SHOT (Arrangement) - Aleccio";
var music_title_2 = "BIG SHOT (Divided By Zero) - Zeroh";
var music_title_3 = "[[SPAMTON G. SPAMTON]] - BobTheGUYYYYY";
var music_title_4 = "BIG SHOT (Original) - Toby Fox";

//title name bar position
//false for below GO, true for above GO
//change when the bar overlaps the players at intial spawn point
var music_bar_above = true;

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
}

var placeholder_name = "MUSIC_FILE_NAME_HERE";

if (get_gameplay_time() <= 122 && mus_phase == 0){
	with (asset_get("oPlayer")){
		if (left_stick_down && music_1 != placeholder_name){
			other.mus_phase = 1;
			other.mus = 1;
		}
		if (right_stick_down && music_2 != placeholder_name){
			other.mus_phase = 1;
			other.mus = 2;
		}
		if (up_stick_down && music_3 != placeholder_name){
			other.mus_phase = 1;
			other.mus = 3;
		}
		if (down_stick_down && music_4 != placeholder_name){
			other.mus_phase = 1;
			other.mus = 4;
		}
	}
	if (mus_phase == 1){
		sound_play(confirm_sound)
	}
}
if (get_gameplay_time() > 125 && mus_phase == 1){
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
	}
	mus_phase = 2;
	mus_timer = 0;
}



if (mus_phase == 1){
var vw = view_get_wview()

mus_timer++;
var tw1 = ease_quartOut(0, 1, clamp(mus_timer,0,40), 40);
var tw2 = ease_quartOut(0, 30, clamp(mus_timer,0,40), 40);

var bh = (music_bar_above)?130:330;
draw_set_alpha(tw1/2);
draw_rectangle_colour(0, bh, vw, bh+40, music_bg_color, music_bg_color, music_bg_color, music_bg_color, false);
draw_set_alpha(tw1);
draw_rectangle_colour(0, bh+4, vw, bh+5, music_line_color, music_line_color, music_line_color, music_line_color, false);

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
}

draw_set_font(asset_get("fName"));
draw_text_ext_transformed_colour(30+tw2, bh+15, "Music Selected: "+mus_name, 1, 1000, 1, 1, 0, music_txt_color, music_txt_color, music_txt_color, music_txt_color, tw1);
draw_set_alpha(1);

}

if (mus_phase == 2){
var vw = view_get_wview()

mus_timer++;
var tw1 = ease_quartIn(1, 0, clamp(mus_timer,0,30), 30);
var tw2 = ease_quartIn(30, 60, clamp(mus_timer,0,30), 30);

var bh = (music_bar_above)?130:330;
draw_set_alpha(tw1/2);
draw_rectangle_colour(0, bh, vw, bh+40, music_bg_color, music_bg_color, music_bg_color, music_bg_color, false);
draw_set_alpha(tw1);
draw_rectangle_colour(0, bh+4, vw, bh+5, music_line_color, music_line_color, music_line_color, music_line_color, false);

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
}

draw_set_font(asset_get("fName"));
draw_text_ext_transformed_colour(30+tw2, bh+15, "Music Selected: "+mus_name, 1, 1000, 1, 1, 0, music_txt_color, music_txt_color, music_txt_color, music_txt_color, tw1);
draw_set_alpha(1);

if (mus_timer > 30){
mus_phase = 3;
}

}

//music select template end
