//Clouds update

if(mode == 3){//Sun Faces moon help
	if(x < -1446){
		x = 0;
	}
	y = 170;
	parallax_x = -0.08
	parallax_y = -0.12
	depth = 30
	image_xscale = 1;
} else if(mode == 4){//Violence District water
	x = 0;
	y = 660;
	parallax_x = 0
	parallax_y = 0
	depth = -10;
	image_xscale = 2000;
} else if(mode == 5){//Sun Faces fog
	if(x < -324){
		x = 0;
	}
	y = 530;
	parallax_x = -0.23
	parallax_y = -0.23
	depth = 29;
	image_xscale = 1;
} else{
	if(x < -1446){
		x = 0;
	}
	y = 170;
	parallax_x = -0.08
	parallax_y = -0.12
	depth = 31
	image_xscale = 1;
}

switch(mode) {
	case 0://Transition
		sprite_index = asset_get("empty_sprite");
	break;
	case 1://Bright Moon Cottage
		sprite_index = sprite_get("clouds_bc");
	break;
	case 2://Natural World
		sprite_index = sprite_get("clouds_nw");
	break;
	case 3://HAPPY TOWN
		sprite_index = sprite_get("clouds_ht");
	break;
	case 4://Violence District
		sprite_index = sprite_get("water");
	break;
	case 5://Sun Faces Heave
		sprite_index = sprite_get("fog");
	break;
	case 6://Black Space
		sprite_index = asset_get("empty_sprite");
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