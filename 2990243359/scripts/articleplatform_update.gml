//Make time progress
state_timer++;

//State 0 - Spawn
if (state == 0){
    image_index += 0.5;
    if (image_index > 3){
        state = 1;
        image_index = 0;
        sprite_index = sprite_get("tri_plat_idle"); 
    }
}

//State 1 - Idle
if (state == 1){
    image_index += 0.3;
    if (state_timer > 120){
        state = 2;
        image_index = 0;
        sprite_index= sprite_get("tri_plat_despawn"); 
    }
}

//State 2 - Despawn
if (state == 2){
    image_index += 0.5;
    if (image_index > 5){
        shoulddie = true;
    }
}

//Dying
if (shoulddie == true){
	player_id.killarticles = false;
    instance_destroy();
    exit;
}