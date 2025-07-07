//location debugger

var rwc = round(room_width/2)
var rhc = round(room_height/2)
	
	
if cutscene_timer != 0 {
	var a_tmp = ease_expoOut( 120, 0, cutscene_timer, 60 )/100
	draw_sprite_ext( sprite_get("flash2"), 0, 0, 0, 8000, 8000, 0, -1, 1);
	draw_sprite_ext( sprite_get("flash"), 0, 0, 0, 3000, 3000, 0, -1, a_tmp/((a_tmp>1)?1:3));
}

draw_set_halign(fa_left)
draw_set_valign(fa_middle)
draw_set_font(asset_get("roaMBLFont"))


if cutscene_timer > 360 && cutscene_timer < 800 { 
   draw_set_alpha(1);
   draw_sprite_ext(sprite_get("cutscene"), 0, 0, 0, 1, 1, 0, -1, (cutscene_timer - 360) / 60 )
   draw_sprite_ext(sprite_get("orbthing"), get_gameplay_time() / 4, 0, ease_linear(0, -16, cutscene_timer - 360, 600), 1, 1, 0, -1, (cutscene_timer - 360) / 60 )
   draw_text_color(20, 515, real_string, c_white, c_white, c_white, c_white, 1)

}
if cutscene_timer >= 800 {
	draw_set_alpha(((cutscene_timer - 800) / 120));
    draw_sprite_ext(sprite_get("cutscene"), 0, 0, 0, 1, 1, 0, -1, 1 - ((cutscene_timer - 800) / 120))
    draw_sprite_ext(sprite_get("orbthing"), get_gameplay_time() / 2, 0,  ease_linear(0, -16, cutscene_timer - 360, 600), 1, 1, 0, -1, 1 - ((cutscene_timer - 800) / 120))
    draw_text_color(20, 515, real_string, c_white, c_white, c_white, c_white, 1 -((cutscene_timer - 800) / 120))
}

with oPlayer{ 
	if move_cooldown[AT_EXTRA_3] != 0 {
		other.paropac = -1 * (move_cooldown[AT_EXTRA_3] / 120) + 1
		with other {
			draw_text_color(730, 515, "hold parry to skip.", c_white, c_white, c_white, c_white, paropac)
			print(paropac)
			
		}
	}
}




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
var col1 = make_color_rgb(110, 169, 185);
draw_set_alpha(tw1/2);
draw_rectangle_colour(0, bh, vw, bh+40, c_black, c_black, c_black, c_black, false);
draw_set_alpha(tw1);
draw_rectangle_colour(0, bh+4, vw, bh+5, col1, col1, col1, col1, false);

switch(mus){
	case 1: //any dir
		var mus_name = "Alternate Set: Coalescence";
		break;
	case 0: //shield
		var mus_name = "LAST STOCK: Double F-ing Rainbow Returns";
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
var col1 = make_color_rgb(110, 169, 185);
draw_set_alpha(tw1/2);
draw_rectangle_colour(0, bh, vw, bh+40, c_black, c_black, c_black, c_black, false);
draw_set_alpha(tw1);
draw_rectangle_colour(0, bh+4, vw, bh+5, col1, col1, col1, col1, false);

switch(mus){
	case 1: //any dir
		var mus_name = "Alternate Set: Coalescence";
		break;
	case 0: //shield
		var mus_name = "LAST STOCK: Double Fucking Rainbow Returns";
		break;
}

draw_set_font(asset_get("fName"));
draw_text_ext_transformed_colour(30+tw2, bh+15, "Music Selected: "+mus_name, 1, 1000, 1, 1, 0, c_white, c_white, c_white, c_white, tw1);
draw_set_alpha(1);

if (mus_timer > 30){
mus_phase = 3;
}

}





