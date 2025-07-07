
// article3_update - runs every frame the article exists
// Miscellaneous objects

/*STATE LIST

- Default (-1): Failed initialization
- -5: Inventory smuggler

FIREMAN'S BOOTS ~ FIRE
- 00: Initialization
- 01: Idle
- 02: Despawn

MONSTER TOOTH ~ ORB
- 10: Initialization
- 11: Flying out
- 12: Idle
- 13: Approaching target

GRANTED ITEM (flying towards player)
precondition: rarity = (0, 1, 2)
- 20: Initialization
- 21: Rising
- 22: Homing
- 23: Despawn
- 24: Hover
- 25: Fly away

WARBANNER
- 30: Initialization
- 31: Spawning
- 32: Active/Idle
- 33: Despawn

FILIAL IMPRINTING ~ critter
precondition: upon spawning, spawn_num = item_grid[ITEM_FILIAL][IG_NUM_HELD]
- 40: Initialization
- 41: Spawning / Warping to player
- 42: Idle ~ standing
- 43: Idle ~ wandering
- 44: Chasing ~ running
- 45: Chasing ~ jumping
- 46: Dropping buff
- 47: Taunt
- 48: Despawn

FILIAL IMPRINTING ~ buff drop
precondition: buff_type = (0 or 1)
- 50: Initialization
- 51: Idle

TRICORN ~ trophy
precondition: icon variables should be set externally
- 55: Initialization
- 56: Rise
- 57: Float

CEREMONIAL DAGGER ~ factory
precondition: target_obj variable should be set externally
~ 60: activate

ATG MK # ~ factory
precondition: target_obj and stored hitbox data should be set externally
~ 63: init
~ 64: activate

FIREWORKS ~ factory
~ 66: init
~ 67: activate

PLASMA SHRIMP ~ factory
~ 68: init
~ 69: activate

LEGENDARY SPARK ~ thunderbolt
~ 80: init
~ 81: await
~ 82: strike 1
~ 83: strike 2
~ 84: strike 3

LONGSTANDING SOLITUDE ~ manager
~ 90: active

*/



switch state {
	
	//#region Inventory Smuggler
	case -5:
		visible = false;
		
		// Clean up upon reaching CSS (failsafe)
		if (last_room != room) {
			if (room == asset_get("local_charselect_room")
				|| room == asset_get("network_2v2_select")
				|| room == asset_get("training_charselect_room")
				|| room == asset_get("tourney_charselect_room")
				|| room == asset_get("abyss_vs_charselect_room")
				|| room == asset_get("abyss_charselect_room")
				|| room == asset_get("tether_charselect_room")
				|| room == asset_get("replay_menu")
				|| room == asset_get("network_char_select")
			) {
				instance_destroy();
				exit;
			}
			last_room = room;
		}
		
		break;
	//#endregion
    
    //#region Fireman's Boots ~ fire
    case 00:
        sprite_index = asset_get("fire_grnd1");
        mask_index = sprite_get("item_firetile_mask");
        state = 01;
        state_timer = 0;
        do_hitbox = false;
        damage = 4 * player_id.item_grid[32][4];
        break;
        
    case 01:
        image_index += 0.3;
        if (state_timer > 20) {
            state = 02;
            state_timer = 0;
            sprite_index = asset_get("fire_grnd1_leave");
            image_index = 0;
        }
        with oPlayer {
            if (!free && player != other.player && !burned && place_meeting(x, y, other)) {
                burned = true;
                burnt_id = other.player_id;
                burn_timer = 150 - 30*other.damage;
                burned_color = 0;
                init_shader();
                sound_play(asset_get("sfx_burnapplied"));
            }
        }
        break;
        
    case 02:
        image_index += 0.3
        if (image_index >= 6) {
            instance_destroy();
            exit;
        }
        break;
        
    //#endregion
    
    //#region Monster Tooth ~ orb
    case 10:
        sprite_index = sprite_get("item_tooth_orb");
        mask_index = sprite_get("item_tooth_orb");
        state = 11;
        state_timer = 0;
        orb_target = noone;
        orb_consumed = false;
        orb_healed = [];
        break;
        
    case 11:
        image_index += 0.3;
        vsp += 0.6;
        if (!free) {
            state = 12;
            state_timer = 0;
        }
        
        var min_distance = -1;
        if (state_timer > 8) with (oPlayer) {
            var distance = point_distance(x, y, other.x, other.y);
            if (state_cat != SC_HITSTUN && distance < 20 && (min_distance == -1 || distance < min_distance)) {
                min_distance = distance;
                other.orb_target = self;
                other.state = 13;
                other.state_timer = 0;
            }
        }
        
        break;
        
    case 12:
        if (hsp > 0) hsp = clamp(hsp - 0.6, 0, hsp);
        else if (hsp < 0) hsp = clamp(hsp + 0.6, hsp, 0);
        vsp = (state_timer > 6 ? sin(state_timer*pi/30) : -6 + state_timer);
        
        if (state_timer > 300) {
            spawn_hit_fx(x, y, player_id.fx_tooth_despawn);
            instance_destroy();
            exit;
        }
        
        var min_distance = -1;
        with (oPlayer) {
            var distance = point_distance(x, y, other.x, other.y);
            if (!clone && distance < 70 && (min_distance == -1 || distance < min_distance)) {
                min_distance = distance;
                other.orb_target = self;
                other.state = 13;
                other.state_timer = 0;
            }
        }
        
        break;
    
    case 13:
        if (!instance_exists(orb_target)) {
            orb_target = noone;
            state = 11;
            state_timer = 0;
        }
        
        can_be_grounded = false;
        ignores_walls = true;
        dir = point_direction(x, y, orb_target.x, orb_target.y-orb_target.char_height/2);
        hsp = lengthdir_x(10, dir);
        vsp = lengthdir_y(10, dir);
        
        with oPlayer {
            if (place_meeting(x, y, other)) {
                take_damage(player, other.player, -2);
                if ("aegis_barrier" in self && "item_grid" in self) aegis_barrier += aegis_ratio * item_grid[42][4] * 2;
                other.orb_consumed = true;
                array_push(other.orb_healed, self);
            }
        }
        
        if (orb_consumed) {
            
            for (i = 0; i < array_length(orb_healed); i++) {
                var seed = (get_player_damage(orb_healed[i].player) * orb_healed[i].player * 233) % 100;
                var _x = orb_healed[i].x;
                var _y = orb_healed[i].y;
                var _h = orb_healed[i].char_height;
                var _hvar = (_h < 10) ? 0 : _h-10;
                for (var i = 0; i < 3; i++) {
					var heal_fx = spawn_hit_fx(_x-45+(30*i)+random_func_2(1+i*3, 30, true), _y-_h+random_func_2(2+i*3, _hvar, true), player_id.fx_item_heal);
					heal_fx.depth = depth-1;
					heal_fx.hit_length = 39+random_func_2(i*3, 7, true);
					heal_fx.vsp = -1;
				}
            }
            
            sound_play(asset_get("mfx_timertick_holy"));
            spawn_hit_fx(x, y, player_id.fx_tooth_despawn);
            instance_destroy();
            exit;
        }
        
        break;
    
    //#endregion
    
    //#region Granted Item
    case 20:
    	switch rarity {
    		case 2:
    			sprite_index = sprite_get("vfx_item_orb_r");
    			trail_color = make_color_rgb(252, 204, 212);
    			break;
    		case 1:
    			sprite_index = sprite_get("vfx_item_orb_u");
    			trail_color = make_color_rgb(231, 252, 220);
    			break;
    		default:
    			sprite_index = sprite_get("vfx_item_orb_c");
    			trail_color = c_white;
    			break;
    	}
        
        mask_index = sprite_get("null");
        ignores_walls = 1;
        can_be_grounded = 0;
        vsp = -10 + (1.5*rarity);
        state = 21;
        state_timer = 0;
        if ("item_type" not in self) item_type = -1;
        init_position_history();
        
        break;
       
    // rise
    case 21:
        vsp += 0.4 - (rarity/10);
        if (vsp >= -1 + (rarity/2)) {
        	vel = abs(vsp);
        	dir = 90;
        	state = 22;
        	state_timer = 0;
        }
        update_position_history();
        break;
    
    // home in
    case 22:
    
    	if (player_id.state == PS_RESPAWN) {
    		state = 24;
    		state_timer = 0;
			update_position_history();
    		break;
    	}
    	else if (player_id.state == PS_DEAD) {
    		state = 25;
    		state_timer = 0;
    		update_position_history();
    		break;
    	}
    
    	var target_x = player_id.x;
    	var target_y = player_id.y - floor(player_id.char_height/2);
    	var target_dist = point_distance(x, y, target_x, target_y);
    	var target_dir = point_direction(x, y, target_x, target_y);
    	var max_turn = max((100-target_dist)/3, 6+state_timer/2);
    	
    	vel += 0.6;
    	
    	if (target_dist > max(vel, 10)) {
	    	if (target_dir < dir) target_dir += 360;
	    	if (target_dir - dir < 180) dir = clamp(dir + max_turn, 0, target_dir);
	    	else dir = clamp(dir - max_turn, target_dir-360, target_dir); 
	    	if (dir < 0) dir += 360;
	    	if (dir > 360) dir -= 360;
	    	
	    	hsp = lengthdir_x(vel, dir);
	    	vsp = lengthdir_y(vel, dir);
    	} else {
    		state = 23;
    		state_timer = 0;
    		player_id.grant_rarity = rarity;
    		
    		if ("forced_index") in self {
    			player_id.new_item_id = forced_index;
    		} else {
    			player_id.ue1_command = 0;
    			user_event(1);
    		}
    		
    		player_id.ue1_command = 1;
        	player_id.item_silenced = false;
    		user_event(1);
    	}
    	
    	update_position_history();
    	break;
    
    // despawn
    case 23:
		hsp = 0;
		vsp = 0;
    	update_position_history();
    	image_index = state_timer/2;
        if (state_timer >= 10) {
        	instance_destroy();
        	exit;
        }
        break;
        
    // hover
    case 24:
    	hsp *= 0.9;
    	vsp *= 0.9;
    	update_position_history();
    	if (player_id.state != PS_RESPAWN) {
    		vel = 1;
        	dir = 90;
    		state = 22;
    		state_timer = 0;
    	}
    	break;
    	
    // fly away
    case 25:
    	hsp *= 0.9;
    	vsp -= 1;
    	update_position_history();
    	if (y < get_stage_data(SD_TOP_BLASTZONE_Y)) state = 23;
    	break;
    	
        
    //#endregion
    
    //#region Warbanner
    
    // init
    case 30:
    	sprite_index = sprite_get("warbanner");
    	image_index = 0;
    	mask_index = sprite_get("warbanner_mask");
    	spr_dir = player_id.spr_dir;
    	radius_y_offset = -54;
    	
    	warbanner_strength = player_id.item_grid[1][4]*player_id.nectar_mult;
    	warbanner_max_radius = 100 + warbanner_strength * 50;
    	warbanner_radius = 0;
    	warbanner_radius_speed = warbanner_max_radius / 20;
    	
    	state = 32;
    	state_timer = 0;
    	break;
    
    // spawn
    case 31:
    	// deprecated
	
	// idle
	case 32:
	
		warbanner_radius = clamp(warbanner_radius+warbanner_radius_speed, warbanner_radius, warbanner_max_radius);
		
		with oPlayer if (get_player_team(player) == get_player_team(other.player)) {
			if (point_distance(x, y-(char_height/2), other.x, other.y+(other.radius_y_offset)) <= other.warbanner_radius) {
				if (commando_warbanner_owner != other && commando_warbanner_strength < other.warbanner_strength) {
					commando_warbanner_strength = other.warbanner_strength;
					commando_warbanner_owner = other;
					commando_warbanner_updated = 1;
				}
			} else if (commando_warbanner_owner == other) {
				commando_warbanner_strength = 0;
				commando_warbanner_owner = noone;
				commando_warbanner_updated = 1;
			}
		}
		
		if (state_timer > 720
			|| player_id.was_parried
			|| player_id.state == PS_RESPAWN
			|| player_id.state == PS_DEAD
			|| player_id.warbanner_obj != self
		) {
			state = 33;
			state_timer = 0;
		}
		
		if (free) vsp += 0.5;
		else vsp = 0;
		
		break;
		
	// despawn
	case 33:
		if (image_alpha > 0) image_alpha -= 0.05;
		warbanner_radius = clamp(warbanner_radius-3*warbanner_radius_speed, 0, warbanner_radius);
		
		with oPlayer if (get_player_team(player) == get_player_team(other.player)) {
			if (point_distance(x, y-(char_height/2), other.x, other.y+(other.radius_y_offset)) <= other.warbanner_radius) {
				if (commando_warbanner_owner != other && commando_warbanner_strength < other.warbanner_strength) {
					commando_warbanner_strength = other.warbanner_strength;
					commando_warbanner_owner = other;
					commando_warbanner_updated = 1;
				}
			} else if (commando_warbanner_owner == other) {
				commando_warbanner_strength = 0;
				commando_warbanner_owner = noone;
				commando_warbanner_updated = 1;
			}
		}
		
		// This is temp handling for removing the buff, needs to be polished up later. Use the same point_distance check as above. (move to a function?)
		if (warbanner_radius <= 0 && image_alpha <= 0) {
			instance_destroy();
			exit;
		}
		break;
	
    //#endregion
    
    //#region Filial Imprinting ~ critter
    
    // Init
    case 40:
    	sprite_index = sprite_get("item_sucker_idle");
    	image_index = 0;
    	mask_index = sprite_get("item_sucker_mask");
    	
    	idle_taunt_timer = 0;
    	idle_statechange_threshold = 60; // changes at random
    	idle_taunt_threshold = 240 + random_func_2(player*spawn_num+1, 120, true);
    	
    	buff_spawn_frames = 601
    	buff_spawn_trigger = floor(buff_spawn_frames / 3) * (spawn_num - 1);
    	do_buff_spawn = false;
    	buff_sfx_vol = 1;
    	
    	ignores_walls = false;
    	can_be_grounded = true;
    	
    	stage_center_x = get_stage_data(SD_X_POS) + floor(get_stage_data(SD_WIDTH)/2);
    	chase_variance = random_func_2(player*spawn_num, 250, true);
    	chase_range = 100+chase_variance;
    	
    	state = 41;
    	state_timer = 0;
    	
    	var hfx = spawn_hit_fx(x-(4*spr_dir), y-6, HFX_ABY_EXPLODE_WARN);
		hfx.depth = depth-1;
		
    	filial_status_update();
    	break;
    
    // Spawning / Warping to player
    case 41:
    	filial_status_update();
    	if (free) vsp += 0.4;
    	
    	if (state_timer == 1) sprite_index = sprite_get("item_sucker_idle");
    	image_index += 0.15;
    	
    	if (!free) {
    		state = 42;
    		state_timer = 0;
    	}
    	else if (state_timer > 30 && !is_ground_below(150)) {
    		state = 45;
    		state_timer = 0;
    		if (x_outside_stage_width(x, 0)) face_target(stage_center_x);
    		else face_target(player_id.x);
    	}
    	else if (player_id.state == PS_ATTACK_GROUND && player_id.attack == AT_TAUNT && player_id.state_timer == 0) {
    		state = 47;
    		state_timer = 0;
    	}
    	break;

	// Idle ~ standing
	case 42:
		filial_status_update();
		if (!free) hsp = 0;
		if (free) vsp += 0.4;
		if (state_timer == 1) idle_statechange_threshold = 60 + random_func_2(player*spawn_num, 90, true);
		
		if (state_timer == 1) sprite_index = sprite_get("item_sucker_idle");
		image_index += 0.15;
		
		if (x_outside_stage_width(x, 0) || (abs(x-player_id.x) > chase_range && !x_outside_stage_width(player_id.x, chase_range))) {
			state = 44;
			state_timer = 0;
		}
		else if (!free && state_timer >= idle_statechange_threshold) {
			spr_dir = 2*random_func_2(player*spawn_num, 2, true) - 1;
			state = 43;
			state_timer = 0;
		}
		else if (!free && do_buff_spawn) {
			state = 46;
			state_timer = 0;
			do_buff_spawn = false;
		}
		else if ( (!free && player_id.state == PS_ATTACK_GROUND && player_id.attack == AT_TAUNT && player_id.state_timer == 0)
			   || (!free && idle_taunt_timer > idle_taunt_threshold)
		) {
    		state = 47;
    		state_timer = 0;
    	}
    	break;

	// Idle ~ wandering
	case 43:
		filial_status_update();
		hsp = 1.5*spr_dir;
		if (free) vsp += 0.4;
		if (state_timer == 1) idle_statechange_threshold = 20 + random_func_2(player*spawn_num, 40, true);
		
		if (state_timer == 1) sprite_index = sprite_get("item_sucker_walk");
		image_index += 0.15;
		
		if (x_outside_stage_width(x, 0) || (abs(x-player_id.x) > 150+chase_variance)) {
			state = 44;
			state_timer = 0;
		}
		else if (state_timer >= idle_statechange_threshold) {
			spr_dir = 2*random_func_2(player*spawn_num, 2, true) - 1;
			state = 42;
			state_timer = 0;
		}
		else if (!free && do_buff_spawn) {
			state = 46;
			state_timer = 0;
			do_buff_spawn = false;
		}
		else if ( (!free && player_id.state == PS_ATTACK_GROUND && player_id.attack == AT_TAUNT && player_id.state_timer == 0)
			   || (!free && idle_taunt_timer > idle_taunt_threshold)
		) {
    		state = 47;
    		state_timer = 0;
    	}
    	break;

	// Chasing ~ running
	case 44:
		filial_status_update();
		if (state_timer == 1) chase_range = 100+chase_variance;
		var returning_to_center = x_outside_stage_width(x, -20);
		var chase_target = (returning_to_center ? stage_center_x : player_id.x);
		face_target(chase_target);
		hsp = 2*spr_dir;
		if (free) vsp += 0.4;
		
		if (state_timer == 1) sprite_index = sprite_get("item_sucker_walk");
		image_index += 0.2;
		
		if (((free && !is_ground_below(200)) || hit_wall)) {
			state = 45;
			state_timer = 0;
		}
		else if ( (!returning_to_center && (abs(x-player_id.x) <= chase_range || x_outside_stage_width(player_id.x, chase_range)))
			   || (returning_to_center && !x_outside_stage_width(x, 0))
		) {
			state = 42;
			state_timer = 0;
			chase_variance = random_func_2(player*spawn_num, 250, true);
		}
		else if (!free && do_buff_spawn) {
			state = 46;
			state_timer = 0;
			do_buff_spawn = false;
		}
		
    	break;

	// Chasing ~ jumping
	case 45:
		filial_status_update();
		if (state_timer == 1) chase_range = 100+chase_variance;
		var returning_to_center = x_outside_stage_width(x, -20);
		var chase_target = (returning_to_center ? stage_center_x : player_id.x);
		face_target(chase_target);
		hsp = 2*spr_dir;
		if (state_timer == 1) vsp = -8;
		if (free) vsp += 0.4;
		
		if (state_timer == 1) sprite_index = sprite_get("item_sucker_idle");
		image_index = (vsp < 0) ? 5 : 4;
		
		if ( (!returning_to_center && abs(x-player_id.x) <= chase_range)
		  || (returning_to_center && !x_outside_stage_width(x, 0))
		) {
			state = 42;
			state_timer = 0;
			chase_variance = random_func_2(player*spawn_num, 250, true);
		}
		else if ((vsp > 6 && !is_ground_below(200)) || hit_wall) {
			state = 45;
			state_timer = 0;
		}
		else if (!free) {
			state = 44;
			state_timer = 0;
		}
		
    	break;

	// Dropping buff
	case 46:
		filial_status_update();
		hsp = 0;
		vsp = 0;
		
		if (state_timer == 1) sprite_index = sprite_get("item_sucker_buff");
		image_index = state_timer / 6;
		
		if (state_timer == 17 && buff_sfx_vol > 0) {
			sound_play(asset_get("sfx_syl_shake"), 0, noone, buff_sfx_vol, 1);
			if (get_match_setting(SET_PRACTICE)) buff_sfx_vol -= 0.2;
		}
		
		else if (state_timer == 19) {
			var buffdrop = instance_create(x, y-4, "obj_article3");
			buffdrop.state = 50;
			buffdrop.buff_type = random_func(get_gameplay_time()%13, 1000, true) % 2;
			buffdrop.depth -= 1;
		}
		
		if (image_index >= 6 || free) {
			state = 42;
			state_timer = 0;
			sprite_index = sprite_get("item_sucker_idle");
		}
		
    	break;

	// Taunt
	case 47:
		filial_status_update();
		hsp = 0;
		vsp = 0;
		
		if (state_timer == 1) sprite_index = sprite_get("item_sucker_taunt");
		image_index = state_timer / 6;
		
		if (image_index >= 7 || free) {
			state = 42;
			state_timer = 0;
			sprite_index = sprite_get("item_sucker_idle");
		}
    	break;

	// Despawn
	case 48:
		if (!free) var hfx = spawn_hit_fx(x, y, HFX_ABY_FLOOR_HIT);
		else var hfx = spawn_hit_fx(x, y-12, HFX_ABY_PROJ_HIT);
		hfx.depth = depth-1;
		instance_destroy();
		exit;
    	break;
    
    //#endregion
    
    //#region Filial Imprinting ~ buff drop
    
    // Init
    case 50:
    	sprite_index = buff_type ? sprite_get("item_suckerdrop_red") : sprite_get("item_suckerdrop_blue");
    	mask_index = sprite_get("item_suckerdrop_mask");
    	image_index = 0;
    	
    	ignores_walls = false;
    	can_be_grounded = true;
    	vsp = -9;
    	
    	state = 51;
    	state_timer = 0;
    	should_destroy = false;
    	buff_duration = 240;
    	
    	break;
    
    // Idle
    case 51:
    	if (free) vsp += 0.5;
    	
    	with oPlayer {
    		if (point_distance(x, y, other.x, other.y) < 18) {
    			other.should_destroy = true;
    			if (is_ror_commando) {
	    			if (other.buff_type) filial_aspeed_timer = other.buff_duration;
	    			else filial_speed_timer = other.buff_duration;
	    			filial_do_update = true;
	    			sound_play(asset_get("sfx_abyss_spawn"));
    			} else {
    				sound_play(asset_get("sfx_syl_dspecial_plantaway"), 0, noone, 0.7, 1.3);
    			}
    		}
    	}
    	
    	if (should_destroy || state_timer > 600) {
    		spawn_hit_fx(x, y-8, HFX_FOR_HIT_SMALL);
    		instance_destroy();
    		exit;
    	}
    	break;
    
    //#endregion
    
    //#region Tricorn ~ trophy
    
    // Init
    case 55:
    	
    	ignores_walls = false;
    	can_be_grounded = false;
    	vsp = 0;
    	
    	if (!player_id.hitpause) {
    		vsp = -9;
    		state = 56;
    		state_timer = 0;
    	}
    	
    	break;
    
    // Rise
    case 56:
		vsp += 0.5;
		if (vsp == 0.5) {
			state = 57;
			state_timer = 0;
		}
    	break;
    
    // Float
    case 57:
    	vsp = 0.5*cos(state_timer*pi/45);
    	
    	if (state_timer >= 180) {
    		spawn_hit_fx(x+16, y+16, HFX_GEN_OMNI);
    		instance_destroy();
    		exit;
    	} else if (state_timer % 60 == 1) {
    		var item = instance_create(x+16, y+16, "obj_article3");
    		item.state = 20;
    		if (player_id.uncommon_pool_size < 1) item.rarity = 0;
			else item.rarity = (random_func(12, 1, false) <= 0.65) ? 1 : 0;
    		sound_play(asset_get("mfx_star"));
    	}
    	
    	break;
    
    //#endregion
    
    //#region Ceremonial Dagger ~ factory
    
    // Activate
    case 60:
		
		var taser_delay = 7 * player_id.item_grid[12][4];

    	var up = create_hitbox(AT_EXTRA_1, 7, x, y);
    	up.proj_angle = 90;
    	up.target_obj = target_obj;
    	up.delay = 20 + taser_delay;
    	up.spr_dir = 1;
    	up.is_fake_hit = true;

    	var left = create_hitbox(AT_EXTRA_1, 7, x, y);
    	left.proj_angle = 210;
    	left.target_obj = target_obj;
    	left.delay = 25 + taser_delay;
    	left.spr_dir = 1;
    	left.is_fake_hit = true;

    	var right = create_hitbox(AT_EXTRA_1, 7, x, y);
    	right.proj_angle = 330;
    	right.target_obj = target_obj;
    	right.delay = 30 + taser_delay;
    	right.spr_dir = 1;
    	right.is_fake_hit = true;
    	
    	if (player_id.icbm_active) {
    		var down = create_hitbox(AT_EXTRA_1, 7, x, y);
	    	down.proj_angle = 270;
	    	down.target_obj = target_obj;
	    	down.delay = 35 + taser_delay;
	    	down.spr_dir = 1;
	    	down.is_fake_hit = true;
	
	    	var left = create_hitbox(AT_EXTRA_1, 7, x, y);
	    	left.proj_angle = 150;
	    	left.target_obj = target_obj;
	    	left.delay = 40 + taser_delay;
	    	left.spr_dir = 1;
	    	left.is_fake_hit = true;
	
	    	var right = create_hitbox(AT_EXTRA_1, 7, x, y);
	    	right.proj_angle = 30;
	    	right.target_obj = target_obj;
	    	right.delay = 45 + taser_delay;
	    	right.spr_dir = 1;
	    	right.is_fake_hit = true;
    	}
    	
    	sound_play(sound_get("cm_dagger_swing"), false, noone, 1.2, 0.6);

		instance_destroy();
    	exit;
    
    //#endregion
    
    //#region ATG Mk # ~ factory
    
    // Init
    case 63:
    	num_missiles = player_id.atg_freq;
    	if (player_id.icbm_active) num_missiles *= 2;
    	if (!target_obj.hitpause) {
    		state = 64;
    		state_timer = 0;
    	}
		break;
    
    // Activate
    case 64:
    	if (state_timer == 5) {
    		var hbox = create_hitbox(AT_EXTRA_1, 8, player_id.x, player_id.y-30);
    		hbox.target_obj = target_obj;
    		hbox.homing = true;
    		hbox.kb_value = bkb*0.6;
    		hbox.kb_scale = kbg*0.8;
    		hbox.spr_dir = spr_dir;
    		hbox.kb_angle = kb_angle;
    		hbox.hitpause = floor(bhp/2);
    		hbox.hitpause_growth = hsp/2;
    		hbox.is_fake_hit = true;
    		
    		if (num_missiles <= 3 && player_id.item_grid[33][4] >= 1) {
    			hbox.sprite_index = sprite_get("proj_missile2");
    		}
    		
    		num_missiles--;
    		if (num_missiles == 0) {
    			instance_destroy();
    			exit;
    		}
    		state_timer = 0;
    	}
    	break;
    
    //#endregion
    
    
    //#region Fireworks ~ factory
    
    // Init
    case 66:
    	if (state_timer == 0) {
	    	num_fireworks = player_id.fireworks_freq;
	    	if (player_id.icbm_active) num_fireworks *= 2;
	    	num_fireworks *= player_id.nectar_mult;
	    	was_parried = false;
	    	parry_owner = player;
	    	target_index = 0;
	    	target_array = [];
	    	var dist_array = [];
	    	with oPlayer { // Get list of targettable players, sorted by distance
	    		var can_hit = get_match_setting(SET_TEAMATTACK) ? player != other.player : get_player_team(player) != get_player_team(other.player);
	    		can_hit = can_hit && state != PS_RESPAWN && state != PS_DEAD;
	    		if (can_hit) {
	    			var dist = point_distance(x, y-20, other.x, other.y);
	    			var added = false;
	    			var len = array_length(dist_array);
	    			for (var i = 0; i < len && !added; i++) {
	    				if (dist < dist_array[i]) {
	    					array_push(other.target_array, other.target_array[len-1]);
	    					array_push(dist_array, dist_array[len-1]);
	    					for (var j = len-1; j > i; j--) {
	    						other.target_array[j] = other.target_array[j-1];
	    						dist_array[j] = dist_array[j-1];
	    					}
	    					other.target_array[i] = self;
	    					dist_array[i] = dist;
	    					added = true;
	    				}
	    			}
	    			if (!added) {
	    				array_push(other.target_array, self);
	    				array_push(dist_array, dist);
	    			}
	    		}
	    	}
    	}
    	if (!player_id.hitpause) {
    		state = 67;
    		state_timer = 0;
    	}
		break;
    
    // Activate
    case 67:
    	if (state_timer == 5) {
    		if (array_equals(target_array, [])) {
    			var hbox = create_hitbox(AT_EXTRA_1, 9, x, y);
    			hbox.vsp = -16;
    			hbox.proj_angle = 90;
    			hbox.target_obj = noone;
    			hbox.parent_obj = self;
    			hbox.is_fake_hit = true;
    		}
    		
    		else {
	    		var hbox = create_hitbox(AT_EXTRA_1, 9, x, y);
	    		hbox.proj_angle = 90;
	    		hbox.target_obj = target_array[target_index];
	    		hbox.homing = true;
	    		hbox.parent_obj = self;
	    		hbox.is_fake_hit = true;
	    		hbox.image_index = random_func(5, 4, true);
	    		target_index += 1;
	    		target_index %= array_length(target_array);
	    		sound_play(sound_get("cm_item_firework"), false, noone, 1, 0.9 + 0.3*random_func(11, 1, false));
    		}
    		
    		if (was_parried) {
    			hbox.target_obj = player_id;
    			hbox.player = parry_owner;
    			hbox.was_parried = true;
    			hbox.was_reflected = true;
    		}
    		
    		num_fireworks--;
    		if (num_fireworks == 0) {
    			instance_destroy();
    			exit;
    		}
    		state_timer = 0;
    	}
    	break;
    
    //#endregion
    
    //#region Plasma Shrimp ~ factory
    
    // Init
    case 68:
    	num_missiles = 3;
    	if (player_id.icbm_active) num_missiles *= 2;
    	if (!target_obj.hitpause) {
    		state = 69;
    		state_timer = 0;
    	}
		break;
    
    // Activate
    case 69:
    	if (state_timer == 5) {
    		var hbox = create_hitbox(AT_EXTRA_1, 12, player_id.x, player_id.y-30);
    		hbox.target_obj = target_obj;
    		hbox.homing = true;
    		hbox.kb_value = bkb*0.6;
    		hbox.kb_scale = kbg*0.8;
    		hbox.spr_dir = spr_dir;
    		hbox.kb_angle = kb_angle;
    		hbox.hitpause = floor(bhp/2);
    		hbox.hitpause_growth = hsp/2;
    		hbox.is_fake_hit = true;
    		
    		num_missiles--;
    		if (num_missiles == 0) {
    			instance_destroy();
    			exit;
    		}
    		state_timer = 0;
    	}
    	break;
    
    //#endregion
    
    //#region Legendary Spark ~ thunderbolt
    
    // Init
    case 80:
        state = 81;
        state_timer = 0;
        sound_play(sound_get("theunmatchedpowerofgod"), 0, noone, .5, 0.4)
        warn_alpha = 0;
        warn_xscale = 1;
        break;
    
    // Await
    case 81:
    	if (state_timer <= 10) {
    		warn_alpha = 0.4*ease_sineOut(0, 1, state_timer, 10);
    		warn_xscale = ease_sineOut(1, 2, state_timer, 10);
    	}
    	else if (state_timer > 180) {
    		state++;
    		state_timer = 0;
    		spawn_bolt();
    	}
    	else if (state_timer > 180-10) {
    		warn_alpha -= 0.04;
    		warn_xscale += 0.2;
    	}
    	else {
    		var step = pi*(state_timer-10)/45
    		warn_alpha += 0.003*sin(step);
    	}
        break;
    
    // Multihits
    case 82:
    case 83:
    	if (x-20 < player_id.x && player_id.x < x+20) {
    		if (player_id.spark_buff_timer <= 0) {
    			sound_play(asset_get("sfx_abyss_spawn"));
    			spawn_hit_fx(player_id.x, player_id.y-36, HFX_FOR_HIT_BIG);
    		}
    		player_id.spark_buff_timer = 420;
    		player_id.spark_do_update = true;
    	}
    	if (state_timer > 10) {
    		state++;
    		state_timer = 0;
    		if (state == 83) spawn_bolt();
    		else spawn_bolt_final();
    	}
    	
        break;
    
    // Finisher
    case 84:
    	if (x-28 < player_id.x && player_id.x < x+28) {
    		if (player_id.spark_buff_timer <= 0) {
    			sound_play(asset_get("sfx_abyss_spawn"));
    			spawn_hit_fx(player_id.x, player_id.y-40, HFX_FOR_HIT_BIG);
    		}
    		player_id.spark_buff_timer = 420;
    		player_id.spark_do_update = true;
    	}
    	if (state_timer > 10) {
    		instance_destroy();
    		exit;
    	}
        break;
        
    //#endregion
    
    //#region Longstanding Solitude ~ manager
    case 90:
    	player_id.move_cooldown[AT_DSPECIAL] = 30;
    	if (state_timer % 20 == 15 && state_timer < 160) {
    		var rnd = random_func(1, 1, false)
    		var rty = 0;
    		if (rnd < 0.1) rty = 2;
    		else if (random_func(1, 1, false) < 0.4) rty = 1;
    		
    		var item = instance_create(x, y, "obj_article3");
    		item.state = 20;
            item.rarity = rty;
    	}
    	break;
    //#endregion
    
    //#region Failed initialization
    default:
        print_debug("Error: article 3 was not properly initialized")
        instance_destroy();
        exit;
    //#endregion
    
}

// Make time progress
state_timer++;

// Handles event checks and performs integrity checks on player distance and spawn_num.
#define filial_status_update
	if (player_id.filial_num_spawned < spawn_num) {
		state = 48;
		state_timer = 0;
		exit;
	}
	if (point_distance(x, y, player_id.x, player_id.y) > 720) {
		x = player_id.x;
		y = player_id.y-60;
		vsp = 0;
		var hfx = spawn_hit_fx(x-(4*spr_dir), y-6, HFX_ABY_EXPLODE_WARN);
		hfx.depth = depth-1;
		state = 41;
		state_timer = 0;
	}
	
	if (get_gameplay_time() % buff_spawn_frames == buff_spawn_trigger) do_buff_spawn = true;
	
	if (state <= 43) idle_taunt_timer++;
	else idle_taunt_timer = 0;

#define is_ground_below(distance)
	var ground_collision = collision_line(x, y, x, y+distance, asset_get("par_block"), false, false);
	var plat_collision = collision_line(x, y, x, y+distance, asset_get("par_jumpthrough"), false, false);
	return ground_collision || plat_collision;

#define x_outside_stage_width(_x, _tol)
	if (player_id.is_playtest) return false;
	return (_x < (get_stage_data(SD_X_POS)-_tol) || (get_stage_data(SD_X_POS)+get_stage_data(SD_WIDTH)+_tol) < _x);

#define face_target(target_x)
	if (target_x < x) spr_dir = -1;
	else spr_dir = 1;

#define init_position_history
history_index = 0;
history_len = 12;
x_history = array_create(history_len, x);
y_history = array_create(history_len, y);
dx_history = array_create(history_len, 0);
dy_history = array_create(history_len, 0);

#define update_position_history
history_index = (history_index+1) % history_len;
x_history[history_index] = x+hsp;
y_history[history_index] = y+vsp;
if (hsp == 0 && vsp == 0) {
	dx_history[history_index] = 0;
	dy_history[history_index] = 0;
} else {
	var dir = point_direction(0, 0, hsp, vsp)+90;
	dx_history[history_index] = lengthdir_x(1, dir);
	dy_history[history_index] = lengthdir_y(1, dir);
}

#define spawn_bolt
create_hitbox(AT_EXTRA_1, 10, x, y-480);
sound_play(asset_get("sfx_absa_new_whip1"), 0, noone, .3, 1.05)
sound_play(asset_get("sfx_mol_norm_explode"), 0, noone, 0.5);
spawn_hit_fx(x, y-640, player_id.fx_bolt);
spawn_hit_fx(x, y-320, player_id.fx_bolt);
spawn_hit_fx(x, y, player_id.fx_bolt);
spawn_hit_fx(x, y, player_id.fx_bolt_ground);

#define spawn_bolt_final
create_hitbox(AT_EXTRA_1, 11, x, y-480);
sound_play(asset_get("sfx_absa_new_whip2"), 0, noone, .8, 1)
sound_play(asset_get("sfx_absa_uair"), 0, noone, .8, 1)
sound_play(sound_get("theunmatchedpowerofgod"), 0, noone, .8)
spawn_hit_fx(x, y-640, player_id.fx_bolt_large);
spawn_hit_fx(x, y-320, player_id.fx_bolt_large);
spawn_hit_fx(x, y, player_id.fx_bolt_large);
spawn_hit_fx(x, y, player_id.fx_bolt_large_ground);

