
//music select test

if (mus_phase == 1){
var vw = view_get_wview()

mus_timer++;
var tw1 = ease_quartOut(0, 1, clamp(mus_timer,0,40), 40);
var tw2 = ease_quartOut(0, 30, clamp(mus_timer,0,40), 40);

var bh = 330;
var col1 = make_color_rgb(255, 255, 255);
draw_set_alpha(tw1/2);
draw_rectangle_colour(0, bh, vw, bh+40, c_black, c_black, c_black, c_black, false);
draw_set_alpha(tw1);
draw_rectangle_colour(0, bh+4, vw, bh+5, col1, col1, col1, col1, false);

switch(mus){
	case 1: //up: resign your soul
		var mus_name = "RESIGN YOUR SOUL - Exodus (of SPINSHIFT)"
		break;
	case 2: //down: veni vidi vici
		var mus_name = "Veni Vidi Vici (SNES cover) - cheep the peanut ~ original by anothermedian"
		break;
	case 3: //right: the brown note
		var mus_name = "THE BROWN NOTE - med"
		break;
	case 4: //left: megalolazing
		var mus_name = "MEGALOLAZING: bones n' trousles - Saruky"
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
var col1 = make_color_rgb(255, 255, 255);
draw_set_alpha(tw1/2);
draw_rectangle_colour(0, bh, vw, bh+40, c_black, c_black, c_black, c_black, false);
draw_set_alpha(tw1);
draw_rectangle_colour(0, bh+4, vw, bh+5, col1, col1, col1, col1, false);

switch(mus){
	case 1: //up: resign your soul
		var mus_name = "RESIGN YOUR SOUL - Exodus (of SPINSHIFT)"
		break;
	case 2: //down: veni vidi vici
		var mus_name = "Veni Vidi Vici (SNES cover) - cheep the peanut ~ original by anothermedian"
		break;
	case 3: //right: the brown note
		var mus_name = "THE BROWN NOTE - med"
		break;
	case 4: //left: megalolazing
		var mus_name = "MEGALOLAZING: bones n' trousles - Saruky"
		break;
}

draw_set_font(asset_get("fName"));
draw_text_ext_transformed_colour(30+tw2, bh+15, "Music Selected: "+mus_name, 1, 1000, 1, 1, 0, c_white, c_white, c_white, c_white, tw1);
draw_set_alpha(1);

if (mus_timer > 30){
mus_phase = 3;
}

}


//------------------------------------------------------------------------

if (devview == true){
	var scrleft = 0;
	var scrmiddle = view_get_wview()/2;
	var scrtop = 0;
	var scrroomleft = floor(view_get_xview());
	var scrroomtop = floor(view_get_yview());
	
	draw_debug_text(scrleft+16,scrtop+16,string(floor(fps))+" fps - (real: "+string(floor(fps_real))+")");
	
	draw_sprite_ext( sprite_get("cursor"), 0, mouse_x-scrroomleft, mouse_y-scrroomtop, 1, 1, 0, -1, 1 );
	draw_debug_text(mouse_x+16-scrroomleft,mouse_y+16-scrroomtop,string(string(mouse_x)+", "+string(mouse_y)));
	if(mouse_button==1){print(string(string(mouse_x)+", "+string(mouse_y)))}
}













