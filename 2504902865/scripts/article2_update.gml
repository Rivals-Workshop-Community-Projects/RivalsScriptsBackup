/*
Welcome to the state machine

//labels & stuff
-State -1: invisible/intangicle (for being carried & stuff)
-state 1: idle
-state 2: hurt
-state 3: 
-state 4: 
-state 5: death (visible)
-state 6: death (offscreen)
-state 7: attack

//then animation/stuff handling

*/

//behaviour handling
if instance_exists(target_player) { //find enemy's position + their speed
	var target_position_x = target_player.x + (target_player.hsp *6);
	var target_position_y = target_player.y + (target_player.vsp *6) - 25;
}

switch(state) {
	case -2: //debug/placeholder
		vsp = lerp(vsp,0,air_frict*2)
        hsp = lerp(hsp,0,air_frict*2) //slow down, no move during hurt
		break;
	
    case -1: //invisible/intangible
    	reset_hitbox();
    	
        
        break;
    
    case 1: //idle
        if !instance_exists(target_player) {
            find_target_player()
            vsp = lerp(vsp,0,air_frict*2)
            hsp = lerp(hsp,0,air_frict*2) //slow down, no move during a
        } else { //move_towards_player
            if point_distance(x,y,target_position_x,target_position_y) >= 45 {
            	//old targeting
                //hsp += x < target_player.x ? air_accel : air_accel*-1
                //vsp += y < target_player.y - 25 ? air_accel : air_accel*-1
                hsp += x < target_position_x ? air_accel : air_accel*-1
                vsp += y < target_position_y ? air_accel : air_accel*-1
            } else {
                vsp = lerp(vsp,0,air_frict)
                hsp = lerp(hsp,0,air_frict)
            }
            hsp = clamp(hsp,air_max_speed*-1,air_max_speed)
            vsp = clamp(vsp,air_max_speed*-1,air_max_speed)
            spr_dir = x < target_player.x ? 1 : -1
        }
        attack_timer_rn += 1
        reset_hitbox();
    	detect_hit();
    	
    	if attack_timer_rn >= round(attack_timer_max * overworking_bonus) && instance_exists(target_player) && point_distance(x,y,target_position_x,target_position_y) <= 55 { //do attack if time for attack
    		set_attack();
    		attack_timer_rn = 0;
    	}
    	
    	//die if no house
    	if !instance_exists(minion_house) {
    	    set_state(5)
    	}
    	
        break;
    
    case 2: //hurt
        vsp = lerp(vsp,0,air_frict*2)
        hsp = lerp(hsp,0,air_frict*2) //slow down, no move during hurt
        reset_hitbox();
    	detect_hit();
    	
    	if state_timer == hurt_timer {
    	    attack_timer_rn = 0;
    		set_state(1)	
    	}
    	die_if_offstage();
    	if !instance_exists(minion_house) {
    	    set_state(5)
    	}
        break;
    
    case 5: //death
    	hsp = 0;
    	vsp = 0;
    	reset_hitbox();
    	if state_timer >= die_timer {
    	    if !is_throw_minion { //thrown ones are not real
    	        if instance_exists(minion_house){
    		        minion_house.minions_spawn_rn -= 1;
    	        }
    	    }
    	    sound_play(asset_get("sfx_orca_crunch"),false,0,0.65,1);
    		instance_destroy();
    		exit;
    	}
    	
    
        break;
        
    case 6: //death 2 water boogaloo
    	hsp = 0;
    	vsp = 0;
    	minion_house.minions_spawn_rn -= 1;
    	sound_play(asset_get("sfx_orca_crunch"))
    	reset_hitbox();
    	instance_destroy();
    	exit;
        break;
        
    case 7: //atac
        if !instance_exists(target_player) {
            find_target_player()
            vsp = lerp(vsp,0,air_frict*2)
            hsp = lerp(hsp,0,air_frict*2) //slow down, no move during a
        } else { //move_towards_player
        //old targeting
            //hsp += x < target_player.x ? air_accel*0.9 : air_accel*-0.9
            //vsp += y < target_player.y - 25 ? air_accel*0.9 : air_accel*-0.9
            hsp += x < target_position_x ? air_accel*0.9 : air_accel*-0.9
            vsp += y < target_position_y ? air_accel*0.9 : air_accel*-0.9
            hsp = clamp(hsp,air_max_speed*-0.9,air_max_speed*0.9)
            vsp = clamp(vsp,air_max_speed*-0.9,air_max_speed*0.9)
        }
        if !instance_exists(minion_house) {
    	    set_state(5)
    	}
        window_timer += 1;
    	if window_timer > window_length {
    	    if window < 3 {
    	        window++;
    	        window_timer = 0;
    	    } else {
    	        set_state(1);
    	    }
    	}
    	switch(window) {
    	    case 1:
    	        attack_window_frame_first = 0;
    	        attack_window_frame_last = 1;
    	        window_length = 12//startup
    	        if window_timer == window_length-1 {
    	        	var randomsound = random_func(5,2,true);
    	        	switch(randomsound){
    	        		case 0:sound_play(asset_get("sfx_swipe_weak2")) break;
    	        		case 1:sound_play(asset_get("sfx_swipe_weak1")) break;
    	        	}
    	        }
    	        break;
    	    case 2:
    	        attack_window_frame_first = 2;
    	        attack_window_frame_last = 2;
    	        window_length = 3//active
    	        if !instance_exists(attack_hitbox_id) {
        	        switch(minion_level) { //hitbox depends on minion level
        	            case 1:
        	            //waga
        	                attack_hitbox_id = create_hitbox(AT_DSPECIAL,2,x + 30 * spr_dir, y - 25)
        	                break;
        	            case 2:
        	                attack_hitbox_id = create_hitbox(AT_DSPECIAL,3,x + 45 * spr_dir, y - 30)
        	            //baga
        	                break;
        	            case 3:
        	                attack_hitbox_id = create_hitbox(AT_DSPECIAL,4,x + 60 * spr_dir, y - 35)
        	            //bobo
        	                break;
        	        }
    	        }
    	        break;
    	    case 3:
    	        reset_hitbox();
    	        attack_window_frame_first = 3;
    	        attack_window_frame_last = 5;
    	        window_length = 22//lag
    	        break;
    	}
    	
    	
    	
    	break;
    case 8: //stun
        vsp = lerp(vsp,0,air_frict*4)
        hsp = lerp(hsp,0,air_frict*4) //slow down, no move during hurt
        reset_hitbox();
    	//detect_hit();
    	
    	if state_timer == stun_timer {
    	    attack_timer_rn = 0;
    		set_state(1)	
    	}
    	die_if_offstage();
    	if !instance_exists(minion_house) {
    	    set_state(5)
    	}
        break;
}

//state timer plus equals one
state_timer += 1
if hit_cooldown > 0 {
	hit_cooldown -= 1;
}
if hit_attack_cooldown > 0 {
	hit_attack_cooldown -= 1;
}
if instance_exists(minion_house) {
    minion_level = minion_house.house_level;
}
if overworking_active {
	air_accel = field_accel;
	air_max_speed = field_max_speed;
    overworking_bonus = 0.50; //less means faster
    //funny fx
    if get_gameplay_time() mod 2 == 0 {
    	var trail_x = -31 + ((random_func(20,61,0) + x) mod 61);
    	var trail_y = -81 + ((random_func(21,61,0) + y) mod 61);
    	spawn_hit_fx(x + trail_x, y + trail_y, player_id.fx_bubble_boost);
    }
} else {
	air_accel = base_accel;
	air_max_speed = base_max_speed;
    overworking_bonus = 1;
}

//animation handling
switch(state) {
	case -2: //debug idk
    visible = true;
	new_sprite = sprite_get("minion_article_idle_lv"+string(minion_level))
		break;
	
    case -1: //invisible/intangible
    visible = false;
    new_sprite = sprite_get("minion_article_idle_lv"+string(minion_level))
        break;
    
    case 1: //idle
    visible = true;
    new_sprite = sprite_get("minion_article_idle_lv"+string(minion_level))
    image_index = state_timer*idle_anim_speed
    
        break;
    
    case 2: //hurt
    visible = true;
    //make hurt sprite
    new_sprite = sprite_get("minion_article_hurt_lv"+string(minion_level))
    image_index = ease_linear(0,1,state_timer,hurt_timer)
    
        break;
    
    case 5: //death
    visible = true;
    //make sprite
    new_sprite = sprite_get("minion_article_die_lv"+string(minion_level))
    image_index = ease_linear(0,6,state_timer,die_timer)
    
        break;
        
    case 6: //death 2 water boogaloo
    visible = false;
    //make sprite
    new_sprite = sprite_get("minion_article_idle_lv"+string(minion_level))
    	break;
    	
    case 7: //atac
    visible = true;
    new_sprite = sprite_get("minion_article_attack_lv"+string(minion_level))
    image_index = ease_linear(attack_window_frame_first,attack_window_frame_last,window_timer,window_length)
    	break;
    	
    case 8: //stun
    visible = true;
    //make hurt sprite
    new_sprite = sprite_get("minion_article_hurt_lv"+string(minion_level))
    image_index = ease_linear(0,1,state_timer,stun_timer)
}

sprite_index = new_sprite


#define set_state(_state)
state = _state;
state_timer = 0;

#define set_attack()
state = 7;
state_timer = 0;
window = 1;
window_timer = 0;
window_length = 16;
attack_window_frame_first = 0;
attack_window_frame_last = 1;


#define detect_hit()
minion_got_hit = false;

with asset_get("pHitBox") {
	if place_meeting(x,y,other) && player_id != other.player_id && other.hit_cooldown == 0 && get_player_team(player) != get_player_team(other.player_id.player) {
		if self != other.hit_hitbox { //detecting and separating hitboxes that hit
			other.hit_hitbox_previous = other.hit_hitbox;
			other.hit_hitbox = self;
			other.hit_group_previous = other.hit_group;
			other.hit_group = hbox_group;
			if other.hit_attack_cooldown == 0 {
				other.hit_attack_previous = 0;
			} else {
				other.hit_attack_previous = other.hit_attack;
			}
			other.hit_attack = attack;
			if (other.hit_attack_previous != other.hit_attack || other.hit_group_previous != other.hit_group || (other.hit_group == -1 && other.hit_attack_previous != other.hit_attack) || self == other.hit_hitbox_previous) {
				other.hit_attack_cooldown = 30; //reset cooldown so you can hit it again later with the same attack index
				//activating hitbox stuff & giving the hit gamefeel
				if "sound_effect" in self {
					sound_play(sound_effect,false,0,0.75,1);
				}
				if "hit_effect" in self {
					spawn_hit_fx(x,y,hit_effect)
				}
				if type != 2 { //so that jank doesn't happen
					player_id.hitpause = true;
					player_id.hitstop = hitpause
					player_id.hitstop_full = hitpause
				}
				player_id.old_vsp = player_id.vsp;
				player_id.old_hsp = player_id.hsp;
				other.hit_cooldown = player_id.hitstop_full;
				//ow ouch
				other.minion_got_hit = true;
				//later add damage detection
				other.hp_rn -= damage
				other.spr_dir = x >= other.x ? 1 : -1;//turn towards damage source
				other.hsp = -6 * other.spr_dir; //move back a bit
			}
		}
	}
}
//changing states & such
if minion_got_hit {
	attack_timer_rn = 0;
	if hp_rn <= 0 {
		set_state(5); //die
	} else {
		set_state(2); //ouw
	}
}



#define reset_hitbox()

if instance_exists(attack_hitbox_id) {
    instance_destroy(attack_hitbox_id);
}

#define die_if_offstage()
if ((x < 0 or x > room_width) or (y < 0 or y > room_height)){
	set_state(6);
}

#define find_target_player()
//code to find a target if none available
with(oPlayer){
    if self != other.player_id && point_distance(x,y,other.x,other.y - 15) <= 235 && get_player_team(player) != get_player_team(other.player_id.player) {
        other.target_player = self;   
    }
}



