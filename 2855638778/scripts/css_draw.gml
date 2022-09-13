/*
var doNotInitShader = "alt_name" in self; // check if running for the first time

//This code changes the player's jacket on alt 16 to the same color as their HUD.
var _col = get_player_hud_color( player );
if (get_player_color(player) == 16) {
	
	set_color_profile_slot(16, 0, color_get_red( _col ), color_get_green( _col ), color_get_blue( _col ) );
}
init_shader();

if(!doNotInitShader){
    init_shader(); // makes the shader update when you return to the CSS (don't know why the game is coded so that this necessary)
}
*/