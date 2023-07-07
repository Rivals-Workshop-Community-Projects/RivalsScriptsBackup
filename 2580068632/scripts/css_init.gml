// css_init.gml

if (get_synced_var(player) == 1){
	css_voicedMode_enabled = 1;
	set_synced_var(player, css_voicedMode_enabled);
} else if (get_synced_var(player) == 0){
	css_voicedMode_enabled = 0;
}
myXPos = x;
myYPos = y;
voiceLine = random_func( 1, 4, true );
buttonShouldHighlight = false;
buttonPressed = false;