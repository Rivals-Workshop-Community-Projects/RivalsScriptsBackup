//article1_update - runs every frame the article exists

//State 0: Existing lol

if (state == 0){
		image_alpha = 0.7 - (state_timer / 20);
    if (state_timer >= 20){
	    state = 1;
	    state_timer = 0;
    }
}

//State 2: Dying

if (state == 1){
    instance_destroy();
    exit;
}

//Make time progress
state_timer++;
