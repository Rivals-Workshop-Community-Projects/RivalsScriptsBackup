//BASIC CONTROL THINGS
state_timer += 1;

if hitstop < 0{
	hitstop = 0;
}

var falling_speed = clamp(vsp+0.05, -9999, 10);

if free == true && hitstop <= 0{ //Apply gravity;
	vsp = falling_speed;
}


//

if place_meeting(x,y,pHitBox) && pHitBox.hbox_group == -1{
	is_hittable = false;
}
else if !place_meeting(x,y,pHitBox) || pHitBox.hbox_group != -1{
	is_hittable = true;
}

//STATE DETERMINEER


switch (state){
	
	case 0: //Neutral, Rolling
	
	//Airborne
	if free == true{
		image_index = 1; //Keep the down-angled frame
		vsp += 0.4; //Apply gravity
		will_fall = true; //Fall when it hits the ground
	}
	
	//Grounded
	if free == false{
		hsp -= 0.1*spr_dir;
		image_index = 0; //Keep forward-moving frame
		if abs(hsp) >= 3 && hitstop == 0 && will_fall == false{ //Create hitbox when above certain speed
			if state_timer mod 2 == 0 && hitstop <= 0{
				is_hittable = false;
				create_hitbox(AT_FSPECIAL, 4, x+16*spr_dir, y-24);
			}
			if state_timer mod 2 == 1{
				is_hittable = true;
			}
		}
		if hsp < 3{is_hittable = true;}
	}
	
	//Fall over
	if free == false && (hsp*spr_dir <= 0 || will_fall == true){
		is_hittable = true;
		hsp = 0;
		vsp = 0;
		state_timer = 0;
		state = 1;
	}
	
	break;
	
	
	case 1: //Fallen Over
	
	
	
	frict = 0.2;
	hsp = 0;
	vsp = 0;
	
	//Animation Handler
	if state_timer < 6{
        if state_timer < 3{image_index = 2;} //Start fall
        if state_timer >= 3{image_index = 3;} //Smear fallen
    }
    else{image_index = 4;} //Fallen All the way down
    
    if free == true && (!place_meeting(x,y+6,asset_get("par_block")) && !place_meeting(x,y+6,asset_get("par_jumpthrough"))){
    	state_timer = 0;
    	state = 0;
    }
	
	break;
	
	case 2: //Launched
	
	if hitstop <= 0{image_index += 0.2;}
	if image_index > 12{
		image_index = 5;
	}
	
	if hitstop <= 0{
		vsp += 0.375;
	}
	
	if !bike_hit_thing && hitstop <= 0 && state_timer mod 2 == 0{
		create_hitbox(AT_FSPECIAL, 5, x, y-56);
		is_hittable = false;
	}
	if state_timer mod 2 == 1{
		is_hittable = true;
	}
	
	if bike_hit_thing{
		is_hittable = true;
		destroy_hitboxes();
		vsp = -4;
		hsp = 0;
		hitstop = 10;
		state_timer = 0;
		state = 3;
	}
	
	
	if free == false{
		is_hittable = true;
		state_timer = 0;
    	state = 1;
	}
	
	break;
	
	case 3: //Bike Bonk
	
	bike_hit_thing = false;
	
	if hitstop <= 0{image_index += 0.1;}
	if image_index > 12{
		image_index = 5;
	}
	
	if hitstop <= 0{
		vsp += 0.4;
	}
	
	
	if free == false{
		state_timer = 0;
    	state = 1;
	}
	
	break;
	
}

//Destruction/Explosion

if health <= 0 && hitstop <= 0{
	player_id.move_cooldown[AT_FSPECIAL] = 180;
	player_id.bike_health = player_id.init_bike_health;
	spawn_hit_fx(x, y-32, 143);
	sound_play(asset_get("sfx_abyss_explosion_big"));
	instance_destroy();
	exit;
}

//Kill the bike

if (y >= room_height + 200 || x == SD_SIDE_BLASTZONE){
    should_die = true;
    player_id.bike_health = player_id.init_bike_health;
}

if (should_die){
    instance_destroy();
    exit;
}