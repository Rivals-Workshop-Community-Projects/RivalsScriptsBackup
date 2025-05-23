//B - Reversals
if (attack == AT_NSPECIAL || attack == AT_NSPECIAL_AIR || attack == AT_FSPECIAL || attack == AT_DSPECIAL || attack == AT_USPECIAL){
    trigger_b_reverse();
}

//Training toggle 
if (training_toggle) {
    if (attack == AT_TAUNT) {
        if (window == 1 && window_timer == 1 && !hitpause) {
            slowstart_timer = slowstart_state == SLOWSTART_STATE_ON ? 0 : slowstart_duration;
        }
    }
}

//Soft armor
if (slowstart_state == SLOWSTART_STATE_OFF) {
    if (attack == AT_FTILT) {
        if (window == 1 && window_timer >= get_window_value(attack, window, AG_WINDOW_LENGTH) - 5) {
        	if (has_rune("E"))
        		super_armor = true;
        }
        else {
            //soft_armor = 0;
        	super_armor = false;
        }
    }
    
    if (attack == AT_UTILT) {
        if (window == 1 && window_timer >= get_window_value(attack, window, AG_WINDOW_LENGTH) - 5) {
        	if (has_rune("E"))
        		super_armor = true;
        }
        else {
            //soft_armor = 0;
        	super_armor = false;
        }
    }
    
    if (attack == AT_DTILT) {
        if (window == 1 && window_timer >= get_window_value(attack, window, AG_WINDOW_LENGTH) - 5) {
        	if (has_rune("E"))
        		super_armor = true;
        }
        else {
            //soft_armor = 0;
        	super_armor = false;
        }
    }
    
    if (attack == AT_FSTRONG) {
        if (window == 2 && window_timer >= get_window_value(attack, window, AG_WINDOW_LENGTH) - 8) {
        	if (has_rune("D"))
        		super_armor = true;
        }
        else {
            //soft_armor = 0;
        	super_armor = false;
        }
    }
    
    if (attack == AT_USTRONG) {
        if (window == 2 && window_timer >= get_window_value(attack, window, AG_WINDOW_LENGTH) - 8) {
        	if (has_rune("D"))
        		super_armor = true;
        }
        else {
            //soft_armor = 0;
        	super_armor = false;
        }
    }
    if (attack == AT_DSTRONG) {
        if (window == 2 && window_timer >= get_window_value(attack, window, AG_WINDOW_LENGTH) - 8) {
        	if (has_rune("D"))
        		super_armor = true;
        }
        else {
            //soft_armor = 0;
        	super_armor = false;
        }
    }
}

//Debris
if (attack == AT_FSTRONG) {
    if (window == 2 && window_timer == get_window_value(attack, window, AG_WINDOW_LENGTH) && !hitpause)
    {
        var hfx = spawn_hit_fx(round(x) + (96 * spr_dir), round(y), fx_fstrong_debris);
        hfx.spr_dir = spr_dir;
        hfx.depth = depth - 1;
        
        sound_play(sound_get("sfx_step_l"))
    }
}
if (attack == AT_DSTRONG) {
    if (window == 2 && window_timer == get_window_value(attack, window, AG_WINDOW_LENGTH) && !hitpause)
    {
        sound_play(sound_get("sfx_step_l"))
    }
}


//Taunts
if (attack == AT_TAUNT) {
    if (window == 2 && window_timer == 1 && !hitpause) {
        shake_camera(12, 45);
    }
}
if (attack == AT_TAUNT_2) {
    if (slowstart_state == SLOWSTART_STATE_ON && state_timer == 1) {
            window = 2;
            window_timer = 0;
    }
    
    if (window <= 2 && window_timer == 29) {
        if (!taunt_down)
        {
            window = 3
            window_timer = 0;
        }
    }
}

//Speed increase on DATTACK
if (attack == AT_DATTACK) {
    if (window == 2) {
        if (slowstart_state == SLOWSTART_STATE_OFF && window_timer == 1 && !hitpause) {
            hsp += 5 * spr_dir;
        }
    }
    if (window == 3 && has_rune("F")) {
    	can_ustrong = true;
    }
}

//Specials
if (attack == AT_NSPECIAL || attack == AT_NSPECIAL_AIR) {
    move_cooldown[AT_NSPECIAL] = 15;
    move_cooldown[AT_NSPECIAL_AIR] = 15;
    can_move = false;
    can_fast_fall = false;
    
    /*// Placing Rock.
    if (window == 2 && !hitpause) 
    {
        if (has_rune("H")) 
        {
    		var window_length = get_window_value(AT_NSPECIAL, 2, AG_WINDOW_LENGTH)
    		var window_now = (window_timer) % 5
    		var rock_mult = window_timer div 4; 
	    	if (window_now == 1)
	    		check_spawn_rock(x + (104 + rock_mult * 64) * spr_dir, spawn_y);
	    	if (window_now == 2)
	    		check_spawn_rock2();
	    	if (window_now == 3)
	    		check_spawn_rock3();
			if (window_now == 4)
        		spawn_rock();
        }
        else if (window_timer == 1)
        {
    		//seeking_rock_placement();
        }
    }*/
    
    var spawn_x = 104;
    var num_rocks = has_rune("H");
    
    if (window == 1 && !hitpause) {
    	var window_length = get_window_value(AT_NSPECIAL, 1, AG_WINDOW_LENGTH)
    	if (window_timer == window_length - 3)
    		check_spawn_rock(x + 104 * spr_dir, y);
    	if (window_timer == window_length - 2)
    		check_spawn_rock2();
    	if (window_timer == window_length - 1)
    		check_spawn_rock3();
    }
    
    //Wall detection
    if (window == 2 && !hitpause) {
        
        if (num_rocks) {
    		var window_length = get_window_value(AT_NSPECIAL, 2, AG_WINDOW_LENGTH)
    		var window_now = (window_timer) % 5
    		var rock_mult = window_timer div 4;
	    	if (window_now == 1)
	    		check_spawn_rock(x + (104 + rock_mult * 64) * spr_dir, spawn_y);
	    	if (window_now == 2)
	    		check_spawn_rock2();
	    	if (window_now == 3)
	    		check_spawn_rock3();
			if (window_now == 4)
        		spawn_rock();
        }
        else {
    		if (window_timer == 1) seeking_rock_placement();
        }
    }
}

if (attack == AT_FSPECIAL) {
    can_fast_fall = false;
	//reset 'grabbed_player' variables on the first frame when performing a grab.
    if (window == 1 && window_timer == 1) { 
    	grabbed_player_obj = noone; 
    	grabbed_player_relative_x = 0;
    	grabbed_player_relative_y = 0;
    	fspecial_ground_dist = 0;
    }
    
    if (window == 6) {
        fspecial_ground_dist += vsp / 8;
    	fspecial_ground_dist = clamp(fspecial_ground_dist, 0, 50);
    }
    if (window == 5 || window == 6) {
        can_move = false;
        max_fall = 32;
        
		hsp = clamp(hsp + air_accel * (right_down - left_down), -air_max_speed, air_max_speed)
		
		//Damage checking
		/*
		var my_damage = get_player_damage(player);
		var opponent_damage = get_player_damage(grabbed_player_obj.player);
		
		
		if (opponent_damage >= my_damage) {
			hsp = clamp(hsp + air_accel * 1.75 * (grabbed_player_obj.right_down - grabbed_player_obj.left_down), -air_max_speed, air_max_speed)
		}
		*/
    }
    else {
        can_move = false;
        max_fall = def_max_fall;
    }
    if (window >= 4) {
    	//first, drop the grabbed player if this is the last window of the attack, or if they somehow escaped hitstun.
    	if (window >= 8) { grabbed_player_obj = noone; }
    	else if (grabbed_player_obj.state != PS_HITSTUN && grabbed_player_obj.state != PS_HITSTUN_LAND) {
    		grabbed_player_obj = noone; 
    	}
    
    	else {
    		if (window_timer <= 1) {
    			grabbed_player_relative_x = grabbed_player_obj.x - x;
    			grabbed_player_relative_y = grabbed_player_obj.y - y;
    		}
    		//keep the grabbed player in hitstop until the grab is complete.
    		grabbed_player_obj.hitstop = 2;
    		grabbed_player_obj.hitpause = true;
    		
    		//if this is the first frame of a window, store the grabbed player's relative position.
    		var pull_to_x = 0
    		var pull_to_y = 0;
    		var window_length = 2;
    		var grab_ease = false;
    		 
    		//on the first window, pull the opponent into the grab.
    		if (window == 4) { 
    			attack_invince = 1;
    			grabbed_player_obj.attack_invince = 1;
    		    window_length = 3;
    		    if (window_timer >= 0 && window_timer <= window_length) {
        			pull_to_x = 90 * spr_dir;
        			pull_to_y = -74;
    		    }
    			
    		    if (window_timer >= window_length && window_timer <= window_length * 2) {
        			pull_to_x = 40 * spr_dir;
        			pull_to_y = -48;
    		    }
    			
    		    if (window_timer >= window_length * 2 && window_timer <= window_length * 3) {
        			pull_to_x = 26 * spr_dir;
        			pull_to_y = -38;
    		    }
    		    
    		    if (window_timer >= window_length * 3 && window_timer <= window_length * 4) {
        			pull_to_x = -72 * spr_dir;
        			pull_to_y = -42;
    		    }
    		}
    		
    		
    		if (window == 5) { 
    			attack_invince = 1;
    			grabbed_player_obj.attack_invince = 1;
    		    window_length = 20;
    		    if (window_timer >= 0 && window_timer <= window_length) {
        			pull_to_x = -66 * spr_dir;
        			pull_to_y = -82;
    		    }
    			
    		    if (window_timer >= window_length && window_timer <= window_length * 2) {
        			pull_to_x = -62 * spr_dir;
        			pull_to_y = -78;
    		    }
    		}
    		
    		if (window == 6) { 
    			attack_invince = 1;
    			grabbed_player_obj.attack_invince = 1;
		    	pull_to_x = -68 * spr_dir;
    			pull_to_y = -76;
    		}
    		
    		if (window == 7) { 
    			attack_invince = 1;
    			grabbed_player_obj.attack_invince = 0;
    		    if (window_timer == 1 && !hitpause) {
    		        shake_camera(24, 4);
    		        spawn_hit_fx(round(x), round(y) - 24, 143);
    		        sound_play(sound_get("sfx_fspecial_land"));
    		    }
    		    window_length = 3;
    		    grab_ease = true;
		    	pull_to_x = -32 * spr_dir;
    			pull_to_y = 0;
    		}
    		if (window >= 7) {
    			attack_invince = 0;
    			off_edge = false;
    		}
    		if (grab_ease) {
    			grabbed_player_obj.x = x + ease_circOut( grabbed_player_relative_x, pull_to_x * (spr_dir * image_xscale), window_timer, window_length);
    			grabbed_player_obj.y = y + ease_circOut( grabbed_player_relative_y, pull_to_y* image_yscale, window_timer, window_length);
    		}
    		else {
    			grabbed_player_obj.x = x + pull_to_x * (spr_dir * image_xscale);
    			grabbed_player_obj.y = y + pull_to_y * image_yscale;
    		}
    		if (has_rune("G"))
	    		set_hitbox_value(AT_FSPECIAL, 2, HG_DAMAGE, 15 * (1 + grabbed_player_obj.knockback_adj * 2))
    		
    		if (window == 6) {
		        if (slowstart_state == SLOWSTART_STATE_OFF && (get_player_damage(grabbed_player_obj.player) >= 100 || has_rune("M"))) {
					if (grabbed_player_obj.y >= room_height - abs(vsp)) {
				        grabbed_player_obj.x = x;
				        grabbed_player_obj.y = room_height + 256;
					}
		        }
    		}
    	}
    }
}

if (attack == AT_USPECIAL){
    can_fast_fall = false;
	var collision_x = 46;
    var collision_y = -48;
    var collision_w = 16;
    var collision_h = 48;
    var collision_x1 = collision_x - collision_w / 2;
    var collision_y1 = collision_y - collision_h / 2;
    var collision_x2 = collision_x + collision_w / 2;
    var collision_y2 = collision_y + collision_h / 2;
    var wall_test = false;
    
    if (window == 1) {
    	grav = 0.1
    }
    
    if (window == 2 && has_rune("A")) {
    	soft_armor = 8;
    }
    if (window == 2) {
        wall_test = spr_dir == 1 ? collision_rectangle(x + collision_x1, y - 122, x + collision_x2, y - 120, asset_get("par_block"), 1, 1) 
            : collision_rectangle(x - collision_x2, y - 122, x - collision_x1, y - 120, asset_get("par_block"), 1, 1)
    }
    if (window == 2) {
    	if (window_timer == 9)
		 {
		 	window_timer = 8;
		 }
    	 uspecial_wall_timer = 0;
        if (wall_test && !collision_rectangle(bbox_left, y - 122, bbox_right, y - 120, asset_get("par_block"), 1, 1) && uspecial_wall_times < uspecial_wall_times_max && !hitpause) {
            window = 4;
            window_timer = 0;
            hsp = 0;
            vsp = 0;
            wall_player_x = x;
            wall_player_xoffset = 0;
            uspecial_wall_times++;
            destroy_hitboxes();
        }
        if (shield_pressed && vsp >= 1 && !hitpause) {
            window = 10;
            window_timer = 0;
            vsp -= 8;
            hsp /= 2;
            sound_play(asset_get("sfx_forsburn_consume_fail"))
            attack_end();
            set_state(PS_PRATFALL);
            uspecial_wall_timer = 0;
        }
       if (!free) {
       	window = 3;
       	window_timer = 0;
       }
    }
    
    if (window == 4) {
        if (window_timer == 1 && !hitpause) {
        	shake_camera(4, 4);
            hsp = 0;
            vsp = 0;
            var wall_test2 = true;
            while (wall_test2 && abs(wall_player_xoffset) <= collision_h) {
            	wall_player_xoffset -= spr_dir
                wall_test2 = spr_dir == 1 ? collision_rectangle(wall_player_x + wall_player_xoffset + collision_x1, y + collision_y1, wall_player_x + wall_player_xoffset + collision_x2, y + collision_y2, asset_get("par_block"), 1, 1) 
                        : collision_rectangle(wall_player_x + wall_player_xoffset - collision_x2, y + collision_y1, wall_player_x + wall_player_xoffset - collision_x1, y + collision_y2, asset_get("par_block"), 1, 1)
            }
            wall_player_xoffset -= spr_dir;
            //var dust = spawn_base_dust(wall_player_x + wall_player_xoffset + 24 * spr_dir, y - 64, "land", 1);
            //dust.draw_angle = spr_dir == -1 ? 270 : 90;
        }
		//using an easing function, smoothly pull the opponent into the grab over the duration of this window.
		var window_length = get_window_value(attack, window, AG_WINDOW_LENGTH);
		if (window_timer <= window_length / 2) {
			x = wall_player_x + ease_circOut( 0, wall_player_xoffset, window_timer, window_length / 2);
		}
    }
    if (window == 5) {
    	vsp *= 0.2;
        
    	if ((up_down && !down_down) || (down_down && !up_down)) {
    		wall_climb_dir = up_down ? -1 : 1;
            window = 6;
            window_timer = 0;
    	}
    }
    
    if (window == 6) {
    	var wall_test4 = wall_climb_dir == -1 ? collision_point(x + 64 * spr_dir, y - 128, asset_get("par_block"), 1, 1) : collision_point(x + 64 * spr_dir, y + 32, asset_get("par_block"), 1, 1);
    	vsp = !wall_test4 ? 0 : clamp (vsp + 0.12 * wall_climb_dir, -1.1, 1.1);
    	
    	if (window_timer == 18 || window_timer == 42) {
    		sound_play(asset_get("sfx_kragg_rock_shatter"))
    	}
    	
    	if (!up_down && !down_down) {
    		window = 5;
    		window_timer = 0;
    	}
    }
    
    if (window == 5 || window == 6) {
    	uspecial_wall_timer ++;
        if (jump_pressed || attack_pressed || special_pressed || (can_tap_jump() && up_pressed)) {
            window = 7;
            window_timer = 0;
        }
        if (uspecial_wall_timer > uspecial_wall_timer_max - 60) {
        	if (get_gameplay_time() % 8 == 0) {
	            var dust = spawn_base_dust(wall_player_x + wall_player_xoffset + 48 * spr_dir, y - 64, "land", 1);
	            dust.draw_angle = spr_dir == -1 ? 270 : 90;
	            dust.depth = depth - 1;
            	y += 2;
        	}
        }
        if (uspecial_wall_timer > uspecial_wall_timer_max) {
            can_jump = true;
            window = 10;
            window_timer = 0;
            attack_end();
            set_state(PS_PRATFALL);
            uspecial_wall_timer = 0;
        }
    }
    if (window == 4 || window == 5 || window == 6 || window == 7) {
        grav = 0;
        can_move = false;
        djumps = 0;
        var wall_test3 = spr_dir == 1 ? collision_rectangle(x + collision_x1, y + collision_y1, x + collision_x2 + 2, y + collision_y2, asset_get("par_block"), 1, 1) 
            : collision_rectangle(x - collision_x2 - 2, y + collision_y1, x - collision_x1, y + collision_y2, asset_get("par_block"), 1, 1)
        if (!wall_test3) {
            window = 10;
            window_timer = 0;
            attack_end();
            set_state(PS_PRATFALL);
        }
    }
    
    if (window == 7) {
    	vsp *= 0.1;
    	super_armor = true;
    }
    else if (window == 8) {
    	super_armor = true;
    }
    else if (window == 9) {
    	if (window_timer <= get_window_value(attack, window, AG_WINDOW_LENGTH) / 2)
    	{
    		super_armor = true;
    	}
	    else {
    		super_armor = false;
    	}
    }
    else {
    	super_armor = false;
    }
    
    if (window == 9) {
    	can_wall_jump = true;
    	if (window_timer == get_window_value(attack, window, AG_WINDOW_LENGTH))
    	{
            attack_end();
            set_state(PS_PRATFALL);
    	}
    }
}

if (attack == AT_DSPECIAL){
	can_fast_fall = false;
	
	if (window == 1) {
		if (window_timer == 1 && free) {
			vsp = 0;
		}
	}
	
	if (window == 1) {
		if (window_timer < 11 && ((left_pressed && spr_dir == 1) || right_pressed && spr_dir == -1)) {
			spr_dir = -spr_dir;
		}
	}
	
	if (!free) {
	    if (window == 2) {
	        super_armor = true;
	    }
	    else if ((window == 1 && window_timer >= 12)) {
	        super_armor = true;
	    }
	    else {
	        super_armor = false;
	    }
	}
	else {
		grav = 0.25;
		vsp = min(vsp, 2);
		
	    if (window == 2) {
	        super_armor = true;
	    }
	    else if ((window == 1 && window_timer >= 20)) {
	        super_armor = true;
	    }
	    else {
	        super_armor = false;
	    }
	}
}

if (attack == 49) {
	can_fast_fall = false;	
	hurtboxID.sprite_index = get_attack_value(attack,AG_HURTBOX_SPRITE);
	
	//reset 'grabbed_player' variables on the first frame when performing a grab.
    if (window == 1 && window_timer == 2) { 
    	grabbed_player_obj = noone; 
    	grabbed_player_relative_x = 0;
    	grabbed_player_relative_y = 0;
    	fs_falling = false;
    }
	
	if (window == 1 || window == 2) {
    	grav = 0;
    	can_move = false;
    }
    
	if (window == 3) {
    	grav = 0.1;
    	frict = 0.3;
    	can_move = true;
    }
    
    if (window == 2 && !hitpause) {
		 off_edge = true;
		
        if (place_meeting(round(x + hsp), round (y), asset_get("par_block"))) {
            window ++;
            window_timer = 0;
            hsp = 0;
            vsp = 0
            destroy_hitboxes();
        }
    }
    if (instance_exists(grabbed_player_obj)) {
	    if (window >= 8) { grabbed_player_obj = noone; }
		else if (grabbed_player_obj.state != PS_HITSTUN && grabbed_player_obj.state != PS_HITSTUN_LAND) {
			grabbed_player_obj = noone; 
		}
		else {
			if (window_timer <= 1) {
				grabbed_player_relative_x = grabbed_player_obj.x - x;
				grabbed_player_relative_y = grabbed_player_obj.y - y;
			}
			//keep the grabbed player in hitstop until the grab is complete.
			grabbed_player_obj.hitstop = 2;
			grabbed_player_obj.hitpause = true;
			
			//if this is the first frame of a window, store the grabbed player's relative position.
			var pull_to_x = 0
			var pull_to_y = 0;
			var window_length = 2;
			var grab_ease = false;
			 
			//on the first window, pull the opponent into the grab.
			if (window == 4) { 
				attack_invince = 1;
				grabbed_player_obj.attack_invince = 1;
			    window_length = 5;
			    if (window_timer >= 0 && window_timer <= window_length) {
	    			pull_to_x = 90 * spr_dir;
	    			pull_to_y = -74;
			    }
				
			    if (window_timer >= window_length && window_timer <= window_length * 2) {
	    			pull_to_x = 40 * spr_dir;
	    			pull_to_y = -48;
			    }
				
			    if (window_timer >= window_length * 2 && window_timer <= window_length * 3) {
	    			pull_to_x = 26 * spr_dir;
	    			pull_to_y = -38;
			    }
			    
			    if (window_timer >= window_length * 3 && window_timer <= window_length * 4) {
	    			pull_to_x = -72 * spr_dir;
	    			pull_to_y = -42;
			    }
			    hsp = 0;
			    vsp = 0;
			    grav = 0;
			}
			
			
			if (window == 5) { 
				attack_invince = 1;
				grabbed_player_obj.attack_invince = 1;
			    window_length = 20;
			    if (window_timer >= 0 && window_timer <= window_length) {
	    			pull_to_x = -66 * spr_dir;
	    			pull_to_y = -82;
			    }
				
			    if (window_timer >= window_length && window_timer <= window_length * 2) {
	    			pull_to_x = -62 * spr_dir;
	    			pull_to_y = -78;
			    }
			    hsp = 0;
			    vsp = -18;
			    grav = 0;
			}
			
			if (window == 6) { 
				attack_invince = 1;
				grabbed_player_obj.attack_invince = 1;
		    	pull_to_x = -68 * spr_dir;
				pull_to_y = -76;
				mask_index = asset_get("empty_sprite");
				
				if (!fs_falling) {
					mask_index = asset_get("empty_sprite");
					if (window_timer >= 60 || y <= 32) {
						fs_falling = true;
						vsp = max_fall;
						x = room_width / 2;
						y = 32;
						
						fs_fall_y = 96
						while (fs_fall_y < room_height) {
							fs_fall_y += 32;
							if (collision_point(x, fs_fall_y, asset_get("par_block"), 0, 0)) {
								break;
							}
						}
						
						print("FS Y is " + string(fs_fall_y))
					}
				}
				else {
					y += 24;
					mask_index = asset_get("empty_sprite");
					if (y >= fs_fall_y) {
						window ++;
						window_timer = 0;
						hsp = 0;
						vsp = 0;
						y = fs_fall_y;
						mask_index = fs_mask_index;
						
						sound_play(sound_get("sfx_final_smash_land"))
						var _article = instance_create(round(x), round(y), "obj_article2")
						_article.grabbed_player = grabbed_player_obj.player;
					}
				}
				
				grav = 0;
			}
			
			if (window == 7) { 
				attack_invince = 1;
				grabbed_player_obj.attack_invince = 0;
			    if (window_timer == 1 && !hitpause) {
			        shake_camera(24, 4);
			        spawn_hit_fx(round(x), round(y) - 24, 143);
			        sound_play(sound_get("sfx_fspecial_land"));
		        
					var throw_hbox = create_hitbox(49, 2, round(x), round(y));

					//this part of the code checks the "can_hit" array, which chooses who can be hit by what hitbox
					//we are disabling the detection of the hitbox for any player that isn't the grabbed player
					for (var i = 0; i <= 20; ++i)
					{
						throw_hbox.can_hit[i] = false;
						throw_hbox.can_hit[grabbed_player_obj.player] = true;
					}
			    }
			    window_length = 3;
			    grab_ease = true;
		    	pull_to_x = -32 * spr_dir;
				pull_to_y = 0;
			}
			if (window >= 7) {
				attack_invince = 0;
				off_edge = false;
			}
			
			if (grab_ease) {
				grabbed_player_obj.x = x + ease_circOut( grabbed_player_relative_x, pull_to_x * (spr_dir * image_xscale), window_timer, window_length);
				grabbed_player_obj.y = y + ease_circOut( grabbed_player_relative_y, pull_to_y* image_yscale, window_timer, window_length);
			}
			else {
				grabbed_player_obj.x = x + pull_to_x * (spr_dir * image_xscale);
				grabbed_player_obj.y = y + pull_to_y * image_yscale;
			}
		}
    }
	
}
#define seeking_rock_placement()
// STEP 1:
// Determine the left and right ends of detection.
var _left_x = 0;
var _right_x = 0;
if (spr_dir == 1)
{
	_left_x = x + (se_detection_center_x - se_detection_offset_inner);
	_right_x = x + (se_detection_center_x + se_detection_offset_outer);
}
else
{
	_right_x = x - (se_detection_center_x - se_detection_offset_inner);
	_left_x = x - (se_detection_center_x + se_detection_offset_outer);
}

// STEP 1:
// Check for players within the designated x width.
var _found_players = array_create(0);
with (oPlayer)
{
	if (id == other.id) continue;
	// TODO - make it so you can edges of hurtbox plz
	
	if (state != PS_DEAD && state != PS_RESPAWN && 
		((x + char_half_width > _left_x && x + char_half_width < _right_x) || 
		 (x - char_half_width > _left_x && x - char_half_width < _right_x)))
	{
		// Order players based on lowest y to highest.
		var _found = false;
		for (var _i = 0; _i < array_length(_found_players); ++_i)
		{
			if (_found_players[0].y < y)
			{
				array_insert(_found_players, _i, id);
				_found = true;
				break;
			}
		}
		if (!_found) array_push(_found_players, id);
	}
}

// STEP 2:
// If no players were found, use normal stone placement.
if (array_length(_found_players) == 0)
{
	spawn_rock();
	return;
}

// STEP 3:
// Attempt to place stone below player travelling from bottom to top.
var _set_spawn_y = false;
for (var _i = 0; _i < array_length(_found_players); ++_i)
{
	var _id = _found_players[_i];
	var _found_walkable = false;
	var _fixed_x = _id.x;
	if (_fixed_x > _right_x) _fixed_x = _right_x;
	if (_fixed_x < _left_x) _fixed_x = _left_x;
	// Do initial check to make sure checks don't start within a walkable.
	for (var _y = _id.y + se_stone_height; _y > _id.y - _id.char_height; --_y)
	{
		if (!_found_walkable)
		{
			// Looking for the bottom of a walkable.
			if (instance_place(_fixed_x, _y, asset_get("par_block")) != noone ||
            	instance_place(_fixed_x, _y, asset_get("par_jumpthrough")) != noone)
            {
            	_found_walkable = true;
            }
		}
		else
		{
			// Looking for the top of the found walkable.
			if (instance_place(_fixed_x, _y, asset_get("par_block")) == noone &&
            	instance_place(_fixed_x, _y, asset_get("par_jumpthrough")) == noone)
	        {
	        	spawn_y = _y;
	        	spawn_x = _fixed_x;
	        	_set_spawn_y = true;
	        	can_spawn_side = false;
				can_spawn = true;
	        	break;
	        }
		}
	}
	if (_found_walkable)
	{
		if (_set_spawn_y) break;
		_found_walkable = false;
	}
}

// If stone was unset, then attempt again but this time using the closest
if (!_set_spawn_y)
{
	var _id = _found_players[0];
	var _fixed_x = _id.x;
	if (_fixed_x > _right_x) _fixed_x = _right_x;
	if (_fixed_x < _left_x) _fixed_x = _left_x;
	for (var _y = _id.y - _id.char_height; _y < se_stage_top; ++_y)
	{
		if (instance_place(_fixed_x, _y, asset_get("par_jumpthrough")) != noone)
		{
			var _y2 = _y;
			while (instance_place(_fixed_x, _y2, asset_get("par_jumpthrough")) != noone)
			{
				_y2--;
			}
			spawn_y = _y2;
	        spawn_x = _fixed_x;
	        _set_spawn_y = true;
	        can_spawn_side = false;
			can_spawn = true;
	        break;
		}
	}
}
spawn_rock();

#define check_spawn_rock(_spawn_x, _spawn_y)
spawn_y = _spawn_y;
spawn_x = _spawn_x;
can_spawn = true;
can_spawn_side = false; 
var old_mask_index = mask_index
mask_index = sprite_get("nspecial_rock_mask");
while ((!(position_meeting(spawn_x, spawn_y, asset_get("par_block")) || position_meeting(spawn_x, spawn_y, asset_get("par_jumpthrough")))) || position_meeting(spawn_x, (spawn_y - 2), asset_get("par_block")) || position_meeting(spawn_x, (spawn_y - 2), asset_get("par_jumpthrough")))
{
    spawn_y += 1;
    if (spawn_y > room_height)
    {
        break;
    }
}
if (!collision_point(spawn_x, spawn_y + 2, asset_get("par_block"), 0, 0) && !position_meeting(spawn_x, (spawn_y), asset_get("par_jumpthrough")))
        can_spawn_side = true;
mask_index = old_mask_index;

#define check_spawn_rock2()
var old_mask_index = mask_index
mask_index = sprite_get("nspecial_rock_mask");
if (can_spawn_side) {
    while (!position_meeting(spawn_x, spawn_y, asset_get("par_block")))
    {
        spawn_x -= spr_dir*4;
        if (spawn_x < 0 || spawn_x > room_width)
        {
            can_spawn = false;
            break;
        }
    }
}
mask_index = old_mask_index;

#define check_spawn_rock3()
var old_mask_index = mask_index
mask_index = sprite_get("nspecial_rock_mask");
if (can_spawn_side) {
        while ((!(position_meeting(spawn_x, spawn_y, asset_get("par_block")) || position_meeting(spawn_x, spawn_y, asset_get("par_jumpthrough")))) || position_meeting(spawn_x, (spawn_y - 2), asset_get("par_block")) || position_meeting(spawn_x, (spawn_y - 2), asset_get("par_jumpthrough")))
    {
        spawn_y -= 16;
        if (spawn_y < 0)
        {
            break;
        }
    }
}

mask_index = old_mask_index;

#define spawn_rock()
if (can_spawn) {
    sound_play(asset_get("sfx_kragg_spike"))
    if (can_spawn_side) {
        spawn_y += 40
        var hb = create_hitbox(AT_NSPECIAL, 2, round(spawn_x), round(spawn_y));
        hb.spr_dir = spr_dir;
    }
    else 
    {
        var hb = create_hitbox(AT_NSPECIAL, 1, round(spawn_x), round(spawn_y));
    }
}

#define spawn_base_dust
/// spawn_base_dust(x, y, name, dir = 0)
///spawn_base_dust(x, y, name, ?dir)
//This function spawns base cast dusts. Names can be found below.
var dlen; //dust_length value
var dfx; //dust_fx value
var dfg; //fg_sprite value
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
    case "n_wavedash": dlen = 24; dfx = 0; dfg = 2620; dust_color = 1; break;
    case "wavedash": dlen = 16; dfx = 4; dfg = 2656; dust_color = 1; break;
}
var newdust = spawn_dust_fx(x,y,asset_get("empty_sprite"),dlen);
newdust.dust_fx = dfx; //set the fx id
if dfg != -1 newdust.fg_sprite = dfg; //set the foreground sprite
newdust.dust_color = dust_color; //set the dust color
if dir != 0 newdust.spr_dir = dir; //set the spr_dir
return newdust;