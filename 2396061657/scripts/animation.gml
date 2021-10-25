// animation.gml
// Called every frame. 
// Used for animation purposes such as changing the 
// character’s sprite_index and image_index.

if (state == PS_ATTACK_GROUND){
	if (attack == AT_USTRONG){
		if (window == 1){
			image_index = (floor(strong_charge / 4) % 8) + 1;
		}
	}
}

if (!costume_end && (get_player_color(player) == 25 || get_player_color(player) == 19)){
	if (state == PS_SPAWN || state == PS_IDLE){
		sprite_index = sprite_get("hallow_intro");
		image_index = introTimer;
	}
}