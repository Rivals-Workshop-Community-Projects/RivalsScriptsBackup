//
timer++;
state_timer++;

image_xscale = scaleX;
image_yscale = scaleY;

if (create_beam) {
	beam_timer++;
	if (beam_timer == 1) {
		var beam = instance_create(floor(x), floor(y), "obj_stage_article", 54);
			beam.rotAngle = angleEnd;
			beam.blasterID = id;
			beam.scaleX = scaleX;
			beam.scaleY = scaleY;
	}
	if (beam_timer mod 2 == 0) && (beam_timer <= 30) {
		var beamHitboxNum = 10; //number of hitboxes
		var beamInterval = 80; //distance between hitboxes;
		var xDist = beamInterval * dcos(angleEnd - 90);
		var yDist = beamInterval * dsin(angleEnd - 90);
		/*
		for (var i = 0; i < beamHitboxNum - 1; i++) {
			if (scaleY > 1) {
				create_hitbox(AT_NSPECIAL, 2, x + floor(i*xDist), y - floor(i*yDist));
			} else {
				create_hitbox(AT_NSPECIAL, 1, x + floor(i*xDist), y - floor(i*yDist));
			}
		}
		*/
	}
	/*
	//oof sounds
	var playerHit = false;
	if (beam_timer mod 2 == 0) {
		with pHurtBox {
			var hitbox = instance_place(x, y, pHitBox);
			if (hitbox != noone) && (hitbox.player_id == other.player_id) {
				playerHit = true;
			}
		}
		
	    if (playerHit) {
	        sound_play(sound_get("bone_hit"), false, 0);
	    }
	}
	*/
}

switch (state) {
	case 0: //summon blaster
	x -= moveSpeed * moveDirX * 7;
	y -= moveSpeed * moveDirY * 7;
	
	hsp = moveSpeed * moveDirX;
	vsp = moveSpeed * moveDirY;
	
	if (silent != 1) && (silent != 3) {
		sound_play(sound_get("blaster_spawn"), false, 0);
	}
	
	
	state++;
	state_timer = 0;
	break;
	
	case 1: //coming to a stop
	sprite_index = sprite_get("gaster_blaster");
	if (angle != angleEnd) {
		if (angle < angleEnd) {
			angle += 10;
		} else if (angle > angleEnd) {
			angle -= 10;
		}
	}
	
	if (angle < angleEnd + 10) && (angle > angleEnd - 10) {
		angle = angleEnd;
	}
	
	image_angle = angle;
	
	hsp *= 0.85;
	vsp *= 0.85;
	
	if (abs(hsp) < 0.1) {
		hsp = 0;
	}
	
	if (abs(vsp) < 0.1) {
		vsp = 0;
	}
	
	if (state_timer > 40 + delayFire) {
		state++;
		state_timer = 0;
	}
	break;
	
	case 2: //firing
	image_index += 1;
	
	if (state_timer == 1) && (silent != 2) && (silent != 3) {
		sound_play(sound_get("blaster_fire"), false, 0);
	}
	
	create_beam = true;
	
	if (image_index == 4) {
		state++;
		state_timer = 0;
	}
	break;
	
	case 3: //moving away
	hsp += moveSpeed*exitDirX*0.1;
	vsp += moveSpeed*exitDirY*0.1;
	
	hsp = clamp(hsp, -20, 20);
	vsp = clamp(vsp, -20, 20);
	
	if (state_timer == 30) {
		image_index += 1;
	}
	
	if (state_timer == 40) {
		state = 9;
		state_timer = 0;
	}
	break;
	
	case 9: //kill state
	instance_destroy();
	break;
}
