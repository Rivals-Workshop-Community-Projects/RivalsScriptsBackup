x = round(x);
y = round(y);



if state != PS_DEAD hitbox_detection();



switch(state){
	
	case PS_SPAWN:
	
		var s_t_max = 21;
		
		sprite_index = player_id.spr_luma_spawn;
		image_index = state_timer / 3;
		if image_index > 6 image_index = 6;
		
		if (state_timer == s_t_max) setState(PS_IDLE);
		
		hsp -= 0.5 * sign(hsp);
	
	case PS_IDLE:
	
		if state == PS_IDLE{
			sprite_index = player_id.spr_luma_idle;
			image_index = state_timer / 6;
		}
		
		// if player_id.phone_attacking setState(PS_DEAD);
		
		if player_id.phone_attacking switch(player_id.attack){
			case AT_DSPECIAL_AIR:
				if player_id.window != 3 break;
			case AT_FSPECIAL_2:
				setAttack(AT_FSPECIAL_AIR);
				hsp = 0;
				vsp = 0;
				spr_dir = player_id.spr_dir;
				break;
		}
		
		if player_id.move_cooldown[AT_NSPECIAL_AIR]{
			setAttack(AT_NSPECIAL_AIR);
			hsp = 0;
			vsp = 0;
			with player_id{
				var hfx = spawn_hit_fx(x, y - 32, vfx_sparkles);
				hfx.depth = -6;
			}
		}
			
		
		if should_die setState(PS_DEAD);
		
		break;
	
	case PS_DEAD:
		
		var s_t_max = 15;
		
		sprite_index = player_id.spr_luma_die;
		image_index = state_timer / 5;
		
		if !hitstop{
			hsp *= 0.9;
			vsp *= 0.9;
		}
		
		if state_timer == s_t_max{
			spawn_hit_fx(x, y, 302);
			spawn_hit_fx(x, y, player_id.vfx_sparkles);
			sound_play(player_id.sfx_ssbu_luma_pop);
			instance_destroy();
			exit;
		}
		
		player_id.phone_arrow_cooldown = max(player_id.phone_arrow_cooldown, 25);
		
		player_id.max_djumps = 1;
		
		break;
	
	// case PS_RESPAWN:
	
	// 	var s_t_max = 30;
		
	// 	if (state_timer == 1){
	// 		start_x = x;
	// 		start_y = y;
	// 	}
		
	// 	end_x = player_id.x;
	// 	end_y = player_id.y - 32;
		
	// 	// spawn_hit_fx(x, y, player_id.vfx_luma_return);
		
	// 	// sprite_index = player_id.spr_vfx_luma_return;
	// 	image_index = 0;
		
	// 	// var spd = 2;
	// 	// hsp = clamp(hsp - spd * sign(x - player_id.x), -10, 10);
	// 	// vsp = clamp(vsp - spd * sign(y - (player_id.y - 32)), -10, 10);
		
	// 	var progress = ease_quadInOut(0, 1, state_timer, s_t_max);
		
	// 	x = lerp(start_x, end_x, progress);
	// 	y = lerp(start_y, end_y, progress) - sin(pi * progress) * 64;
		
	// 	if state_timer == s_t_max{
	// 		instance_destroy();
	// 		exit;
	// 	}
		
	// 	break;
	
	case PS_ATTACK_AIR:
	
		// initialising stuff...
		
		if (state_timer == 0){
			window = 1;
			window_timer = 1;
		}
		
		var new_window = 0;
		
		
		
		// general window/hitbox code
		
		with player_id{
		
			other.num_windows =
				get_attack_value(other.attack, AG_NUM_WINDOWS);
			other.win_length =
				get_window_value(other.attack, other.window, AG_WINDOW_LENGTH);
			other.win_frames =
				get_window_value(other.attack, other.window, AG_WINDOW_ANIM_FRAMES);
			other.win_frame_start =
				get_window_value(other.attack, other.window, AG_WINDOW_ANIM_FRAME_START);
			other.win_sfx =
				get_window_value(other.attack, other.window, AG_WINDOW_HAS_SFX) ? get_window_value(other.attack, other.window, AG_WINDOW_SFX) : noone;
			other.win_sfx_frame =
				get_window_value(other.attack, other.window, AG_WINDOW_SFX_FRAME);
			
			other.sprite_index =
				get_attack_value(other.attack, AG_SPRITE);
			
			other.hbox_active = 0;
			other.real_type = 0;
			
			for (var i = 1; i < get_num_hitboxes(other.attack) + 1; i++){
				if (get_hitbox_value(other.attack, i, HG_WINDOW) == other.window && other.window_timer == 1){
					other.hbox_active = 1;
					other.hbox_number = i;
					other.hbox_x = get_hitbox_value(other.attack, i, HG_HITBOX_X);
					other.hbox_y = get_hitbox_value(other.attack, i, HG_HITBOX_Y);
					reset_hitbox_value(other.attack, i, HG_HITBOX_TYPE);
					other.real_type = get_hitbox_value(other.attack, i, HG_HITBOX_TYPE);
					set_hitbox_value(other.attack, i, HG_HITBOX_TYPE, 2);
					set_hitbox_value(other.attack, i, HG_PROJECTILE_SPRITE, asset_get("empty_sprite"));
					set_hitbox_value(other.attack, i, HG_PROJECTILE_MASK, -1);
					set_hitbox_value(other.attack, i, HG_PROJECTILE_GROUND_BEHAVIOR, 1);
					set_hitbox_value(other.attack, i, HG_PROJECTILE_WALL_BEHAVIOR, 1);
					set_hitbox_value(other.attack, i, HG_PROJECTILE_ENEMY_BEHAVIOR, 1);
					set_hitbox_value(other.attack, i, HG_PROJECTILE_UNBASHABLE, 1);
					set_hitbox_value(other.attack, i, HG_PROJECTILE_DOES_NOT_REFLECT, 1);
					set_hitbox_value(other.attack, i, HG_PROJECTILE_IS_TRANSCENDENT, 1);
					set_hitbox_value(other.attack, i, HG_PROJECTILE_PARRY_STUN, 1);
					set_hitbox_value(other.attack, i, HG_EXTENDED_PARRY_STUN, 1);
					attack_end(other.attack);
				}
			}
				
		}
		
		image_index = win_frame_start + lerp(0, win_frames, max(window_timer - 1, 0) / win_length);
		
		if win_sfx && (window_timer - 2) == win_sfx_frame && !hitstop sound_play(win_sfx);
		
		// print_debug(string(window) + " / " + string(window_timer) + " / " + string(image_index))
		
		
		
		// spawn hitboxes
		
		if hbox_active && !hitstop{
			
			var hbox = create_hitbox(attack, hbox_number, round(x) + hbox_x * spr_dir, round(y) + hbox_y);
			hbox.article_owner = self;
			
			hbox.true_type = real_type;
			hbox.type = 2;
			hbox.offset_x = hbox_x;
			hbox.offset_y = hbox_y;
			hbox.spr_dir = spr_dir;
			
			var hfx = spawn_hit_fx(
				hbox.x,
				hbox.y,
				player_id.vfx_sparkles
				);
			hfx.depth = -6;
			
			if hbox.true_type == 1{
			}
			
		}
		
		
		
		// attack_update
		
		var dir = 0;
		
		switch(attack){
			
			case AT_FSPECIAL_AIR:
			
				if (window == 1 && window_timer == 1) sound_play(player_id.sfx_ssbu_rosa_swing_1);
				if (window == 1 && window_timer == win_length) sound_play(player_id.sfx_ssbu_luma_shoot);
				
				player_id.phone_arrow_cooldown = 25;
				
				player_id.arrow_free_refresh = 0;
				
				break;
			
			case AT_NSPECIAL_AIR:
			
				if (window == 1 && window_timer == 0){
					loops = 0;
					// var pitch = lerp(1, 2, (clamp(distance_to_object(player_id), 64, 320) - 64) / (320 - 64))
					// sound_play(player_id.sfx_mario_galaxy_pull_star, 0, noone, 1, pitch);
				}
				
				if (window == 3 && window_timer == win_length){
					window_timer = 0;
					loops++;
				}
				
				if (window == 3 && (window_timer == 1 || window_timer == win_length / 2)) || (window == 2 && window_timer == 1){
					with player_id{
						var hfx = spawn_hit_fx(x, y - 32, vfx_sparkle);
						hfx.depth = -6;
					}
				}
				
				if place_meeting(x, y, player_id) || place_meeting(x, y - 32, player_id) || !player_id.special_down || player_id.special_pressed || player_id.state_cat == SC_HITSTUN || loops > 5 || player_id.state == PS_WALL_JUMP || player_id.state == PS_AIR_DODGE || player_id.was_parried || should_die || player_id.phone_attacking && (player_id.attack == AT_DAIR && player_id.window == 1 || player_id.attack == AT_USPECIAL){
					window_timer = win_length + 1;
					player_id.max_djumps = 1;
				}
				
				else with player_id{
					
					var dist = point_distance(x, y, other.x, other.y);
					var ang = point_direction(x, y, other.x, other.y);
					var spd = lerp(1, 0.2, min(dist, 400) / 400);
					
					do_a_fast_fall = 0;
					
					if !free{
						free = 1;
						if place_meeting(x, y + 2, asset_get("par_jumpthrough")) && vsp > 0 y += 2;
						else vsp = -1;
					}
					
					if y > phone_blastzone_t vsp -= gravity_speed * free * (0.8 + 0.2 * spd);
					max_djumps = 0;
					
					if point_distance(0, 0, hsp, vsp) < 12 && !hitpause{
						hsp += lengthdir_x(spd, ang);
						vsp += lengthdir_y(spd, ang);
					}
				}
				
				player_id.phone_arrow_cooldown = 600;
				
				player_id.arrow_free_refresh = 1;
				
				break;
			
		}
		
		
		
		// end-of-frame housekeeping
		
		if !hitstop window_timer++;
		
		if window_timer > win_length{
			if (window == num_windows) setState(PS_DEAD);
			else setWindow(window + 1);
		}
		
		if new_window setWindow(new_window);
		
		break;
	
}



if !hitstop state_timer++;
exist_timer++;



#define setState(n_s)

state = n_s;
state_timer = 0;

walking = 0;

sound_stop(player_id.sfx_mario_galaxy_pull_star);



#define setWindow(n_w)

window = n_w;
window_timer = 1;



#define setAttack(n_a)

attack = n_a;
setState(PS_ATTACK_AIR);
window = 1;



#define hitbox_detection // by supersonic
//estimated like 80% accurate imo
if hit_lockout <= 0 {
    var article = self;
    //reset hitbox groups when necessary
    with (oPlayer)
        if (state == clamp(state, 5, 6) && window == 1 && window_timer == 1) {
            other.hbox_group[@ player-1][@ attack] = array_create(10,0);
            //with other print_debug(`${article}: reset hb group for ${other.player},${other.attack}`);
        }
    
    var currentHighestPriority = noone;
    with (pHitBox) if player != other.player
        if `hit_${article}` not in self
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
        spawn_hit_fx(other.x+hit_effect_x,other.y+hit_effect_y,hit_effect);
        //this handles the knockback; hitstun, speed, etc.
        with other {
            //print_debug(`hit_${article}`);
            setState(PS_DEAD);
            player_id.phone_arrow_cooldown = 25;
            player_id.arrow_free_refresh = 0;
            hitstun = (other.kb_value * 4 * ((kb_adj - 1) * 0.6 + 1) + other.damage * 0.12 * other.kb_scale * 4 * 0.65 * kb_adj) + 12;
            hitstun_full = hitstun;
            
            hit_lockout = other.no_other_hit;
            // for you archy. 
            // if other.force_flinch && !other.free orig_knock = 0; //uncomment this line for enemies
            if other.force_flinch orig_knock = 0.3; //comment out this line for enemies.
            else orig_knock = other.kb_value + other.damage * other.kb_scale * 0.12 * kb_adj;
            kb_dir = get_hitbox_angle(other);
            
            hsp = lengthdir_x(orig_knock, kb_dir);
            vsp = lengthdir_y(orig_knock, kb_dir);
            
            hit_player_obj = other.player_id;
            hit_player_num = other.player;
        }
        //apply hitpause (where applicable)
        var desired_hitstop = hitpause + damage * hitpause_growth * 0.05;
        if type == 1 with player_id {
            old_vsp = vsp;
            old_hsp = hsp;
            hitpause = true;
            has_hit = true;
            if hitstop < desired_hitstop {
                hitstop = desired_hitstop;
                hitstop_full = desired_hitstop;
            }
        }
        else if !enemies hitbox_timer = length;
        other.hitstop = floor(desired_hitstop);
        if hbox_group != -1 other.hbox_group[@ orig_player-1][@ attack][@ hbox_group] = 1;
    }
} else hit_lockout--;