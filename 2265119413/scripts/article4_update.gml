//Background colors update

switch(mode) {
	case 0://Transition
		sprite_index = asset_get("empty_sprite");
	break;
	case 1://Bright Moon Cottage
		sprite_index = sprite_get("bgbright");
	break;
	case 2://Natural World
		sprite_index = sprite_get("bghappy");
	break;
	case 3://HAPPY TOWN
		sprite_index = sprite_get("bghappy");
	break;
	case 4://Violence District
		sprite_index = sprite_get("bgviolence");
	break;
	case 5://Sun Faces Heave
		sprite_index = sprite_get("bgblack");
	break;
	case 6://Black Space
		sprite_index = sprite_get("bgblack");
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