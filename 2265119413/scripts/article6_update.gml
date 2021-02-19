//Backgrounds update

switch(mode) {
	case 0://Transition
		sprite_index = asset_get("empty_sprite");
	break;
	case 1://Bright Moon Cottage
		sprite_index = asset_get("empty_sprite");
	break;
	case 2://Natural World
		sprite_index = natural;
		x = naturalx;
    	y = naturaly;
    	parallax_x = naturalpx;
		parallax_y = naturalpy;
	break;
	case 3://HAPPY TOWN
		sprite_index = happy;
		x = happyx;
    	y = happyy;
    	parallax_x = happypx;
		parallax_y = happypy;
	break;
	case 4://Violence District
		sprite_index = violence;
		x = violencex;
    	y = violencey;
    	parallax_x = violencepx;
		parallax_y = violencepy;
	break;
	case 5://Sun Faces Heave
		sprite_index = sun;
		x = sunx;
    	y = suny;
    	parallax_x = sunpx;
		parallax_y = sunpy;
	break;
	case 6://Black Space
		sprite_index = black;
		x = blackx;
    	y = blacky;
    	parallax_x = blackpx;
		parallax_y = blackpy;
	break;
}

if(should_exist == true){
	if(image_alpha < 1){
		image_alpha += 0.05;
	}
}
else{
	if(image_alpha > 0){
		image_alpha -= 0.05;
	}
}

image_index = article_animation_frame;
if (article_animation_frame < image_number) article_animation_frame += article_animation_speed;
else article_animation_frame = 0;