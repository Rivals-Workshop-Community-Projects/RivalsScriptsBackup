//init_shader

//variables for flexibility (should be the same as colors.gml)
var pal_num = get_player_color(player);
var col_dblue = 0;
var col_white = 1;
var col_hair = 2;
var col_skin = 3;
var col_lblue = 4;
var col_black = 5;
var col_light = 6;
var col_fire = 7;

set_character_color_shading(col_black, 1.5); //CLOTHBLACK

switch (pal_num)
{
	case 0: //default powers recoloring
		set_character_color_slot(col_light, 159, 241, 255); //LIGHT
		set_character_color_slot(col_fire, 76, 133, 233); //FIRE

		set_article_color_slot(col_light, 159, 241, 255); //LIGHT
		set_article_color_slot(col_fire, 76, 133, 233); //FIRE

		set_character_color_shading(col_fire, 1.5); //FIRE

		//alternate brighter fire: (7, 95, 172, 229)
		break;

	case 1: //p2 alt light shading amplify + fire reverse
		set_character_color_shading(col_light, 1.5); //LIGHT
		set_character_color_shading(col_fire, -1); //FIRE
		break;


	case 2: case 3: //venus + liav alt fire color shading amplify
		set_character_color_shading(col_fire, 1.5); //FIRE
		break;
	
	case 4: case 11: case 19: //roy, festive and ain alts fire amplify
		set_character_color_shading(col_fire, 1.5); //FIRE
		break;
	
	case 5: case 6: //asra and sahar alt reverse shading
		set_character_color_shading(col_light, -1.5); //LIGHT
		set_character_color_shading(col_fire, -1.5); //FIRE
		break;

	case 14: //gameboy alt 8-bit shader + outline
		for(i = 0; i < 8; i++) set_character_color_shading(i, 0);
		outline_color = [15, 56, 15];
		break;

	case 15: //NES alt 8-bit shader + outline
		for(i = 0; i < 6; i++) set_character_color_shading(i, 0);
		set_character_color_shading(6, 10);
		set_character_color_shading(7, 5);
		outline_color = [32, 0, 178];
		break;
	case 9: case 12: case 16: //abyss, us!pap and childe alt reverse shading for fire
		set_character_color_shading(col_fire, -1.5); //FIRE
		break;
	
	case 8: //shadow alt fire, light and light blue cloth amplify
		set_character_color_shading(3, 1.5); //CLOTHLIGHTBLUE
		set_character_color_shading(col_light, 1.5); //LIGHT
		set_character_color_shading(col_fire, 1.5); //FIRE
		break;
	
	case 10: //okuu reverse fire and light shading
		set_character_color_shading(col_light, -3); //LIGHT
		set_character_color_shading(col_fire, -1.5); //FIRE
		break;

	case 13: //nero reverse fire and light shading
		set_character_color_shading(col_light, -2); //LIGHT
		set_character_color_shading(col_fire, -1); //FIRE
		break;
	
	case 20: case 21: //jurami and baysen alts reverse shading for fire
		set_character_color_shading(col_fire, -1); //FIRE
		break;

	case 23: //splatracer's alt
		set_character_color_shading(3, 1.5); //CLOTHLIGHTBLUE
		set_character_color_shading(col_light, -3); //LIGHT
		set_character_color_shading(col_fire, 2); //FIRE
		break;
	case 25: //helel alt shading tweaking
		set_character_color_shading(col_light, 4); //LIGHT
		set_character_color_shading(col_fire, -2); //FIRE
		break;
	case 18: //gold alt shading tweak
		set_character_color_shading(col_dblue, -1); //CLOTHDARKBLUE
		set_character_color_shading(col_black, 2); //CLOTHBLACK
		break;
	/*
	case 7: //arc alt alpha
		for (var slot_num = 0; slot_num < 5; slot_num++)
		{
			// reset the color to default
			var temp_r = get_color_profile_slot_r(7, slot_num);
			var temp_g = get_color_profile_slot_g(col_fire, slot_num);
			var temp_b = get_color_profile_slot_b(7, slot_num);
			set_character_color_slot(slot_num, temp_r, temp_g, temp_b, .75);
			set_article_color_slot(slot_num, temp_r, temp_g, temp_b, .75);
		}

		set_character_color_shading(col_fire, -2); //FIRE
		break;
	*/
}

//birthday alt stuff
//this part is in charge of actually changing bar's colors in-game (reloading in training mode will mess with bar's effects)
var myday = 25;
var mymonth = 10;
if (current_day = myday && current_month == mymonth) birthboy = true;
else birthboy = false;

if (pal_num == 19 && birthboy)
{
	set_color_profile_slot(11, 0, 206, 216, 227); //CLOTHWHITE
    set_color_profile_slot(11, 1, 182, 88, 61); //HAIR
    set_color_profile_slot(11, 2, 245, 181, 150); //SKIN
    set_color_profile_slot(11, 3, 43, 60, 140); //CLOTHLIGHTBLUE
    set_color_profile_slot(11, 4, 43, 60, 140); //CLOTHDARKBLUE
    set_color_profile_slot(11, 5, 43, 60, 140); //CLOTHBLACK
	set_color_profile_slot(11, 6, 159, 241, 255); //LIGHT
	set_color_profile_slot(11, 7, 76, 133, 233); //FIRE

	//shading tweaks
	set_character_color_shading(col_black, 1); //CLOTHBLACK
	set_character_color_shading(col_fire, 1.5); //FIRE

	//article stuff
	set_article_color_slot(col_light, 159, 241, 255, 1);
	set_article_color_slot(col_fire, 76, 133, 233, 1);
}

//burning fury outline colors
switch (pal_num)
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
	case 7: //bar's dad
        burn_outline = [16, 83, 78];
        break;
	case 8: //shadow
		burn_outline = [113, 11, 0];
		break;
	case 9: //US!papyrus
		burn_outline = [255, 134, 40]; //bravery
		//burn_outline = [40, 255, 255]; //patience
		break;
	case 10: //okuu
		burn_outline = [255, 147, 96];
		break;
	case 11: //ain
        burn_outline = [35, 116, 123];
        break;
	case 12: //childe
		burn_outline = [191, 86, 238];
		break;
	case 13: //nero
		burn_outline = [67, 179, 255];
		break;
    case 14: //GB
        burn_outline = [83, 122, 62];
        break;
    case 15: //NES
        burn_outline = [32, 0, 178];
        break;
	case 16: //abyss
        burn_outline = [228, 125, 255];
        break;
	case 17: //infamous
		burn_outline = [51, 158, 158];
		break;
	case 18: //gold rank
		burn_outline = [113, 142, 157];
		break;
    case 19: //seasonals
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
    case 20: //jurami
        burn_outline = [146, 11, 0];
        break;
    case 21: //baysen
        burn_outline = [40, 0, 102];
		break;
	case 22: //shiro
		burn_outline = [129, 23, 5];
        break;
    case 23: //splatracer's skin
        burn_outline = [72, 151, 0];
        break;
	case 24: //trail mix's skin
		burn_outline = [140, 60, 127];
		break;
	case 25: //helel
		if("color_rate" in self)
		{
			var color_rgb = make_color_rgb(150, 0, 0);
			var hue = (color_get_hue(color_rgb)+color_rate) mod 255; //color_rate does exist shut up
    		var helel_hsv = make_color_hsv(hue, color_get_saturation(color_rgb), color_get_value(color_rgb));
			burn_outline = [color_get_red(helel_hsv) ,color_get_green(helel_hsv) ,color_get_blue(helel_hsv)];
		}
		break;
    case 26: //theikos
        burn_outline = [217, 165, 71];
        break;
}

//theikos effects
if("theikos_active" in self)
{
	if (theikos_active)
	{
		if (pal_num != 14 && pal_num != 15) 
		{
			burn_outline = [217, 165, 71]; //theikos
		}
		if (pal_num == 15) //theikos NES fire color
		{
			burn_outline = [235, 211, 32];
			set_character_color_slot(col_fire, 235, 211, 32);
        	set_article_color_slot(col_fire, 235, 211, 32);
		}

		//birthday alt gets white theikos hair
		if (pal_num == 11 && birthboy) set_color_profile_slot(11, col_hair, 206, 216, 227); //HAIR
	}
}

if ("od_already_active" in self && od_already_active || "godpower" in self && godpower)
{
	if (pal_num == 15) //theikos NES fire color
	{
		set_character_color_slot(col_fire, 235, 211, 32);
    	set_article_color_slot(col_fire, 235, 211, 32);
	}
	
	if (pal_num != 15 && pal_num != 14) burn_outline = [217, 165, 71];
}
else
{
	if (pal_num == 15)
	{
		set_character_color_slot(col_fire, 97, 162, 255);
		set_article_color_slot(col_fire, 97, 162, 255);
	}
	
}

//changes the early access alt to us the same color as her white-blue clouthes
if ("is_8bit" in self && is_8bit) set_color_profile_slot_range(col_white, 150, 10, 12);
else set_color_profile_slot_range(col_white, 13, 7, 15); //from colors.gml

/*
if (birthboy && pal_num == 14) 
{
    set_character_color_slot(col_light, 159, 241, 255); //LIGHT
	set_character_color_slot(col_fire, 76, 133, 233); //FIRE

	set_article_color_slot(col_light, 159, 241, 255); //LIGHT
	set_article_color_slot(col_fire, 76, 133, 233); //FIRE
	burn_outline = [33, 57, 155];
}
*/