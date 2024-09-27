//article3_update - runs every frame the article exists

//State 0: Existing lol

if (state == 0){
		image_alpha = .6 - (state_timer / 20);
    if (state_timer >= 10){
	    state = 2;
	    state_timer = 0;
    }
}

//State 2: Dying

if (state == 2){
    instance_destroy();
    exit;
}

//Make time progress
state_timer++;
