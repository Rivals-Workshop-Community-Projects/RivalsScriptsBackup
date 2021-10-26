if(state == PS_SPAWN){
	intro_timer++;
	if(intro_timer < 20){
		sprite_index = sprite_get("intro");
		image_index = 0;
	}else if(intro_timer < 70){
	    sprite_index = sprite_get("intro");
	    image_index = (intro_timer - 20) * 0.3;
	}else if(intro_timer >= 70){
	    sprite_index = sprite_get("idle");
	}
}