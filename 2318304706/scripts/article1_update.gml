//article1_update - runs every frame the article exists

/*STATE LIST

- 0 Freshly spawned
- 1 Idle
- 2 Dying
- 3 Explosion
- 4 Multihit (GenoFlash only)
- 5 
- 6 
- 7 
- 8 
- 9 Attack

*/

totalLifetime++;
if (totalLifetime > 600) {
	print_debug("something's wrong, destroying article and refunding cooldown")
	player_id.killarticles = false;
	switch (version) {
		case 0:
			player_id.fsmashOut = 0;
			break;
		case 1:
		case 5:
			player_id.dairOut = 0;
			break;
		case 2:
			player_id.whirlOut = 0;
			break;
		case 3:
			player_id.flashOut = 0;
			break;
	}
    instance_destroy();
    exit;
}

player_id.shouldShowIndicator = 0;

//Are there too many articles? If so, I should die

if (replacedcount > maxarticles){
    //shoulddie = true;
}




//Clairen plasma field will destroy the article (NOTE: does not work properly with maxarticles > 1)

if (place_meeting(x, y, asset_get("plasma_field_obj")) && !(state == 3 || state == 2)) {
	sound_play(asset_get("sfx_clairen_hit_med"));
	spawn_hit_fx(floor(x),floor(y),256)
	shoulddie = true;
}



//Set killarticles to true in death.gml and all your articles will despawn. Gets reset to the false at the end of state 2

if (player_id.killarticles && state != 2){
    state = 2;
    state_timer = 0;
}



//State buffering (unused, leftover from muno code)
    
if (buffertimer < 20){
	buffertimer++;
}else{
	bufferedstate = 0;
	buffertimer = 0;
}



//State 0: Freshly spawned

if (state == 0){	
    //In this example, the article moves forward for a little bit when spawned
	if (version == 2) {
		hsp = myHSpeed * 0.1 * spr_dir;
		vsp = myVSpeed * 0.1;
    } else if (version == 4) {
		myHSpeed *= 0.9;
		hsp = myHSpeed * spr_dir;
		vsp = myVSpeed * 0.1;
	} else {
		hsp = myHSpeed * 0.1 * spr_dir;
		vsp = myVSpeed * 0.1;
	}
	
    if (version < 3) {state_timer += 0.5;}
    if (version == 3) {state_timer += 6;}
    
    //Go to idle after 8 frames
    if (state_timer >= 8){
        state = 1;
        state_timer = 0;
		switch (version) {
			case 0:
				hb = create_hitbox(AT_FSTRONG, 1, x, y);
				hb.no_absorb = true;
				hb.transcendent = true;
				break;
			case 1:
			case 5:
				hb = create_hitbox(AT_DAIR, 1, x, y);
				hb.no_absorb = true;
				break;
			case 2:
				hb = create_hitbox(AT_FSPECIAL, 1, x, y);
				break;
			case 3:
				hb = create_hitbox(AT_USPECIAL, 2, x, y);
				break;
			case 4:
				hb = create_hitbox(AT_DSPECIAL, 1, x, y+40);
				break;
			case 6:
				hb = create_hitbox(AT_DSPECIAL, 2, x, y+40);
				break;
			default:
				break;
		}
    }
}



//State 1: Idle

if (state == 1){	
	if (version == 3) {
		myVSpeed += 0.3;
	}
	if (version == 4 || version == 6) {
		myHSpeed = 0;
		
		if (place_meeting(x, y+10, asset_get("par_block"))) {
			state = 2;
			state_timer = 0;
			instance_destroy(hb);
		}
	}
	
    //Stop the movement from state 0
    hsp = myHSpeed * spr_dir;
    vsp = myVSpeed;
    lifetime--;
	
	if (version < 2 && hitPlayer == 1) {
		hsp = myHSpeed * spr_dir * 0.3;
		vsp = myVSpeed * 0.3;
	}
    
    if (lifetime < 0) {
		if (gotParried > 0 && (version < 2 || version == 5)) {
			state = 3;
			state_timer = 0;
			hasDetonated = 2;
			detonating = false;
		} else {
			shoulddie = true;
		}
    }
    
    //Die if should die
    if shoulddie{
        state = 2;
        state_timer = 0;
		instance_destroy(hb);
    }
    
    //Accept buffered state
    if (bufferedstate > 0){
        state = bufferedstate;
        state_timer = 0;
        bufferedstate = 0;
    }
    
    if (lifetime < 5 && version < 2) {
		player_id.shouldShowIndicator = 1;
    }
    
    if (instance_exists(hb)) {
		if (version == 4 || version == 6) {
			hb.x = x;
			hb.y = y+32+vsp;
		} else if (version == 1) {
			hb.x = x+(1*spr_dir);
			hb.y = y+10+vsp;
		} else {
			hb.x = x+hsp;
			hb.y = y+vsp;
		}
    } else {
		if (version == 2) {
			state = 2;
			state_timer = 2;
			detonating = false;
		} else if (version == 3) {
			state = 4;
			state_timer = 0;
		}
	}
    
	if (gotParried == 0) {	
		switch (version) {
			case 0:
				if (player_id.attack_pressed || player_id.left_strong_pressed || player_id.right_strong_pressed) {detonating = true;}
				break;
			case 1:
			case 5:
				if (player_id.attack_pressed) {detonating = true;}
				break;
		}
	}
    
	
	if (player_id.isAI == true && version == 2) {
		aiShouldDetonate = false;
		with (oPlayer) {
			if (point_distance(x, y, other.x, other.y) < 70 && player != other.player_id) {
				//print_debug("detonating at " + string(point_distance(x, y, other.x, other.y)));
				other.aiShouldDetonate = true;
			}
		}
		if (aiShouldDetonate) {
			instance_destroy(hb);
		}
	}
	
    if (detonating == true || (player_id.isAI && (version < 3 || version == 5))) {
		//print_debug("detonating version" + string(version));
		if (lifetime < 5 || aiShouldDetonate == true || (version == 2 && player_id.isAI == false)) {
			//print_debug("detonating for real!");
			sound_play(sound_get("smrpg_character_extrapower"));
			stars = spawn_hit_fx (player_id.x, player_id.y-30, player_id.empoweredFX);
			stars.depth = -12;
			state = 3;
			state_timer = 0;
			hasDetonated = 2;
			detonating = false;
		} else if (player_id.isAI == false) {
			state = 2;
			state_timer = 2;
			instance_destroy(hb);
			detonating = false;
			detonatePossible = false;
		}
    }
	
	if (hasDetonated == 2) {
		state = 3;
		state_timer = 0;
	}
	
	if (version == 2 && state_timer % 4 == 0) {
		spawn_hit_fx(x, y, player_id.gwhirlTrail);	
	}
	
	if (place_meeting(x, y, asset_get("par_block"))) {
		if (version == 3) {
			state = 4;
			state_timer = 0;
		} else {
			state = 2;
			state_timer = 2;
			instance_destroy(hb);
			detonating = false;
			detonatePossible = false;
		}
	}
	
	if (gotParried == 1) {
		instance_destroy(hb);
		state_timer = 0;
		state = 1;
		detonating = false;
		detonatePossible = false;
		spr_dir *= -1;
		switch (version) {
			case 0:
				myHSpeed = 24;
				lifetime = 18;
				hb = create_hitbox(AT_FSTRONG, 1, x, y);
				hb.player = parriedPlayer;
				break;
			case 1:
			case 5:
				myVSpeed = -7;
				lifetime = 14;
				hb = create_hitbox(AT_DAIR, 5, x, y);
				hb.player = parriedPlayer;
				break;
			case 2:
				lifetime = 28;
				//myHSpeed *= -1;
				myVSpeed *= -1;
				hb = create_hitbox(AT_FSPECIAL, 1, x, y);
				hb.player = parriedPlayer;
				break;
			case 3:
				switch (flashAngle) {
					case 0:
						if (flashOrigin == 1) {
							myHSpeed = -16.5;
							myVSpeed = -4;						
						} else {
							myHSpeed = 2;
							myVSpeed = 6;
						}
						break;
					case 1:
						if (flashOrigin == 1) {
							myHSpeed = -9.5;
							myVSpeed = -13;									
						} else {
							myHSpeed = 7.5;
							myVSpeed = 0.5;
						}
						break;
					case 2:
						if (flashOrigin == 1) {
							myVSpeed = -16;											
						} else {
							myHSpeed = 12;
							myVSpeed = -3;
						}
						break;
					case 3:
						if (flashOrigin == 1) {
							myHSpeed = 9.5;
							myVSpeed = -13;											
						} else {
							myHSpeed = 12;
							myVSpeed = -3;
						}
						break;
					case 4:
						if (flashOrigin == 1) {
							myHSpeed = 16.5;
							myVSpeed = -4;											
						} else {
							myHSpeed = 12;
							myVSpeed = -3;
						}
						break;
				}
				lifetime = 26;
				hb = create_hitbox(AT_USPECIAL, 2, x, y);
				hb.player = parriedPlayer;
				break;
		}
		gotParried = 2;
	}
	
	if (gotParried > 0 && (version == 1 || version == 5)) {
		image_angle = 180;
	}
}



//State 2: Dying

if (state == 2){
	spr_dir = sign(spr_dir);
	if (version == 4 || version == 6) {die_anim_rate = 2;}
	image_blend = c_white;
    hsp = 0;
    vsp = 0;
    if (state_timer == die_time){
        player_id.killarticles = false;
		switch (version) {
			case 0:
				player_id.fsmashOut = 0;
				break;
			case 1:
			case 5:
				player_id.dairOut = -20;
				break;
			case 2:
				player_id.whirlOut = -50;
				break;
			case 3:
				player_id.flashOut = -60;
				break;
		}
        instance_destroy();
        exit;
    }
    
    switch (version) {
	case 0:
		if (player_id.attack_pressed || player_id.left_strong_pressed || player_id.right_strong_pressed) {detonating = true;}
		if (hasDetonated == 2) {
			state = 3;
			state_timer = 0;
		}
		break;
	case 1:
	case 5:
		if (player_id.attack_pressed) {detonating = true;}
		if (hasDetonated == 2) {
			state = 3;
			state_timer = 0;
		}
		break;
    }
    
    if (detonating == true && state_timer < 3 && detonatePossible == 1) {
		sound_play(sound_get("smrpg_character_extrapower"));
		stars = spawn_hit_fx (player_id.x, player_id.y-30, player_id.empoweredFX);
		stars.depth = -12;
		instance_destroy(hb);
		state = 3;
		state_timer = 0;
		shoulddie = false;
		detonating = false;
    }
    if (state_timer < 3 && version < 2 && detonatePossible == 1) {
		player_id.shouldShowIndicator = 1;
    }
}



//State 3: Explosion

if (state == 3){
	if (version != 2) {
		hsp = 0;
		vsp = 0;
	} else {
		hsp /= 1.6;
		vsp /= 1.6;
	}
	if (state_timer == 6) {
		switch (version) {
			case 0:
				hb = create_hitbox(AT_FSTRONG, 2, x, y-5);
				if (gotParried > 0) {
					hb.player = parriedPlayer;
				}
				break;
			case 1:
				hb = create_hitbox(AT_DAIR, 2, x + 2*spr_dir, y + 10);
				if (gotParried > 0) {
					hb.player = parriedPlayer;
				}
				break;
			case 5:
				hb = create_hitbox(AT_DAIR, 3, x + 2*spr_dir, y + 10);
				if (gotParried > 0) {
					hb.player = parriedPlayer;
				}
				break;
			case 2:
				if (player_id.runeActiveM == 1) {
					hb = create_hitbox(AT_FSPECIAL, 3, x + 2*spr_dir, y);		
				} else {
					hb = create_hitbox(AT_FSPECIAL, 2, x + 2*spr_dir, y);
				}
				break;
			case 3:
				if (flashOrigin == 1) {
					hb = create_hitbox(AT_USPECIAL, 5, x, y);
				} else {
					hb = create_hitbox(AT_USPECIAL, 4, x, y);				
				}
				if (gotParried == 2) {hb.player = parriedPlayer;}
				break;
		}
	}
	if (state_timer > 17) {
		player_id.killarticles = false;
		switch (version) {
			case 0:
				player_id.fsmashOut = 0;
				break;
			case 1:
			case 5:
				player_id.dairOut = -20;
				break;
			case 2:
				player_id.whirlOut = -50;
				break;
			case 3:
				player_id.flashOut = -60;
				break;
		}
		instance_destroy();
		exit;
	}
	//Put something here if you want
}



//State 4: Geno Flash Multihit

if (state == 4){
	//Note: everything here is exclusive to Geno Flash (up b). No version check required.
	
	hsp = 0;
	vsp = 0;
	
	if (state_timer > 2 && state_timer % 6 == 0) {
			hb = create_hitbox(AT_USPECIAL, 3, x, y);
			if (gotParried == 2) {hb.player = parriedPlayer;}
	}
	
	if (state_timer > 22) {
		state = 3;
		state_timer = 3;
		instance_destroy(hb);
	}
}



//State 5

if (state == 5){
	//Put something here if you want
}



//State 6

if (state == 6){
	//Put something here if you want
}



//State 7

if (state == 7){
	//Put something here if you want
}



//State 8

if (state == 8){
	//Put something here if you want
}



//State 9: Attack

if (state == 9){
    
    //11 frames in, create DSPECIAL hitbox 1
    if (state_timer == 11){
    	create_hitbox(AT_DSPECIAL, 1, floor(x), floor(y-18));
    	sound_play(sound_get("a_cool_noise"));
    }
    
    //11 frames in, create DSPECIAL hitbox 2
    if (state_timer == 15){
    	create_hitbox(AT_DSPECIAL, 2, floor(x), floor(y-18));
    	sound_play(sound_get("a_cool_noise2"));
    }
    
    //Die after 28 frames (article is used up)
    if (state_timer == 28){
	    state = 2;
	    state_timer = 0;
    }
}


//NOTE: To use a hitbox properly with an article, it MUST be a projectile! (hitbox type 2)



//Sprite and animation handling

//Assign each state both a sprite it should have and a way it should animate
switch(state){
    case 0:
	switch(version) {
		case 0:
			new_sprite = sprite_get("fstrong_arms");
			break;
		case 1:
		case 5:
			new_sprite = sprite_get("dair_arm");
			break;
		case 2:
			new_sprite = sprite_get("fspec_proj2");
			break;
		case 3:
			new_sprite = sprite_get("uspec_proj");
			break;
		case 4:
		case 6:
			switch(blastColor) {
				case 0: 
					new_sprite = sprite_get("dspec_projWHITE_spawn");
					break;
				case 1: 
					new_sprite = sprite_get("dspec_projRED_spawn");
					break;
				case 2: 
					new_sprite = sprite_get("dspec_projORANGE_spawn");
					break;
				case 3: 
					new_sprite = sprite_get("dspec_projYELLOW_spawn");
					break;
				case 4: 
					new_sprite = sprite_get("dspec_projGREEN_spawn");
					break;
				case 5: 
					new_sprite = sprite_get("dspec_projCYAN_spawn");
					break;
				case 6: 
					new_sprite = sprite_get("dspec_projBLUE_spawn");
					break;
				case 7: 
					new_sprite = sprite_get("dspec_projMAGENTA_spawn");
					break;
			}
			break;
	}
        animation_type = 0;
        break;
    case 1:
	switch(version) {
		case 0:
			new_sprite = sprite_get("fstrong_arms_rocket");
			break;
		case 1:
		case 5:
			new_sprite = sprite_get("dair_arm_rocket");
			break;
		case 2:
			new_sprite = sprite_get("fspec_proj2");
			break;
		case 3:
			new_sprite = sprite_get("uspec_proj");
			break;
		case 4:
		case 6:
			switch(blastColor) {
				case 0: 
					new_sprite = sprite_get("dspec_projWHITE_move");
					break;
				case 1: 
					new_sprite = sprite_get("dspec_projRED_move");
					break;
				case 2: 
					new_sprite = sprite_get("dspec_projORANGE_move");
					break;
				case 3: 
					new_sprite = sprite_get("dspec_projYELLOW_move");
					break;
				case 4: 
					new_sprite = sprite_get("dspec_projGREEN_move");
					break;
				case 5: 
					new_sprite = sprite_get("dspec_projCYAN_move");
					break;
				case 6: 
					new_sprite = sprite_get("dspec_projBLUE_move");
					break;
				case 7: 
					new_sprite = sprite_get("dspec_projMAGENTA_move");
					break;
			}
			break;
	}
        animation_type = 1;
        break;
    case 2:
		switch(version) {
			case 0:
				new_sprite = sprite_get("fstrong_smoke");
				break;
			case 1:
			case 5:
				new_sprite = sprite_get("fstrong_smoke");
				break;
			case 2:
				new_sprite = sprite_get("fspec_proj_decay");
				break;
			case 3:
				new_sprite = sprite_get("fstrong_smoke");
				break;
			case 4:
				new_sprite = sprite_get("dspec_proj_smoke");
				break;
		}
        animation_type = 2;
        break;
    case 3:
	switch(version) {
		case 0:
			new_sprite = sprite_get("fstrong_explosion");
			break;
		case 1:
			new_sprite = sprite_get("dair_explosion");
			break;
		case 5:
			new_sprite = sprite_get("fstrong_explosion");
			break;
		case 2:
			new_sprite = sprite_get("fspec_burst");
			break;
		case 3:
			new_sprite = sprite_get("uspec_burst");
			break;
	}
        animation_type = 3;
        break;
    case 4: 
	case 6:
		new_sprite = sprite_get("uspec_proj2");
        animation_type = 4;
		break;
    case 5: //Since all of these guys are just kinda in a row, without any "break;" lines to
    case 6: //stop their execution, they'll all default
    case 7: //to state 9's behavior. Read up on those
    case 8: //switch-case statements, y'all, they're handy
    case 9:
    	new_sprite = sprite_get("your_sprite4")
    	animation_type = 1;
        break;
}

//Increment image_index based on the animation type assigned, above, to the state
switch(animation_type){
    
    case 0: //Increment image_index every frame
		if (version == 4) {
			if (state_timer % 3 == 0){
				image_index++;
			}
		} else {
			image_index++;
		}
	
    case 1: //Increment image_index at the rate determined by idle_anim_rate
        if (state_timer mod idle_anim_rate == 0){
            image_index++;
        }
        break;
    
    case 2: //Increment image_index at the rate determined by die_anim_rate
        if (state_timer mod die_anim_rate == 0){
            image_index++;
        }
        break; 
	
    case 3: //Increment image_index at the rate determined by exp_anim_rate
        if (state_timer mod exp_anim_rate == 0){
            image_index++;
        }
        break;
		
	case 4:
	case 6:
        if (state_timer % 2 == 0){
            image_index++;
        }
        break;
}

//If not already at the sprite it should be, switch to the new sprite and restart the animation
if (sprite_index != new_sprite){
    sprite_index = new_sprite;
    image_index = 0;
}



//Make time progress
state_timer++;