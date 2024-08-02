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
	hsp = myHSpeed * 0.1 * spr_dir;
	vsp = myVSpeed * 0.1;
	
    state_timer += 6;
    
    //Go to idle after 8 frames
    if (state_timer >= 8){
        state = 1;
        state_timer = 0;
		hb = create_hitbox(AT_FSPECIAL, 1 + (5 * frostbolt), x, y);
    }
}



//State 1: Idle

if (state == 1){		
    //Stop the movement from state 0
    hsp = myHSpeed * spr_dir;
    vsp = myVSpeed;
    lifetime--;
	
	if(myHSpeed < 15) {
		if (frostbolt == 1) {
			myHSpeed -= (0.25 - (specialPower * 0.001));
		} else {
			myHSpeed += 0.5;
		}
	}
	
	if (myHSpeed < 0) {myHSpeed = 0;}
	
    if (lifetime < 0) {
		shoulddie = true;
    }
    
    //Accept buffered state
    if (bufferedstate > 0){
        state = bufferedstate;
        state_timer = 0;
        bufferedstate = 0;
    }
	
    if (instance_exists(hb)) {
		hb.x = x+hsp;
		hb.y = y+vsp;
    } else {
		state = 4;
		if (frostbolt == 1) {
			if (specialPower > 60) {
				state_timer = 8;
			} else {
				state_timer = 14;
			}
		} else {
			state_timer = 0;
		}
	}
	
	if (place_meeting(x, y, asset_get("par_block"))) {
		state = 4;
		state_timer = 0;
	}
	
	if (gotParried == 1) {
        
        print (string(parriedPlayer));
		instance_destroy(hb);
		state_timer = 0;
		state = 1;
		detonating = false;
		detonatePossible = false;
		spr_dir *= -1;
		myHSpeed *= 2;	
		lifetime = 26;
		hb = create_hitbox(AT_FSPECIAL, 1 + (5 * frostbolt), x, y);
		hb.player = parriedPlayer;
		gotParried = 2;
	}
	
	if (hitCrystal == 1) {
		instance_destroy(hb);
		state = 4;
		state_timer = 0;
	}
}



//State 2: Dying

if (state == 2){
	spr_dir = sign(spr_dir);
	image_blend = c_white;
    hsp = 0;
    vsp = 0;
    if (state_timer == die_time){
        player_id.killarticles = false;
        instance_destroy();
        exit;
    }
}



//State 3: Explosion

if (state == 3){
	//Put something here if you want
}



//State 4: Geno Flash Multihit

if (state == 4){
	//Note: everything here is exclusive to Geno Flash (up b). No version check required.
	
	hsp = 0;
	vsp = 0;
	
	if (state_timer > 2 && state_timer % 6 == 0) {
			if (state_timer > 16) {
				hb = create_hitbox(AT_FSPECIAL, 3 + (2*frostbolt), x, y);
			} else {
				hb = create_hitbox(AT_FSPECIAL, 2, x, y);
			}
			if (gotParried == 2) {hb.player = parriedPlayer;}
	}
	
	if (state_timer % 6 == 4 && state_timer < 18) {
		sound_play(asset_get("sfx_bird_sidespecial_start"));
	}
	
	if (state_timer > 22) {
		instance_destroy();
        exit;
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
		new_sprite = sprite_get("fspec_projectile_travel");
        animation_type = 0;
        break;
    case 1:
		new_sprite = sprite_get("fspec_projectile_travel");
        animation_type = 1;
        break;
    case 2:
		new_sprite = sprite_get("smoke");
        animation_type = 2;
        break;
    case 3:
		new_sprite = sprite_get("fspec_explosion");
        animation_type = 3;
        break;
    case 4: 
	case 6:
		if (frostbolt) {
			new_sprite = sprite_get("fspec_explosionSml");
		} else {
			new_sprite = sprite_get("fspec_explosion");
		}
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