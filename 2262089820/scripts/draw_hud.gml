//music select test

/*
draw_set_font(asset_get("fName"));
draw_text_ext_transformed_colour(20, 20, "fps      : "+string(fps), 1, 1000, 1, 1, 0, c_white, c_white, c_white, c_white, 1);
draw_text_ext_transformed_colour(20, 50, "real fps : "+string(fps_real), 1, 1000, 1, 1, 0, c_white, c_white, c_white, c_white, 1);
draw_text_ext_transformed_colour(20, 80, "optimize : "+string(lowrealfpscount)+", "+string((optimalmode)?"yes":"no"), 1, 1000, 1, 1, 0, c_white, c_white, c_white, c_white, 1);
*/

if (mus_phase == 1){
var vw = view_get_wview()

mus_timer++;
var tw1 = ease_quartOut(0, 1, clamp(mus_timer,0,40), 40);
var tw2 = ease_quartOut(0, 30, clamp(mus_timer,0,40), 40);

var bh = 330;
var col1 = make_color_rgb(255, 165, 0);
draw_set_alpha(tw1/2);
draw_rectangle_colour(0, bh, vw, bh+40, c_black, c_black, c_black, c_black, false);
draw_set_alpha(tw1);
draw_rectangle_colour(0, bh+4, vw, bh+5, col1, col1, col1, col1, false);

switch(mus){
	case 1: //sobaniitekuretane
		var mus_name = "そばにいてくれたね"
		break;
	case 2: //earth
		var mus_name = "Earth"
		break;
	case 3: //exothermic
		var mus_name = "Exothermic"
		break;
	case 4: //a spaceship fantasy
		var mus_name = "A Spaceship Fantasy"
		break;
	case 0: //TWILIGHT v3
		var mus_name = "TWILIGHT v3"
		break;
	case -1: //a
		var mus_name = "practice mode"
		break;
}

draw_set_font(asset_get("fName"));
draw_text_ext_transformed_colour(30+tw2, bh+15, "Music Selected: "+mus_name, 1, 1000, 1, 1, 0, c_white, c_white, c_white, c_white, tw1);
draw_set_alpha(1);

}

if (mus_phase == 2){
var vw = view_get_wview()

mus_timer++;
var tw1 = ease_quartIn(1, 0, clamp(mus_timer,0,30), 30);
var tw2 = ease_quartIn(30, 60, clamp(mus_timer,0,30), 30);

var bh = 330;
var col1 = make_color_rgb(255, 165, 0);
draw_set_alpha(tw1/2);
draw_rectangle_colour(0, bh, vw, bh+40, c_black, c_black, c_black, c_black, false);
draw_set_alpha(tw1);
draw_rectangle_colour(0, bh+4, vw, bh+5, col1, col1, col1, col1, false);

switch(mus){
	case 1: //sobaniitekuretane
		var mus_name = "そばにいてくれたね"
		break;
	case 2: //earth
		var mus_name = "Earth"
		break;
	case 3: //exothermic
		var mus_name = "Exothermic"
		break;
	case 4: //a spaceship fantasy
		var mus_name = "A Spaceship Fantasy"
		break;
	case 0: //TWILIGHT v3
		var mus_name = "TWILIGHT v3"
		break;
	case -1: //a
		var mus_name = "practice mode"
		break;
}

draw_set_font(asset_get("fName"));
draw_text_ext_transformed_colour(30+tw2, bh+15, "Music Selected: "+mus_name, 1, 1000, 1, 1, 0, c_white, c_white, c_white, c_white, tw1);
draw_set_alpha(1);

if (mus_timer > 30){
mus_phase = 3;
}

}
