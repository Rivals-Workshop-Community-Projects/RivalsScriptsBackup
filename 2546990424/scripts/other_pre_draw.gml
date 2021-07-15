//Draws the Whirlwind Effect 

var sprite_wind2 = noone;

with (other_player_id) {
	sprite_wind2 = sprite_get("markedb");
}

if (whirlwind_effect == true){
	draw_sprite_ext(sprite_wind2, get_gameplay_time()*.3, x, y, 2, 2, 0, other_player_id.col_wind, .85);
}