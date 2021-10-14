// css drawww

// muno phone touch support
	muno_event_type = 6;
	user_event(14);
	
// rainbow alts for css
// credit to hollow knight mod


var doNotInitShader = "alt_name" in self; // check if running for the first time


if player == 0{
    doNotInitShader = true;
}

if !("hue" in self) hue = 0
if get_player_color(player) = 12 { // rainbow alt (hair, crowbar edges, pants)
	hue+=1 if hue>255 hue-=255;
	//make hue shift every step + loop around
	
	color_rgb=make_color_rgb(255, 121, 255);
	hue3=(color_get_hue(color_rgb)+hue) mod 255;
	color_hsv=make_color_hsv(hue3,color_get_saturation(color_rgb),color_get_value(color_rgb));
	set_color_profile_slot(12,1,color_get_red(color_hsv),color_get_green(color_hsv),color_get_blue(color_hsv));
	
	color_rgb=make_color_rgb(255, 121, 255);
	hue5=(color_get_hue(color_rgb)+hue) mod 255;
	color_hsv=make_color_hsv(hue5,color_get_saturation(color_rgb),color_get_value(color_rgb));
	set_color_profile_slot(12,3,color_get_red(color_hsv),color_get_green(color_hsv),color_get_blue(color_hsv));
	
	color_rgb=make_color_rgb(255, 121, 255);
	hue7=(color_get_hue(color_rgb)+hue) mod 255;
	color_hsv=make_color_hsv(hue7,color_get_saturation(color_rgb),color_get_value(color_rgb));
	set_color_profile_slot(12,5,color_get_red(color_hsv),color_get_green(color_hsv),color_get_blue(color_hsv));
	
}
else if get_player_color(player) = 8 { // sakk alt (crowbar, crowbar edges)
	hue+=1 if hue>255 hue-=255;
	//make hue shift every step + loop around

	color_rgb=make_color_rgb(255, 121, 255);
	hue6=(color_get_hue(color_rgb)+hue) mod 255;
	color_hsv=make_color_hsv(hue6,color_get_saturation(color_rgb),color_get_value(color_rgb));
	set_color_profile_slot(8,4,color_get_red(color_hsv),color_get_green(color_hsv),color_get_blue(color_hsv));
	
	color_rgb=make_color_rgb(255, 121, 255);
	hue7=(color_get_hue(color_rgb)+hue) mod 255;
	color_hsv=make_color_hsv(hue7,color_get_saturation(color_rgb),color_get_value(color_rgb));
	set_color_profile_slot(8,5,color_get_red(color_hsv),color_get_green(color_hsv),color_get_blue(color_hsv));
	
}
init_shader();

if(!doNotInitShader){
    init_shader(); // makes the shader update when you return to the CSS (don't know why the game is coded so that this necessary)
}

