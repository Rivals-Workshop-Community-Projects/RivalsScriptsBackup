//

if "shadechange" in self {
if shadechange = true && phase < 6{
    set_character_color_slot(1,color_get_red(color_hsv),color_get_green(color_hsv),color_get_blue(color_hsv));
    set_character_color_slot(4,color_get_red(color_hsv),color_get_green(color_hsv),color_get_blue(color_hsv));
    set_article_color_slot(1,color_get_red(color_hsv),color_get_green(color_hsv),color_get_blue(color_hsv));
    set_article_color_slot(4,color_get_red(color_hsv),color_get_green(color_hsv),color_get_blue(color_hsv));
    shadechange = false
}


if phaseh >= 9 {
    set_character_color_slot(0,255, 0, 0);
    set_character_color_slot(1,158, 0, 0);
    set_character_color_slot(2,148, 24, 63);
    set_character_color_slot(4,204, 0, 75);
    
    set_article_color_slot(0,255, 0, 0);
    set_article_color_slot(1,158, 0, 0);
    set_article_color_slot(2,148, 44, 73);
    set_article_color_slot(4,204, 0, 75);
}

if phaseh == 6 {

    set_character_color_slot(2,243, 159, 126);

    set_article_color_slot(2,243, 159, 126);

}

if phaseh == 7 {

    set_character_color_slot(2,243, 121, 114);

    set_article_color_slot(2,243, 121, 114);
     set_article_color_slot(3,43, 40, 41);
     set_character_color_slot(3,43, 40, 41);

}

if phaseh == 8 {
	set_character_color_slot(3,33, 20, 21);
    set_article_color_slot(3,33, 20, 21);
    hue += 15
	if hue>255 {
		hue = 0;
	}
	//make hue shift every step + loop around
	color_rgb=make_color_rgb(255, 100, 50);
	//make a gamemaker color variable using kirby's default color (body)
	hue2=(color_get_hue(color_rgb)+hue) mod 255;
	color_hsv=make_color_hsv(hue2,color_get_saturation(color_rgb),color_get_value(color_rgb)); 
	
    set_character_color_slot(1,color_get_red(color_hsv),color_get_green(color_hsv),color_get_blue(color_hsv));
    set_character_color_slot(2,207, 48, 106);
    set_article_color_slot(1,color_get_red(color_hsv),color_get_green(color_hsv),color_get_blue(color_hsv));
    set_article_color_slot(2,207, 48, 106);
    set_character_color_slot(4,color_get_red(color_hsv),color_get_green(color_hsv),color_get_blue(color_hsv));
    set_article_color_slot(4,color_get_red(color_hsv),color_get_green(color_hsv),color_get_blue(color_hsv));
}
}