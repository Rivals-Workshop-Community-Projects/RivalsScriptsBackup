

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
var col1 = make_color_rgb(255, 0, 0);
draw_set_alpha(tw1/2);
draw_rectangle_colour(0, bh, vw, bh+40, c_black, c_black, c_black, c_black, false);
draw_set_alpha(tw1);
draw_rectangle_colour(0, bh+4, vw, bh+5, col1, col1, col1, col1, false);

switch(mus){
	case 1: //up
		var mus_name = "BLACK MOON RISING - Answearing Machine";
		break;
	case 2: //down
		var mus_name = "Moon Over The Castle (Groove OST)";
		break;
	case 3: //left
		var mus_name = "PAINWORLD III";
		break;
	case 4: //right
		var mus_name = "Moon Over The Castle (GT5 Prologue)";
		break;
	case 0: //shield
		var mus_name = "LAST STOCK: MEGALO STRIKE BACK (Emihead SMASH Mix.)";
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
var col1 = make_color_rgb(255, 0, 0);
draw_set_alpha(tw1/2);
draw_rectangle_colour(0, bh, vw, bh+40, c_black, c_black, c_black, c_black, false);
draw_set_alpha(tw1);
draw_rectangle_colour(0, bh+4, vw, bh+5, col1, col1, col1, col1, false);

switch(mus){
	case 1: //up
		var mus_name = "BLACK MOON RISING - Answearing Machine";
		break;
	case 2: //down
		var mus_name = "Moon Over The Castle (Groove OST)";
		break;
	case 3: //left
		var mus_name = "PAINWORLD III";
		break;
	case 4: //right
		var mus_name = "Moon Over The Castle (GT5 Prologue)";
		break;
	case 0: //shield
		var mus_name = "LAST STOCK: MEGALO STRIKE BACK (Emihead SMASH Mix.)";
		break;
}

draw_set_font(asset_get("fName"));
draw_text_ext_transformed_colour(30+tw2, bh+15, "Music Selected: "+mus_name, 1, 1000, 1, 1, 0, c_white, c_white, c_white, c_white, tw1);
draw_set_alpha(1);

if (mus_timer > 30){
mus_phase = 3;
}

}





