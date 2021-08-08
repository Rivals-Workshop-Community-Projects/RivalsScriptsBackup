var holding_attack = (attack_down || special_down || strong_down || right_strong_down || left_strong_down || up_strong_down || down_strong_down || right_stick_down || left_stick_down || up_stick_down || down_stick_down);
var window_length = get_window_value(attack,window,AG_WINDOW_LENGTH);
var window_end = window_timer >= floor(get_window_value(attack,window,AG_WINDOW_LENGTH)*(1+(.5*!has_hit*get_window_value(attack,window,AG_WINDOW_HAS_WHIFFLAG))))-1;

if (attack == AT_NSPECIAL) {
	trigger_ult_b_reverse();
}
//#region Custom window types
switch (get_window_value(attack,window,AG_WINDOW_TYPE)) {
	case 2: //ignore num_windows value
		if (window_end) {
			window++;
			window_timer = 0;
		
			if (get_window_value(attack,window,AG_WINDOW_HSPEED_TYPE) == 2) hsp = get_window_value(attack,window,AG_WINDOW_HSPEED)*spr_dir;
			else if (get_window_value(attack,window,AG_WINDOW_HSPEED_TYPE) == 0) hsp += get_window_value(attack,window,AG_WINDOW_HSPEED)*spr_dir;
			if (get_window_value(attack,window,AG_WINDOW_VSPEED_TYPE) == 2) vsp = get_window_value(attack,window,AG_WINDOW_VSPEED);
			else if (get_window_value(attack,window,AG_WINDOW_VSPEED_TYPE) == 0) vsp += get_window_value(attack,window,AG_WINDOW_VSPEED);
		}
	break;
	case 99: //bullet window
		var jump_window = get_window_value(attack,window,AG_WINDOW_JUMP_TO);
		var window_leniency = get_window_value(attack,window,AG_WINDOW_BULLET_LENIENCY);
		
		if (window_timer == 1) window_hold_time = 0;
		
		if (holding_attack && !hitpause) {
			window_hold_time++;
		}
		
		if (window_timer == window_length) {
		    if (holding_attack && window_hold_time >= window_length-2-window_leniency && bullets > 0) {
		        window = jump_window;
		        window_timer = 0;
		        //speed doesn't work properly when setting the window like this, so we fix that here
		        //if get_window_value(attack,jump_window,AG_WINDOW_HAS_SFX) && get_window_value(attack,jump_window,AG_WINDOW_SFX_FRAME) == 0 sound_play(get_window_value(attack,jump_window,AG_WINDOW_SFX));
		        if (get_window_value(attack,jump_window,AG_WINDOW_HSPEED_TYPE) == 2) hsp = get_window_value(attack,jump_window,AG_WINDOW_HSPEED)*spr_dir;
		        else if (get_window_value(attack,jump_window,AG_WINDOW_HSPEED_TYPE) == 0) hsp += get_window_value(attack,jump_window,AG_WINDOW_HSPEED)*spr_dir;
		        if (get_window_value(attack,jump_window,AG_WINDOW_VSPEED_TYPE) == 2) vsp = get_window_value(attack,jump_window,AG_WINDOW_VSPEED);
		        else if (get_window_value(attack,jump_window,AG_WINDOW_VSPEED_TYPE) == 0) vsp += get_window_value(attack,jump_window,AG_WINDOW_VSPEED);
		        bullet_fired = true;
		        //bullets--;
		        //bullet_cd = 0;
		    }
		}
		
	break;
}
//#endregion
//#region Attack logic
switch (attack) {
	case AT_USPECIAL:
		move_cooldown[AT_USPECIAL] = 2; //this is just to prevent the article from doing weird stuff
		free = true;
		can_shield = true;
		if (window == 1 && window_timer == 1) {
			sound_play(asset_get("sfx_clairen_fspecial_dash"));
			if (rec_article == noone) {
				rec_article = instance_create(x,y,"obj_article1");
				rec_article.spr_dir = spr_dir;
			}
	    }
	    
	    if (window == 1) {
	        can_move = false;
	        vsp *= 0.8;
	        hsp *= 0.8;
	        vsp += 0.1;
	    } else {
	        can_wall_jump = true;
	    }
	    
	    if (window == 2 && window_timer == 1) {
	    	sound_play(asset_get("sfx_clairen_fspecial_dash"));
	    }
	    
	    if has_hit && point_distance(x,y,hit_player_obj.x,hit_player_obj.y) < 50 can_jump = true;
	    else if (attack_charged) {
	        set_window_value(AT_USPECIAL,3,AG_WINDOW_TYPE,1);
	        if jump_pressed {
	        	var mult = 0.6;
	        	hsp = (x-px)*mult;
	        	vsp = (y-py)*mult;
	        	if !free can_jump = true;
	        	else if free {
	        		djumps = 1;
	        		set_state(PS_IDLE_AIR);
	        	}
	        	free = true;
	        }
	        //can_jump = true;
	    } else if has_hit can_jump = true;
	    px = x;
		py = y;
	break;
	
	case AT_NSPECIAL:
		move_cooldown[attack] = 30;
		if (window == 2) {
			if roke_nspecial_charge == 0 {
				//bullet_cd = 0;
        		//bullets--;
			}
        	if roke_nspecial_charge == 1 cur_sound = sound_play(asset_get("sfx_ell_arc_taunt_start"));
        	else if roke_nspecial_charge == 50 sound_play(asset_get("sfx_zetter_shine_charged"),0,-4,1,1.1);
        	if roke_nspecial_charge % 10 == 0 white_flash_timer = 5;
        	if roke_nspecial_charge > 30 set_window_value(AT_NSPECIAL, 3, AG_WINDOW_SFX, asset_get("sfx_clairen_tip_strong"));
        	else reset_window_value(AT_NSPECIAL, 3, AG_WINDOW_SFX);
        	roke_nspecial_charge++;
        	if !special_down || roke_nspecial_charge == roke_nspecial_max_charge {
        		window++;
        		window_timer = 0;
        		sound_stop(cur_sound);
        	}
		} else if (window == 4 && window_timer == 4) {
			hsp = -4*spr_dir;
		}
		
	break;
	case AT_FSPECIAL:
		move_cooldown[AT_FSPECIAL] = 12;
	break;
	case AT_USTRONG:
		
		can_fast_fall = false;
		//no slide-off ustrong tech :sadcat:
		if window == 1 && free set_attack(AT_UAIR);
		//if you hit the first hit of ustrong, create a hitbox that deletes their DI.
		//remove this if people complain about it lol it's probably busted
		if window == 3 && has_hit && !hitpause create_hitbox(attack,4,x+34*spr_dir,y-30);
		if window >= 3 && window < 6 {
			hud_offset = ceil(lerp(hud_offset,100,0.3));
		}
		if window == 6 {
			can_fast_fall = true;
			if !free {
				landing_lag_time = floor( get_window_value(attack,window,AG_WINDOW_LENGTH)*(1+(0.5*(get_window_value(attack,window,AG_WINDOW_HAS_WHIFFLAG)&&has_hit)) ));
				landing_lag_time -= window_timer-2;
				set_state(!was_parried?PS_LANDING_LAG:PS_PRATLAND);
				
			}	
		}
		if was_parried {
			set_window_value(AT_USTRONG,6,AG_WINDOW_TYPE,7);
			can_move = false;
			can_fast_fall = false;
		}
		else reset_window_value(AT_USTRONG,6,AG_WINDOW_TYPE);
	break;
	case AT_FSTRONG:
		if (window == 1 && window_timer == 1) {
			hsp = -6*spr_dir;
		}
	break;
    case AT_DSTRONG:
    	roke_dstrong_grabbing = true;
    	
    	switch (window) {
    		default: 
    			xtarget = 0;
    			ytarget = -2;
    		break;
    		case 2:
    			xtarget = -40;
    			ytarget = -2;
    		break;
    		case 3:
    			xtarget = 40;
    			ytarget = -2;
    		break;
    		case 4:
    		case 5:
    		case 6:
    			xtarget = 40;
    			ytarget = -2;
    		break;
    	}
		if (window == 6 && window_timer == 1) {
			hsp = -8*spr_dir;
		}
		/*if (has_hit && !hitpause) {
			if window == 3 {
				create_hitbox(attack,5,x,y);
				has_hit = false;
			}
			else if window == 2 {
				create_hitbox(attack,6,x,y);
				has_hit = false;
			}
		}*/
	break;
	case AT_BAIR:
		if (window == 4) {
	    	if (clamp(state_timer,1,50)%4 == 0) {
	            var fx = instance_create(x,y,"obj_article3");
	            fx.image_index = floor(state_timer/4)-4;
	            fx.sprite_index = sprite_get("bairtrail");
	            fx.image_alpha = 0.7;
	        }
	    } else if (window == 5 && window_timer == 1) {
			spawn_hit_fx(x,y-28,burst);
			spawn_hit_fx(x+(28*spr_dir),y-28,fire);
		} else if (window == 5 && window_timer > 3 || window == 6) {
			if (window_timer%2 == 0) createParticle(2,20,40,sprite_get("test_particle"),x,y-25,-hsp/3,-vsp/3,sign(hsp)*0.12,sign(vsp)*0.12,1.4,-0.1,30,true);
		}
	break;
	case AT_TAUNT:
		if window == 2 && window_timer == window_length-2 && taunt_down {
			window_timer = 0;
		}
	break;
	case AT_JAB:
		if window == 4 && window_timer == 1 hsp += 6*spr_dir;
	break;
	case AT_DTILT:
		if window == 1 && window_timer == 6
			//sound_play(asset_get("sfx_zetter_fireball_fire"),false,-4,0.4,1.1);
	break;
	case AT_UAIR:
		if window == 1 && window_timer == 10 {
			//sound_play(asset_get("sfx_zetter_fireball_fire"),false,-4,0.5,1.05)
		}
	break;
	case AT_DATTACK:
		can_fast_fall = false;
		grav = 0.3;
		if free && window == 4 {
			set_state(PS_IDLE_AIR);
		}
	break;
}


//#region Roke Text Easter Egg
if (attack == AT_TAUNT && state_timer == 1 && down_down && get_match_setting(SET_PRACTICE)) {
    if (instance_number(oPlayer) == 2  && !t_active) {
        with (oPlayer) {
            if (id != other.id) {
                other.t_target = id;
            }
        }
        t_active = true;
        t_timer = 0;
        t_stopped = false;
        t_loop = -1;
        
        //target_text = t_prefixes;
        current_text = ["","","",""];
        var registry = reg_contents[pickRegistry()];
        
        target_text[0] = registry[1];
        target_text[1] = registry[2];
        target_text[2] = registry[3];
        target_text[3] = registry[4];
        
        t_line = 0;
        t_chars = 0;
        t_length = string_length(target_text[t_line]);
    }
}
//#endregion
#define trigger_ult_b_reverse

if (left_down && state_timer <= 5 && spr_dir == 1) || (right_down && state_timer <= 5 && spr_dir == -1) && attack_hasBReversed = false {
	hsp*=-1;
	spr_dir*=-1;
	attack_hasBReversed = true;
} else if (state_timer == 6) {
	attack_hasBReversed = false;
}

#define pickRegistry
var reg_index = 0; //0 means enemy has no registry
//code literally taken from muno gonna aks

for (var i = 0; i <= total_entries; i++){
	with(oPlayer){
		if (id != other.id && url != ""){
			if (real(url) == other.reg_contents[i,0]){
				reg_index = i;
			}
		}
	}
}

return reg_index;

#define createParticle(amt,xvar,yvar,sprite,x,y,hsp,vsp,hAccel,vAccel,alpha,alpha_rate,lifetime,uses_shader)
var ind = 0;
repeat(amt) {
    var newParticle = {
        sprite: sprite,     //sprite
        x: (x+random_func((ind++)%25,xvar,true)-floor(xvar/2))&~1,      //x
        y: (y+random_func((ind++)%25,yvar,true)-floor(yvar/2))&~1,      //y
        hsp: hsp,      //hsp
        vsp: vsp,      //vsp
        hAccel: hAccel,      //hAccel
        vAccel: vAccel,      //vAccel
        alpha: alpha,      //alpha
        alpha_rate: alpha_rate,      //alpha rate
        timer: 0,      //particle timer
        lifetime: lifetime,       //particle lifetime
        shader: uses_shader
        };
    ds_list_add(particles,newParticle);
}