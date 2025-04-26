//article1_update - runs every frame the article exists

//Gravity
if(free && state != 0){
	if state_timer mod 10 == 0 { 
		vsp = 36;
	}
	if state_timer mod 10 == 1 { 
		vsp = 0;
	}
}

hsp = 0;

//Make time progress
state_timer++;

//State 0: Spawn
if (state == 0){
    if state_timer > 20 {
		state = 1;
		image_index = 0;
	}
}

//State 1: Idle
if (state == 1){
	if bounceTimer > 0 {
		bounceTimer--;
		image_index = 1;
	} else {
		image_index = 0;
	}
	//Make players bounce up
	with (oPlayer){
		if place_meeting(x,y+4,other.id) && !hitpause && 0 == hitstun && (state_cat == SC_AIR_NEUTRAL || state == PS_ATTACK_AIR) && vsp > 0 {
			other.bounceTimer = 19;
			if other.bounceTimer == 19 {
				destroy_hitboxes();
				attack_end();
				set_state(PS_IDLE_AIR);
				state_timer = 2;
				other.image_index = 1;
				vsp = -7-other.firemenHealth*.85;
				hsp *= .5;
				with other.player_id sound_play(sound_get("beep3"));
				other.firemenHealth--;
			}
		}
	}
	//Make projectiles bounce
	with (asset_get("pHitBox")){
		 if (player_id == other.player_id) {
			if (attack == AT_NSPECIAL && place_meeting(x,y+20,other.id) && !has_hit && vsp > 0){
				other.bounceTimer = 19;
				if other.bounceTimer == 19 {
					hitbox_timer = 1;
						other.image_index = 1;
						vsp = -5-other.firemenHealth*.85;
						hsp *= 1.1;
						with other.player_id sound_play(sound_get("beep3"));
						other.firemenHealth--;
				}
			}
			
			if (attack == AT_DTILT && hbox_num == 2 && place_meeting(x,y,other.id)){
				other.bounceTimer = 19;
				if other.bounceTimer == 19 && jumping == false {
						hitbox_timer = 10;
						other.image_index = 1;
						jumping = true;
						y = other.y-36;
						x = other.x;
						with other.player_id sound_play(sound_get("beep3"));
						other.firemenHealth--;
						other.firemenHealth--;
				}
			}
		}
	}
}

//Despawn after a while or being jumped on too many times
if state_timer >= 500 || firemenHealth <= 0 {
	state = 2;
}

//State 2: Exit
if (state == 2) {
	if state_timer mod 20 == 0 {
		image_alpha -= 0.8;
	}
	if image_alpha <= 0 {
		shoulddie = true;
	}
}

if (x > room_width or y > room_height + 200){
	shoulddie = true;
}

//Dying
if (shoulddie == true){
    instance_destroy();
    exit;
}
