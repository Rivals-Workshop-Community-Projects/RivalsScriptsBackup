// It's really weird how small this update file is, isn't it?
// like go compare this to Kris rn, it's amazing.

if soul_cooldown > 0{
	soul_cooldown--;
}

if soul != noone{
	if soul.lifetime == soul.lifetime_max - 1{
		sound_play(sound_get("sfx_kris_ping"));
	}
}

if get_player_color(player) == 26 {
	hue+=1 if hue>255 hue-=255;
	//make hue shift every step + loop around

	color_rgb=make_color_rgb(240, 112, 160);
	color_rgb2=make_color_rgb(209, 83, 153);
	color_rgb3=make_color_rgb(148, 53, 124);
	//make a gamemaker color variable using kris' default color (sword)
	hue2=(color_get_hue(color_rgb)+hue) mod 255;
	//shift that colour by Hue, make sure it also loops
	color_hsv=make_color_hsv(hue2,color_get_saturation(color_rgb),color_get_value(color_rgb)); 
	color_hsv2=make_color_hsv(hue2,color_get_saturation(color_rgb2),color_get_value(color_rgb2));
	color_hsv3=make_color_hsv(hue2,color_get_saturation(color_rgb3),color_get_value(color_rgb3));
	//make a gamemaker color variable using the new hue
	//set the new color using rgb values from the gamemaker color
	
	stronghit_col = color_hsv;
	soul_col = color_hsv;
}