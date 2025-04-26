// animation.gml
// Used for animation purposes such as changing the 
// character’s sprite_index and image_index.

// Event Code
if (!costume_end && (get_player_color(player) == 14)){
	if (state == PS_SPAWN || state == PS_IDLE){
		sprite_index = sprite_get("event_idle");
		image_index = introTimer;
	}
}