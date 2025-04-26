// user_event4.gml

/*
Used specifically for the Pandemonium Cloak alt.
*/
determinedPandemoniumCloakColor = random_func_2( ((x+y) + get_gameplay_time()) mod 12, 100000, true) mod numberOfPossiblePandemoniumCloakColors;
//print("I choose color: " + string(determinedPandemoniumCloakColor));

sound_play(sound_get("sfx_SKPoS_pandcloak_change"));

//prevCloakColors

switch array_length_1d(prevCloakColors){
	case 10:
		var j = 0;
		var myIndex = array_find_index(prevCloakColors, determinedPandemoniumCloakColor);
		while (array_find_index(prevCloakColors, determinedPandemoniumCloakColor) != -1){
			determinedPandemoniumCloakColor = floor((random_func(j, 1000, true) * random_func_2(floor(x+y) mod 10, 300, false)) mod numberOfPossiblePandemoniumCloakColors);
			j++;
		}
		//print(myIndex)
		if (myIndex != -1){
			prevCloakColors[myIndex] = determinedPandemoniumCloakColor;
		}
	break;
	default:
		var j = 0;
		while (array_find_index(prevCloakColors, determinedPandemoniumCloakColor) != -1){
			determinedPandemoniumCloakColor = floor((random_func(j, 1000, true) * random_func_2(floor(x+y) mod 10, 300, false)) mod numberOfPossiblePandemoniumCloakColors);
			j++;
		}
		array_push(prevCloakColors, determinedPandemoniumCloakColor);
	break;	
	case 0:
		array_push(prevCloakColors, determinedPandemoniumCloakColor);
	break;
	
}

init_shader();