//post draw

var sprite_ice = 0;

with (other_player_id) {
 sprite_ice = sprite_get("iceshine");
}

if (ice_mark == 1){
	draw_sprite_ext(sprite_ice, get_gameplay_time()*.3, x, y, 1, 1, 0, c_white, 1 );
}