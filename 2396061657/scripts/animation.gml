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