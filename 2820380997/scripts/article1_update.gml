//article1_update

#macro CL_INITALIZE 0
#macro CL_IDLE 1
#macro CL_DASH 2 // This is the commanded walking around with Dspecial
#macro CL_JUMP_SQUAT 3 // This is the commanded walking around with Dspecial
#macro CL_AIR_NEUTRAL 4
#macro CL_DJUMP 5
#macro CL_LAND 6
#macro CL_TAUNT 7
#macro CL_TAUNT_2 8
#macro CL_GOT_HIT 9
#macro CL_GOT_PARRIED 10
// Not Used yet
#macro CL_PARRY_START 11
#macro CL_PARRY 12
#macro CL_ROLL 13
#macro CL_AIR_DASH 13
#macro CL_WAVELAND 14

#macro CL_DSPECIAL 20
#macro CL_DSPECIAL_UP 21
#macro CL_DTHROW 22
#macro CL_FSPECIAL 23
#macro CL_FSPECIAL_2 24
#macro CL_FSPECIAL_AIR 25
#macro CL_USPECIAL 26
#macro CL_USPECIAL_2 27
#macro CL_NSPECIAL_2 28
#macro CL_FSPECIAL_AIR_TRAVEL 29
#macro CL_DSPECIAL_DOWN 30
#macro CL_DTHROW_TEAM 31

#macro SC_NEUTRAL 50
#macro SC_COMMITTED 51

#macro CL_ARTICLE_DESTROY 99

check_interupts();
hit_detection();
/*
print(state)
print(state_timer)

print(sprite_index)
print(image_index)
*/
switch(state){
    case CL_INITALIZE:
        sprite_index = spawn_sprite;
        image_index = state_timer / 3;
        clone_state_cat = SC_COMMITTED;
        if(state_timer > 8){state = CL_IDLE;state_timer = 0;}
        break;
        
    case CL_IDLE:
        sprite_index = idle_sprite;
        image_index = state_timer / 8;
        hsp *= .80; // ground friction
        clone_state_cat = SC_NEUTRAL;
        clone_has_djump = true;
        if(free){vsp = vsp + player_id.gravity_speed;}
        
        // Dash Start Logic
        if(player_id.clone_walk_direction != 0){
	        state = CL_DASH;
	        state_timer = 0;
	        sound_play(asset_get("sfx_dash_start"));
	        //spawn_hit_fx((player_id.clone_walk_direction * -10) + x,y-5,4);} //4   - fire directional
	        spawn_base_dust(x, y, "dash_start", player_id.clone_walk_direction);
        }
        break;
        
    case CL_DASH:
        sprite_index = walk_sprite;
        image_index = state_timer / 6;
        clone_state_cat = SC_NEUTRAL;
        if(player_id.clone_walk_direction == 1){spr_dir = 1;hsp = player_id.dash_speed}
        if(player_id.clone_walk_direction == -1){spr_dir = -1;hsp = -1 * player_id.dash_speed}
        if(player_id.clone_walk_direction == 0 ){state = CL_IDLE;}
        //if(!(player_id.state == PS_ATTACK_GROUND || player_id.state == PS_ATTACK_AIR)){state = CL_IDLE;}
        // Dust effect
        if(abs(hsp) > 0 && !instance_exists(dash_vfx)){dash_vfx = spawn_base_dust(x, y, "dash", player_id.clone_walk_direction);dust_timer = 0;}
        else if(instance_exists(dash_vfx) && dust_timer >= 4){dash_vfx = spawn_base_dust(x, y, "dash", player_id.clone_walk_direction);dust_timer = 0;}
        else {dust_timer++;}
        // Interupts
        if(free == true && state_timer > 4){state = CL_AIR_NEUTRAL;state_timer = 0;}
        if(player_id.state_cat == SC_HITSTUN){state = CL_IDLE; player_id.clone_walk_direction = 0;}
        //if(player_id.state == AT_EXTRA_1){state = CL_IDLE; player_id.clone_walk_direction = 0;}
        break;
        
    case CL_JUMP_SQUAT:
    	sprite_index = jumpstart_sprite;
        image_index = 1;
        clone_has_air_dash = true;
        clone_state_cat = SC_COMMITTED;
        clear_button_buffer(PC_JUMP_PRESSED);
        if(state_timer > 4){state = CL_AIR_NEUTRAL;state_timer = 0;vsp = -1 * jump_speed;spawn_base_dust(x, y, "jump", spr_dir)}
    	break;
    
    case CL_AIR_NEUTRAL:
        sprite_index = jump_sprite;
        image_index = 2 + (vsp / player_id.max_fall);
        clone_state_cat = SC_NEUTRAL;
        vsp = vsp + player_id.gravity_speed;
        hsp = clamp(hsp + (player_id.air_accel * player_id.clone_walk_direction),-1 * player_id.air_max_speed,player_id.air_max_speed)
        //vsp = clamp(vsp,-8,player_id.max_fall);
        //Fast Fall Logic
        if(player_id.down_hard_pressed && sign(vsp) == 1 && player_id.attack == AT_EXTRA_1){
        	vsp = player_id.fast_fall; 
        	if(fast_fall_fx_played_flag == false){spawn_hit_fx((spr_dir * -10) + x,y - 40,player_id.vfx_clone_fast_fall);fast_fall_fx_played_flag = true;} //19  - sweetspot small
        }
        if(free == false){state = CL_LAND;state_timer = 0;}
        break;
        
    case CL_DJUMP:
    	if(state_timer > 4){sprite_index = doublejump_sprite;}
    	image_index = state_timer / 4;
    	clear_button_buffer(PC_JUMP_PRESSED);
    	clone_state_cat = SC_NEUTRAL;
    	clone_has_djump = false;
    	// From Air Neutral
    	vsp = vsp + player_id.gravity_speed;
        hsp = clamp(hsp + (player_id.air_accel * player_id.clone_walk_direction),-1 * player_id.air_max_speed,player_id.air_max_speed)
    	// Double Jump HSP reverse around logic
    	if(state_timer < 4 && spr_dir == 1 && sign(hsp) == 1 && player_id.left_down){
    		hsp = -1 * .5 * hsp;
    		//sprite_index = doublejump_backward_sprite;
    	} 
    	if(state_timer < 4 && spr_dir == -1 && sign(hsp) == -1 && player_id.right_down){
    		hsp = -1 * .5 * hsp;
    		//sprite_index = doublejump_backward_sprite;
    	} 
    	// Spawn Dust
    	if(state_timer == 1){vsp = -1 * djump_speed; spawn_base_dust(x, y, "djump", spr_dir);sound_play(player_id.djump_sound);}
    	//Fast Fall Logic
        if(player_id.down_hard_pressed && sign(vsp) == 1 && player_id.attack == AT_EXTRA_1){
        	vsp = player_id.fast_fall; 
        	if(fast_fall_fx_played_flag == false){spawn_hit_fx((spr_dir * -10) + x,y - 40,player_id.vfx_clone_fast_fall);fast_fall_fx_played_flag = true;} //19  - sweetspot small
        }
    	// Exit Condition
    	if(state_timer > 32){state = CL_AIR_NEUTRAL;state_timer = 0;}
    	if(free == false){state = CL_LAND;state_timer = 0;}
    	break;
        
    case CL_LAND:
        sprite_index = land_sprite;
        image_index = 0;
        clone_state_cat = SC_COMMITTED;
        clone_has_djump = true;
        clone_has_air_dash = true;
        fast_fall_fx_played_flag = false;
        // Play Sound
        if(state_timer == 1){spawn_base_dust(x, y, "land", spr_dir);sound_play(player_id.land_sound);}
        // Exit Condition
        if(state_timer > 3){state = CL_IDLE;state_timer = 0;}
        break;
        
    case CL_WAVELAND:
    	sprite_index = waveland_sprite;
    	image_index = 0;
    	clone_state_cat = SC_COMMITTED;
    	clone_has_djump = true;
        clone_has_air_dash = true;
        fast_fall_fx_played_flag = false;
        //wave_land_time = 8;
		//wave_land_adj = 1.30; //the multiplier to your initial hsp when wavelanding. Usually greater than 1
		//wave_friction = .065; //grounded deceleration when wavelanding
        // Play Sound
        if(state_timer == 1){
        	spawn_base_dust(x, y, "waveland", spr_dir);
        	sound_play(player_id.waveland_sound);
        	hsp *= player_id.wave_land_adj + .10;
        }
        if(state_timer > 4 && state_timer < player_id.wave_land_time){hsp = hsp *(1-player_id.wave_friction);}
        if(player_id.attack_down == true){state = CL_DSPECIAL;state_timer = 0;hsp = hsp * 1.1;}
        if(state_timer >= player_id.wave_land_time){state = CL_IDLE;state_timer = 0;}
        break;
    case CL_AIR_DASH:
        image_index = state_timer/4;
        clone_state_cat = SC_COMMITTED;
        clone_has_air_dash = false;
        
        if(state_timer == 1){
        	vsp=0;
        	hsp=0;
        	// soundID,looping,panning,volume,pitch / Pitch range from .4 to .7
	        sound_play(asset_get( "sfx_dash_start" ),false,noone,1, .75);
	        switch(clone_air_dash_direction){
	        	case 8:
	        		if (spr_dir == 1){sprite_index = airdash_upward_sprite;}
	        		else sprite_index = airdash_upward_sprite;
	        		break;
	        	case 9:
	        		if (spr_dir == 1) { sprite_index = airdash_forward_sprite;}
	        		else sprite_index = airdash_backward_sprite;
	        		break;
	        	case 5:
	        		if(spr_dir == 1){clone_air_dash_direction = 6;sprite_index = airdash_forward_sprite;}
	        		else clone_air_dash_direction = 4; sprite_index = airdash_forward_sprite;
	        		break;
	        	case 6:
	        		if (spr_dir == 1) { sprite_index = airdash_forward_sprite;}
	        		else sprite_index = airdash_backward_sprite;
		        	//image_angle = 0;
	        		break;
	        	case 3:
	        		if (spr_dir == 1) { sprite_index = airdash_forward_sprite;}
	        		else sprite_index = airdash_backward_sprite;
	        		//image_angle = 315;
	        		break;
	        	case 2:
	        		sprite_index = airdash_downward_sprite;
	        		//image_angle = 270;
	        		break;
	        	case 1:
	        		if (spr_dir == 1){sprite_index = airdash_backward_sprite;}
	        		else sprite_index = airdash_forward_sprite;
	        		//image_angle = 135;
	        		break;
	        	case 4:
	        		if (spr_dir == 1){sprite_index = airdash_backward_sprite;}
	        		else sprite_index = airdash_forward_sprite;
	        		//image_angle = 180;
	        		break;
	        	case 7:
	        		if (spr_dir == 1){sprite_index = airdash_backward_sprite;}
	        		else sprite_index = airdash_forward_sprite;
	        		//image_angle = 235;
	        		break;
	        	default:
	        		break;
	        }
	    //if(spr_dir = -1){ image_angle = image_angle + 180;}
        }
        if(state_timer == 4){
        	var air_dash_total_speed = 8;
        	switch(clone_air_dash_direction){
        		case 8:
		        	hsp += air_dash_total_speed * cos(degtorad(90));
		        	vsp += -1 * air_dash_total_speed * sin(degtorad(90));
		        	break;
        		case 9:
		        	hsp += air_dash_total_speed * cos(degtorad(45));
		        	vsp += -1 * air_dash_total_speed * sin(degtorad(45));
	        		break;
        		case 6:
        		case 5: 
		        	hsp += air_dash_total_speed * cos(degtorad(0));
		        	vsp += -1 * air_dash_total_speed * sin(degtorad(0));
	        		break;
        		case 3:
		        	hsp += air_dash_total_speed * cos(degtorad(315));
		        	vsp += -1 * air_dash_total_speed * sin(degtorad(315));
	        		break;
        		case 2:
		        	hsp += air_dash_total_speed * cos(degtorad(270));
		        	vsp += -1 * air_dash_total_speed * sin(degtorad(270));
	        		break;
        		case 1:
		        	hsp += air_dash_total_speed * cos(degtorad(235));
		        	vsp += -1 * air_dash_total_speed * sin(degtorad(235));
	        		break;
        		case 4:
		        	hsp += air_dash_total_speed * cos(degtorad(180));
		        	vsp += -1 * air_dash_total_speed * sin(degtorad(180));
	        		break;
        		case 7:
		        	hsp += air_dash_total_speed * cos(degtorad(135));
		        	vsp += -1 * air_dash_total_speed * sin(degtorad(135));
	        		break;
	        		
        	}
        	switch(clone_air_dash_direction){
        		case 9:
        		case 6: 
        		case 3:
        		case 1:
        		case 4:
        		case 7:
        		case 5:
        			spawn_base_dust(x, y, "dash_start", player_id.clone_walk_direction);
        			break;
        		case 8:
        		case 2:
        			spawn_base_dust(x, y, "djump", player_id.clone_walk_direction);
        	}
        }
        if(state_timer > 15){image_angle = 0;}
        if(state_timer > 16 && free){state = CL_AIR_NEUTRAL;state_timer = 0;}
        if(state_timer < 15 && !free){state = CL_WAVELAND;state_timer = 0;}
        if(state_timer > 15 && !free){state = CL_LAND;state_timer = 0;}
    	break;
        
    case CL_TAUNT:
        sprite_index = taunt_sprite;
        clone_state_cat = SC_COMMITTED;
        hsp = 0;
        if((player_id.attack == AT_FSPECIAL_2) && 
        (player_id.state == PS_ATTACK_AIR || player_id.state == PS_ATTACK_GROUND)){
        	state = CL_FSPECIAL;state_timer = 0;
        }
        if((player_id.attack == AT_USPECIAL_2) && 
        (player_id.state == PS_ATTACK_AIR || player_id.state == PS_ATTACK_GROUND)){
        	state = CL_USPECIAL;state_timer = 0;
        }
        
        //set_window_value(attack, window_num, AG_WINDOW_LENGTH, 15);
        // Window #1 / Frame(s) # 0-2 / Start
        /*
		set_window_value(attack, window_num, AG_WINDOW_TYPE, 1);
		set_window_value(attack, window_num, AG_WINDOW_LENGTH, 15);
		set_window_value(attack, window_num, AG_WINDOW_ANIM_FRAMES, 3);
		set_window_value(attack, window_num, AG_WINDOW_ANIM_FRAME_START, 0);
		
		window_num++;
		
		// Window #2 / Frame(s) # 3-5 / Loop
		set_window_value(attack, window_num, AG_WINDOW_TYPE, 1);
		set_window_value(attack, window_num, AG_WINDOW_LENGTH, 21);
		set_window_value(attack, window_num, AG_WINDOW_ANIM_FRAMES, 3);
		set_window_value(attack, window_num, AG_WINDOW_ANIM_FRAME_START, 3);
		set_window_value(attack, window_num, AG_WINDOW_HAS_SFX, 1); 
		set_window_value(attack, window_num, AG_WINDOW_SFX, asset_get("sfx_diamond_small_collect")); // asset_get("") or sound_get("")
		set_window_value(attack, window_num, AG_WINDOW_SFX_FRAME, 1); //get_window_value(attack,window_num,AG_WINDOW_LENGTH)-1);
		
		window_num++;
		
		// Window #3 / Frame(s) # 6-8 / End
		set_window_value(attack, window_num, AG_WINDOW_TYPE, 1);
		set_window_value(attack, window_num, AG_WINDOW_LENGTH, 15);
		set_window_value(attack, window_num, AG_WINDOW_ANIM_FRAMES, 3);
		set_window_value(attack, window_num, AG_WINDOW_ANIM_FRAME_START, 6);
		*/
		if(state_timer == 0){
			image_index = 0;
		} 

		
		//Window 1
		if(state_timer > 0 && state_timer <= 15){
			image_index = state_timer / 5;
		}
		
       //Window 2
       if(state_timer > 15 && state_timer <= 15 + 21){
			image_index = 3 + (state_timer - 15) / 7;
			if(state_timer == 16) {sound_play(asset_get("sfx_diamond_small_collect"))}
			if(state_timer == 15 + 20 && player_id.taunt_down = true){state_timer = 15;}
		}
		
		//Window 3
       if(state_timer > 15 + 21 && state_timer <= 15 + 21 + 15){
			image_index = 7 + (state_timer - 15 + 21) / 5;
		}
       
        if(state_timer == 15 + 21 + 15){state = CL_IDLE;state_timer = 0;};
        if(vsp > 0 || (!player_id.taunt_down) && player_id.special_down){
        	state = CL_IDLE; state_timer = 0;
        }
        break;
        
    case CL_TAUNT_2:
        break;
        
    case CL_GOT_HIT:
        sprite_index = hurt_sprite;
        image_index = 0;
        clone_state_cat = SC_COMMITTED;
        destroy_hitboxes();
        not_throwable_flag = true;
        Nspecial_explosion_flag = false;
        hsp *= .80; // Horizontal friction
        vsp *= .80; // Vertical Friction
        if(state_timer > 30){state = CL_ARTICLE_DESTROY;state_timer = 0;}
        break;
        
    case CL_GOT_PARRIED:
        sprite_index = land_sprite;
        image_index = 0;
        clone_state_cat = SC_COMMITTED;
        destroy_hitboxes();
        not_throwable_flag = true;
        was_parried = true;
        hsp *= .80; // ground friction
        vsp *= .80; // Vertical Friction
        if(state_timer > 30){state = CL_ARTICLE_DESTROY;state_timer = 0;}
        break;
        
    case CL_DSPECIAL:
    // Dspecial is 26 frames w/ whiff, currently 1 -> 6, 2 -> 2, 3 -> 12 ( 18 whiff). 8 Animation Frames
        sprite_index = dspecial_sprite;
        image_index = state_timer / 1.5;
        clone_state_cat = SC_COMMITTED;
        clone_dspecial_cooldown = 2;
        // Friction
        switch(free){
        	case 0: // Grounded
        		hsp *= 0.95;
        		break;
        	case 1: // Airborne
	        	if(hsp > player_id.air_max_speed) {hsp *= 0.95;}
	        	vsp = vsp + player_id.gravity_speed;
	        	break;
        	default:
        		break;
        }
        //vsp = clamp(vsp,-8,player_id.max_fall);
        if(state_timer < 5 && player_id.right_down){ spr_dir = 1}; // Face Right
        if(state_timer < 5 && player_id.left_down){ spr_dir = -1}; // Face Left
        if(state_timer < 5 && player_id.up_down){state = CL_DSPECIAL_UP;state_timer = 0;} // Go to Dspecial Up
        if(state_timer < 5 && player_id.down_down && free && 
        player_id.attack == AT_EXTRA_1){state = CL_DSPECIAL_DOWN;state_timer = 0} // Go to Dspecial Up
        if(state_timer = 4){
        	sound_play(asset_get("sfx_swipe_medium1"));
        	sound_play(asset_get("sfx_ori_spirit_flame_2"),false,noone,.5,.8)// sound_play(sound_temp,false,noone,volume_temp,pitch_temp ); // soundID,looping,panning,volume,pitch /
        	} 
        if(state_timer = 5){current_hitbox = create_article_hitbox(AT_DSPECIAL,2,x + (spr_dir * 35), y - 26);}
        if(instance_exists(current_hitbox)){
			var temp_x = x + (spr_dir * 45);
			var temp_y = y - 20;
			with(current_hitbox){
				x = temp_x;
				y = temp_y;
				}
			}
        if(player_id.clone_dspecial_hit == true){
    	clone_dspecial_hit = true; // Sets the variable on the player to the article
        state = CL_DTHROW; 
        sprite_index = dthrow_full_sprite;
        image_index = 0;} 
        
        if(state_timer > 7){image_index = 2 + (state_timer / 4);}
        if(state_timer > 26 && !free){state = CL_IDLE;state_timer = 0;}
        if(state_timer > 26 && free){state = CL_AIR_NEUTRAL;state_timer = 0;}
        break;
        
    case CL_DSPECIAL_UP:
        sprite_index = dspecial_up_sprite;
        image_index = state_timer / 1.5;
        clone_state_cat = SC_COMMITTED;
        clone_dspecial_cooldown = 2;
        // Friction
        switch(free){
        	case 0: // Grounded
        		hsp *= 0.9;
        		break;
        	case 1: // Airborne
	        	if(hsp > player_id.air_max_speed) {hsp *= 0.95;}
	        	vsp = vsp + player_id.gravity_speed;
	        	break;
        	default:
        		break;
        }
        
        if(state_timer = 4){
        	sound_play(asset_get("sfx_swipe_medium1"));
        	sound_play(asset_get("sfx_ori_spirit_flame_2"),false,noone,.5,.75);
        }
        if(state_timer = 4){current_hitbox = create_article_hitbox(AT_EXTRA_2,2,x + (spr_dir * -1), y + -84);}
        if(instance_exists(current_hitbox)){
			var temp_x = x;
			var temp_y = y - 84;
			with(current_hitbox){
				x = temp_x;
				y = temp_y;
				}
			}
    	if(player_id.clone_dspecial_hit == true){
    	clone_dspecial_hit = true; // Sets the variable on the player to the article
        state = CL_DTHROW; 
        sprite_index = dthrow_full_sprite;
        image_index = 0;} 
        if(state_timer > 7){image_index = 2 + (state_timer / 4);}
        if(state_timer > 26 && !free){state = CL_IDLE;state_timer = 0;clone_dspecial_cooldown = 30;}
        if(state_timer > 26 && free){state = CL_AIR_NEUTRAL;state_timer = 0;clone_dspecial_cooldown = 30;}
    	break;
    	
    case CL_DSPECIAL_DOWN:
        sprite_index = dspecial_down_sprite;
        image_index = state_timer / 1.5;
        clone_state_cat = SC_COMMITTED;
        clone_dspecial_cooldown = 30;
        // Friction
        switch(free){
        	case 0: // Grounded Not Possibvle
        		hsp *= 0.9;
        		break;
        	case 1: // Airborne
	        	if(hsp > player_id.air_max_speed) {hsp *= 0.95;}
	        	vsp = vsp + player_id.gravity_speed;
	        	break;
        	default:
        		break;
        }
        
        
        if(state_timer = 4){
        	sound_play(asset_get("sfx_swipe_medium1"));
        	sound_play(asset_get("sfx_ori_spirit_flame_2"),false,noone,.5,.85);
        }
        if(state_timer = 4){current_hitbox = create_article_hitbox(AT_EXTRA_2,3,x + (spr_dir * 9), y + 2);}
        if(instance_exists(current_hitbox)){
        	var temp_x = x + spr_dir * 9;
        	var temp_y = y + 2;
        	with(current_hitbox){
        		x = temp_x;
        		y = temp_y;
        		}
        	}
        
    	if(player_id.clone_dspecial_hit == true){
    	clone_dspecial_hit = true; // Sets the variable on the player to the article
        state = CL_DTHROW; 
        sprite_index = dthrow_full_sprite;
        image_index = 0;} 
        if(state_timer > 7){image_index = 2 + (state_timer / 4);}
        if(!free && !player_id.clone_dspecial_hit){state = CL_LAND;state_timer = 0;clone_dspecial_cooldown = 30;}
        if(state_timer > 26 && free){state = CL_AIR_NEUTRAL;state_timer = 0;clone_dspecial_cooldown = 30;}
    	break;
        
    case CL_DTHROW:
    // DThrow window lengths 4, 9, 6, 20, 14,
        if(state_timer <= 19){sprite_index = dthrow_full_sprite;}
        if(state_timer > 19){sprite_index = dthrow_partial_sprite;}
        if(state_timer <= 30){image_index = state_timer / 5;}
        if(state_timer > 30 && state_timer <= 62 ){image_index = 6 + ((state_timer - 30) / 11);}
        if(state_timer > 62){image_index = 9 + ((state_timer - 62) / 4);}
        vsp = 0;
        hsp = 0;
        clone_state_cat = SC_COMMITTED;
		if (clone_dspecial_hit == true && instance_exists(grabbed_player_obj)) {
			//move_cooldown[AT_DSPECIAL] = 30;
			//hurtboxID.sprite_index = get_attack_value(AT_DTHROW, AG_HURTBOX_SPRITE); // Set proper hurtbox, thanks Shampoo!
			
			//first, drop the grabbed player if this is the last window of the attack, or if they somehow escaped hitstun.
			if (clone_dspecial_hit == false) { grabbed_player_obj = noone;} //Minus 1 window for last window release
			else if (grabbed_player_obj.state != PS_HITSTUN && grabbed_player_obj.state != PS_HITSTUN_LAND) { grabbed_player_obj = noone;}
		
			else {
				//keep the grabbed player in hitstop until the grab is complete.
				grabbed_player_obj.hitstop = 2;
				grabbed_player_obj.hitpause = true;
				grabbed_player_obj.can_shield = false;
				grabbed_player_obj.can_tech = false;
				grabbed_player_obj.can_wall_tech = false;
				
				//if this is the first frame of a window, store the grabbed player's relative position.
				if (state_timer <= 1) {
					grabbed_player_relative_x = grabbed_player_obj.x - x;
					grabbed_player_relative_y = grabbed_player_obj.y - y;
				}
				
				if (state_timer <= 4) {
					if(free){
						if(state_timer <= 2){
							pull_to_x = grabbed_player_relative_x;
							pull_to_y = grabbed_player_relative_y - floor(grabbed_player_obj.char_height/2);
						}
						x = grabbed_player_obj.x; //+ ease_linear(0, pull_to_x, window_timer, window_length);
						y = grabbed_player_obj.y; // + ease_linear(0, pull_to_y, window_timer, window_length);
					}
					if(!free){
						if(state_timer <= 2){
							pull_to_x = 20 * spr_dir;
							pull_to_y = 0;
						}
						grabbed_player_obj.x = x; //+ ease_circOut( grabbed_player_relative_x, pull_to_x, window_timer, window_length);
						grabbed_player_obj.y = y; //+ ease_circOut( grabbed_player_relative_y, pull_to_y, window_timer, window_length);
					}
				}
				if (state_timer >= 5) {
				/*	x = grabbed_player_obj.x
					y = grabbed_player_obj.y */
					grabbed_player_obj.x = x;
					grabbed_player_obj.y = y;
				}
			}
			}
        if(state_timer = 30){current_hitbox = create_article_hitbox(AT_DTHROW,7,x, y - 40);}
        if(state_timer = 36){current_hitbox = create_article_hitbox(AT_DTHROW,8,x, y - 40);}
        if(state_timer = 42){current_hitbox = create_article_hitbox(AT_DTHROW,8,x, y - 40);}
        if(state_timer = 48){current_hitbox = create_article_hitbox(AT_DTHROW,8,x, y - 40);}
        if(state_timer = 54){current_hitbox = create_article_hitbox(AT_DTHROW,8,x, y - 40);}
        if(state_timer = 62){current_hitbox = create_article_hitbox(AT_DTHROW,9,x, y - 40);}
        if(state_timer > 70){player_id.clone_dspecial_hit = false;clone_dspecial_hit = false;state = CL_IDLE;state_timer = 0;clone_dspecial_cooldown = 60;}
        break; 
        
    case CL_DTHROW_TEAM:
    	//Window Timings 12 - 10 - 10 - 9 - 2 - 12
    	//Frame animation: 0-2 / 3-7 / 3-7 / 8-13
    	// Internal testing puts the first timer at 18 to account for hitpause
    	// Animation
    	sprite_index = dthrow_team_sprite;
        if(player_id.window == 1){image_index = player_id.image_index;} // Window 1
        if(player_id.window == 2){image_index = player_id.image_index - 1;} // Window 2 - Hitbox is 12+6 -> 18 frames in
        if(player_id.window == 3){image_index = player_id.image_index - 1;} // Window 3 - hitbox is 10+12+6 -> 28
        if(player_id.window > 3){image_index = clamp(player_id.image_index,8,13);} // Window 4 & 5
        // Location
        if(instance_exists(player_id.grabbed_player_obj)){ // Check grabbed oppoenent exists
        	if(player_id.window == 1){
        		spr_dir = -1 * player_id.spr_dir;  // Make clone face the player
				hsp = 2 * -1 * spr_dir; // Fake easing
				vsp = 0;
				y = player_id.y; // Force same y coordinate
	        }
 			if(player_id.window > 1){
 				hsp = 0;
 				vsp = 0;
				x = player_id.x + (75 * player_id.spr_dir) // Determines location of clone during most of the move
				y = player_id.y; // Force same y coordinate
				depth = player_id.depth;
	        }
        }
        spr_dir = -1 * player_id.spr_dir;
        var temp_x = x;
        var temp_y = y;
        // State Extras
        clone_state_cat = SC_COMMITTED;
        // Hitboxes
        if(player_id.window == 2 && image_index == 6 && !player_id.hitpause){current_hitbox = create_article_hitbox(AT_EXTRA_3,4,x, y);}
        if(player_id.window == 3 && image_index == 6 && !player_id.hitpause){current_hitbox = create_article_hitbox(AT_EXTRA_3,5,x, y);}
        // Exit Condition
        if(!(player_id.state == PS_ATTACK_AIR || player_id.state == PS_ATTACK_GROUND)){
        	player_id.clone_dspecial_hit = false;
        	clone_dspecial_hit = false;
        	state = CL_IDLE;
        	state_timer = 0;
        	clone_dspecial_cooldown = 60;}
    	break;
        
    case CL_FSPECIAL_AIR_TRAVEL: // Travel whe nthe real roekoko grabs the opponent
        sprite_index = wisp_travel_sprite;
        image_index = state_timer / 6;
        clone_state_cat = SC_COMMITTED;
        spr_dir = 1;
        /*x = ease_expoIn(x, player_id.x, state_timer, 68);
		/y = ease_expoIn(y, player_id.y - 15, state_timer, 68); // Kick above so it hits opponent above
		var distance_to_clone = point_distance(x,y - 30,player_id.x,player_id.y - 30);
            if(distance_to_clone < 75){window = 2;}
            if(distance_to_clone > 75){attack = AT_FSPECIAL_AIR;}
        */
        //point_direction(x1, y1, x2, y2) 1 is start 2 is end
        var travel_angle = point_direction(x, y, player_id.x, player_id.y - 30);
        var travel_speed = 12;
        hsp = travel_speed * cos(degtorad(travel_angle));
        vsp = -1 * travel_speed * sin(degtorad(travel_angle));
        image_angle = travel_angle;
        ignores_walls = true;
        
        //Detection with article
        //point_distance(x1, y1, x2, y2); 1 is star 2 is end
        //point_distance(x1, y1, x2, y2); 1 is star 2 is end
        if((point_distance(x, y, player_id.x, player_id.y) < 50) || player_id.state_cat == SC_HITSTUN){ state = CL_FSPECIAL_AIR;state_timer = 0;}
        break;
        
    case CL_FSPECIAL_AIR: // Custom tag move Move if the player is grabbing the opponent
    	// Initialize
        clone_state_cat = SC_COMMITTED;
        image_angle = 0;
        hsp = 0;
        vsp = 0;
        ignores_walls = false;
        // Sprite Direction / Location Logic
        if(player_grab_timer < 50){ // Lock in place before the assist kick
	        if(player_id.x - x > 0) { spr_dir = 1; x = player_id.x - 75;}
	        else {spr_dir = -1; x = player_id.x + 75;}
	        y = player_id.y;
        }
        
        // Waiting Time - Total Time is 55 seconds
        if(player_id.attack == AT_DTHROW && (player_id.state == PS_ATTACK_AIR || player_id.state == PS_ATTACK_GROUND)){
        	player_grab_timer = player_id.state_timer;
        }
    	if(player_grab_timer == 52 && player_id.hitpause == false){current_hitbox = create_article_hitbox(AT_FSPECIAL_AIR, 2, player_id.x, player_id.y - 34); hitstop = 8;} // Create hitbox
        // Animation
        if(player_grab_timer < 44){image_index = 1 + (player_grab_timer / 4); sprite_index = taunt_sprite;}
        if(player_grab_timer > 45){image_index = ((player_grab_timer - 45) / 2); sprite_index = utilt_sprite;}
		if(player_grab_timer > 50){hsp = 2 * spr_dir;vsp = 0;}
		if(player_grab_timer > 59 || player_id.state_cat == SC_HITSTUN){player_id.clone_dspecial_assist = false;state = CL_IDLE;state_timer = 0;clone_dspecial_cooldown = 30;}
        break;
        
    case CL_FSPECIAL: //Throwing
        // Window Timing 9 (skipped if clone already spawned) , 8, 3, 12 / 8 frames of animation
        sprite_index = fspecial_sprite;
        clone_state_cat = SC_COMMITTED;
        if(state_timer == 1){spr_dir = player_id.spr_dir;}
        if(state_timer < 4){image_index = state_timer;}
        if(state_timer >= 5){image_index = 3 + state_timer / 4;}
        if(state_timer > 23){state = CL_IDLE;state_timer = 0;}
        break;
        
    case CL_FSPECIAL_2: //Being Thrown
        // Window timing is 3,9,10,8 / Hspeed on window 1 is 14 / 8 frames of animation
        sprite_index = fspecial_2_sprite;
        image_index = state_timer / 2.5;
        vsp=0;
        clone_state_cat = SC_NEUTRAL;
        if(state_timer > 1 && state_timer < 3){spr_dir = player_id.spr_dir; hsp = 12 * spr_dir;}
        // Nspecial Explode
        /*
        if(state_timer > 5 && player_id.special_pressed && clone_dspecial_cooldown == 0 &&
        !player_id.down_down){state = CL_NSPECIAL_2;state_timer = 0;}
        
        // Dspecial Grab
        if(state_timer > 5 && player_id.special_pressed && clone_dspecial_cooldown == 0 &&
        player_id.down_down){state = CL_DSPECIAL;state_timer = 0;}
        */
        if(state_timer > 16){state = CL_IDLE;state_timer = 0;}
        break;
        
    case CL_USPECIAL: //Throwing
        // Window timing is 9,8,3,12 / Hspeed on window 1 is 14 / 8 frames of animation
        sprite_index = uspecial_sprite;
        clone_state_cat = SC_COMMITTED;
        if(state_timer < 4){image_index = state_timer;}
        if(state_timer >= 5){image_index = 3 + state_timer / 4;}
        if(state_timer > 23){state = CL_IDLE;state_timer = 0;}
        break;
        
    case CL_USPECIAL_2: //Being Thrown
        // Window timing is 3,9,10,8 / Vspeed on window 1 is -12 / 8 frames of animation
        sprite_index = uspecial_2_sprite;
        image_index = state_timer / 2.5;
        clone_state_cat = SC_NEUTRAL;
        if(state_timer == 1){spr_dir = player_id.spr_dir; vsp = -1 * 8;}
        /*
        // Explode
        if(state_timer > 5 && player_id.special_pressed && clone_dspecial_cooldown == 0 &&
        !player_id.down_down){state = CL_NSPECIAL_2;state_timer = 0;}
        // Grab
        if(state_timer > 5 && player_id.special_pressed && clone_dspecial_cooldown == 0 &&
        player_id.down_down){state = CL_DSPECIAL;state_timer = 0;}
        */
        if(state_timer > 16){state = CL_AIR_NEUTRAL;state_timer = 0;}
        break;
        
    case CL_NSPECIAL_2:
    	sprite_index = nspecial_sprite;
        image_index = state_timer/2;
        vsp = 0;
        hsp = 0;
        clone_state_cat = SC_COMMITTED;
        if(state_timer > 3){
        	Nspecial_explosion_flag = true;
	        state = CL_ARTICLE_DESTROY;
	        state_timer = 0;
        }
    	break;
        
    case CL_ARTICLE_DESTROY:
        clone_state_cat = SC_COMMITTED;
    	spawn_hit_fx(x,y-30,player_id.vfx_smoke);
    	if(Nspecial_explosion_flag == true){create_article_hitbox(AT_NSPECIAL_2,1,x + (spr_dir * 0), y + -30);} // spawn hitbox
        not_throwable_flag = false;
		player_id.clone_fspecial_player_throwing_clone = false;
		player_id.clone_fspecial_clone_throwing_player = false;
		player_id.clone_uspecial_player_throwing_clone = false;
		player_id.clone_uspecial_clone_throwing_player = false;
		player_id.clone_dspecial_assist = false;
		player_id.clone_dspecial_hit = false;
		player_id.clone_walk_direction = 0;
		player_id.wisp_object_ID = instance_create(x,y-30,"obj_article2");
		if(Nspecial_explosion_flag == true){player_id.wisp_object_ID.wisp_idle_timer = 10;} // Overide the tmer on nspecial detonation
        instance_destroy(self);
        exit;
        break;
        
    default:
        break;
}
state_timer++;
if(clone_dspecial_cooldown > 0){clone_dspecial_cooldown--}

//if(platdrop_timer > 0){platdrop_timer--}

#define check_interupts()
{
	// Throw Interupts
	if(player_id.clone_fspecial_player_throwing_clone == true && not_throwable_flag == false && clone_state_cat == SC_NEUTRAL){state = CL_FSPECIAL_2; state_timer = 0; player_id.clone_fspecial_player_throwing_clone = false;}
	if(player_id.clone_fspecial_clone_throwing_player = true && not_throwable_flag == false && clone_state_cat == SC_NEUTRAL){state = CL_FSPECIAL;state_timer = 0; player_id.clone_fspecial_clone_throwing_player = false;}
	if(player_id.clone_uspecial_player_throwing_clone = true && not_throwable_flag == false && clone_state_cat == SC_NEUTRAL){state = CL_USPECIAL_2;state_timer = 0; player_id.clone_uspecial_player_throwing_clone = false;}
	if(player_id.clone_uspecial_clone_throwing_player = true && not_throwable_flag == false && clone_state_cat == SC_NEUTRAL){state = CL_USPECIAL;state_timer = 0; player_id.clone_uspecial_clone_throwing_player = false;}
    
    // Idle in the Air
    if(free == true && state_timer > 4 && clone_state_cat == SC_NEUTRAL && !(state == CL_FSPECIAL_2 || state == CL_USPECIAL_2 || state == CL_FSPECIAL_AIR || state == CL_DJUMP)){state = CL_AIR_NEUTRAL;}
    
    //Jump
    if(!free && player_id.jump_down == true && player_id.attack == AT_EXTRA_1 && 
    (player_id.state == PS_ATTACK_AIR || player_id.state == PS_ATTACK_GROUND) && clone_state_cat == SC_NEUTRAL){
    	state = CL_JUMP_SQUAT; state_timer = 0;}
    	
    // Double Jump
    if(free && state_timer > 4 && player_id.jump_pressed && player_id.attack == AT_EXTRA_1 && clone_has_djump == true && 
    (player_id.state == PS_ATTACK_AIR || player_id.state == PS_ATTACK_GROUND) && clone_state_cat == SC_NEUTRAL){
    	state = CL_DJUMP; state_timer = 0;}
    	
    //platdrop
    if(!free == true && clone_state_cat == SC_NEUTRAL && player_id.attack == AT_EXTRA_1 && 
    (player_id.state == PS_ATTACK_AIR || player_id.state == PS_ATTACK_GROUND) &&
    place_meeting(x, y, asset_get("jumpthrough_32_obj"))
    && player_id.down_hard_pressed){can_be_grounded = false;free = true; state = CL_AIR_NEUTRAL; vsp = vsp + 4;}
    
    // Reset Platdrop
    if(!player_id.down_hard_pressed){can_be_grounded = true};
    
    if(!free && player_id.shield_pressed && player_id.attack == AT_EXTRA_1 && (player_id.state == PS_ATTACK_AIR || player_id.state == PS_ATTACK_GROUND) && clone_state_cat == SC_NEUTRAL)
    {
    	state = CL_WAVELAND; state_timer = 0;
    }
    
	// Air Dash
	if(free && state_timer > 1 && player_id.shield_down && player_id.attack == AT_EXTRA_1 && clone_has_air_dash == true && 
    (player_id.state == PS_ATTACK_AIR || player_id.state == PS_ATTACK_GROUND) && clone_state_cat == SC_NEUTRAL){
    	// Numpad Direction
    	if(player_id.up_down && !player_id.right_down && !player_id.down_down && !player_id.left_down){clone_air_dash_direction = 8;}
    	if(player_id.up_down && player_id.right_down && !player_id.down_down && !player_id.left_down){clone_air_dash_direction = 9;}
    	if(!player_id.up_down && player_id.right_down && !player_id.down_down && !player_id.left_down){clone_air_dash_direction = 6;}
    	if(!player_id.up_down && player_id.right_down && player_id.down_down && !player_id.left_down){clone_air_dash_direction = 3;}
    	if(!player_id.up_down && !player_id.right_down && player_id.down_down && !player_id.left_down){clone_air_dash_direction = 2;}
    	if(!player_id.up_down && !player_id.right_down && player_id.down_down && player_id.left_down){clone_air_dash_direction = 1;}
    	if(!player_id.up_down && !player_id.right_down && !player_id.down_down && player_id.left_down){clone_air_dash_direction = 4;}
    	if(player_id.up_down && !player_id.right_down && !player_id.down_down && player_id.left_down){clone_air_dash_direction = 7;}
    	if(!player_id.up_down && !player_id.right_down && !player_id.down_down && !player_id.left_down){clone_air_dash_direction = 5;} // Neutral
    	state = CL_AIR_DASH; state_timer = 0;}
    	
	// DSPECIAL GRAB
    if( clone_dspecial_cooldown == 0 && (player_id.state == PS_ATTACK_AIR || player_id.state == PS_ATTACK_GROUND) && clone_state_cat == SC_NEUTRAL &&
    	(player_id.attack == AT_DSPECIAL || // If Player is using Dspecial.
    	(player_id.attack == AT_EXTRA_1 && player_id.attack_down ))){ // Allows her to grab by pressing attack
    	state = CL_DSPECIAL; state_timer = 0;}
    	
    // Dspecial Team Grab
    if(player_id.attack == AT_EXTRA_3 && (player_id.state == PS_ATTACK_AIR || player_id.state == PS_ATTACK_GROUND) && clone_state_cat == SC_NEUTRAL && state != CL_DTHROW_TEAM){clone_dspecial_hit = false;state = CL_DTHROW_TEAM;clone_dspecial_cooldown = 60;state_timer=0;}
    	
	// Nspecial Detonate
    if(clone_state_cat == SC_NEUTRAL && Nspecial_explosion_flag == false &&
    	((player_id.attack == AT_NSPECIAL_2 && player_id.window == 2) || // If Player is using Nspecial.
    	((state == CL_FSPECIAL_2 || state == CL_USPECIAL_2) && player_id.special_down && player_id.state_timer > 22) // In player presses Nspecial while flying
		))
    	{
    	state = CL_NSPECIAL_2; state_timer = 0;
    	}
/*
	// Nspecial held control
    if(clone_state_cat == SC_NEUTRAL && Nspecial_explosion_flag == false && (state == CL_FSPECIAL_2 || state == CL_USPECIAL_2) &&
    	((player_id.attack == AT_FSPECIAL || player_id.attack == AT_USPECIAL) && player_id.special_down)) // In player presses Nspecial while flying
    	{
    	state = CL_IDLE; state_timer = 0;
    	}
*/
    //Dspecial During Throw
        if(player_id.special_pressed && clone_dspecial_cooldown == 0 && clone_state_cat == SC_NEUTRAL &&
        player_id.down_down && !player_id.up_down && 
        !player_id.left_down && !player_id.right_down){state = CL_DSPECIAL;state_timer = 0;}
    
    // Clone Assist
        if(player_id.clone_dspecial_assist = true && !(state == CL_FSPECIAL_AIR) && was_parried == false && was_hit == false){state = CL_FSPECIAL_AIR_TRAVEL;}
        
    // Taunt
        if(player_id.taunt_down = true && !free && clone_state_cat == SC_NEUTRAL &&
        (player_id.attack != AT_FSPECIAL_2 || player_id.attack != AT_USPECIAL_2)){state = CL_TAUNT;state_timer = 0;}
        
        // Death Interupts (High priority, these need to be written at the end of the interupts stage)
        if(player_id.was_parried == true && state != CL_GOT_PARRIED){state = CL_GOT_PARRIED;}
        if(was_parried == true && state != CL_ARTICLE_DESTROY){state = CL_GOT_PARRIED;} // Force Parry State
        if(was_hit == true && state != CL_ARTICLE_DESTROY){state = CL_GOT_HIT;} // Force Got Hit State
        if(y > room_height || x > room_width || x < 0){state = CL_ARTICLE_DESTROY;state_timer = 0;}
    
}
#define Add_SFX_To_State(state_timer_temp,sound_temp,volume_temp,pitch_temp)
{
		if(state_timer == state_timer_temp){
	        sound_play(sound_temp,false,noone,volume_temp,pitch_temp ); // soundID,looping,panning,volume,pitch /
		}
}
/*
    Supersonic's Complex Hit Detection script v2
    (now featuring instance_place_list)
    
    While not required, I would like it if you credit me for
    using this hit detection code.
    
    This code takes into account the following:
        - Hitbox Priority
        - Hitbox Groups
        - Hit Lockout
        - (optional) Teams
        - (optional) Self Hitting
    
    and should be much easier to customize than my old code, as the on hit stuff
    has been put into a single function for easy editing.
    
    The original code that was passed around had some issues with it and it
    wasn't ever actually meant to be released publicly in the state it was in,
    but that's okay I suppose.
 
    To use it, simply copy and paste the code below to their respective files and, whenever you would like to
    detect hitboxes, call hit_detection(); in article[index]_update.gml.
    To customize what happens when the article is hit, edit the on_hit function in article[index]_update.gml.
    To customize what hitboxes can hit the article, modify the filters function in article[index]_update.gml.
    I've added a couple useful commented out filters for disabling the player hitting the article and teammates
    hitting the article, to serve as examples.
*/
 

 
///     article[index]_update.gml
 
//Put this code at the bottom of the file.
#define on_hit(hbox)
// This is the code the article should run on hit.
// Edit this to have the desired functions when your article is hit by a hitbox.
// hbox refers to the pHitBox object that hit the article.
// hit_player_obj (usually) refers to the player that hit the article.
// hit_player_num refers to the player's number that hit the article.
 {
//Default hit stuff
sound_play(hbox.sound_effect);
spawn_hit_fx(x+hbox.hit_effect_x,y+hbox.hit_effect_y,hbox.hit_effect);
 
hit_player_obj = hbox.player_id;
hit_player_num = hbox.player;
 
//Default Hitpause Calculation
//You probably want this stuff because it makes the hit feel good.
if hbox.type == 1 {
    var desired_hitstop = clamp(hbox.hitpause + hbox.damage * hbox.hitpause_growth * 0.05, 0, 20);
    with hit_player_obj {
        if !hitpause {
            old_vsp = vsp;
            old_hsp = hsp;
        }
        hitpause = true;
        has_hit = true;
        if hitstop < desired_hitstop {
            hitstop = desired_hitstop;
            hitstop_full = desired_hitstop;
        }
    }
}
// This puts the ARTICLE in hitpause.
// If your article does not already account for being in hitpause, either make it stop what it's doing in hitpause
// or comment out the line below.
hitstop = floor(desired_hitstop); 
 
 
//Hit Lockout
if article_should_lockout hit_lockout = hbox.no_other_hit;

state = CL_GOT_HIT;
if(was_hit == false){was_hit = true; state_timer = 0;}

/* commented out due to her disapeering on it.
//Default Hitstun Calculation
hitstun = (hbox.kb_value * 4 * ((kb_adj - 1) * 0.6 + 1) + hbox.damage * 0.12 * hbox.kb_scale * 4 * 0.65 * kb_adj) + 12;
hitstun_full = hitstun;
            
//Default Knockback Calculation
 
//if other.force_flinch && !other.free orig_knock = 0; //uncomment this line for grounded articles.
//if hbox.force_flinch orig_knock = 0.3; //comment out this line for grounded articles.
orig_knock = hbox.kb_value + hbox.damage * hbox.kb_scale * 0.12 * kb_adj;
kb_dir = get_hitbox_angle(hbox);
 
hsp = lengthdir_x(orig_knock, kb_dir);
vsp = lengthdir_y(orig_knock, kb_dir);
*/
}
 
#define filters(hbox)
//These are the filters that check whether a hitbox should be able to hit the article.
//Feel free to tweak this as necessary.
with hbox {
    var player_equal = player == other.player_id.player;
    var team_equal = get_player_team(player) == get_player_team(other.player_id.player);
    return ("owner" not in self || owner != other) //check if the hitbox was created by this article
        && hit_priority != 0 && hit_priority <= 10
        && (groundedness == 0 || groundedness == 1+other.free)
        && (!player_equal) //uncomment to prevent the article from being hit by its owner.
        //&& ( (get_match_setting(SET_TEAMS) && (get_match_setting(SET_TEAMATTACK) || !team_equal) ) || player_equal) //uncomment to prevent the article from being hit by its owner's team.
}
 
#define create_article_hitbox(attack, hbox_num, _x, _y)
//Use this function to easily create hitboxes that ignore the article's hit detection.
var hbox = create_hitbox(attack, hbox_num, floor(_x), floor(_y))
hbox.owner = self;
return hbox;
 
#define hit_detection
//Code by Supersonic#9999
//DO NOT modify this function unless you know what you're doing. This does the actual detection, while
//the other functions determine how and what the hit detection interacts with.
//hbox group management
with (oPlayer)
    if state == clamp(state, 5, 6) && window == 1 && window_timer == 1 {
        other.hbox_group[@ player-1][@ attack] = array_create(10,0);
    }
 
//hit lockout stuff
if hit_lockout > 0 {
    hit_lockout--;
    return;
}
//get colliding hitboxes
var hitbox_list = ds_list_create();
 
var num = instance_place_list(floor(x), floor(y), pHitBox, hitbox_list, false);
var final_hbox = noone;
var hit_variable = `hit_article_${id}`;
if num == 0 return;
if num == 1 {
    //no priority checks if only one hitbox is found
    var hbox = hitbox_list[|0]
    var group = hbox.hbox_group
    if hit_variable not in hbox 
        if (group == -1 || ( group != -1 && hbox_group[@ hbox.orig_player-1][@ hbox.attack][@ group] == 0)) {
            if filters(hbox) {
                final_hbox = hbox;
            } else {
                //hitbox doesn't meet collision criteria. since this usually doesn't change, omit it.
                variable_instance_set(hbox, hit_variable, true);
            }
        } else {
            //fake hit if group has already hit; optimization thing
            variable_instance_set(hbox, hit_variable, true);
        }
} else {
    var highest_priority = 0;
    var highest_priority_owner = -1;
    var highest_priority_hbox = noone;
    for (var i = 0; i < ds_list_size(hitbox_list); i++) {
        var hbox = hitbox_list[|i]
        var group = hbox.hbox_group
        if hit_variable not in hbox 
            //group check
            if (group == -1 || ( group != -1 && hbox_group[@ hbox.orig_player-1][@ hbox.attack][@ group] == 0)) {
                if filters(hbox) {
                    if hbox.hit_priority > highest_priority {
                        highest_priority = hbox.hit_priority;
                        highest_priority_owner = hbox.player;
                        highest_priority_hbox = hbox;
                    }
                } else {
                    //hitbox doesn't meet collision criteria. since this usually doesn't change, omit it.
                    variable_instance_set(hbox, hit_variable, true);
                }
            } else {
                //fake hit if group has already hit; optimization thing
                variable_instance_set(hbox, hit_variable, true);
            }
    }
    if highest_priority != 0 {
        final_hbox = highest_priority_hbox;
    }
}
 
if final_hbox != noone {
    on_hit(final_hbox);
    variable_instance_set(final_hbox, hit_variable, true);
    if final_hbox.hbox_group != -1 hbox_group[@ final_hbox.orig_player-1][@ final_hbox.attack][@ final_hbox.hbox_group] = 1;
}
 
//clear hitbox list
//ds_list_clear(hitbox_list)
ds_list_destroy(hitbox_list);

#define spawn_base_dust
/// spawn_base_dust(x, y, name, dir = 0)
///spawn_base_dust(x, y, name, ?dir)
//This function spawns base cast dusts. Names can be found below.
var dlen; //dust_length value
var dfx; //dust_fx value
var dfg; //fg_sprite value
var dfa = 0; //draw_angle value
var dust_color = 0;
var x = argument[0], y = argument[1], name = argument[2];
var dir = argument_count > 3 ? argument[3] : 0;

switch (name) {
    default: 
    case "dash_start":dlen = 21; dfx = 3; dfg = 2626; break;
    case "dash": dlen = 16; dfx = 4; dfg = 2656; break;
    case "jump": dlen = 12; dfx = 11; dfg = 2646; break;
    case "doublejump": 
    case "djump": dlen = 21; dfx = 2; dfg = 2624; break;
    case "walk": dlen = 12; dfx = 5; dfg = 2628; break;
    case "land": dlen = 24; dfx = 0; dfg = 2620; break;
    case "walljump": dlen = 24; dfx = 0; dfg = 2629; dfa = dir != 0 ? -90*dir : -90*spr_dir; break;
    case "n_wavedash": dlen = 24; dfx = 0; dfg = 2620; dust_color = 1; break;
    case "wavedash": dlen = 16; dfx = 4; dfg = 2656; dust_color = 1; break;
}
var newdust = spawn_dust_fx(x,y,asset_get("empty_sprite"),dlen);
newdust.dust_fx = dfx; //set the fx id
if dfg != -1 newdust.fg_sprite = dfg; //set the foreground sprite
newdust.dust_color = dust_color; //set the dust color
if dir != 0 newdust.spr_dir = dir; //set the spr_dir
newdust.draw_angle = dfa;
return newdust;