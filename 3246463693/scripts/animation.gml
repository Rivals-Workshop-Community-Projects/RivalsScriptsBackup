//Intro
if (state == PS_SPAWN) {
    if (introTimer < 8 && introTimer >= 0) {
        sprite_index = sprite_get("intro");
        image_index = introTimer;
    } else if (introTimer < 0) {
        sprite_index = sprite_get("intro");
        image_index = 0;
    } else {
        sprite_index = sprite_get("idle");
    }
}

if(wft_crouch == 1 and (state == PS_CROUCH)){
    sprite_index = sprite_get("crawl");
	image_index = (state_timer*.2) % (6);
}