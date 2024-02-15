//article1_update - runs every frame the article exists

/*STATE LIST

- 0 Freshly spawned
- 1 Idle
- 2 On cooldown
- 3 Alpha
- 4 Omega
- 5 Epsilon
- 6 
- 7 
- 8 
- 9 

*/



//Are there too many articles? If so, I should die

if (replacedcount > maxarticles){
    shoulddie = true;
}

if(state != 2){
	player_id.move_cooldown[AT_FSPECIAL] = 2;
	player_id.move_cooldown[AT_DSPECIAL] = 2;
	player_id.ring_cd[type] = die_time;
    player_id.ring_cd_max[type] = die_time;
}
//Nspec hit
//this code sucks im rushing okay
if(nspec_hit == 0 && state < 2){
	with (asset_get("pHitBox")){
	    if (place_meeting(x,y,other.id) && other.player_id == player_id && attack == AT_NSPECIAL && type == 1){
	        other.hitstop = hitpause; //Article freeze frames
	        player_id.old_hsp = player_id.hsp;
	        player_id.old_vsp = player_id.vsp;
	        player_id.hitpause = true;    //Player freeze frames
	        player_id.hitstop = hitpause;       //Player freeze frames, cont.
	        other.nspec_hit = hbox_num;
	    }
	}
}
if(nspec_hit > 0){
	if(nspec_hit == 1){
		with(player_id){
			sound_play(asset_get("sfx_blow_heavy1"));
			//sound_play(sound_get("strike2"));
		}
	}else if(nspec_hit == 2){
		with(player_id){
			sound_play(asset_get("sfx_blow_heavy2"));
			//sound_play(sound_get("strike5"));
		}
	}
	sound_play(asset_get("sfx_mol_bat_bombhit"));
	spawn_hit_fx(player_id.x + (68 * player_id.spr_dir), player_id.y - 38, 304);
	
	var new_hsp, new_vsp, orig_angle;
	if(player_id.up_down){
		orig_angle = 15;
	}else if(player_id.down_down){
		orig_angle = 345;
	}else{
		orig_angle = 0;
	}
	
	//spawn projectile
	new_hsp = player_id.spr_dir*lengthdir_x(25 + (10 * (nspec_hit-1)),orig_angle);
	new_vsp = lengthdir_y(25 + (10 * (nspec_hit-1)),orig_angle);
	var ball = create_hitbox(AT_NSPECIAL_2, type + 1, floor(x), floor(y-30));
	if(nspec_hit == 2){
		ball.damage = 9;
		ball.kb_value = 8;
		ball.kb_scale = 0.9;
		ball.hit_effect = 304;
		ball.sound_effect = asset_get("sfx_blow_heavy1");
	}
	ball.spr_dir = player_id.spr_dir;
	ball.hsp = new_hsp;
	ball.vsp = new_vsp;
	ball.proj_angle = orig_angle * ball.spr_dir + (180 * (ball.spr_dir - 1));
	player_id.ring_out = noone;
	instance_destroy();
	exit;
}


//Clairen plasma field will destroy the article (NOTE: does not work properly with maxarticles > 1)

if (place_meeting(x, y, asset_get("plasma_field_obj")) && !(state == 3 || state == 2)) {
	sound_play(asset_get("sfx_clairen_hit_med"));
	spawn_hit_fx(floor(x),floor(y),302);
	shoulddie = true;
}



//Set killarticles to true in death.gml and all your articles will despawn. Gets reset to the false at the end of state 2

if (player_id.killarticles && ((state != 2) || (state == 2 && state_timer < die_time - 15))){
    state = 2;
    state_timer = die_time - 15;
    player_id.ring_cd[type] = 0;
}



//State buffering
    
if (buffertimer < 20){
	buffertimer++;
}else{
	bufferedstate = 0;
	buffertimer = 0;
}

switch(state){

//State 0: Freshly spawned

case 0:
    
    //Go to idle
    if (state_timer >= 5){
        state = 1;
        state_timer = 0;
    }
	break;



//State 1: Idle

	case 1:
		//Stop the movement from state 0
		hsp = 0;
		
		//Die if should die
		if shoulddie{
			state = 2;
			state_timer = floor(die_timer/2);
		}
		
		//Accept buffered state
		if (bufferedstate > 0){
			state = bufferedstate;
			state_timer = 0;
			bufferedstate = 0;
		}
		if(state_timer >= despawn_timer){
			state = 2;
			state_timer = die_time - 5;
		}
		break;
	
	
	
	//State 2: Spent/returning
	
	case 2:
		image_alpha = 0.7;
		if(die_time - state_timer <= 5){
			ignores_walls = true;
			x = lerp(x, player_id.x, 0.4);
			y = lerp(y, player_id.y, 0.4);
		}
		if (state_timer == die_time){
			player_id.killarticles = false;
			if(player_id.ring_out == self) player_id.ring_out = noone;
			//sound_play(asset_get("mfx_player_ready"), false, noone, 0.8, 1.0);
			instance_destroy();
			exit;
		}
		break;
	
	
	
	//State 3: Alpha Burst
	case 3:
		if(hitstop == 0) window_timer++;
		if(image_index == 0 && window_timer == burst_frames[type][0]){
			sound_play(asset_get("sfx_ori_charged_flame_release"));
			sound_play(asset_get("sfx_clairen_tip_strong"), false, noone, 1.05, 0.9);
			create_hitbox(AT_FSPECIAL_2, type + 1, floor(x), floor(y-37));
		}else if(image_index == 4 && window_timer == burst_frames[type][4]){
			state = 2;
			state_timer = 0;
			window_timer = -1;
		}
		//failsafe
		if(state_timer > 90){
			state = 2;
			state_timer = 0;
			window_timer = -1;
		}
		break;
	
	
	//State 4: Omega Burst
	case 4:
		if(hitstop == 0) window_timer++;
		if((image_index == 1 || image_index == 3) && window_timer == burst_frames[type][image_index]){
			//hitbox 1 and 2
			sound_play(asset_get("mfx_star"));
			create_hitbox(AT_FSPECIAL_2, type + 1, floor(x), floor(y-37));
		}else if(image_index == 5 && window_timer == burst_frames[type][image_index]){
			//hitbox 3
			sound_play(asset_get("mfx_star"));
			create_hitbox(AT_FSPECIAL_2, 4, floor(x), floor(y-37));
		}else if(image_index == 7 && window_timer == burst_frames[type][4]){
			state = 2;
			state_timer = 0;
			window_timer = -1;
		}
		//failsafe
		if(state_timer > 90){
			state = 2;
			state_timer = 0;
			window_timer = -1;
		}
		break;
	
	//State 5: Epsilon Burst
	case 5:
		if(hitstop == 0) window_timer++;
		if(image_index == 1 && window_timer == burst_frames[type][1]){
			sound_play(asset_get("sfx_abyss_explosion"));
			sound_play(asset_get("sfx_forsburn_consume_full"), false, noone, 1, 0.8);
			create_hitbox(AT_FSPECIAL_2, type + 1, floor(x), floor(y-37));
		}else if(image_index == 6 && window_timer == burst_frames[type][4]){
			state = 2;
			state_timer = 0;
			window_timer = -1;
		}
		//failsafe
		if(state_timer > 90){
			state = 2;
			state_timer = 0;
			window_timer = -1;
		}
		break;

}

//NOTE: To use a hitbox properly with an article, it MUST be a projectile! (hitbox type 2)

//Make time progress
state_timer++;

//Sprite and animation handling

//Assign each state both a sprite it should have and a way it should animate
switch(state){
    case 0: //spawn
        new_sprite = spr_spawn[type];
        animation_type = 2;
        anim_rate = 3;
        break;
    case 1: //idle
        new_sprite = spr_idle[type];
        animation_type = 1;
        break;
    case 2: //despawn
        new_sprite = spr_spent;
        image_index = type;
        animation_type = -1;
        break;
    case 3: //alpha burst
    	new_sprite = spr_burst[type];
        animation_type = 3;
		break;
    case 4:	//omega burst
    	new_sprite = spr_burst[type];
        animation_type = 3;
		break;
    case 5: //epsilon burst
    	new_sprite = spr_burst[type];
        animation_type = 3;
		break;
}

//Increment image_index based on the animation type assigned, above, to the state
switch(animation_type){
    
    case 0: //Increment image_index every frame
        image_index++;
    
    case 1: //Increment image_index at the rate determined by idle_anim_rate
        if (state_timer mod idle_anim_rate == 0){
            image_index++;
        }
        break;
    
    case 2: //Increment image_index at the rate determined by anim_rate
        if (state_timer mod anim_rate == 0){
            image_index++;
        }
        break;
    
    case 3: //Increment image_index at the rate determined the window timing variables
        if(window_timer > -1 && (window_timer mod burst_frames[type][image_index] == 0) && hitstop == 0){
            image_index++;
            window_timer = 0;
        }
        break;
}

//If not already at the sprite it should be, switch to the new sprite and restart the animation
if (sprite_index != new_sprite){
    sprite_index = new_sprite;
    if(animation_type >= 0) image_index = 0;
}
