//Platforms update

switch(mode) {
	case 0://Transition
		mask_index = asset_get("empty_sprite");
	break;
	case 1://Bright Moon Cottage
		mask_index = bright;
		x = brightx;
		y = brighty;
	break;
	case 2://Natural World
		mask_index = natural;
		x = naturalx;
		y = naturaly;
	break;
	case 3://HAPPY TOWN
		mask_index = happy;
		x = happyx;
		y = happyy;
	break;
	case 4://Violence District
		mask_index = violence;
		x = violencex;
		y = violencey;
	break;
	case 5://Sun Faces Heave
		mask_index = sun;
		x = sunx;
		y = suny;
	break;
	case 6://Black Space
		mask_index = black;
		x = blackx;
		y = blacky;
	break;
}

if(should_exist == false){
	mask_index = asset_get("empty_sprite");
}