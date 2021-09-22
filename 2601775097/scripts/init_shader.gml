switch (get_player_color(player))
{
	case 0: //default powers recoloring
		set_character_color_slot(6, 159, 241, 255); //LIGHT
		set_character_color_slot(7, 76, 133, 233); //FIRE

		set_article_color_slot(6, 159, 241, 255); //LIGHT
		set_article_color_slot(7, 76, 133, 233); //FIRE

		set_character_color_shading(7, 1.5); //FIRE
		break;

	case 1: //p2 alt light shading amplify + fire reverse
		set_character_color_shading(6, 1.5); //LIGHT
		set_character_color_shading(7, -1); //FIRE
		break;


	case 2: case 3: //venus + liav alt fire color shading amplify
		set_character_color_shading(7, 1.5); //FIRE
		break;
	
	case 4: case 11: case 15: //roy, festive and ain alts fire amplify
		set_character_color_shading(7, 1.5); //FIRE
		break;
	
	case 5: case 6: //asra and sahar alt reverse shading
		set_character_color_shading(6, -1.5); //LIGHT
		set_character_color_shading(7, -1.5); //FIRE
		break;

	case 7: //gameboy alt 8-bit shader + outline
		for(i = 0; i < 8; i++) set_character_color_shading(i, 0);
		outline_color = [15, 56, 15];
		break;

	case 8: //NES alt 8-bit shader + outline
		for(i = 0; i < 8; i++) set_character_color_shading(i, 0);
		outline_color = [32, 0, 178];
		break;

	case 9: case 13: case 16: //abyss, us!pap and childe alt reverse shading for fire
		set_character_color_shading(7, -1.5); //FIRE
		break;
	
	case 12: //(&) knuckles' alt fire, light and light blue cloth amplify
		set_character_color_shading(3, 1.5); //CLOTHLIGHTBLUE
		set_character_color_shading(6, 1.5); //LIGHT
		set_character_color_shading(7, 1.5); //FIRE
		break;
	
	case 14: //okuu reverse fire and light shading
		set_character_color_shading(6, -3); //LIGHT
		set_character_color_shading(7, -1.5); //FIRE
		break;

	case 18: //nero reverse fire and light shading
		set_character_color_shading(6, -2); //LIGHT
		set_character_color_shading(7, -1); //FIRE
		break;
	
	case 21: case 22: //jurami and baysen alts reverse shading for fire
		set_character_color_shading(7, -1); //FIRE
		break;

	case 24: //splatracer's alt
		set_character_color_shading(3, 1.5); //CLOTHLIGHTBLUE
		set_character_color_shading(6, -3); //LIGHT
		set_character_color_shading(7, 2); //FIRE
		break;

	case 25: //prober's alt fire shading amplify
		set_character_color_shading(7, 1.5); //FIRE
		break;

	case 28: //iroh alt light and fire shading amplify
		set_character_color_shading(6, 1.5); //LIGHT
		set_character_color_shading(7, 2); //FIRE
		break;

	case 30: //helel alt shading tweaking
		set_character_color_shading(6, 4); //LIGHT
		set_character_color_shading(7, -2); //FIRE
		break;
	case 31: //theikos black shading amplify
		set_character_color_shading(5, 1.5); //CLOTHBLACK
	/*
	case 7: //arc alt alpha
		for (var slot_num = 0; slot_num < 5; slot_num++)
		{
			// reset the color to default
			var temp_r = get_color_profile_slot_r(7, slot_num);
			var temp_g = get_color_profile_slot_g(7, slot_num);
			var temp_b = get_color_profile_slot_b(7, slot_num);
			set_character_color_slot(slot_num, temp_r, temp_g, temp_b, .75);
			set_article_color_slot(slot_num, temp_r, temp_g, temp_b, .75);
		}

		set_character_color_shading(7, -2); //FIRE
		break;
	*/
}

//birthday alt stuff
//this part is in charge of actually changing bar's colors in-game (reloading in training mode will mess with bar's effects)
var myday = 25;
var mymonth = 10;
if (current_day = myday && current_month == mymonth) birthboy = true;
else birthboy = false;

if (get_player_color(player) == 11 && birthboy)
{
	set_color_profile_slot(11, 0, 206, 216, 227); //CLOTHWHITE
    set_color_profile_slot(11, 1, 182, 88, 61); //HAIR
    set_color_profile_slot(11, 2, 245, 181, 150); //SKIN
    set_color_profile_slot(11, 3, 43, 60, 140); //CLOTHLIGHTBLUE
    set_color_profile_slot(11, 4, 43, 60, 140); //CLOTHDARKBLUE
    set_color_profile_slot(11, 5, 43, 60, 140); //CLOTHBLACK
	set_color_profile_slot(11, 6, 159, 241, 255); //LIGHT
	set_color_profile_slot(11, 7, 76, 133, 233); //FIRE

	//fire shading amplify
	set_character_color_shading(7, 1.5); //FIRE
}

//burning fury outline colors
switch (get_player_color(player))
{
    case 0: //default
        burn_outline = [33, 57, 155];
        break;
    case 1: //P2
        burn_outline = [141, 144, 144];
        break;
    case 2: //venus
        burn_outline = [166, 65, 57];
        break;
    case 3: //liav
        burn_outline = [145, 65, 149];
        break;
    case 4: //roy
        burn_outline = [128, 55, 28];
        break;
    case 5: //asra
        burn_outline = [248, 33, 93];
        break;
    case 6: //sahar
        burn_outline = [124, 4, 171];
        break;
    case 7: //GB
        burn_outline = [83, 122, 62];
        break;
    case 8: //NES
        burn_outline = [32, 0, 178];
        break;
	case 9: //abyss
        burn_outline = [228, 125, 255];
        break;
	case 10: //infamous
		burn_outline = [51, 158, 158];
		break;
    case 11: //seasonals
		switch(get_match_setting(SET_SEASON))
		{
			case 1: //v-day
				burn_outline = [97, 43, 56];
        		break;
			case 2: //summer
				burn_outline = [153, 85, 39];
        		break;
			case 3: //halloween
				burn_outline = [94, 85, 68];
        		break;
			case 4: //x-mas
				burn_outline = [175, 153, 148];
        		break;
		}
		if (birthboy) burn_outline = [33, 57, 155];
		break;
	case 12: //knuckles
		burn_outline = [153, 75, 51];
		break;
	case 13: //US!papyrus
		burn_outline = [255, 134, 40]; //bravery
		//burn_outline = [40, 255, 255]; //patience
		break;
	case 14: //okuu
		burn_outline = [255, 147, 96];
		break;
	case 15: //ain
        burn_outline = [35, 116, 123];
        break;
	case 16: //childe
		burn_outline = [191, 86, 238];
		break;
	case 17: //beowulf
		burn_outline = [33, 34, 87];
		break;
	case 18: //nero
		burn_outline = [67, 179, 255];
		break;
	case 19: //shoto
		burn_outline = [156, 104, 31];
		break;
	case 28: //basara
		burn_outline = [0, 0, 0];
		break;
    case 21: //jurami
        burn_outline = [146, 11, 0];
        break;
    case 22: //baysen
        burn_outline = [40, 0, 102];
		break;
	case 23: //shiro
		burn_outline = [129, 23, 5];
        break;
    case 24: //splatracer's skin
        burn_outline = [72, 151, 0];
        break;
	case 25: //prober's skin
		burn_outline = [159, 88, 19];
		break;
	case 26: //trail mix's skin
		burn_outline = [140, 60, 127];
		break;
	case 27: //monarch
		burn_outline = [7 , 65, 196];
		break;
	case 28: //iroh
		burn_outline = [139, 68, 17];
		break;
	case 29: //olympia
		burn_outline = [143, 48, 99];
		break;
	case 30: //helel
		if("color_rate" in self)
		{
			var color_rgb = make_color_rgb(150, 0, 0);
			var hue = (color_get_hue(color_rgb)+color_rate) mod 255; //color_rate does exist shut up
    		var helel_hsv = make_color_hsv(hue, color_get_saturation(color_rgb), color_get_value(color_rgb));
			burn_outline = [color_get_red(helel_hsv) ,color_get_green(helel_hsv) ,color_get_blue(helel_hsv)];
		}
		break;
    case 31: //theikos
        burn_outline = [217, 165, 71];
        break;
}

//theikos effects
if("theikos_active" in self)
{
	if (theikos_active)
	{
		if (get_player_color(player) != 7 && get_player_color(player) != 8) 
		{
			burn_outline = [217, 165, 71]; //theikos
		}
		if (get_player_color(player) == 8) //theikos NES fire color
		{
			burn_outline = [235, 211, 32];
			set_character_color_slot(7, 235, 211, 32);
        	set_article_color_slot(7, 235, 211, 32);
		}
	}
}

if ("od_already_active" in self && od_already_active || "godpower" in self && godpower)
{
	if (get_player_color(player) == 8) //theikos NES fire color
	{
		set_character_color_slot(7, 235, 211, 32);
    	set_article_color_slot(7, 235, 211, 32);
	}
	
	if (get_player_color(player) != 8 && get_player_color(player) != 7) burn_outline = [217, 165, 71];
}
else
{
	if (get_player_color(player) == 8)
	{
		set_character_color_slot(7, 97, 162, 255);
		set_article_color_slot(7, 97, 162, 255);
	}
	
}


/*
if (birthboy && get_player_color(player) == 14) 
{
    set_character_color_slot(6, 159, 241, 255); //LIGHT
	set_character_color_slot(7, 76, 133, 233); //FIRE

	set_article_color_slot(6, 159, 241, 255); //LIGHT
	set_article_color_slot(7, 76, 133, 233); //FIRE
	burn_outline = [33, 57, 155];
}
*/