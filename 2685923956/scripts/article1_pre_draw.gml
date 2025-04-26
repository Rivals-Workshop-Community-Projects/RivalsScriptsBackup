//!?
//draw_rectangle_colour(x+20, y+20, x-20, y-20, c_red, c_red, c_red, c_red, false);
var alphastorage = draw_get_alpha()
var cb = c_black
var tmp_w = 120;
var tmp_wd = tmp_w/2
var tmp_wde = tmp_wd+20

if (state==1){
	var tmp_a = ease_quadOut( 0, 40, state_timer, state_end )/100
	draw_set_alpha(tmp_a);
	//draw_line_width_colour(x, y-1620, x, y+1620, 500-(20-(tmp_a*50)), c_black, c_black);
	//draw_line_width_colour(x, y-1620, x, y+1620, 520-(32-(tmp_a*80)), c_black, c_black);
	//print("yes")
	//print(string(tmp_a))
	draw_rectangle_colour(x-tmp_wd+(20-(tmp_a*50)), y-1620, x+tmp_wd-(20-(tmp_a*50)), y+1620, cb, cb, cb, cb, false);
	draw_rectangle_colour(x-tmp_wde+(32-(tmp_a*80)), y-1620, x+tmp_wde-(32-(tmp_a*80)), y+1620, cb, cb, cb, cb, false);
}
if (state==2||state==3||state==4){
	draw_set_alpha(0.4);
	//draw_line_width_colour(x, y-1620, x, y+1620, 500-(20-(tmp_a*50)), c_black, c_black);
	//draw_line_width_colour(x, y-1620, x, y+1620, 520-(32-(tmp_a*80)), c_black, c_black);
	draw_rectangle_colour(x-tmp_wd, y-1620, x+tmp_wd, y+1620, cb, cb, cb, cb, false);
	draw_rectangle_colour(x-tmp_wde, y-1620, x+tmp_wde, y+1620, cb, cb, cb, cb, false);
}
if (state==5){
	var tmp_a = ease_quadIn( 40, 0, state_timer, state_end )/100
	draw_set_alpha(tmp_a);
	//draw_line_width_colour(x, y-1620, x, y+1620, 500-(80-(tmp_a*200)), c_black, c_black);
	//draw_line_width_colour(x, y-1620, x, y+1620, 520-(40-(tmp_a*100)), c_black, c_black);
	draw_rectangle_colour(x-tmp_wd+(80-(tmp_a*200)), y-1620, x+tmp_wd-(80-(tmp_a*200)), y+1620, cb, cb, cb, cb, false);
	draw_rectangle_colour(x-tmp_wde+(40-(tmp_a*100)), y-1620, x+tmp_wde-(40-(tmp_a*100)), y+1620, cb, cb, cb, cb, false);
}


draw_set_alpha(alphastorage);
	//draw_rectangle_colour(x, y-1620, x+1, y+1620, c_red, c_red, c_red, c_red, false);