// animation.gml
// Called every frame. 
// Used for animation purposes such as changing the 
// character’s sprite_index and image_index.

switch(state){
	case PS_PARRY:
		if (parried){
			sprite_index = sprite_get("parry_hit");
		}
	break;
}



if (state == PS_SPAWN) {
    if (state_timer = 15) {
		sound_play(sound_get("shadowforce"));
	}
    
	if (state_timer = 40) {
		sound_play(sound_get("mimikyu"));
	}
    if (introTimer < 18 && introTimer >= 0) {
        sprite_index = sprite_get("intro");
        image_index = introTimer;
        depth = -6;
    } else if (introTimer < 0) {
        sprite_index = sprite_get("intro");
        image_index = 0;
    } else {
        sprite_index = sprite_get("idle");
        depth = -5;
    }
}
    