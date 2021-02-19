switch(state){
	
	case 0: // Spawn
		if image_index + 0.2 > image_number{
			setState(1);
			orig_x = x;
			orig_y = y;
		}
		else image_index += 0.2;
		
		screenBorder();
		break;
	
	case 1: // Idle
		switch(wisp_type){
			case 0:
				sprite_index = player_id.spr_capsule_idle_laser;
				break;
			case 1:
				sprite_index = player_id.spr_capsule_idle_rocket;
				break;
			case 2:
				sprite_index = player_id.spr_capsule_idle_drill;
				break;
		}
		image_index += 0.15;
		
		var nspecialing = 0;
		
		with player_id nspecialing = attacking && attack == AT_NSPECIAL && (free && window == 3 && !loops || !free && (window == 4 || window == 5 || window == 7)) && window_timer == 1;
		// with player_id nspecialing = attacking && attack == AT_NSPECIAL && window == (free ? 3 : 2) && loops == (free ? 0 : 4) && window_timer == 1;
		with player_id nspecialing = attacking && attack == AT_NSPECIAL && free && window == 3 && window_timer == window_end - 1 && !special_down;
		
		if nspecialing && !moving_timer && false{
			moving_timer = 1;
			
			old_x = orig_x;
			old_y = orig_y;
			new_x = player_id.x;
			new_y = player_id.y;
			
			spawn_hit_fx(orig_x, orig_y - 32, 194);
		}
		
		if moving_timer{
			var m_t_max = 30;
			
			print_debug(string(moving_timer))
			
			orig_x = ease_quadOut(round(old_x), round(new_x), moving_timer, m_t_max);
			orig_y = ease_quadOut(round(old_y), round(new_y), moving_timer, m_t_max);
			
			moving_timer++;
			
			if moving_timer > m_t_max moving_timer = 0;
		}
		
		x = orig_x;
		y = orig_y;
		
		hitbox_detection();
		
		y = orig_y + sin(state_timer / 30) * 10;
		break;
	
	case 2: // Despawn
		switch(wisp_type){
			case 0:
				sprite_index = player_id.spr_capsule_die_laser;
				break;
			case 1:
				sprite_index = player_id.spr_capsule_die_rocket;
				break;
			case 2:
				sprite_index = player_id.spr_capsule_die_drill;
				break;
		}
		if image_index + 0.2 > image_number{
			instance_destroy();
			exit;
		}
		else image_index += 0.2;
		break;
	
	case 3: // Explode
		switch(wisp_type){
			case 0:
				sprite_index = player_id.spr_capsule_explode_laser;
				break;
			case 1:
				sprite_index = player_id.spr_capsule_explode_rocket;
				break;
			case 2:
				sprite_index = player_id.spr_capsule_explode_drill
				break;
		}
		
		if image_index + 0.2 > image_number{
			instance_destroy();
			exit;
		}
		else if !hitstop{
			image_index += 0.2;
			hsp -= sign(hsp);
			vsp -= sign(vsp);
		}
		
		if (image_index == 2){
			create_hitbox(AT_EXTRA_1, 1, round(x), round(y - 32));
			sound_play(player_id.sfx_sonic_laser_end);
			hsp = 0;
			vsp = 0;
		}
		
		if place_meeting(x + hsp, y, asset_get("par_block")) hsp = 0;
		if place_meeting(x, y + vsp, asset_get("par_block")) vsp = 0;
}

state_timer++;



if should_destroy instance_destroy();



#define screenBorder()

var border_x = 50;
var border_y = 80;
var clamped_x = clamp(x, border_x, room_width - border_x);
var clamped_y = clamp(y, border_y, room_height - border_y + 40);
var amt = 0.25;
if x != clamped_x{
    hsp = 0;
    x = lerp(x, clamped_x, amt);
}
if y != clamped_y{
    vsp = 0;
    y = lerp(y, clamped_y, amt);
}



#define setState(new)

state = new;
state_timer = 0;



// BY SUPERSONIC

#define hitbox_detection
//estimated like 80% accurate imo

var article = self;

if hit_lockout <= 0 {
    var article = self;
    //reset hitbox groups when necessary
    with (oPlayer)
        if (state == clamp(state, 5, 6) && window == 1 && window_timer == 1) {
            other.hbox_group[@ player-1][@ attack] = array_create(10,0);
            //with other print_debug(`${article}: reset hb group for ${other.player},${other.attack}`);
        }
    
    var currentHighestPriority = noone;
    with (pHitBox) 
        if `hit_${article}` not in self && player_id == other.player_id && type == 1
            if place_meeting(x,y,other) && (groundedness == 0 || groundedness == 1+free) && hit_priority != 0 {
                if hbox_group == -1 || ( hbox_group != -1 && other.hbox_group[@ orig_player-1][@ attack][@ hbox_group] == 0) {
                    //hit
                    if currentHighestPriority != noone {
                        if currentHighestPriority.hit_priority < hit_priority
                            currentHighestPriority = self;
                    } else {
                        currentHighestPriority = self;
                    }
                    
                    variable_instance_set(self, `hit_${article}`, true);
                }
            } else if (place_meeting(x,y,other) && hbox_group != -1 && other.hbox_group[@ orig_player-1][@ attack][@ hbox_group] == 1) || (hit_priority == 0) {
                //prevent from running hit detection for optimization sake
                //with other print_debug("hit but also not");
                variable_instance_set(self, `hit_${article}`, true);
            }
    
    if instance_exists(currentHighestPriority) with currentHighestPriority {
        sound_play(sound_effect);
        spawn_hit_fx(other.x+hit_effect_x,(other.y-32)+hit_effect_y,hit_effect);
        //this handles the knockback; hitstun, speed, etc.
        with other {
            //print_debug(`hit_${article}`);
            setState(3);
            image_index = 0;
            sound_play(player_id.sfx_sonic_shield_thunder_equip, 0, noone, 1, 1.3);
            
            hit_player_obj = other.player_id;
            hit_player_num = other.player;
            
            var dir = 0;
            var hitbox = other;
            
            with player_id dir = get_hitbox_value(hitbox.attack, hitbox.hbox_num, HG_MUNO_OBJECT_LAUNCH_ANGLE);
            
            kb_dir = (dir != 0) ? dir : get_hitbox_angle(other);
            
            var str = 15;
            
            hsp = lengthdir_x(str, kb_dir);
            vsp = lengthdir_y(str, kb_dir);
            
            if dir hsp *= other.spr_dir;
        }
        //apply hitpause (where applicable)
        var desired_hitstop = hitpause + damage * hitpause_growth * 0.05;
        if type == 1 with player_id {
            old_vsp = vsp;
            old_hsp = hsp;
            hitpause = true;
            has_hit = true;
            
            switch(other.attack){
            	case AT_NSPECIAL:
            		sound_stop(sfx_sonic_spindash_charge);
            	case AT_FSPECIAL:
            	case AT_USPECIAL:
            	case AT_DSPECIAL:
            		if phone_invis_cooldown break;
            		attack_end();
            		var was_nspecial = (attack == AT_NSPECIAL);
            		switch(article.wisp_type){
            			case 0:
            				attack = AT_FSPECIAL;
            				laser_angle = 0;
            				break;
            			case 1:
            				attack = AT_USPECIAL;
            				laser_angle = 90;
            				break;
            			case 2:
            				attack = AT_DSPECIAL;
            				laser_angle = 270;
            				break;
            		}
            		has_hit = false;
            		window = 1;
            		window_timer = get_window_value(attack, window, AG_WINDOW_LENGTH) - 5;
					phone_invis_cooldown = 9999;
            		from_capsule = true;
            		x = article.orig_x;
            		y = article.orig_y - 10;
            		if was_nspecial article.should_destroy = 1;
            		else article.wisp_type = next_capsule_type;
            		article.state = 2;
            		article.state_timer = 0;
            		article.hsp = 0;
            		article.vsp = 0;
            		desired_hitstop = 10;
            		destroy_hitboxes();
            		break;
            }
            
            if hitstop < desired_hitstop {
                hitstop = desired_hitstop;
                hitstop_full = desired_hitstop;
            }
        }
        other.hitstop = floor(desired_hitstop);
        if hbox_group != -1 other.hbox_group[@ orig_player-1][@ attack][@ hbox_group] = 1;
    }
} else hit_lockout--;