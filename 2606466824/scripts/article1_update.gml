//article2_update - runs every frame the article exists

if object_index == oPlayer exit;

/*STATE LIST

- 0 Freshly spawned
- 1 Idle
- 2 Dying
- 3 
- 4 
- 5 
- 6 
- 7 
- 8 
- 9 Attack

*/

//print(string(state) + ", " + string(state_timer) + ", " + string(spr_dir));
 
//Are there too many articles? If so, I should die

//if (replacedcount > maxarticles) {
//    shoulddie = true;
//}



//Get hurt by opponents' hitbox (NOTE: does not work properly with maxarticles > 1)

with (asset_get("pHitBox")){
    if (place_meeting(x,y,other.id) && other.player_id != player_id){
        other.shoulddie = true;
        other.hitstop = 10; //Article freeze frames
        hitpause = true;    //Player freeze frames
        hitstop = 10;       //Player freeze frames, cont.
    }
}



//Clairen plasma field will destroy the article (NOTE: does not work properly with maxarticles > 1)


//Set killarticles to true in death.gml and all your articles will despawn. Gets reset to the false at the end of state 2

if (player_id.killarticles && state != 2){
    state = 2;
    state_timer = 0;
}



//State 0: Freshly spawned

if (state == 0){    
    if (state_timer >= 5){
        state = 1;
        state_timer = 0;
    }
	image_index = 10;
	sprite_index = sprite_get("ropes"); //null2
}



//State 1: Idle

if (state == 1){   
   if (player_id.state == PS_ATTACK_GROUND || player_id.state == PS_ATTACK_AIR) {
		if (player_id.attack == AT_NSPECIAL && player_id.window == 2 && player_id.window_timer == 1 && player_id.phone_cheats[player_id.CHEAT_MORE] == 0) {
			state = 2;
			state_timer = 20;
		}
   }
   
	if (player_id.was_parried == true || player_id.state == PS_DEAD || player_id.state == PS_RESPAWN) {
		state = 2;
		state_timer = 20;		
	}
    //Stop the movement from state 0
    vsp = 0;
	image_index = 0;
	sprite_index = sprite_get("ropes");
	disableTimer--;
	
   with (oPlayer) {
		if (state == PS_HITSTUN && place_meeting(x,y,other) && other.state == 1 && other.player_id.target != id && other.disableTimer < 0 && (!"incinRevengeTimer" in self || ("incinRevengeTimer" in self && incinRevengeTimer >= 32))) {
			if (hitpause) {
				other.disableTimer = hitstop_full + 60;
			} else {
				other.grabbedPlayer = player;
				other.grabbedPlayerID = self;
				other.throwPower = abs(hsp * 1.2);
				other.state = 3;
				other.state_timer = 0;
				other.throwDirection = sign(hsp) * -1;
				print("grabbed player " + string(other.grabbedPlayer));
				other.shouldSpawnGrab = 1;
			}
		}
		
		if ("isWrestleCat" in self && (state == PS_ATTACK_GROUND || state == PS_ATTACK_AIR) && (attack == AT_DATTACK && window == 2) && place_meeting(x,y,other) && other.state == 1&& other.disableTimer < 0) {
			other.grabbedPlayer = player;
			other.grabbedPlayerID = self;
			other.throwPower = 14;
			other.state = 4;
			other.state_timer = 0;
			spr_dir*= -1;
			other.throwDirection = sign(hsp) * -1;
			other.spr_dir = other.throwDirection * -1;
			print("grabbed another incin");
			dattackBounce = 1;
		}
		
		if ("isWrestleCat" in self && (state == PS_ATTACK_GROUND || state == PS_ATTACK_AIR) && (attack == AT_FSPECIAL && window == 2) && place_meeting(x,y,other) && other.state == 1 && has_hit == false && other.disableTimer < 0) {
			other.grabbedPlayer = player;
			other.grabbedPlayerID = self;
			other.throwPower = 14;
			other.state = 4;
			other.state_timer = 0;
			spr_dir*= -1;
			other.throwDirection = sign(hsp) * -1;
			other.spr_dir = other.throwDirection * -1;
			print("grabbed another incin");
			dattackBounce = 1;
		}
   }
		
   if (shouldSpawnGrab == 1) {
		spr_dir = throwDirection * -1;
		throwPower = clamp(throwPower, 7, 13);
		myGrab = create_hitbox(AT_NSPECIAL, 1, x, y - 40);
		if (grabbedPlayer == player_id.player) {
			with (myGrab) {
				player++;
				myPlayer = other.grabbedPlayer;
				with (oPlayer) {
					if (player != other.myPlayer) {
						other.can_hit[player] = false;
					}
				}
			}		
		} else {
			with (myGrab) {
				myPlayer = other.grabbedPlayer;
				with (oPlayer) {
					if (player != other.myPlayer) {
						other.can_hit[player] = false;
					}
				}
			}
		}
   }
}



//State 2: Dying

if (state == 2){
	sprite_index = sprite_get("ropes"); //null2
    if (state_timer == 30){
        player_id.killarticles = false;
        instance_destroy();
        exit;
    }
	if (state_timer < 11) {
		image_index = 6;
	} else if (state_timer < 16) {
		image_index = 7;
	} else if (state_timer < 20) {
		image_index = 8;
	} else if (state_timer < 23) {
		image_index = 9;
	} else if (state_timer < 26) {
		image_index = 10;
	} else if (state_timer < 29) {
		image_index = 11;
	} else {
		image_index = 12;
	}
	
	if (state_timer == 27) {
		spawn_hit_fx (x, y-30, player_id.ropeSmoke);
	}
}



//State 3

if (state == 3){
	sprite_index = sprite_get("ropes"); //null2
	vsp = 0;
	if (grabbedPlayerID == noone || (grabbedPlayerID.hitpause == true && grabbedPlayerID.hitstop > 1)) {
		state = 2;
		state_timer = 2;
	}
	if (grabbedPlayerID.state == PS_HITSTUN) {
		grabbedPlayerID.x = (2*grabbedPlayerID.x + (x - (40*throwDirection)))/3;
		grabbedPlayerID.y = (2*grabbedPlayerID.y + (y - 10))/3;
		grabbedPlayerID.hsp = 0;
		grabbedPlayerID.vsp = 0;
	}
	if (state_timer > 9 + (throwPower / 2) && state_timer <= 10 + (throwPower / 2)) {		
		player_id.bufferNSpecPower = throwPower;	
	}
	if (state_timer > 10 + (throwPower / 2)) { //min 14, max 19
		print("throwing with power " + string(throwPower));
		myGrab = create_hitbox(AT_NSPECIAL, 2, round(grabbedPlayerID.x - (10*throwDirection)), round(grabbedPlayerID.y - 30));
		if (grabbedPlayer == player_id.player) {
			with (myGrab) {
				player++;
				myPlayer = other.grabbedPlayer;
				with (oPlayer) {
					if (player != other.myPlayer) {
						other.can_hit[player] = false;
					}
				}
			}		
		} else {
			with (myGrab) {
				myPlayer = other.grabbedPlayer;
				with (oPlayer) {
					if (player != other.myPlayer) {
						other.can_hit[player] = false;
					}
				}
			}
		}
		image_index = 6;
		state = 2;
		state_timer = 2;
	}
	
	if (state_timer < 4) {
		image_index = 1;
	} else if (state_timer < 8) {
		image_index = 2;
	} else if (state_timer < 12) {
		image_index = 3;
	} else if (state_timer < 16) {
		image_index = 4;
	} else {
		image_index = 5;
	}
}



//State 4

if (state == 4){
	sprite_index = sprite_get("ropes"); //null2
	vsp = 0;
	if (grabbedPlayerID == noone || grabbedPlayerID.hitpause == true) {
		state = 2;
		state_timer = 2;
	}
	if ((grabbedPlayerID.state == PS_ATTACK_GROUND || grabbedPlayerID.state == PS_ATTACK_AIR) && (grabbedPlayerID.attack == AT_DATTACK || grabbedPlayerID.attack == AT_FSPECIAL) && grabbedPlayerID.dattackBounce < 10) {
		grabbedPlayerID.x = (2*grabbedPlayerID.x + (x - (30*throwDirection)))/3;
		grabbedPlayerID.y = (2*grabbedPlayerID.y + (y - 10))/3;
		grabbedPlayerID.hsp = 0;
		grabbedPlayerID.vsp = -2;
		print("hi");
	}
	if (grabbedPlayerID.dattackBounce >= 10) {
		print("throwing owner");
		image_index = 6;
		state = 2;
		state_timer = 2;
	}
	
	if (state_timer < 4) {
		image_index = 1;
	} else if (state_timer < 8) {
		image_index = 2;
	} else if (state_timer < 12) {
		image_index = 3;
	} else if (state_timer < 16) {
		image_index = 4;
	} else {
		image_index = 5;
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



//Make time progress
state_timer++;