// attack_update

//B - Reversals
if (attack == AT_NSPECIAL || attack == AT_FSPECIAL || attack == AT_DSPECIAL || attack == AT_USPECIAL){
	trigger_b_reverse();
}

#macro ATK_KR 0
#macro ATK_BLUE 1
#macro ATK_ORANGE 2

switch(attack) {
	
	case AT_FTILT:

	break;
	case AT_DTILT:
		move_cooldown[attack] = 10;
		//if (window == 3) { move_cooldown[AT_DTILT] = 125; }
	break;
	case AT_UTILT:
		/*
		boneCooldown(attack, 6, 12);
		if (window == 1) {
			bone_direction = 0;
		}
		if (window == 2 && window_timer == 1) {
			if (blue_bone == false) {
				spawnBone(0, -14, 0, -4, 1);
			} else {
				create_hitbox(AT_EXTRA_1, 9, x, y+(-4));
			}
		}
		*/
	break;
	case AT_DATTACK:
		can_move = false;
		if window == 1{
			hsp = dash_speed * spr_dir;
			if window_timer == 6 and !hitpause {
				dattack_sound = sound_play(sound_get("sfx_delta_bone_cascade"))
			}
			// if window_timer == get_window_value(attack, window, AG_WINDOW_LENGTH) dattack_hitbox = create_hitbox(attack, 1, x, y);
		}

		if window != 1 and free {
			sound_volume(dattack_sound, 0, 90)
		}
		// else if window == 2 && dattack_hitbox.kb_scale == 0 && !hitpause{
		// 	if window_timer % get_hitbox_value(attack, 2, HG_LIFETIME) == 0{
		// 		var i = 0;
		// 		repeat array_length(dattack_hitbox.can_hit){
		// 			dattack_hitbox.can_hit[i] = true;
		// 			i++;
		// 		}
		// 		dattack_hitbox.stop_effect = false;
		// 	}
		// 	if window_timer >= get_hitbox_value(attack, 2, HG_WINDOW_CREATION_FRAME) || free{
		// 		if has_rune("B") && attack_down && !free{
		// 			window_timer = 0;
		// 			dattack_hitbox.hitbox_timer = 0;
		// 		}
		// 		else{
		// 			dattack_hitbox.x_pos = get_hitbox_value(attack, 2, HG_HITBOX_X) * spr_dir;
		// 			dattack_hitbox.y_pos = get_hitbox_value(attack, 2, HG_HITBOX_Y);
		// 			dattack_hitbox.image_xscale = get_hitbox_value(attack, 2, HG_WIDTH) / 200;
		// 			dattack_hitbox.image_yscale = get_hitbox_value(attack, 2, HG_HEIGHT) / 200;
		// 			dattack_hitbox.kb_angle = get_hitbox_value(attack, 2, HG_ANGLE);
		// 			dattack_hitbox.damage = get_hitbox_value(attack, 2, HG_DAMAGE);
		// 			dattack_hitbox.kb_value = get_hitbox_value(attack, 2, HG_BASE_KNOCKBACK);
		// 			dattack_hitbox.kb_scale = get_hitbox_value(attack, 2, HG_KNOCKBACK_SCALING);
		// 			dattack_hitbox.hitpause = get_hitbox_value(attack, 2, HG_BASE_HITPAUSE);
		// 			dattack_hitbox.hitpause_growth = get_hitbox_value(attack, 2, HG_HITPAUSE_SCALING);
		// 			dattack_hitbox.sound_effect = get_hitbox_value(attack, 2, HG_HIT_SFX);
		// 			dattack_hitbox.hit_effect = get_hitbox_value(attack, 2, HG_VISUAL_EFFECT);
		// 			set_hitbox_value(attack, 1, HG_KARMA, get_hitbox_value(attack, 2, HG_KARMA));
		// 		}
				
		// 		var i = 0;
		// 		repeat array_length(dattack_hitbox.can_hit){
		// 			dattack_hitbox.can_hit[i] = true;
		// 			i++;
		// 		}
		// 		dattack_hitbox.stop_effect = false;
		// 	}
		// }
	break;
	
	case AT_DSTRONG:
		var bone_speed = clamp(strong_charge, 0, 10);
		
		var ledge_offset = 24;
		var wall_offset = 8;
		
		if window == 1 && strong_charge for (var d = 0; d < dstrong_bones; d++;){
			if (has_rune("A") || place_meeting(dstrong_positions[d] + (((bone_speed * dstrong_speeds[floor(d / 2)]) + ledge_offset) * (d % 2 == 0? -1:1)), y + 2, asset_get("par_block")) ||
			place_meeting(dstrong_positions[d] + (((bone_speed * dstrong_speeds[floor(d / 2)]) + ledge_offset) * (d % 2 == 0? -1:1)), y + 2, asset_get("par_jumpthrough"))) &&
			!place_meeting(dstrong_positions[d] + (((bone_speed * dstrong_speeds[floor(d / 2)]) + wall_offset) * (d % 2 == 0? -1:1)), y - 2, asset_get("par_block"))
			dstrong_positions[d] += (bone_speed * dstrong_speeds[floor(d / 2)]) * (d % 2 == 0? -1:1);
			else while (!(place_meeting(dstrong_positions[d] + (ledge_offset * (d % 2 == 0? -1:1)), y + 2, asset_get("par_block")) ||
			place_meeting(dstrong_positions[d] + (ledge_offset * (d % 2 == 0? -1:1)), y + 2, asset_get("par_jumpthrough"))) ||
			place_meeting(dstrong_positions[d] + (wall_offset * (d % 2 == 0? -1:1)), y - 2, asset_get("par_block")))
			&& abs(dstrong_positions[d] - x) > 16
			dstrong_positions[d] -= (d % 2 == 0? -1:1);
		}
		if window == 2 && window_timer == get_window_value(attack, window, AG_WINDOW_LENGTH){
			for (var d = 0; d < dstrong_bones; d++;){
				set_hitbox_value(attack, 1, HG_HITBOX_X, (x - dstrong_positions[d]) * -spr_dir);
				create_hitbox(attack, 1, x, y);
			}
		}
	break;
	case AT_USTRONG:
		switch(window) {
			case 2:
				if (window_timer >= get_window_value(attack, window, AG_WINDOW_LENGTH) && !hitpause) {
					//sound_play(sound_get("sfx_sans_rise"));
				}
			break;
		}
	break;
	
	case AT_BAIR:

	break;
	case AT_UAIR:
		if window == 1 and window_timer == 10 {
			sound_play(asset_get("sfx_swipe_heavy2"))
		}
		// move_cooldown[AT_UAIR] = 7;
	break;
	
	case AT_NSPECIAL:
		if (window == 2 && window_timer == 1) {
			if (instance_exists(gasterBlaster)) {
				gasterBlaster.state = 10;
			}
			if (trolled) { sound_play(snd_blaster_charge[trolled]); }
			sound_play(sound_get("sfx_blaster_charge"));
			var b_x = 24;
			var b_y = -30;
			gasterBlaster = instance_create(x+(b_x*spr_dir),y+(b_y),"obj_article2");
			//gasterBlaster.spr_dir = spr_dir;
			gasterBlaster.hsp = 3*spr_dir;
			gasterBlaster.vsp = 0;
		}
	break;
	case AT_FSPECIAL:
		//var chargeTime = 24;
		move_cooldown[attack] = 60;
		
		switch(window) {
			case 1:
				if !(fspecStored) fspecCharge = 0;
			break;
			case 2:
				if (fspecCharge >= fspecChargeMax) {
					sound_play(sound_get("sfx_sans_blink"));
					window = 3;
					window_timer = 0;
				} else { fspecCharge++; }
			break;
			case 3:
			case 4:
				if (shield_down) {
					fspecStored = true;
					window = 8;
					window_timer = 0;
				}
			break;
			
			case 5:
				if (window_timer == 1 && free) { vsp = -4; }
			break;
		}
		
		if (window >= 2 && window <= 4) {
			if !(fspecCharge >= fspecChargeMax) && !fspecStopThat {
				hsp *= (7/8);
				vsp *= (4/5);
			} else {
				hsp *= (15/16);
				vsp *= (19/20);
			}
			if (!special_down || fspecStored) { 
				window = 5; 
				window_timer = 0;
			}
		}
		if (window == 6 && window_timer == 1) {
			fspecStored = false;
			fspecStopThat = true;
			with pHitBox {
				if player_id != other or attack != AT_FSPECIAL continue

				destroyed = true
			}
			var should_be_blue = (fspecCharge >= fspecChargeMax)
			
			if (has_rune("G")) {
				var bone = instance_create(x + (24*spr_dir), y-32, "obj_article1");
				bone.boneType = should_be_blue;
				bone.sprite_index = spr_bone[should_be_blue];
			} else {
				var h = create_hitbox(attack, 1 + should_be_blue, x + (24*spr_dir), y-32)
				var spd = should_be_blue ? 2 : 6
				
				h.hsp = spr_dir * spd
			}
			fspecCharge = 0;
		}
	break;
	case AT_DSPECIAL:
	//case AT_FSPECIAL_AIR:
		if (window > 2) { 
			//var slow = (3/4);
			hsp = 0;
			vsp = 0;
			can_move = false;
		} else {
			/*
			var slow = (3/4);
			hsp = hsp*slow;
			vsp = vsp*slow;
			*/
		}
		can_fast_fall = false;
		off_edge = false;
		
		switch(window) {
			case 1:
				var halfway = round(get_window_value(attack, window, AG_WINDOW_LENGTH)/2);
				dspecAngle = 90;
				dspecJoyDir = 90;
				//if (window_timer == 1) { 
				if (window_timer == 1 || window_timer == halfway) { 
					sound_play(sound_get("sfx_sans_click"));
					
				}
			break;
			
			case 2:
				var slow = (3/4);
				hsp = hsp*slow;
				vsp = vsp*slow;
			break;
			
			case 3:
				if (window_timer == get_window_value(attack, window, AG_WINDOW_LENGTH)) {
					if (free) { state = PS_PRATFALL; }
				}
			break;
			
			/*
			case 5:
				if (window_timer == 6) {
					window = 11;
					window_timer = 0;
					with oPlayer if id != other.id && grabbed_id == other.id {
						grabbed_id = 0;
					}
				}
			break;
			*/
			
			case 4:
				var we_have_players = false;
				if (window_timer == get_window_value(attack, window, AG_WINDOW_LENGTH)) {
					window_timer = 0;
				}
				var dspecMax = 40;
				var dspecMin = 30;
				hurtboxID.dodging = true;
				with (oPlayer) if (id != other.id && ("sansGrab_id" in self && sansGrab_id == other.id)) {
					hitstop = 1;
					x = other.x+other.spr_dir*64;
					y = other.y-3;
					we_have_players = true;
					//hurtboxID.dodging = true;
				}
				
				if (!joy_pad_idle && dspecTimer <= dspecMin) {
					var arrow_angle = (we_have_players) ? floor((joy_dir + 45) / 90) * 90 : joy_dir;
					dspecAngle = darctan2(dsin(arrow_angle), spr_dir*dcos(arrow_angle)); 
					dspecJoyDir = arrow_angle;
				}
				
				if (soul_id == "bone" && !we_have_players && dspecTimer >= 20 && !special_down) {
					window = 5;
					window_timer = 0;
					//if (window_timer >= 4) {
						//soul_id.invincible = false;
					//}
					dspecTimer = 0;
					
					// Manual reasonable angle setting.
					set_hitbox_value(attack, 2, HG_ANGLE, dspecAngle);
				}
					
				if (dspecTimer >= dspecMax) {
					with (hit_player_obj) if other.soul_id == id && sansGrab_id == other.id {
						hitstop = 10;	
						hurtboxID.dodging = false;
					}
					
					window = 5;
					window_timer = 0;
					if (window_timer >= 4) {
						//soul_id.invincible = false;
					}
					dspecTimer = 0;
					
					// For players prevents 0 degree launch angles.
					switch (dspecAngle)
					{
						case 0: set_hitbox_value(attack, 2, HG_ANGLE, 40); break;
						case 180: set_hitbox_value(attack, 2, HG_ANGLE, 140); break;
						default: set_hitbox_value(attack, 2, HG_ANGLE, dspecAngle); break;
					}
				}
				dspecTimer++;
			break;
			
			case 5:
				hurtboxID.dodging = false;
				move_cooldown[attack] = 5;
			break;
			
		}
		if (window >= 4){
			invincible = true;
		}
	break;
	case AT_USPECIAL:
		can_move = false;
		can_fast_fall = false;
		fall_through = (window == 3);
		hsp = 0;
		vsp = 0;
		switch window{
			case 2:
				if window_timer == get_window_value(attack, window, AG_WINDOW_LENGTH) && state_timer > get_window_value(attack, window, AG_WINDOW_LENGTH) * 2 {
					window++;
					window_timer = 0;
				}
			break;
			case 3:
				if !joy_pad_idle{
					teleport_sp = -40; // -52 // -64
					vsp = dsin(joy_dir) * teleport_sp;
					hsp = dcos(joy_dir) * -teleport_sp;
				}
				mask_index = (vsp <= 4 ? asset_get("empty_sprite") : orig_mask_index);
				if window_timer == get_window_value(attack, window, AG_WINDOW_LENGTH) mask_index = orig_mask_index;
			break;
			case 4:
				if(window_timer == 1) spawn_hit_fx(x + hsp, y + vsp, uspecial_vfx);
				mask_index = orig_mask_index;
				can_wall_jump = true;
			break;
			
			
		}
	
	case AT_TAUNT:
	if(window == 2 && window_timer == 19 && taunt_down) window_timer--;
		/*
		if (window == 1 && window_timer == 1 && !hitpause) {
			sound_play(sound_get("sfx_badumtss"), 0, 0, 1.8);
		}
		*/
	break;
	case AT_TAUNT_2:
	if(window == 3 && window_timer == 1 && !hitpause) take_damage(player, player, -1);
	break;
	
	case 49:
		if(has_hit_player) was_parried = false;
		if(state_timer >= 2) fs_force_fs = false;
	
	    var screen_center_x = view_get_xview() + view_get_wview()/2;
        var screen_center_y = view_get_yview() + view_get_hview()/2;
        hsp = 0;
        vsp = 0;
        can_move = false;
        can_fast_fall = false;
        if(window >= 4 && window <= 6){
        	set_view_position(room_width/2, room_height/2);
        	// if(shield_pressed) { set_state(PS_IDLE); clear_button_buffer(PC_SHIELD_PRESSED) }
        	hitpause = false;
        	hitstop = 0;
        	hitstop_full = 0;
            suppress_stage_music(0, 1);
            var someone = false;
            with(oPlayer) if "sansFS_soul_host" in self && self != other && sansFS_soul_host == other {
            	someone = true;
            	
                hsp = 0;
                vsp = 0;
                hitpause = true;
                hitstop = 2;
                hitstop_full = 100;
                hitstun = 4;
                hitstun_full = 4;
                state_timer = 2;
                state = PS_HITSTUN;
                hurtboxID.sprite_index = hurtbox_spr;
                invincible = false;
                invince_time = 0;
                attack_invince = 0;
                super_armor = false;
                soft_armor = 0;
                initial_invince = 0;
                for(var i = 0; i < 20; i++;) can_be_hit[i] = (2 * (i != other.player));
                damage_scaling = min(1, damage_scaling);
                if !free y -= 2;
            }
            if window != 6 && !someone set_state(PS_PRATFALL);
            with(oPlayer) if "sansFS_soul_host" in self && self != other && sansFS_soul_host != other {
                hitpause = true;
                hitstop = 2;
                hitstop_full = 100;
                if(other.window < 6){
	                old_hsp = sansFS_hsp_store;
	                old_vsp = sansFS_vsp_store;
                }
            }
            with(pHitBox) {
                hitpause = true;
                hitpause_timer = 2;
            }
            with(obj_article1) {
                hitpause = true;
            }
            with(obj_article2) {
                hitpause = true;
            }
            with(obj_article3) {
                hitpause = true;
            }
            with(obj_article_platform) {
                hitpause = true;
            }
            with(obj_article_solid) {
                hitpause = true;
            }
        }
        if(window == 4){
        	if(window_timer%10 == 1 && window_timer < 30) sound_play(sound_get("sfx_sans_click"));
        	if(window_timer == 20) sound_play(sound_get("sfx_soul_battlestart"));
        	if(window_timer == get_window_value(attack, window, AG_WINDOW_LENGTH)){
        		sansFS_box_x = room_width/2;
        		sansFS_box_y = room_height/2;
        		with(oPlayer) if "sansFS_soul_host" in self && self != other && sansFS_soul_host == other {
        			sansFS_soul_x = room_width/2;
					sansFS_soul_y = room_height/2;
        		}
        	}
        }
        if(window == 5){
	        if ((special_pressed || special_down) && !sansFS_blast_cooldown && !sansFS_blast_rotate){
	        	sansFS_blast_cooldown = 25;
	        	sansFS_blast_combo_cooldown = 40;
	        	sansFS_blast_rotate = -1;
	        	clear_button_buffer(PC_SPECIAL_PRESSED)
	        	var angle = (joy_pad_idle ? sansFS_blast_prev_dir + 80 + random_func_2(69, 100, true) : joy_dir);
	        	var dist = 240;
	        	var _xx = sansFS_box_x - round(lengthdir_x(dist, angle));
	        	var _yy = sansFS_box_y - round(lengthdir_y(dist, angle));
	        	var dir = sansFS_find_nearest_soul(_xx, _yy, angle);
		        sansFS_blast_array[array_length_1d(sansFS_blast_array)] = {
		            x:_xx, 
		            y:_yy, 
		            scale:3,
		            rot:dir, //angle + random_func_2(67, angle_variance * 2, true) - angle_variance
		            state:0,
		            state_timer:0, 
		            state_lengths:[18, 12, 8, 5, 20], //spawn, idle, prep, fire, fade
		            spawn_dist:30,
		            damage:12,
			        lockout:10,
			        hitbox:2
		        };
		        sound_play(sound_get("sfx_blaster_charge"));
		        sansFS_blast_prev_dir = dir;
		        
		        // Test blast
		        // sansFS_blast_array[array_length_1d(sansFS_blast_array)] = {
		        //     x:sansFS_box_x - round(lengthdir_x(dist, 90)), 
		        //     y:sansFS_box_y - round(lengthdir_y(dist, 90)), 
		        //     scale:3,
		        //     rot:90,
		        //     state:0,
		        //     state_timer:0, 
		        //     state_lengths:[18, 12, 8, 5, 20], //spawn, idle, prep, fire, fade
		        //     spawn_dist:30,
		         //   damage:5,
			        // lockout:10
		        // };
	        }
	        if ((attack_pressed || attack_down) && !sansFS_blast_combo_cooldown && !sansFS_blast_rotate){
	        	sansFS_blast_cooldown = 40;
	        	sansFS_blast_combo_cooldown = 50;
	        	sansFS_blast_rotate = -1;
	        	clear_button_buffer(PC_ATTACK_PRESSED);
	        	if(left_down) sansFS_blast_pattern = 3;
	        	if(down_down) sansFS_blast_pattern = 2;
	        	if(right_down) sansFS_blast_pattern = 1;
	        	if(up_down) sansFS_blast_pattern = 0;
	        	switch(sansFS_blast_pattern){
	        		case 0:
	        		sansFS_blast_array[array_length_1d(sansFS_blast_array)] = {
			            x:sansFS_box_x - round(lengthdir_x(300, 315)), 
			            y:sansFS_box_y - round(lengthdir_y(300, 315)), 
			            scale:3,
			            rot:315,
			            state:0,
			            state_timer:0, 
			            state_lengths:[18, 12, 8, 5, 20], //spawn, idle, prep, fire, fade
			            spawn_dist:30,
			            damage:20,
			            lockout:10,
			            hitbox:2
			        };
			        
	        		sansFS_blast_array[array_length_1d(sansFS_blast_array)] = {
			            x:sansFS_box_x - round(lengthdir_x(300, 225)), 
			            y:sansFS_box_y - round(lengthdir_y(300, 225)), 
			            scale:3,
			            rot:225,
			            state:0,
			            state_timer:0, 
			            state_lengths:[18, 12, 8, 5, 20], //spawn, idle, prep, fire, fade
			            spawn_dist:30,
			            damage:20,
			            lockout:10,
			            hitbox:2
			        };
	        		break;
	        		case 1:
	        		sansFS_blast_array[array_length_1d(sansFS_blast_array)] = {
			            x:sansFS_box_x - round(lengthdir_x(240, 180)), 
			            y:sansFS_box_y - round(lengthdir_y(240, 180)), 
			            scale:3,
			            rot:180,
			            state:0,
			            state_timer:0, 
			            state_lengths:[18, 12, 8, 5, 20], //spawn, idle, prep, fire, fade
			            spawn_dist:30,
			            damage:20,
			            lockout:10,
			            hitbox:2
			        };
			        
	        		sansFS_blast_array[array_length_1d(sansFS_blast_array)] = {
			            x:sansFS_box_x - round(lengthdir_x(240, 270)), 
			            y:sansFS_box_y - round(lengthdir_y(240, 270)), 
			            scale:3,
			            rot:270,
			            state:0,
			            state_timer:0, 
			            state_lengths:[18, 12, 8, 5, 20], //spawn, idle, prep, fire, fade
			            spawn_dist:30,
			            damage:20,
			            lockout:10,
			            hitbox:2
			        };
	        		break;
	        		case 2:
	        		sansFS_blast_array[array_length_1d(sansFS_blast_array)] = {
			            x:sansFS_box_x + sansFS_box_width * .75, 
			            y:sansFS_box_y - round(lengthdir_y(240, 90)), 
			            scale:3,
			            rot:90,
			            state:0,
			            state_timer:0, 
			            state_lengths:[18, 12, 8, 5, 20], //spawn, idle, prep, fire, fade
			            spawn_dist:30,
			            damage:20,
			            lockout:10,
			            hitbox:2
			        };
			        
	        		sansFS_blast_array[array_length_1d(sansFS_blast_array)] = {
			            x:sansFS_box_x - sansFS_box_width * .75, 
			            y:sansFS_box_y - round(lengthdir_y(240, 90)), 
			            scale:3,
			            rot:90,
			            state:0,
			            state_timer:0, 
			            state_lengths:[18, 12, 8, 5, 20], //spawn, idle, prep, fire, fade
			            spawn_dist:30,
			            damage:20,
			            lockout:10,
			            hitbox:2
			        };
	        		break;
	        		case 3:
	        		sansFS_blast_array[array_length_1d(sansFS_blast_array)] = {
			            x:sansFS_box_x - round(lengthdir_x(240, 0)), 
			            y:sansFS_box_y + sansFS_box_width * .75, 
			            scale:3,
			            rot:0,
			            state:0,
			            state_timer:0, 
			            state_lengths:[18, 12, 8, 5, 20], //spawn, idle, prep, fire, fade
			            spawn_dist:30,
			            damage:20,
			            lockout:10,
			            hitbox:2
			        };
	        		
	        		sansFS_blast_array[array_length_1d(sansFS_blast_array)] = {
			            x:sansFS_box_x - round(lengthdir_x(240, 0)), 
			            y:sansFS_box_y - sansFS_box_width * .75, 
			            scale:3,
			            rot:0,
			            state:0,
			            state_timer:0, 
			            state_lengths:[18, 12, 8, 5, 20], //spawn, idle, prep, fire, fade
			            spawn_dist:30,
			            damage:20,
			            lockout:10,
			            hitbox:2
			        };
			        
	        		sansFS_blast_pattern = -1;
	        		break;
	        	}
	        	sansFS_blast_pattern++;
	        	sound_play(sound_get("sfx_blaster_charge"));
	        }
	        if(sansFS_blast_rotate == 0 && taunt_pressed && (get_player_stocks(player) <= 1 || get_match_setting(SET_PRACTICE))){
	        	sansFS_blast_rotate++;
	        }
	        if(sansFS_blast_rotate){
	        	if(sansFS_blast_rotate%5 == 1){
			        sansFS_blast_array[array_length_1d(sansFS_blast_array)] = {
			            x:sansFS_box_x - round(lengthdir_x(240, sansFS_blast_rotate*3)), 
			            y:sansFS_box_y - round(lengthdir_y(240, sansFS_blast_rotate*3)), 
			            scale:3,
			            rot:sansFS_blast_rotate*3,
			            state:0,
			            state_timer:0, 
			            state_lengths:[18, 12, 8, 5, 20], //spawn, idle, prep, fire, fade
			            spawn_dist:30,
			            damage:1,
			            lockout:0,
			            hitbox:2
			        };
			        sound_play(sound_get("sfx_blaster_charge"));
	        	}
	        	
	        	sansFS_blast_rotate++;
	        	sansFS_blast_cooldown = 2;
	        	sansFS_blast_combo_cooldown = 2;
	        }
	        if(!sansFS_blast_rotate && (right_strong_pressed || left_strong_pressed || up_strong_pressed || down_strong_pressed) && sansFS_throw_box_state == -1){
	        	sansFS_throw_box_state++;
	        	if(up_strong_pressed) sansFS_throw_box_dir = 0;
	        	if(down_strong_pressed) sansFS_throw_box_dir = 1;
	        	if(right_strong_pressed) sansFS_throw_box_dir = 2;
	        	if(left_strong_pressed) sansFS_throw_box_dir = 3;
	        	sansFS_blast_rotate = -1;
	        	sound_play(sound_get("sfx_sans_alert"));
	        }
	        if(window_timer == get_window_value(attack, window, AG_WINDOW_LENGTH)){
		        sansFS_blast_array[array_length_1d(sansFS_blast_array)] = {
		            x:sansFS_box_x - 360 * spr_dir, 
		            y:sansFS_box_y, 
		            scale:6,
		            rot:180 * (spr_dir == -1),
		            state:0,
		            state_timer:0, 
		            state_lengths:[60, 40, 8, 5, 20], //spawn, idle, prep, fire, fade
		            spawn_dist:40,
		            damage:20,
		            lockout:10,
		            hitbox:3
		        };
		        sound_play(sound_get("sfx_blaster_charge"), false, noone, 1, .5);
	        }
	        if(sansFS_throw_box_state >= 0){
	        	switch(sansFS_throw_box_state){
	        		case 1:
	        		if(sansFS_throw_box_dir >= 2) {
		        		sansFS_box_x = round(lerp(room_width/2,
		        		room_width/2 + (((sansFS_throw_box_dir%2 != 1) - (sansFS_throw_box_dir%2 == 1)) * sansFS_throw_box_offset),
		        		(sansFS_throw_box_state_timer + 1)/sansFS_throw_box_state_array[sansFS_throw_box_state]));
	        		} else {
		        		sansFS_box_y = round(lerp(room_height/2,
		        		room_height/2 + (((sansFS_throw_box_dir%2 == 1) - (sansFS_throw_box_dir%2 != 1)) * sansFS_throw_box_offset),
		        		(sansFS_throw_box_state_timer + 1)/sansFS_throw_box_state_array[sansFS_throw_box_state]));
	        		}
	        		break;
	        		case 3:
	        		if(sansFS_throw_box_dir >= 2) {
		        		sansFS_box_x = round(lerp(room_width/2 + (((sansFS_throw_box_dir%2 != 1) - (sansFS_throw_box_dir%2 == 1)) * sansFS_throw_box_offset),
		        		room_width/2,
		        		(sansFS_throw_box_state_timer + 1)/sansFS_throw_box_state_array[sansFS_throw_box_state]));
	        		} else {
		        		sansFS_box_y = round(lerp(room_height/2 + (((sansFS_throw_box_dir%2 == 1) - (sansFS_throw_box_dir%2 != 1)) * sansFS_throw_box_offset),
		        		room_height/2,
		        		(sansFS_throw_box_state_timer + 1)/sansFS_throw_box_state_array[sansFS_throw_box_state]));
	        		}
	        		break;
	        	}
	        	
	        	sansFS_throw_box_state_timer++;
	        	if(sansFS_throw_box_state_array[sansFS_throw_box_state] == sansFS_throw_box_state_timer){
	        		if(sansFS_throw_box_state + 1 >= array_length(sansFS_throw_box_state_array)) sansFS_throw_box_state = -1;
	        		else sansFS_throw_box_state++;
	        		sansFS_throw_box_state_timer = 0;
	        	}
	        }
	        if(!sansFS_teleport_cooldown && !sansFS_blast_rotate && (shield_pressed || shield_down) && !joy_pad_idle){
	        	sansFS_teleport_cooldown = 120;
	        	sound_play(sound_get("sfx_sans_blink"));
	        	with(oPlayer) if "sansFS_soul_host" in self && self != other && sansFS_soul_host == other {
        			sansFS_soul_x += lengthdir_x(other.sansFS_box_width, other.joy_dir);
					sansFS_soul_y += lengthdir_y(other.sansFS_box_width, other.joy_dir);
        		}
	        }
        }
        if(window == 6){
        	if(sansFS_box_width > 40) sansFS_box_width -= 1;
        }
	break;
}

#define grabSelect(_win)
with (hit_player_obj) if other.soul_id == id && sansGrab_id == other.id {
	hitstop = 10;	
	hurtboxID.dodging = false;
}

window = _win;
window_timer = 0;
if (window_timer >= 4) {
	//soul_id.invincible = false;
}
dspecTimer = 0;

#define sansFS_find_nearest_soul (input_x, input_y, default_dir)
var target = noone;
with(oPlayer) if "sansFS_soul_host" in self && self != other && sansFS_soul_host == other {
	if target == noone {
		target = self;
	} else {
		if(point_distance(sansFS_soul_x, sansFS_soul_y, input_x, input_y) < point_distance(target.sansFS_soul_x, target.sansFS_soul_y, input_x, input_y)) target = self;
	}
}
return (target != noone ? point_direction(input_x, input_y, target.sansFS_soul_x, target.sansFS_soul_y) : default_dir);