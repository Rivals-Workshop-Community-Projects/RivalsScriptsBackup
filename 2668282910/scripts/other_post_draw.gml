//Draws the Whirlwind Effect 

var sprite_clock = noone;

with (other_player_id) {
	sprite_clock = sprite_get("taunt_effect");
}

if (other_player_id.taunt_effect >= 0){
	draw_sprite_ext(sprite_clock, other_player_id.taunt_effect, x+20, y-char_height-4, 2, 2, 0, c_white, 1);
}

if (other_player_id.taunt_effect2 >= 0){
	draw_sprite_ext(sprite_clock, other_player_id.taunt_effect2, x-20, y-char_height-4, 2, 2, 0, c_white, 1);
}