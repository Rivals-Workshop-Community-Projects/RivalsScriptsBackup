// css_update.gml

doesThisVarExist++;
//print("help. " + string(doesThisVarExist));

var pandCloakCSSTimer = 0;
var pandCloakFlashWhen = 3 * 60;
var pandCloakWhiteFlashThing = 0;

if (get_player_color(player) == 15){
	pandCloakCSSTimer = doesThisVarExist;
	//print(pandCloakCSSTimer);
	if (pandCloakCSSTimer == pandCloakFlashWhen){
		doesThisVarExist = 0;
		pandCloakWhiteFlashThing = 0.5;
		otherRandomFlashVarPleaseWork = 0.5;
		
		//print("should flash now!");
		
		didIChangeColorsOnPandemonium = false;
		
		determinedPandemoniumCloakColor = random_func_2(0, 20, true);
		
		set_color_profile_slot(15, 2, 0, 0, 0);
		set_character_color_slot(0, 0, 0, 0);
	}
} else {
	doesThisVarExist = 0;
}