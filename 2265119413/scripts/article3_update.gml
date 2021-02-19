//Ground update

switch(mode) {
	case 0://Transition
		sprite_index = asset_get("empty_sprite");
	break;
	case 1://Bright Moon Cottage
		sprite_index = sprite_get("groundbm");
	break;
	case 2://Natural World
		sprite_index = sprite_get("groundnw");
	break;
	case 3://HAPPY TOWN
		sprite_index = sprite_get("groundht");
	break;
	case 4://Violence District
		sprite_index = sprite_get("groundvd");
	break;
	case 5://Sun Faces Heave
		sprite_index = sprite_get("groundsf");
	break;
	case 6://Black Space
		sprite_index = sprite_get("groundbs");
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