if (place_meeting(x, y, asset_get("plasma_field_obj"))) {
    sound_play(asset_get("sfx_clairen_hit_med"));
    spawn_hit_fx(floor(x),floor(y),256);
    setState(9);
}

if !hitstop{
    state_timer++;
    if old_hsp != 0{
        hsp = floor(old_hsp);
        old_hsp = 0;
    }
    if old_vsp != 0{
        vsp = floor(old_vsp);
        old_vsp = 0;
    }
} else {
    hitstop--;
}

if hsp > 0 or hsp < 0{
    hsp = lerp(hsp, 0, bubble_fric);
} else {
    hsp = 0;
}
if vsp > 0 or vsp < 0{
    vsp = lerp(vsp, 0, bubble_fric);
} else {
    vsp = 0;
}

if ((y > (room_height + 100)) || x > room_width || x < 0){
	instance_destroy(hbox);
	instance_destroy();
}

if (state == 1 or state == 3 or (state >= 10 and state <= 13)){
	if place_meeting(x, y, pHitBox) and pHitBox.player_id != player_id{
		if pHitBox.type == 1{
			switch(state){
				case 3:
					setState(5);
					break;
				default:
					setState(15);
					break;
			}
		}
	}
}

switch(state){
    case 0: // Forming
        //is_hittable = false;
        unbashable = 1;
        sprite_index = spr_bubble_spawn;
        if state_timer = 1{
            // Start the waterfall loop
            sound_play(player_id.sfx_wren_whirlpool_loop);
            // Check Charge
        }
        
        if instance_exists(hbox){
            hbox.hsp = hsp;
            hbox.vsp = vsp;
        } else {
            hbox = create_hitbox(AT_NSPECIAL_2, 2, floor(x + (-1 * spr_dir) + hsp), floor((y) + vsp));
        }
        
        if state_timer == 21{
            setState(1);
        }
        break;
    case 1: // Idle
        //is_hittable = true;
        ignores_walls = false;
        unbashable = 0;
        sprite_index = spr_bubble_idle;
        
        if whirlspool_cool > 0{
        	whirlspool_cool--;
        }
        
        if instance_exists(hbox){
        	instance_destroy(hbox);
        }
        
        stronginteraction();

        if point_distance(x, y, player_id.x, player_id.y) > 480{
            hsp = lengthdir_x(4, point_direction(x,y,player_id.x,player_id.y-50));
            vsp = lengthdir_y(4, point_direction(x,y,player_id.x,player_id.y-50));
        }
        
        if whirlspool_cool == 0{
	        with oPlayer{
	        	if id != other.player_id and last_player != 0{
	        		if (last_player == other.player_id.player and (last_attack != AT_USPECIAL and last_attack != AT_USTRONG and last_attack != AT_FSTRONG and last_attack != AT_DSTRONG)){
				        if point_distance(x + hsp, y + vsp, other.x, other.y) <= 70 and state_cat == SC_HITSTUN{
				        	other.riptide_stacks_opp = wren_stacks;
				        	with other{
				        		whirlspool_cool = whirlspool_cool_max;
				        		setState(10);
				        	}
				        	wren_stacks = 0;
				        }
	        		}
	        	}
	        	// Wren is hit into it
	        	if id == other.player_id and last_player != 0{
			        if point_distance(x + hsp, y + vsp, other.x, other.y) <= 70 and state_cat == SC_HITSTUN{
			        	other.whirl_storelastplayer = other.player_id.last_player;
			        	other.riptide_stacks_opp = wren_stacks;
			        	with other{
			        		whirlspool_cool = whirlspool_cool_max;
			        		whirl_shouldhitowner = true;
			        		setState(10);
			        	}
			        	wren_stacks = 0;
			        }
	        	}
	        }
		}
        
        if place_meeting(x, y, player_id.wren_wave){
            switch(player_id.wren_wave.state){
                case 5:
                case 4:
                    hsp = 2 * player_id.wren_wave.spr_dir;
                    vsp = -0.5;
                    break;
                default:
                    x = player_id.wren_wave.x + (16 * player_id.wren_wave.spr_dir);
                    y = player_id.wren_wave.y - 16;
                    break;
            }
        }
        break;
    case 2: // Recall Start-Up
        //is_hittable = true;
        unbashable = 0;
        if state_timer == 4{
            setState(3);
        }
        break;
    case 3: // NSpecial Recall
        sprite_index = spr_bubble_recall;
        //is_hittable = true;
        ignores_walls = true;
        unbashable = 1;
        // Return to owner
        var _yoyo_direc = point_direction(x, y, player_id.x, player_id.y-50);
        
        hsp = lengthdir_x(wren_recall_spd, _yoyo_direc);
        vsp = lengthdir_y(wren_recall_spd, _yoyo_direc);
        
        if instance_exists(hbox){
            hbox.hsp = hsp;
            hbox.vsp = vsp;
        } else {
            hbox = create_hitbox(AT_NSPECIAL_2, 1, floor(x + (-1 * spr_dir) + hsp), floor((y) + vsp));
        }
        
        if point_distance(x, y, player_id.x, player_id.y-50) <= 60{
            setState(9);
        }
        break;
    case 4: // Strong Connect
        sprite_index = spr_bubble_pop;
        //is_hittable = false;
        unbashable = 1;
        if instance_exists(hbox){
            hbox.hsp = hsp;
            hbox.vsp = vsp;
        } else {
            if player_attack == AT_USTRONG{
                hbox = create_hitbox(player_attack, 3, floor(x + (-1 * spr_dir) + hsp), floor((y) + vsp));
            } else {
                hbox = create_hitbox(player_attack, 6, floor(x + (-1 * spr_dir) + hsp), floor((y) + vsp));
            }
        }
        if state_timer == 4{
        	sprite_index = spr_bubble_pull;
            setState(5);
        }
        break;
    case 5: // Strong Connect (Recall)
        sprite_index = spr_bubble_pull;
        //is_hittable = false;
        unbashable = 1;
        //is_hittable = true;
        ignores_walls = true;
        // Return to owner
        var _yoyo_direc = point_direction(x, y, player_id.x, player_id.y-50);
        
        hsp = lengthdir_x(wren_recall_spd, _yoyo_direc);
        vsp = lengthdir_y(wren_recall_spd, _yoyo_direc);
        
        if point_distance(x, y, player_id.x, player_id.y-50) <= 60{
            setState(9);
        }
        break;
    case 6: // FSpecial Ride
        //is_hittable = false;
        ignores_walls = false;
        unbashable = 1;
        
        if instance_exists(hbox){
        	hbox.x = (x + (-1 * spr_dir))
        	hbox.y = y;
            hbox.hsp = hsp;
            hbox.vsp = vsp;
        } else {
            hbox = create_hitbox(AT_FSPECIAL, 3, floor(x + hsp + (-1 * spr_dir)), floor((y) + vsp));
        }
        break;
    case 7: // FSpecial Dismount
        //is_hittable = false;
        ignores_walls = false;
        unbashable = 1;
        
        if state_timer == 8{
            setState(1);
        }
        break;
    case 8: // USpecial Pull
        //is_hittable = true;
        unbashable = 1;
        
        if instance_exists(hbox){
            hbox.hsp = hsp;
            hbox.vsp = vsp;
        } else {
            hbox = create_hitbox(AT_NSPECIAL_2, 3, floor(x + (-1 * spr_dir) + hsp), floor((y) + vsp));
        }
        
        break;
    case 9: // Pop
        //is_hittable = false;
        unbashable = 1;
        sound_stop(player_id.sfx_wren_whirlpool_loop);
        instance_destroy();
        break;
    case 10: // DSpecial Start
        //is_hittable = true;
        ignores_walls = false;
        unbashable = 0;
        sprite_index = spr_bubble_whirlstart;
        if state_timer == 4{
            setState(11);
        }
        break;
    case 11: // DSpecial Active
        //is_hittable = true;
        ignores_walls = false;
        unbashable = 1;
        sprite_index = spr_bubble_whirl;
        if instance_exists(hbox){
            hbox.hsp = hsp;
            hbox.vsp = vsp;
        } else {
            sound_play(asset_get("sfx_swish_weak"));
            hbox = create_hitbox(AT_DSPECIAL, 1, floor(x + (-1 * spr_dir) + hsp), floor((y) + vsp));
            if whirl_shouldhitowner{
            	hbox.can_hit_self = true;
            	hbox.can_hit[whirl_storelastplayer] = false;
            }
        }
        if state_timer == 27 + (9 * riptide_stacks_opp){
        	setState(12);
        }
        break;
    case 12: // DSpecial Active 2
        //is_hittable = true;
        ignores_walls = false;
        unbashable = 1;
        sprite_index = spr_bubble_whirl;
        if state_timer == 2{
            if instance_exists(hbox){
                hbox.hsp = hsp;
                hbox.vsp = vsp;
            } else {
                sound_play(asset_get("sfx_swish_medium"));
                hbox = create_hitbox(AT_DSPECIAL, 2, floor(x + (-1 * spr_dir) + hsp), floor((y) + vsp));
                if whirl_shouldhitowner{
                	hbox.can_hit_self = true;
                	hbox.can_hit[whirl_storelastplayer] = false;
                }
            }
        } else {
            if state_timer >= 4{
                if instance_exists(hbox){
                    instance_destroy(hbox);
                }
                setState(13);
            }
        }
        
        break;
    case 13: // DSpecial End
        //is_hittable = true;
        unbashable = 0;
        sprite_index = spr_bubble_whirlend;
        if state_timer == 8{
        	whirl_shouldhitowner = false;
            yoyo_charge_lvl = 0;
            setState(1);
        }
        break;
    case 14: // real dspecial
        sprite_index = spr_bubble_recall;
        //is_hittable = true;
        ignores_walls = true;
        unbashable = 1;
        // Return to owner
        
        if instance_exists(hbox){
            hbox.hsp = hsp;
            hbox.vsp = vsp;
        } else {
            hbox = create_hitbox(AT_NSPECIAL_2, 2, floor(x + (-1 * spr_dir) + hsp), floor((y) + vsp));
        }
    	break;
    case 15: // cooldown
        sprite_index = spr_bubble_pull;
        //is_hittable = true;
        ignores_walls = true;
        unbashable = 1;
        // Return to owner
        
        if instance_exists(hbox){
        	instance_destroy(hbox);
        }
        
        if state_timer >= 160{
        	setState(5);
        }
    	break;
}

#region // Animation Handling
if instance_exists(self){
    switch(state){
        case 0:
            image_index = floor(state_timer / 3);
            break;
        case 6:
        case 7:
        case 1:
        case 8:
            image_index = get_gameplay_time() / 8;
            break;
        case 3:
        case 14:
            image_index = state_timer / 4;
            break;
        case 4:
        	switch(state_timer){
        		case 0:
        			image_index = 0;
        			break;
        		case 1:
        			image_index = 1;
        			break;
        		case 2:
        			image_index = 2;
        			break;
        		case 3:
        			image_index = 3;
        			break;
        		case 4:
        		case 5:
        			image_index = 4;
        			break;
        	}
            break;
        case 5:
        case 15:
            image_index = floor(state_timer / 8);
            break;
        case 11:
            image_index = get_gameplay_time() / 4;
            break;
        case 12:
            image_index = state_timer / 8;
            break;
    }
}
#define stronginteraction()
if (place_meeting(x, y, pHitBox) and pHitBox.player_id.url == player_id.url){
	if ((pHitBox.attack == AT_FSTRONG and pHitBox.hbox_num == 5) or (pHitBox.attack == AT_USTRONG and pHitBox.hbox_num == 2) or (pHitBox.attack == AT_DSTRONG and (pHitBox.hbox_num == 2 or pHitBox.hbox_num == 5))){
	    // Detect which strong
	    if ((pHitBox.attack == AT_FSTRONG)){
	        x = pHitBox.player_id.x + (pHitBox.x_pos);
	        y = pHitBox.player_id.y + pHitBox.y_pos;
	    }
	    if ((pHitBox.attack == AT_DSTRONG)){
	        if pHitBox.hbox_num == 2{
	            x = pHitBox.player_id.x + (pHitBox.x_pos);
	        } else {
	            x = pHitBox.player_id.x + (pHitBox.x_pos);
	        }
	        y = pHitBox.player_id.y + pHitBox.y_pos;
	    }
	    if ((pHitBox.attack == AT_USTRONG)){
	        x = pHitBox.player_id.x + (pHitBox.x_pos);
	        y = pHitBox.player_id.y + pHitBox.y_pos;
	    }
	    // See if it's polite
	    if pHitBox.effect != 9{
	        if pHitBox.player_id.has_hit_player == false{
	            hitstop = ceil((get_hitstop_formula(0, pHitBox.damage, pHitBox.hitpause, 0, 0)));
	        }
	    } else {
	        hitstop = 0;
	    }
	    // play sound and effect
	    sound_play(pHitBox.sound_effect);
	    // check the hit lockout
	    if pHitBox.no_other_hit != 0{
	        hit_cool = pHitBox.no_other_hit;
	    } else {
	        hit_cool = ((pHitBox.length - pHitBox.hitbox_timer));
	    }
	    // check the attack
	    player_attack = pHitBox.attack;
	    // sprite
	    sprite_index = spr_bubble_pop;
	    state = 4;
	    state_timer = 0;
	    // make changes :)
	    player_id.last_player = pHitBox.player;
	    player_id.last_attack = pHitBox.attack;
	    player_id.last_hbox_num = pHitBox.hbox_num;
	}
}

#define setState(new_state)
state = new_state;
state_timer = 0;

if instance_exists(hbox){
    instance_destroy(hbox);
}