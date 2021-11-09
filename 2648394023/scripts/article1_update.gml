



switch(state){
	case PS_SPAWN:
		var s_t_max = 8;
		fake_sprite_index = sprite_get("prism_spawn");
		fake_image_index = (state_timer > 3);
		if state_timer == s_t_max setState(PS_IDLE);
		get_hit();
		break;
	case PS_IDLE:
		fake_y = sin(state_timer / 20) * 2;
		fake_image_angle = sin(state_timer / 30) * 5;
		
		fake_sprite_index = sprite_get("prism_idle");
		fake_image_index = anim_timer / 4 % 9;
		if fake_image_index < 1{
			anim_timer -= 0.9;
		}
		anim_timer++;
		
		if random_func(0, 32, true) > 30{
			var h = spawn_hit_fx(x + random_func(1, 64, true) - 32, y + random_func(2, 64, true) - 32, player_id.vfx_sparkle);
			h.depth = depth;
		}
		
		if player_id.phone_attacking && player_id.attack == AT_FSPECIAL{
			setState(PS_DEAD);
		}
		with pHitBox if player_id == other.player_id && attack == AT_FSPECIAL{
			setState(PS_DEAD);
		}
		with obj_article1 if player_id == other.player_id && exist_timer < other.exist_timer{
			setState(PS_DEAD);
		}
		get_hit();
		break;
	case PS_DEAD:
		var s_t_max = 8;
		fake_sprite_index = sprite_get("prism_die");
		fake_image_index = (state_timer > 3);
		if state_timer == s_t_max{
			spawn_hit_fx(x, y, player_id.vfx_sparkle);
			instance_destroy();
			exit;
		}
		break;
	case PS_ATTACK_AIR: // projectile
		fake_sprite_index = sprite_get("prism_attack");
		var s_t_max = 0;
		
		fake_x = 0;
		
		switch(window){
			case 1: // chargin' up
				s_t_max = 32;
				if uspecialing_player != noone{
					ir_loops_left = 0;
				}
				fake_image_index = state_timer / 4;
				if !(ir_loops_left && player_id.ir){
					fake_x = sin(state_timer * max(1, photon_charge)) * photon_charge;
				}
				if state_timer == s_t_max - 5{
					if player_id.ir && ir_loops_left{
						state_timer = 4;
						ir_loops_left--;
					}
					
					if uspecialing_player != noone{
						uspecialing_player.window_timer = uspecialing_player.phone_window_end - 6;
					}
				}
				if grabbed_player != noone{
					if grabbed_player.state != PS_HITSTUN{
						grabbed_player = noone;
					}
					else{
						grabbed_player.force_depth = 1;
						grabbed_player.depth = depth + 1;
						grabbed_player.x = lerp(grabbed_player.x, x, 0.4);
						grabbed_player.y = lerp(grabbed_player.y, y + grabbed_player.char_height / 2, 0.4);
						grabbed_player.hitstop = 4;
						grabbed_player.hsp = 0;
						grabbed_player.vsp = 0;
					}
				}
				if state_timer >= s_t_max - 1{
					window = 2;
					state_timer = 0;
					sound_play(asset_get("sfx_clairen_fspecial_dash"));
					if grabbed_player != noone{
						sound_play(asset_get("sfx_ell_utilt_fire"));
						sound_play(asset_get("sfx_ell_utilt_cannon"));
					}
				}
				else get_hit();
				break;
			case 2: // shootin'
				s_t_max = 12;
				fake_image_index = state_timer / 4 + 8;
				
				if state_timer == 1{
					if grabbed_player != noone photon_charge = -1;
					
					var big = 0;
					var const = 1.05946309436; // 12th root of 2; important music constant
					
					if photon_charge >= 4{
						photon_charge = 0;
						big = 1;
						sound_play(asset_get("mfx_star"), 0, noone, 1, power(const, -2));
						sound_play(asset_get("mfx_star"), 0, noone, 1, power(const, 1));
						sound_play(asset_get("mfx_star"), 0, noone, 1, power(const, 5));
					}
					else if photon_charge != -1{
						photon_charge--;
					
						var pitch = power(const, photon_charge * 2);
						sound_play(asset_get("mfx_star"), 0, noone, 1, pitch);
					}
					
					if photon_charge != -1{
						var h = create_hitbox(AT_NSPECIAL, player_id.ir + 1 + big * 2, x, y + round(sin(photon_charge * 3) * 25));
						
						variable_instance_set(h, `hit_${self}`, true);
						
						var p_ang = attack_direction;
						var spd = abs(h.hsp);
						h.hsp = lengthdir_x(spd, p_ang);
						h.vsp = lengthdir_y(spd, p_ang);
						h.x += h.hsp;
						h.y += h.vsp;
						if abs(h.hsp) h.spr_dir = sign(h.hsp);
						
						h.player = attack_owner;
					}
				}
				
				if (state_timer == s_t_max - 5 && photon_charge){
					state_timer = 0;
				}
				
				if state_timer >= s_t_max - 1{
					setState(PS_DEAD);
				}
				break;
		}
		break;
}



if !hitstop state_timer++;
exist_timer++;



#define get_hit

var h = hitbox_detection();

if h != noone{
	
	var override_angle = -1;
	with h.player_id{
		if "HG_MUNO_OBJECT_LAUNCH_ANGLE" in self{
			if get_hitbox_value(h.attack, h.hbox_num, HG_MUNO_OBJECT_LAUNCH_ANGLE){
				override_angle = get_hitbox_value(h.attack, h.hbox_num, HG_MUNO_OBJECT_LAUNCH_ANGLE);
				override_angle = point_direction(0, 0, lengthdir_x(1, override_angle) * h.spr_dir, lengthdir_y(1, override_angle));
			}
		}
	}
	
	if state != PS_ATTACK_AIR{
		setState(PS_ATTACK_AIR);
		photon_charge = 0;
	}
	
	if h.player_id.muno_char_id == player_id.muno_char_id{
		var l_gim = 0;
		with player_id if get_hitbox_value(h.attack, h.hbox_num, HG_LIGHT_GIMMICK) l_gim = 1;
		if l_gim photon_charge = 4;
	}
	
	sound_play(asset_get("sfx_ori_ustrong_charge"));
	
	window = 1;
	state_timer = 0;
	ir_loops_left = 2;
	photon_charge++;
	if photon_charge == 4{
		spawn_hit_fx(x, y, player_id.vfx_wavelengths[player_id.ir]);
	}
	
	attack_owner = h.player;
	attack_direction = 0;
	
	uspecialing_player = noone;
	
	var target = noone;
	
	if h.player_id.muno_char_id == player_id.muno_char_id && h.attack == AT_USPECIAL{
		with h.player_id{
			destroy_hitboxes();
			attack_end();
			window = 4;
			window_timer = 0;
			x = other.x;
			y = other.y + 20;
			hsp = 0;
			vsp = 0;
		}
		
		ir_loops_left = 0;
		
		var angle = h.player_id.joy_pad_idle ? 90 : h.player_id.joy_dir;
		angle += 180 * h.player_id.shield_down;
		
		h.player_id.move_angle = angle;
		attack_direction = angle + 180;
	
		var hfx = spawn_arrow(angle, 0);
		
		uspecialing_player = h.player_id;
	}
	
	if uspecialing_player == noone{
	
		if !player_id.ir{
			target = aim_for_player(attack_owner);
			if target != noone{
				attack_direction = point_direction(x, y, target.x, target.y - target.char_height / 2);
			}
			
		}
		
		if target == noone{
			var ang = get_hitbox_angle(h);
			// obj launch angle
			if override_angle != -1{
				attack_direction = override_angle;
			}
			// right
			else if ang == clamp(ang, 0, 65){
				attack_direction = 0;
			}
			// up-right
			else if ang == clamp(ang, 65, 80){
				attack_direction = 45;
			}
			// up
			else if ang == clamp(ang, 80, 100){
				attack_direction = 90;
			}
			// up-left
			else if ang == clamp(ang, 100, 115){
				attack_direction = 135;
			}
			// left
			else if ang == clamp(ang, 115, 180){
				attack_direction = 180;
			}
			// down-left
			else if ang == clamp(ang, 180, 240){
				attack_direction = 225;
			}
			// down
			else if ang == clamp(ang, 240, 300){
				attack_direction = 270;
			}
			// down-right
			else if ang == clamp(ang, 300, 0){
				attack_direction = 315;
			}
		}
	}
	
	var const = 1.05946309436; // 12th root of 2; important music constant
	var pitch = power(const, min(photon_charge - 1, 3) * 2);
	sound_play(asset_get("mfx_star"), 0, noone, 1, pitch);
	
	spawn_arrow(attack_direction, 1);
	
	if !h.enemies{
		instance_destroy(h);
	}
}

var was_grabbed = grabbed_player;

with oPlayer if state == PS_HITSTUN && glare_status_id != noone && !hitpause && place_meeting(x, y, other){
	other.grabbed_player = self;
}

if grabbed_player != noone{
	if was_grabbed != grabbed_player{
		if state != PS_ATTACK_AIR{
			uspecialing_player = noone;
		}
		setState(PS_ATTACK_AIR);
		window = 1;
		state_timer = 0;
		ir_loops_left = 2;
		photon_charge = 0;
	
		grabbed_player.hitstop = 4;
		grabbed_player.hitpause = 1;
		grabbed_player.old_hsp = grabbed_player.hsp;
		grabbed_player.old_vsp = grabbed_player.vsp;
		grabbed_player.hsp = 0;
		grabbed_player.vsp = 0;
		grabbed_player.orig_knock = point_distance(0, 0, grabbed_player.old_hsp, grabbed_player.old_vsp);
		
		if !player_id.ir{
			
			grabbed_player.old_hsp *= -1;
			grabbed_player.old_vsp *= -1;
			if abs(grabbed_player.old_hsp) * 2 > abs(grabbed_player.old_vsp){
				grabbed_player.old_vsp = min(grabbed_player.old_vsp, 0);
			}
			
			// var spd = point_distance(0, 0, grabbed_player.old_hsp, grabbed_player.old_vsp);
			// var target = aim_for_player(grabbed_player.player);
			// if target != noone{
			// 	grabbed_player.old_hsp = lengthdir_x(spd, point_direction(x, y, target.x, target.y - target.char_height / 2));
			// 	grabbed_player.old_vsp = lengthdir_y(spd, point_direction(x, y, target.x, target.y - target.char_height / 2));
			// }
		}
		
		spawn_arrow(point_direction(0, 0, grabbed_player.old_hsp, grabbed_player.old_vsp), 1);
	
		var const = 1.05946309436; // 12th root of 2; important music constant
		sound_play(asset_get("mfx_star"), 0, noone, 1, power(const, -2));
		sound_play(asset_get("mfx_star"), 0, noone, 1, power(const, 1));
		sound_play(asset_get("mfx_star"), 0, noone, 1, power(const, 5));
		sound_play(asset_get("sfx_ori_ustrong_charge"));
	}
}



#define spawn_arrow(angle, register_despawn)

if instance_exists(last_arrow){
	last_arrow.hit_length = 0;
}
	
var hfx = spawn_hit_fx(x, y, player_id.vfx_stasis_arrow);
hfx.spr_dir = 1;
hfx.draw_angle = angle - 90;
hfx.depth = depth + 1;

if register_despawn{
	last_arrow = hfx;
}

return hfx;



#define aim_for_player(excluded)

var target = noone;
var record = 1000000;

with oPlayer{
	if (get_player_team(player) != get_player_team(excluded)){
		var d = point_distance(x, y - char_height / 2, other.x, other.y);
		if d < record{
			record = d;
			target = self;
		}
	}
}
if target != noone{
	if instance_exists(last_reticle){
		last_reticle.hit_length = 0;
	}
	var h = spawn_hit_fx(target.x, target.y - target.char_height / 2, player_id.vfx_prism_reticle);
	h.depth = target.depth - 10;
	last_reticle = h;
}
return target;



#define setState(n_s)

state = n_s;
state_timer = 0;

if state == PS_IDLE{
	anim_timer = 0;
}
else{
	fake_x = 0;
	fake_y = 0;
}



// supersonic

#define hitbox_detection
//estimated like 80% accurate imo
var currentHighestPriority = noone;

var article = self;
//reset hitbox groups when necessary
with (oPlayer)
	if (state == clamp(state, 5, 6) && window == 1 && window_timer == 1) {
		other.hbox_group[@ player-1][@ attack] = array_create(10,0);
		//with other print_debug(`${article}: reset hb group for ${other.player},${other.attack}`);
	}

with (pHitBox) 
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
	other.hitstop = floor(desired_hitstop);
	if hbox_group != -1 other.hbox_group[@ orig_player-1][@ attack][@ hbox_group] = 1;
}

return currentHighestPriority;