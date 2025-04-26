#macro MINION_AT_SAVAGE_SCREAM 5
#macro MINION_AT_WEAK_SCREAM 4
#macro MINION_AT_BACKWARD 0
#macro MINION_AT_FORWARD 1
#macro MINION_AT_UPWARD 2
#macro MINION_AT_DOWNWARD 3
#macro MINION_AT_BIG_SCREAM 5
#macro MINION_AT_HITSTUN_INTERCEPTION 6
#macro MINION_AT_USPECIAL_INTERCEPTION 7

// just for good measure
if hitstop < 0 hitstop = 0;

if heal_effect != -1 {
	heal_effect = max(0, heal_effect-heal_effect_decay)
	
	if heal_effect == 0 {
		heal_effect = -1;
	}
}

incubation_to_show = lerp(incubation_to_show, incubation, 0.1)

lock_state = false;
player_id.move_cooldown[AT_NSPECIAL] = 3;

if hitstop == 0 {
	var on_ground = instance_position(x,y-1, asset_get("par_block")) or instance_position(x,y-1, asset_get("par_jumpthrough"))
	
	can_be_grounded = (vsp >= 0 && (!free or on_ground));
	vsp = !free or on_ground ? 0 : min(vsp + grav, max_fall_speed);
	decay_grab_cooldown = max(0, decay_grab_cooldown -1)
	invinc_timer = max(0, invinc_timer - 1)
}

disabled_timer = max(0, disabled_timer - 1)
if disabled_timer > 0 {
	player_id.move_cooldown[AT_NSPECIAL_2] = 3;
}

var is_minion = false;
var active = false;

switch (state) {
    case PS_IDLE:
        hsp *= 0.9;
        is_minion = true;
        player_id.minion_attack_forgiveness_timer = 0
    break;
    case PS_IDLE_AIR:
    	if state_timer == 0 player_id.minion_control_timer = 0;
    	
        active = true;
        hsp *= 0.87;
        if player_id.right_down-player_id.left_down == spr_dir {
            setState(PS_ROLL_FORWARD)
        }
        else if player_id.right_down-player_id.left_down == -spr_dir {
            setState(PS_ROLL_BACKWARD)
        }
    break;
    case PS_ROLL_BACKWARD:
    active = true;
    hsp = lerp(hsp, -minion_speed*spr_dir, 0.1);
    if (player_id.right_down - player_id.left_down == 0) {
        setState(PS_IDLE_AIR)
    }
    else if (player_id.right_down-player_id.left_down == spr_dir) {
        setState(PS_ROLL_FORWARD)
    }
    break;
    case PS_ROLL_FORWARD:
    active = true;
    hsp = lerp(hsp, minion_speed*spr_dir, 0.1);
    if (player_id.right_down - player_id.left_down == 0) {
        setState(PS_IDLE_AIR)
    }
    else if (player_id.right_down-player_id.left_down == -spr_dir) {
        setState(PS_ROLL_BACKWARD)
    }
    break;
    case PS_WRAPPED:
    break;
    case PS_SPAWN:
        if state_timer == 5 {
            sound_play(asset_get("sfx_ori_charged_flame_release"), false, noone, 1, 0.9)
            sound_play(asset_get("sfx_kragg_rock_pillar"), false, noone, 0.6, 1.1)
        }
    
        if state_timer == 7 {
            create_hitbox(AT_NSPECIAL, 2, x, y - 66)
        }
    break;
    case PS_BURIED:
    	var reward = 0;
    	darken_timer = min(1, darken_timer+0.08);
    	
    	if get_gameplay_time() mod 10 == 0 and incubation == incubation_max {
    		var xx = x - 20 + random_func(4, 40, true)
    		var yy = y - random_func(8, 80, true)
    		
    		var side = sign(x - xx);
    		var part = spawn_hit_fx(xx, yy, player_id.decay_particles)
    		var d = 90 - (side*random_func(9, 180, true))
    		part.hsp = lengthdir_x(4, d);
    		part.vsp = lengthdir_y(4, d)
    	}
    	
    	with oPlayer {
    		if self == other.player_id || decay_info.player != other.player_id.player continue;
    		
    		reward += other.incubation_decay_reward;
    	}
    
    	if hitstop == 0 {
    		if incubation_growth_cooldown == 0 {
	    		var last_incubation = incubation;
	        	incubation = min(incubation_increment + incubation + reward, incubation_max);
    		}
    		else {
    			incubation_growth_cooldown = max(0, incubation_growth_cooldown-1)
    		}
    	}
        
        if last_incubation != incubation && incubation == incubation_max {
        	sound_play(asset_get("mfx_star"))
        }
        
        var can_do_big_scream = false;
        if incubation == incubation_max {
        	with oPlayer {
        		if self == other.player_id continue;
        		
        		if state_cat == SC_HITSTUN and place_meeting(x + hsp, y + vsp, other) and decay_info.player == other.player_id.player {
        			can_do_big_scream = true;
        			break;
        		}
        	}
        	
        	if can_do_big_scream {
        		setAttack(MINION_AT_BIG_SCREAM)
        	}
        }
        
    break;
    case PS_ATTACK_GROUND:
    	disabled_timer = 0;
        player_id.move_cooldown[AT_NSPECIAL] = 30;
        is_minion = true;
        hsp *= 0.8
        
        var atk_transition = player_id.special_down ? PS_IDLE_AIR : PS_WRAPPED;
        switch (attack) {
            case MINION_AT_BACKWARD:
                if hitstop != 0 break;
                
                switch window {
                    case 0:
                        if window_timer == 1 {
                            sound_play(sound_get("sfx_deracine_gore2"), false, noone, 1.0, 1.2)
                        }
                    break;
                    case 1:
                        hsp = -spr_dir * 3;
                        if window_timer == 1  {
                            sound_play(asset_get("sfx_boss_shine"), false, noone, 1.0, 0.8)
                        }
                        if window_timer == 4  {
                            sound_play(asset_get("sfx_swipe_heavy2"))
                        }
                    break;
                }                
            break;
            case MINION_AT_DOWNWARD:
                if hitstop != 0 break;
                
                switch window {
                    case 0:
                        switch window_timer {
                            case 4:
                                sound_play(sound_get("sfx_deracine_gore2"))
                            break;
                            case 8:
                                sound_play(asset_get("sfx_boss_shine"), false, noone, 1.0, 1.0)
                            break;
                            case 25:
                                sound_play(asset_get("sfx_swipe_medium1"))
                            break;
                        }
                    break;
                    case 1:
                        switch window_timer {
                            case 8:
                            case 16:
                                sound_play(asset_get("sfx_swipe_medium2"))
                            break;
                            case 24:
                                sound_play(asset_get("sfx_swipe_heavy2"))
                            break;
                        }                    
                    break;
                }
            break;
            case MINION_AT_FORWARD:
                if hitstop != 0 break;
                switch window {
                case 0:
                    if window_timer == 2 {
                        sound_play(sound_get("sfx_deracine_gore1"))
                    }
                    if window_timer == 4 {
                        sound_play(asset_get("sfx_boss_shine"), false, noone, 1.0, 0.9)
                    }
                break;
                case 1: 
                    hsp =9*spr_dir
                    if window_timer == 6 {
                        sound_play(sound_get("sfx_deracine_swing1"))
                    }
                break;
                }
            break;
            case MINION_AT_UPWARD:
                if hitstop != 0 break;
                switch window {
                case 0:
                        if window_timer == 2 {
                            sound_play(sound_get("sfx_deracine_gore1"), false, noone, 1.0, 1.1)
                        }
                        if window_timer == 12 {
                            sound_play(asset_get("sfx_boss_shine"), false, noone, 1.0, 1.1)
                        }
                        if window_timer == 16 {
                            sound_play(asset_get("sfx_hod_fspecial"),false,noone,0.8);
		    	            sound_play(asset_get("sfx_birdclap"),false,noone,1.0,0.7);
                        }
                    break;
                }
            break;
            case MINION_AT_WEAK_SCREAM:
            	atk_transition = player_id.special_down ? PS_PARRY : PS_IDLE;
            	switch window {
                    case 0:
                        if window_timer == 10 {
                            sound_play(asset_get("sfx_kragg_spike"), false, noone, 1.0, 0.9)
                        }
                    break;
                    case 2:
                    	if window_timer == 1 {
                            sound_play(asset_get("sfx_hod_nspecial"), false, noone, 1.0, 0.9)
                            
                        }
                        if window_timer == 6 {
                            sound_play(sound_get("qoedil_grunt"), false, noone, 0.7, 0.8)
                            sound_play(asset_get("sfx_hod_charged_uspecial_hit"), false, noone, 1.0, 0.9)
                            
                            
                        }
                    break;
                }          
                if window == 4 && window_timer == 24{
                	spawn_hit_fx(x,y,player_id.tomb_vfx);
                }
                if window == 5 {
                    minion_offset_y = ease_quadOut(0, minion_offset_max_y, window_timer, minion_attacks[ attack ].windows[ window ].length - 1)
                }
            break;
            case MINION_AT_SAVAGE_SCREAM:
                atk_transition = player_id.special_down ? PS_PARRY : PS_IDLE;
                switch window {
                case 0:
                        if window_timer == 10 {
                            sound_play(asset_get("sfx_kragg_spike"), false, noone, 1.0, 0.9)
                        }
                    break;
                    case 2:
                    	if window_timer == 4 {
                            sound_play(asset_get("sfx_hod_nspecial"), false, noone, 1.0, 0.9)
                            
                        }
                        if window_timer == 9 {
                            sound_play(sound_get("qoedil_ruuugh"), false, noone, 1.0, 0.9)
                            sound_play(asset_get("sfx_hod_charged_uspecial_hit"), false, noone, 1.0, 0.9)
  							sound_play(asset_get("sfx_ori_ustrong_launch"), false, noone, 1.0, 1.0)
                            
                        }
                    break;
                }   
                if window == 4 && window_timer == 24{
                	spawn_hit_fx(x,y,player_id.tomb_vfx);
                }
                if window == 5 {
                    minion_offset_y = ease_quadOut(0, minion_offset_max_y, window_timer, minion_attacks[ attack ].windows[ window ].length - 1)
                }
            break;
            case MINION_AT_HITSTUN_INTERCEPTION:
            	player_id.minion_control_timer = -1;
            	player_id.minion_attack_forgiveness_timer = 0;
            	atk_transition = player_id.special_down ? PS_PARRY : PS_IDLE;
            	
            	if instance_exists(grabbed_player) {
            		grabbed_player.x = lerp(grabbed_player.x, x + (grabbed_coords.x*spr_dir), 0.1);
            		grabbed_player.y = lerp(grabbed_player.y, y + grabbed_coords.y, 0.1);
            	}
            	
            	switch window {
            		 case 0:
            			if window_timer == 2{
            				sound_play(asset_get("sfx_burnapplied"), false, noone, 1.0, 0.9)
            				sound_play(asset_get("sfx_hod_fspecial"),false,noone,0.8);
            			}
            		break;
            		case 1:
	            		if window_timer >= minion_attacks[ attack ].windows[ window ].length - 1 and has_hit {
		            		window = 3;
		            		window_timer = -1;
            				sound_play(sound_get("sfx_deracine_energy3"), false, noone, 1, 0.8)
            				sound_play(sound_get("sfx_deracine_extinguish"), false, noone, 1, 0.7)
	            		}            			
            		 break;
            		 case 2:
            			if window_timer >= minion_attacks[ attack ].windows[ window ].length - 1 {
            				endAttack(false);
            			} 
            		 break;
            		 case 3:
            			if window_timer == 2{
            				sound_play(asset_get("sfx_boss_fireball"), false, noone, 0.9, 0.9)
            			}
            		 break;
            		 //case 4:
            			//if window_timer == 2{
            				//sound_play(asset_get("sfx_boss_fireball"), false, noone, 0.9, 1.1)
            			//}
            			//if window_timer == 6{
            				//sound_play(asset_get("sfx_boss_fireball"), false, noone, 0.9, 0.7)
            			//}
            		 //break;
            		 case 5:
            			decay_grab_cooldown = decay_grab_max_cooldown;
            		 break;
            	}

            break;
            case MINION_AT_USPECIAL_INTERCEPTION:
            	atk_transition = PS_IDLE;
            	switch window {
            		case 0:
            			if window_timer == 3 {
                            sound_play(sound_get("sfx_deracine_gore1"), false, noone, 1.0, 1.1)
                        }
                        if window_timer == 14{
                        	sound_play(sound_get("qoedil_test"), false, noone, 0.8, 0.9)
                        }
            		break;
            		case 1:
            			if instance_exists(grabbed_player) {
            				grabbed_player.x = lerp(grabbed_player.x, x+ ((48 - (window_timer * 2) ) * spr_dir), 0.3);
            				grabbed_player.y = lerp(grabbed_player.y, y-70, 0.3);
            			}
            			if window_timer == 3 {
                            sound_play(sound_get("sfx_deracine_swing1"))
                            
                        }
                        if window_timer == 5 {
                            sound_play(asset_get("sfx_ori_stomp_hit"), false, noone, 1, 0.9)
            				sound_play(asset_get("sfx_kragg_rock_pillar"), false, noone, 1, 0.9)
                        }
                        
            			if window_timer >= minion_attacks[ attack ].windows[ window ].length - 1 and hitstop == 0 {
            				if instance_exists(grabbed_player) {
	            				grabbed_player.x = x + (uspec_grabbed_coords.x * spr_dir);
	            				grabbed_player.y = y + (uspec_grabbed_coords.y);
            				}
            			}
            		break;
            		case 2:

            		break;
            	}
            break;
            
        }
        
        window_timer += (hitstop == 0);
        
        var has_whifflag = "has_whifflag" in minion_attacks[ attack ].windows[ window ] ? minion_attacks[ attack ].windows[ window ].has_whifflag : false;
        var markiplier = (has_whifflag && !has_hit) ? 1.5 : 1;
        if (window_timer >= ceil(minion_attacks[ attack ].windows[ window ].length * markiplier)) {
            window += 1;
            window_timer = 0;
            
            if (window == array_length(minion_attacks[ attack ].windows)) {
                print("GO TO IDLE")
                if attack == MINION_AT_BACKWARD or attack == MINION_AT_USPECIAL_INTERCEPTION {
                    spr_dir *= -1
                }
                
                if atk_transition == PS_IDLE_AIR or was_parried {
                    player_id.minion_control_timer = 0
                }
                
                var transition_state = player_id.state_cat == SC_HITSTUN and attack != MINION_AT_USPECIAL_INTERCEPTION ? PS_WRAPPED : atk_transition
                
                setState(was_parried ? PS_HITSTUN_LAND : transition_state);
                break;
            }
        }
        
        if sign(hsp) != 0 and !free {
            if !collision_line(x + 30*sign(hsp) + hsp, y, x + 30*sign(hsp) + hsp, y+20, asset_get("par_block"), true, true) and !collision_line(x + 30*sign(hsp) + hsp, y, x + 30*sign(hsp) + hsp, y+20, asset_get("par_jumpthrough"), true, true) {
                hsp = 0;
            }
        }
        
        if !("hitboxes" in minion_attacks[ attack ].windows[ window ]) break; // break if there are no hitboxes
        
        for (var i = 0; i < array_length(minion_attacks[ attack ].windows[ window ].hitboxes); i++) {
            var hitbox = minion_attacks[ attack ].windows[ window ].hitboxes[i];
            
            if (window_timer == hitbox.frame && hitstop == 0) {
                var hb = create_hitbox(hitbox.attack, hitbox.hbox_num, x + (hitbox.position.x*spr_dir), y+hitbox.position.y)
                hb.owner = self;
                hb.position_to_follow = hitbox.position;
                
                if "can_hit_self" in hitbox and hitbox.can_hit_self {
                	hb.can_hit_self = true;
                	for (var j = 0; j < 20; j++){
                		if j == player_id.player continue;
                		
                		hb.can_hit[j] = false;
                	}
                }
            }
        }
    break;
    case PS_HITSTUN_LAND:
    case PS_HITSTUN:
        is_minion = true;
        hsp *= 0.9
    break;
    case PS_CRYSTALIZED:
    	if (state_timer == 0 and hitstop <= 0) {
    		sound_play(sound_get("sfx_vaal_die"))
    	}
    	vsp *= 0.9
        hsp = 0
        player_id.minion_control_timer = -1;
        player_id.minion_attack_forgiveness_timer = 0;
    break;
}

var can_do_grab = false;
var can_do_uspec_grab = false
var dir_to_turn = spr_dir;
for (var p = 0; p < instance_number(oPlayer); p++) {
	var target_player = instance_find(oPlayer, p);
	
	if target_player == player_id {
		
		if is_grabbable(target_player, uspec_grab_rectangle, false) and target_player.state == PS_ATTACK_AIR and target_player.attack == AT_USPECIAL and target_player.window > 1 {
			can_do_uspec_grab = true;
			dir_to_turn = sign( (target_player.x+target_player.hsp) - x)
			break;
		}
		continue;
	}
	
	if !is_grabbable(target_player, grab_rectangle) continue;
	
	can_do_grab = true;
	dir_to_turn = sign( (target_player.x+target_player.hsp) - x)
	break;
}

if (state == PS_IDLE or state == PS_IDLE_AIR or state == PS_ROLL_BACKWARD or state == PS_ROLL_BACKWARD) {
	if can_do_uspec_grab {
		setAttack(MINION_AT_USPECIAL_INTERCEPTION);
		grabbed_player = noone;
		
		if dir_to_turn != 0 {
			spr_dir = dir_to_turn
		} 		
	}
	else if can_do_grab {
		setAttack(MINION_AT_HITSTUN_INTERCEPTION);
		grabbed_player = noone;
		
		if dir_to_turn != 0 {
			spr_dir = dir_to_turn
		} 
		print("GRAB TRIGGER NOW")
	}
}

if active and hitstop == 0 {
    incubation -= incubation_decrement
}

if incubation <= 0 && (state != PS_ATTACK_GROUND && state != PS_SPAWN && state != PS_PARRY && state != PS_DEAD && state != PS_CRYSTALIZED) {
    setState(state == PS_BURIED ? PS_DEAD : PS_CRYSTALIZED)
}

//if is_minion hit_detection();
state_timer += (!lock_state && (hitstop == 0) )

if state != PS_ATTACK_GROUND {
    minion_image_index = (state_timer / player_id.minion_state_info[? state].length) * player_id.minion_state_info[? state].frames;
    
    if state_timer >= player_id.minion_state_info[? state].length {
        if !player_id.minion_state_info[? state].loop {
            setState(player_id.minion_state_info[? state].next);
        }
        
        state_timer = 0;
    }
}
else {
    var window_data = minion_attacks[ attack ].windows[ window ];
    var has_whifflag = "has_whifflag" in minion_attacks[ attack ].windows[ window ] ? minion_attacks[ attack ].windows[ window ].has_whifflag : false;
    var markiplier = (has_whifflag && !has_hit) ? 1.5 : 1;
    minion_image_index = window_data.anim_frame_start + ((window_timer / (window_data.length*markiplier)) * window_data.anim_frames)
}

// if hitstop > 0 {
//     with (pHitBox) {
//         if owner != other continue;
        
//         hitbox_timer -= 1;
//     }
// }

hurtbox.image_index = minion_image_index;

if y >= blastzone_b {
	die();
}

#define is_grabbable
/// @param {undefined} target
/// @param {undefined} coords
/// @param {undefined} decay_grab = true
var target = argument[0], coords = argument[1];
var decay_grab = argument_count > 2 ? argument[2] : true;
var xx = target.x;
var yy = target.y - (target.char_height/2)

var top_x = x + (coords.top.x*spr_dir)
var bottom_x = x + (coords.bottom.x*spr_dir)

var top_y = y + coords.top.y
var bottom_y = y + coords.bottom.y

var within_range = (xx >= min(top_x, bottom_x) and xx <= max(top_x, bottom_x) and yy >= min(top_y, bottom_y) and yy <= max(top_y, bottom_y));

if !decay_grab {
	return within_range
}
else {
	return within_range and target.decay_info.player == player_id.player and target.state_cat == SC_HITSTUN and decay_grab_cooldown == 0
}

#define die()
clearHitboxes();
instance_destroy(hurtbox);

player_id.move_cooldown[AT_NSPECIAL] = player_id.minion_death_max_cooldown;
instance_destroy();
#define clearHitboxes()
with pHitBox {
    if owner != other continue;
    
    destroyed_next = true;
}

#define endAttack(active)
setState(active ? PS_IDLE_AIR : PS_IDLE);
clearHitboxes();

#define setAttack(_attack)
was_parried = false;
has_hit = false;
attack = _attack;
minion_sprite_index = minion_attacks[ attack ].sprite
window = 0;
window_timer = 0;
minion_image_index = 0;
state = PS_ATTACK_GROUND
state_timer = 0;
lock_state = true;
if "cost" in minion_attacks[ attack ] {
	incubation -= minion_attacks[ attack ].cost
	if (incubation <= 0) {
        spawn_hit_fx(x,y + death_vfx_offset, player_id.minion_death_vfx).depth = depth+1
		sound_play(sound_get("sfx_deracine_minion_death_shing"))
	}
}
#define setState(_state)
if _state == -1 {
    die();
    exit;
}

if (_state == PS_ATTACK_GROUND) {
    has_hit = false;
    
    var index = player_id.minion_state_info[? state].attack;
    
    attack = index;
    minion_sprite_index = minion_attacks[ attack ].sprite
    window = 0;
    window_timer = 0;
}
else {
    minion_sprite_index = player_id.minion_state_info[? _state].sprite;
}

minion_image_index = 0;
state = _state
state_timer = 0;
lock_state = true;