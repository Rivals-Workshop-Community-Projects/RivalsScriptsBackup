//article1_update - wheel

//most of it is a better version of Acid Rainbows' raincloud code
//which, in turn, is made from Guadua's bamboo code

if (init == 0){
    init = 1;
	
	follow_hb = create_hitbox( AT_NSPECIAL, 4, 32, -32 )
	follow_hb.owner_article = id;
}

if (!fake_hitpause){//fake hitpause, there's an ELSE at the bottom of this
	state_timer++;
	
	if (state_buffer!=-1){
		state = state_buffer;
		state_timer = 0;
		state_buffer = -1;
	}

// // // // STATE 0 - IDLE
if (state == 0){
	state_end = 8;
    image_index = 0 + state_timer * 2 / state_end;
	
	if (!sent){ //if not sent
		//make article follow player
		x = player_id.x
		y = player_id.y-30
		spr_dir = player_id.spr_dir;
		hsp = player_id.hsp;
	}
	
	// make hitbox follow
	if (follow_hb != -4){
		follow_hb.x = x;
		follow_hb.y = y;
		follow_hb.hitbox_timer = 1;
	}
	
	if (position_meeting(x,y, asset_get("plasma_field_obj"))){
		state = 3;
		state_timer = 0;
		follow_hb.destroyed = true;
		sound_play(asset_get("sfx_absa_cloud_crackle"));
		sound_play(asset_get("sfx_clairen_hit_med"));
		spawn_hit_fx( x, y, 124 );
	}
	
    if (state_timer == state_end){
        state_timer = 0;
		image_index = 0;
		if (sent){
			idle_cycle = idle_cycle+1;
		}
    }
	
	// IDLE EXPIRED
	if (idle_cycle >= idle_max){
		state = 3;
		state_timer = 0;
		follow_hb.destroyed = true;
	}
	
}

// // // // exit
if (state == 1){
    instance_destroy();
    exit;
}
	
// // // // STATE 2 - ATTACK
if (state == 2){
	state_end = 4;
    image_index = 0 + state_timer * 2 / state_end;
	
	if (spr_dir = 1){
		hsp = clamp((hsp-0.8), 0, 50);
	}
	if (spr_dir = -1){
		hsp = clamp((hsp+0.8), -50, 0);
	}
	
    if (state_timer == state_end){
        state_timer = 0;
		image_index = 0;
		attack_cycle = attack_cycle+1;
    }
	
	// ATTACK EXPIRED
	if (attack_cycle >= attack_max){
		//print("very yes")
		var tmp_hb = create_hitbox( AT_NSPECIAL, 5, x, y )
		tmp_hb.spr_dir = spr_dir;
		state = 3;
		state_timer = 0;
	}else if (state_timer == 1 && !fake_hitpause){
		//print("yes")
		var tmp_hb = create_hitbox( AT_NSPECIAL, 3, x, y )
		tmp_hb.owner_article = id;
	}
}

// // // // STATE 3 - DISAPPEARING
if (state == 3){
	state_end = 32;
    image_index = 0 + state_timer * 4 / state_end;
	
	image_alpha = 0.5;
	
	if (spr_dir = 1){
		hsp = clamp((hsp-0.5), 0, 50);
	}
	if (spr_dir = -1){
		hsp = clamp((hsp+0.5), -50, 0);
	}
		vsp += 0.1;
	
    if (state_timer == state_end){
		spawn_hit_fx( x, y, proj_destroy )
        instance_destroy();
        exit;
    }
}


}else{//fake hitpause, continued
	fake_hitpause_time--;
	if (fake_hitpause_time == 0 && fake_hitpause == true){
		fake_hitpause = false;
		hsp = fake_oldhsp;
		vsp = fake_oldvsp;
	}
}














