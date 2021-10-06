//article1_update - runs every frame the article exists
//if (replacedcount > maxarticles){
//    shoulddie = true;
//}


//Get hurt by opponents' hitbox (NOTE: does not work properly with maxarticles > 1)




//Make time progress

state_timer++;

if (player_id.lighting == true && state < 3){	//If DSpecial, goes to the state 3 (activate hazard)
	state_timer = 0;
	image_index = 0;
	state = 3;
}

if (state_timer >= 200 && state == 1){		//Total lifetime, goes to state 2 for the despawning animation
	image_index = 1;
	state = 2;
}

//State 0: Creating
if (state == 0){			//Startup of the block, being created
	image_index += .25;
	if (state_timer >= 8){
		state = 1;
	}
}

//State 1: Idle
if (state == 1){		//Idle and animating
	sprite_index = sprite_get("block");
	image_index += .2;
	if (image_index >= 12){
		image_index = 2;
	}
}
if (state == 1 && state_timer >=150){
	sprite_index = sprite_get("block_crack")
	image_index = 2
	if (state_timer >=175) {
		image_index = 1
	}
		if (state_timer >=180){
		sprite_index = sprite_get("block_break")
		image_index += 0;
		if (state_timer >=185){
			image_index += 0;
			if (state_timer >=190){
			image_index += 1;
			if (state_timer >=195){
			image_index += 2;
			if (state_timer >=200){
			image_index += 3;
	}
	}
	}
	}
}
}

//State 2: Dying
if (state == 2 && state_timer >= 190){		//Despawing animation

	}
	if (state_timer >= 200){		//Dying 
		player_id.block_despawn = true;
		player_id.killarticles = false;
    	instance_destroy();
    	
    	exit;
	}


//State 3: Lighting Activation
if (state == 3){						//Hazard is active
    total_timer = 100;
	mask_index = sprite_get("block");
	sprite_index = sprite_get("block_active");
	image_index += .15;
	hsp = 0;
	vsp = 0;
	if (image_index >= 4){		//Crates different hitboxes deppending on the block's number
		if (number == 1){
			create_hitbox(AT_DSPECIAL, 1, x, y+17);	
		}
		if (number == 2){
			create_hitbox(AT_DSPECIAL, 2, x, y+17);	
		}
		if (number == 3){
			create_hitbox(AT_DSPECIAL, 3, x, y+17);	
		}
		
	}
	if (image_index >= 10){	//Animation loop
		image_index = 4;
	}
	if (lighting_strike == true){						//Goes to the ligthing window when the enemy comes in touch
		sound_play(asset_get("sfx_absa_concentrate"));
		image_index = 0;
		state = 4;
		lighting_strike = false;
	}
	if (state_timer >= 180){		//Back to idle
		state = 5;
		image_index = 11;
	}
}

//State 4: Lighting
if (state == 4){							//Spawns the lighting
	mask_index = asset_get("empty_sprite");
	sprite_index = sprite_get("dspecial_hit");
	image_index += .2;
	hsp = 0;
	vsp = 0;
	if (image_index == 1){						//Creates the Hitbox
		create_hitbox(AT_DSPECIAL, 5, x, y);
	}
	if (image_index > 8){						//Destroys the block
		player_id.block_despawn = true;
		player_id.killarticles = false;
    	instance_destroy();
    	exit;
	}
}

//State 5: Back to Normal
if (state == 5){				//From hazard to idle, just transitioning 
	player_id.lighting = false;
	sprite_index = sprite_get("block_active");
	image_index += .2;
	hsp = 0;
	vsp = 0;
	if (image_index >= 17){
		state = 1;
		image_index = 0;
	}
}
