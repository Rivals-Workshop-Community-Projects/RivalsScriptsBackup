//article6_update, Enemy
//Rework done by Harbige12

//Targeting Enum
enum TR {
    NEAR,
    FAR,
    RANDOM,
    LOW,
    HIGH,
    WAYPOINT,
    CONE,
}

//Event Enum
enum EN_EVENT {
    INIT,
    ANIMATION,
    PRE_DRAW,
    POST_DRAW,
    UPDATE,
    DEATH,
    SET_ATTACK,
    ATTACK_UPDATE,
    GOT_HIT,
    GOT_PARRIED,
    HIT_PLAYER,
    PARRY
}

if !_init {
    enem_id = spawn_variables[0];
    spawn_event = spawn_variables[1];
    death_event = spawn_variables[2];
    waypoints = spawn_variables[3];
    waypoint_index = spawn_variables[4];
    custom_args = spawn_variables[5];
    if array_length(waypoints) == 0 waypoint_index = -1;
    room_manager = obj_stage_main.room_manager;
    //player_controller = 1;
    // debug = false;
    if debug print_debug("[6:EN] Init Enemy: "+string(enem_id));
    art_event = EN_EVENT.INIT;
    user_event(6);
    sprite_index = enemy_sprite_get(spr_name,"idle");
    //Spawn attached articles
    for (var _i = 0; _i < array_length(attached_articles); _i++) {
        var art;
        var rel_pos = [attached_articles[_i][1]*16,attached_articles[_i][2]*16];
        switch attached_articles[_i][3] {
            case 2:
                //obj_type = "obj_stage_article_solid";
                art = instance_create(x+floor(rel_pos[0]),y+floor(rel_pos[1]),"obj_stage_article_solid",attached_articles[_i][0]);
                break;
            case 1:
                //obj_type = "obj_stage_article_platform";
                art = instance_create(x+floor(rel_pos[0]),y+floor(rel_pos[1]),"obj_stage_article_platform",attached_articles[_i][0]);
                break;
            case 0:
                //obj_type = "obj_stage_article";
                art = instance_create(x+floor(rel_pos[0]),y+floor(rel_pos[1]),"obj_stage_article",attached_articles[_i][0]);
            	break;
        }
        art.spawn_variables = attached_articles[_i][5];
        art.depth = attached_articles[_i][4];
        art.og_depth = attached_articles[_i][4];
        art.cell_size = cell_size;
        art.init_pos = [attached_articles[_i][1],attached_articles[_i][2]];
        art.cell_pos = cell_pos;
        attached_articles[@_i][@6][@0] = art.id;
        art.action_article_index = attached_articles[_i][6][1]; //array_room_data[_room_id][i][1][j][6][1] 6D Array!
        art.room_manager = obj_stage_main.room_manager;
        art.debug = obj_stage_main.debug;
        
        art.rel_pos = rel_pos;
    
    }
	visible = false;
    _init = 1;
} 
//in_render = physics_range == -1 || (x < view_get_xview() + view_get_wview() + physics_range && x > view_get_xview() - physics_range);
in_render = false;
if (destroyed) {
    visible = false;
    // var die = true;
    // if (is_boss && battle_state_timer <= 60)
    //     die = false;
        
    // if !(is_boss && battle_state_timer <= 60) {
    if is_boss with (obj_stage_main) {
    	for (var _j = 0; _j < array_length(active_bosses); _j++) {
    		if (active_bosses[i] == other.id) {
    			active_bosses = array_cut(active_bosses, i);
    			break;
    		}
    	}
    }
    for (var _i = 0; _i < array_length_1d(loaded_articles); _i++) instance_destroy(loaded_articles[_i]);
   
    instance_destroy(id);
    exit;
}
with obj_stage_main.room_manager {
	// if "temp_level" in self continue; //Don't check cpus - VERY laggy process!
    other.in_render = other.physics_range == -1 || (point_distance(other.x,other.y,follow_point.x,follow_point.y) < other.physics_range);
    if other.in_render == true break;
}
alive_time++;
if in_render
{
	//disable_movement = false;
	if team != 1 && !battle_music_override room_manager.enemy_in_range = true; //If not on the player's team
	
	if (!destroyed) {
		visible = true;
        if hitpause <= 1 { 
            if (hitstun <= 0) {
                hsp = old_hsp;
                vsp = old_vsp;
            }
            hitpause = 0;
        }
        else {
            hsp = 0;
            vsp = 0;
        }
	
	    //Parenting
	    if (array_length(health_children) > 0) {
	        for (var i = 0; i < array_length(health_children); i++) {
	            with (health_children[i]) health_parent = other.id;
	        }
	    }
	    
	    if (hitpause > 0)
	        hitpause--;
	    hitstop = hitpause;
	    is_free = free;
	    reset_variables();
	    
	    //DEBUG control function, not multiplayer safe!
	    if player_controller != 0 {
	        with oPlayer {
	            if player == other.player_controller set_state(PS_IDLE_AIR);
	        }
	        with obj_stage_article if get_article_script(id) == 5 && follow_player != other.id follow_player = other.id;
	        get_inputs(player_controller);
	    }
	    //
	    ai_update();
	    if instance_exists(ai_target) frame_update();
	    if (is_boss) boss_update();
	    input_process();
		physics_update();
	    state_machine();
		hitbox_update();
	}
	else {
	    // var die = true;
	    // if (is_boss && battle_state_timer <= 60)
	    //     die = false;
		        
		hsp = 0;
		vsp = 0;
	    // if !(is_boss && battle_state_timer <= 60) {
	    if is_boss with (obj_stage_main) {
	    	for (var _j = 0; _j < array_length(active_bosses); _j++) {
	    		if (active_bosses[i] == other.id) {
	    			active_bosses = array_cut(active_bosses, i);
	    			break;
	    		}
	    	}
	    }
	    for (var _i = 0; _i < array_length_1d(loaded_articles); _i++) instance_destroy(loaded_articles[_i]);
	   
	    instance_destroy(id);
	    exit;
	}
}
else {
	visible = false;
	hsp = 0;
	vsp = 0;
	//disable_movement = true;
	//Attached article update, when out of render - very slowly!
	if (alive_time) % 10 == 0 for (var _i = 0; _i < array_length(loaded_articles); _i++) {
	    // loaded_articles[_i].x = x;
	    // loaded_articles[_i].y = y;
	    if !instance_exists(loaded_articles[_i]) {
	    	loaded_articles = array_cut(loaded_articles,_i);
	    	_i--;
	    	continue;
	    }
	    loaded_articles[_i].x = x+loaded_articles[_i].rel_pos[0]*spr_dir;
	    loaded_articles[_i].y = y+loaded_articles[_i].rel_pos[1];
	    loaded_articles[_i].spr_dir = spr_dir;
	}
}

#define reset_variables()
if hitpause <= 0 {
    joy_pad_idle = true;
    super_armor = false;
    right_down = false;
    left_down = false;
    jump_down = false;
    left_hard_pressed = false;
    right_hard_pressed = false;
    down_hard_pressed = false;
    for (var i = 0; i < array_length(move_cooldown); i++) {
        if (move_cooldown[i] > 0)
            move_cooldown[i] --;
    }
}

#define ai_update()
unbashable = invincible > 0 || knockback_adj == 0 || super_armor;
if hitpause <= 0 {
    state_timer++;
}
if hitstun <= 0 {
    if art_state != next_state {
        prev_state = art_state;
        art_state = next_state;
        state = art_state;
        if art_state != 5 && art_state != 6 && art_state != PS_DEAD {
            hurtbox_mask = hurtbox_spr;
            committed = 0;
            set_sprite_from_state(enem_id, art_state);
        }
        state_timer = 0;
    }
}  else {
    //Contributed by Harbige
    right_down = false;
    left_down = false;
    jump_down = false;
    left_hard_pressed = false;
    right_hard_pressed = false;
    down_hard_pressed = false;
    
    hurtbox_spr = collision_box;
    if (art_state != PS_DEAD) {
        if !free art_state = PS_HITSTUN_LAND; 
        else art_state = PS_HITSTUN;
        state = art_state;
    }
    //
}

if hitpoints_max > 0 {
    if (percent >= hitpoints_max && art_state != PS_DEAD) {
        prev_state = art_state;
        next_state = PS_DEAD;
        art_state = PS_DEAD;
        state = art_state;
        state_timer = 0;
    }
}

//Default AI Targeting
if alive_time <= 2 || (alive_time) % target_tick == 0 { //Only check targets if needed
	var new_target = noone;
	
	if freeze {
	    right_down = false;
	    left_down = false;
	    jump_down = false;
	    left_hard_pressed = false;
	    right_hard_pressed = false;
	    down_hard_pressed = false;
	    return;
	}
	
	switch target_behavior {
	    case TR.NEAR:
	        new_target = instance_nearest(x,y,oPlayer);
	        break;
	    case TR.FAR:
	        new_target = instance_furthest(x,y,oPlayer);
	        break;
	    case TR.RANDOM:
	        var player_targ = random_func(0,instance_number(oPlayer), true);
	        var i = 0;
	        with oPlayer if i == player_targ new_target = id; else i++;
	        break;
	    case TR.LOW:
	        new_target = instance_nearest(x,y,oPlayer);
	        with oPlayer if get_player_damage(new_target.player) < get_player_damage(player) new_target = id;
	        break;
	    case TR.HIGH:
	        new_target = instance_nearest(x,y,oPlayer);
	        with oPlayer if get_player_damage(new_target.player) > get_player_damage(player) new_target = id;
	        break;
	    case TR.WAYPOINT:
	        if waypoint_index < 0 {
	            new_target = id;
	            break;
	        } 
	        if patrol_type == 1 && x_dist < waypoint_r && y_dist < waypoint_r waypoint_index++; //if patrolling and near waypoint
	        if waypoint_index < array_length(waypoints) ai_target = waypoints[waypoint_index];
	        break;
	}
	
	if new_target != noone && new_target.team != team ai_target = new_target;
}

//Gravity
if hitstun <= 0 
    grav = gravity_speed;
else
    grav = hitstun_grav;
    
if (art_state != PS_DEAD) {
    art_event = EN_EVENT.UPDATE;
    user_event(6); //Custom behavior
}
else {
    art_event = EN_EVENT.DEATH;
    user_event(6); //Custom behavior
}
    
#define frame_update() //Updates ai information every frame, not physics
x_dist = abs(x-ai_target.x);
y_dist = abs(y-ai_target.y);
target_dir = sign(ai_target.x - x);
if (target_dir == 0)
    target_dir = 1;
is_ai = (player_controller == 0);

#define state_machine() //Player-esque art_state Machine

switch (enemy_class) {
    case 0:
        switch art_state { //Gameplay Logic
            case PS_ATTACK_AIR:
                committed = 1;
                attack_update();
                break;
            case PS_ATTACK_GROUND:
                committed = 1;
                attack_update();
                break;
            case PS_AIR_DODGE: //Airdodge
                committed = 1;
                if !joy_pad_idle && state_timer > 3 {
                    hsp = dcos(_joy_dir)*air_dodge_speed;
                    vsp = -dsin(_joy_dir)*air_dodge_speed;
                }
                if !free next_state = PS_WAVELAND;
                if state_timer == 3 {
                    _joy_dir = joy_dir;
                    invincible = 19;
                    sound_play(air_dodge_sound);
                }
                if state_timer > 24 {
                    hsp = 0;
                    vsp = 0;
                    next_state = PS_IDLE_AIR;
                }
                break;
            case PS_PARRY_START:
                committed = 1;
                if left_down || right_down next_state = PS_ROLL_BACKWARD;
                if state_timer > 3 next_state = PS_PARRY;
                break;
            case PS_ROLL_BACKWARD: //Rolls, both
                committed = 1;
                if state_timer > 3 && state_timer < 27 hsp = (spr_dir)*roll_backward_max;
                if state_timer == 3 {
                    spr_dir = right_down-left_down;
                    invincible = 24;
                    sound_play(asset_get("sfx_roll"));
                }
                if state_timer > 30 next_state = PS_IDLE;
                break;
            case PS_PARRY:
                committed = 1;
                if state_timer > 30 next_state = PS_IDLE;
                break;
            case PS_JUMPSQUAT:
                committed = 1;
                if state_timer >= jump_start_time {
                    if !shield_down && shield_held == 0 {
                        if jump_down vsp = -jump_speed;
                        else vsp = -short_hop_speed;
                        next_state = PS_FIRST_JUMP;
                        sound_play(jump_sound);
                    } else next_state = PS_WAVELAND;
                }
                break;
            case PS_IDLE_AIR:
                next_state = PS_FIRST_JUMP;
            break;
            case PS_FIRST_JUMP:
                if !free next_state = PS_LAND;
                break;
            case PS_DOUBLE_JUMP:
                if state_timer == 0 {
                    djumps -= 1;
                    vsp = -djump_speed;
                    hsp += jump_change*right_down - jump_change*left_down;
                    sound_play(djump_sound);
                }
                if djumps > 0 && jump_down && jump_held == 0 state_timer = -1;
                if !free next_state = PS_LAND;
                if state_timer > double_jump_time next_state = PS_FIRST_JUMP;
                break;
            case PS_WALK_TURN:
                if free next_state = PS_IDLE_AIR; 
                hsp = clamp(hsp -walk_accel*left_down + walk_accel*right_down, -walk_speed, walk_speed);
                if (state_timer == 0)
                    spr_dir = -spr_dir;
                if state_timer > walk_turn_time {
                    next_state = PS_WALK;
                }
                break;
            case PS_WALK:
                if free next_state = PS_IDLE_AIR; 
                if spr_dir != to_dir next_state = PS_WALK_TURN;
                hsp = clamp(hsp -walk_accel*left_down + walk_accel*right_down, -walk_speed, walk_speed);
                if (left_hard_pressed || right_hard_pressed) {
                    if (left_down || right_down) && able_to_dash next_state = PS_DASH_START;
                }
                else if !(left_down || right_down) next_state = PS_IDLE;
                if down_down && able_to_crouch next_state = PS_CROUCH;
                break;
            case PS_DASH_TURN:
                if (state_timer == 0)
                    spr_dir = -spr_dir;
                hsp = clamp(hsp + spr_dir*dash_turn_accel, -dash_speed, dash_speed);
                if state_timer > dash_turn_time {
                    next_state = PS_DASH;
                }
                break;
            case PS_DASH_START:
                hsp = spr_dir*initial_dash_speed;
                if state_timer > initial_dash_time next_state = PS_DASH;
                if to_dir != spr_dir {
                    state_timer = 0;
                    spr_dir = -spr_dir;
                }
                if !(left_down || right_down) next_state = PS_IDLE;
                break;
            case PS_DASH:
                hsp = spr_dir*dash_speed;
                if spr_dir != to_dir next_state = PS_DASH_TURN;
                if !(left_down || right_down) next_state = PS_DASH_STOP;
                break;
            case PS_DASH_STOP:
                if state_timer > dash_stop_time {
                    hsp *= dash_stop_percent;
                    next_state = PS_IDLE;
                }
                break;
            case PS_LAND:
                committed = 1;
                if free next_state = PS_IDLE_AIR;
                if state_timer == 1 sound_play(land_sound);
                if state_timer > land_time next_state = PS_IDLE;
                break;
            case PS_WAVELAND:
                committed = 1;
                if state_timer == 1 sound_play(waveland_sound);
                if state_timer <= 2 hsp = walk_speed*wave_land_adj*(right_down-left_down);
                if state_timer > wave_land_time next_state = PS_IDLE;
                break;
            case PS_IDLE:
                if free next_state = PS_IDLE_AIR;
                if (left_hard_pressed || right_hard_pressed) {
                    if (left_down || right_down) && able_to_dash next_state = PS_DASH_START;
                } else if (left_down || right_down) {
                    next_state = PS_WALK;
                    if spr_dir != to_dir next_state = PS_WALK_TURN;
                }
                if down_down && able_to_crouch next_state = PS_CROUCH;
                break;
            case PS_CROUCH:
                if !down_down {
                    crouch_timer++;
                    if crouch_timer > 3 next_state = PS_IDLE;
                } else crouch_timer = 0;
                break;
            case PS_LANDING_LAG:
                if free next_state = PS_IDLE_AIR;
                if state_timer > land_time next_state = PS_IDLE;
                break;
        }
    break;
    case 1:
        switch art_state { //Gameplay Logic
            case PS_ATTACK_AIR:
            case PS_ATTACK_GROUND:
                committed = 1;
                attack_update();
                break;
            case PS_AIR_DODGE: //Airdodge
                committed = 1;
                if !joy_pad_idle && state_timer > 3 {
                    hsp = dcos(_joy_dir)*air_dodge_speed;
                    vsp = -dsin(_joy_dir)*air_dodge_speed;
                }
                if state_timer == 3 {
                    _joy_dir = joy_dir;
                    invincible = 19;
                    sound_play(air_dodge_sound);
                }
                if state_timer > 24 {
                    hsp = 0;
                    vsp = 0;
                    next_state = PS_IDLE;
                }
                break;
            case PS_WALK_TURN:
                if (state_timer == 0)
                    spr_dir = -spr_dir;
                if state_timer > walk_turn_time {
                    next_state = PS_WALK;
                }
                break;
            case PS_WALK:
                if spr_dir != to_dir next_state = PS_WALK_TURN;
                hsp += lengthdir_x(walk_accel, joy_dir);
                vsp += lengthdir_y(walk_accel, joy_dir);
                hsp = clamp(hsp, -walk_speed, walk_speed);
                vsp = clamp(vsp, -walk_speed, walk_speed);
                if (left_hard_pressed || right_hard_pressed) {
                    if !joy_pad_idle && able_to_dash next_state = PS_DASH_START;
                }
                else if joy_pad_idle next_state = PS_IDLE;
                break;
            case PS_DASH_TURN:
                if (state_timer == 0)
                    spr_dir = -spr_dir;
                hsp = clamp(hsp + spr_dir*dash_turn_accel, -dash_speed, dash_speed)
                vsp = 0;
                if state_timer > dash_turn_time {
                    next_state = PS_DASH;
                }
                break;
            case PS_DASH_START:
                hsp = spr_dir*initial_dash_speed;
                vsp = 0
                if state_timer > initial_dash_time next_state = PS_DASH;
                if to_dir != spr_dir {
                    state_timer = 0;
                    spr_dir = -spr_dir;
                }
                if joy_pad_idle next_state = PS_IDLE;
                break;
            case PS_DASH:
                hsp += lengthdir_x(dash_accel, joy_dir);
                vsp += lengthdir_y(dash_accel, joy_dir);
                hsp = clamp(hsp, -dash_speed, dash_speed);
                vsp = clamp(vsp, -dash_speed, dash_speed) / 2;
                if spr_dir != to_dir next_state = PS_DASH_TURN;
                if joy_pad_idle next_state = PS_DASH_STOP;
                break;
            case PS_DASH_STOP:
                if state_timer > dash_stop_time {
                    hsp *= dash_stop_percent;
                    vsp *= dash_stop_percent;
                    next_state = PS_IDLE;
                }
                break;
            case PS_IDLE_AIR:
                next_state = PS_IDLE;
            break;
            case PS_IDLE:
                if (left_hard_pressed || right_hard_pressed) {
                    if !joy_pad_idle && able_to_dash next_state = PS_DASH_START;
                } else if !joy_pad_idle {
                    next_state = PS_WALK;
                    if spr_dir != to_dir next_state = PS_WALK_TURN;
                }
                break;
            
        }
    break;
}

switch (art_state) {
    case PS_HITSTUN:
    case PS_HITSTUN_LAND:
    case PS_TUMBLE:
        if hitpause > 0 {
            state_timer = 0;
        } else {
            if (state_timer == 1 && knockback_adj != 0) {
                ai_di();
                var new_dir = kb_angle;
                if (!joy_pad_idle) {
                    var di_diff = (degtorad(kb_angle) - degtorad(joy_dir))
                    if (di_diff < -3.14159)
                        di_diff += 3.14159*2;
                    if (di_diff > -3.14159)
                        di_diff -= 3.14159*2;
                    var change = 5 * sign(di_diff) * sign(di_diff);
                    new_dir -= (sign(di_diff) * change)
                }
                if !free && new_dir > 180 && new_dir < 360 vsp = orig_knock*sin(new_dir);
                else if !free vsp = -abs(orig_knock*dsin(new_dir));
                else vsp = -orig_knock*dsin(new_dir);
                hsp = orig_knock*dcos(new_dir);
                if hsp != 0 spr_dir = -sign(hsp);
            }
            if hit_wall hsp = -hsp*.7;
            if (!free) {
                if (vsp > 3 && kb_angle > 180 && kb_angle < 360) {
                    vsp = -vsp * 0.5 - 4;
                    hitstun = hitstun_full;
                    bounced = true;
                }
                else if (vsp >= 0) {
                    art_state = PS_HITSTUN_LAND;
        			state = art_state;
	                if (state_timer < 5) {
	                    hitstun += flinch_time;
	                }
	                vsp = 0;
                }
            }
            old_hsp = hsp;
            old_vsp = vsp;
            hitstun--;
            if hitstun <= 0 {
                hitstun = 0;
                bounced = false;
                next_state = PS_IDLE_AIR;
            }
        }
        set_sprite_from_state(enem_id, art_state);
        break;
    case PS_DEAD:
    committed = true;
    if (is_boss) {
        with asset_get("pHitBox") if "hit_owner" in self && hit_owner == other.id {
            if (type != 2) {
                instance_destroy(id);
                continue;
            }
        }
    }
    break;
}

if hitpause <= 0 {
	if (enemy_class == 0) {
		switch art_state { //Display Logic
	        case PS_IDLE:
	        case PS_IDLE_AIR:
	            image_index += idle_anim_speed;
	            break;
	            
	        case PS_SPAWN:
	            if (boss_intro_mode == 0)
	                image_index += idle_anim_speed;
	            break;
	        case PS_DASH:
	            image_index += dash_anim_speed;
	            break;
	        case PS_WALK:
	            image_index += walk_anim_speed;
	            break;
	        case PS_JUMPSQUAT:
	            image_index = (state_timer/(2*jump_start_time))*image_number;
	            break;
	        case PS_FIRST_JUMP:
	            image_index = ease_linear(0,image_number,floor(vsp+jump_speed), jump_speed*2);
	            break;
	        case PS_DOUBLE_JUMP:
	            image_index = clamp(ease_linear(0,image_number, state_timer, double_jump_time), 0, image_number - 1);
	            break;
	        case PS_CROUCH:
	            if crouch_timer == 0 image_index = clamp(state_timer/3,0,image_number-1);
	            else image_index = clamp((3-crouch_timer)/3,0,image_number-1);
	            break;
		}
	}	
    switch art_state { //Display Logic
        case PS_WALK_TURN:
            image_index = clamp(ease_linear(0,image_number, state_timer, walk_turn_time), 0, image_number - 1);
            break;
        case PS_DASH_TURN:
            image_index = clamp(ease_linear(0,image_number, state_timer, dash_turn_time), 0, image_number - 1);
            break;
        case PS_DASH_START:
            image_index = clamp(ease_linear(0,image_number, state_timer, initial_dash_time), 0, image_number - 1);
            break;
        case PS_DASH_STOP:
            image_index = clamp(ease_linear(0,image_number, state_timer, dash_stop_time), 0, image_number - 1);
            break;
        case 5:
            image_index = clamp(ag_window_anim_frame_start[window]+floor(ease_linear(0,ag_window_anim_frames[window],window_timer,floor(ag_window_length[window]*(1+.5*ag_window_wifflag[window]*(!has_hit_en)) + 1))), 0, image_number - 1);
            break;
        case 6:
            image_index = clamp(ag_window_anim_frame_start[window]+floor(ease_linear(0,ag_window_anim_frames[window],window_timer,floor(ag_window_length[window]*(1+.5*ag_window_wifflag[window]*(!has_hit_en)) + 1))), 0, image_number - 1);
            break;
        case PS_HITSTUN:
            image_index +=  (kb_power / 60);
            break;
    }
}
if next_attack != -1 attack_start();

custom_behavior(EN_EVENT.ANIMATION)
#define input_process() //For inputs in more than 1 art_state

if right_down || left_down to_dir = right_down-left_down;
if jump_down jump_held++;
else jump_held = 0;
if down_down down_held++;
else down_held = 0;


if !committed {
    if jump_down && able_to_jump {
        if (enemy_class == 0) {
            if free {
                if jump_held == 1 && djumps > 0 && able_to_djump {
                    next_state = PS_DOUBLE_JUMP;
                    djumps--;
                }
            } else next_state = PS_JUMPSQUAT;
        }
    } else if shield_down && able_to_shield {
        if free || enemy_class == 1 next_state = PS_AIR_DODGE;
        else next_state = PS_PARRY_START;
    }
}

if down_hard_pressed && !committed can_fallthrough = 1;
else if !down_down can_fallthrough = 0;


#define physics_update() //Physics updates, every frame
// free = can_be_grounded ? (vsp < 0 || (place_meet(x,y+2) && !(place_meet(x,y-2) && !can_fallthrough))) : true;

//free = true;
//var _y = 0;
//var _y_limit = 32;

//Physics Friction

if hitpause <=  0 {
    if free {
        vsp += grav;
        if (art_state != PS_ATTACK_AIR && art_state != PS_ATTACK_GROUND) {
            if (enemy_class == 0) {
                hsp *= 1-air_friction;
            }
            else {
                hsp *= 1-air_friction;
                vsp *= 1-air_friction;
            }
        }
        if (enemy_class == 0) {
            vsp = min(vsp, max_fall);
            if (art_state != PS_ATTACK_AIR && art_state != PS_ATTACK_GROUND) {
                if abs(hsp) < air_max_speed hsp += -air_accel*left_down+air_accel*right_down;
            }
        }
        else {
            if (player_controller == 1) {
                if (art_state != PS_ATTACK_AIR && art_state != PS_ATTACK_GROUND) {
                    if (!joy_pad_idle) {
                        if abs(hsp) < air_max_speed  hsp += lengthdir_x(air_accel, joy_dir);
                        if abs(vsp) < air_max_speed  vsp += lengthdir_y(air_accel, joy_dir);
                    }
                }
            }
        }
        //if !state_free next_state = PS_IDLE_AIR;
    } else {
    	if (vsp > 0)
    		vsp = 0;
        djumps = max_djumps;
        if (art_state != PS_ATTACK_AIR && art_state != PS_ATTACK_GROUND) {
            hsp *= 1-ground_friction/5;
        }
        has_air_dodge = 1;
    }
}
//Fix Clipping

//Fix Clipping
//if !free && vsp <= 0 && place_meet(x,y+1) y--;
/*if !free && vsp <= 0 {
//if art_state == PS_LAND || art_state == PS_LANDING_LAG || art_state == PS_WAVELAND {
    while (place_meet(x,y-_y+1) && _y < _y_limit+1)  _y++;
    if _y < _y_limit {
        y -= _y;
        if _y > 0 && debug print_debug("SHIFTED: "+string(_y));
        vsp = 0;
    } else if _y > 0 && debug print_debug("TOO FAR");
}*/


// /*if vert_col {
//     _y = 0;
//     while (place_meet_solid(x,y+_y-1) && _y < _y_limit+1)  _y++;
//     if _y < _y_limit {
//         //y += _y;
//         //vsp = 0;
//     } else vert_col = false; //If it's greater than this, it's probably against a wall.
// }


// //Horizontal Collision Detection
// if !vert_col {
//     if place_meet_solid(x+5,y) {
//         //while place_meet_solid(x+1,y-1) x--;
//         //if art_state != PS_HITSTUN hsp = 0; 
//         horiz_col = true;
//     }
//     if place_meet_solid(x-5,y) {
//         //while place_meet_solid(x-1,y-1) x++;
//         //if art_state != PS_HITSTUN hsp = 0; 
//         horiz_col = true;
//     }
// }*/
//print_debug(string(vert_col));

if hit_player_id != noone && hit_player_id.object_index == oPlayer.object_index && ((hit_player_id.state != 5 &&  hit_player_id.state != 6) || hit_player_id.window == 1) {
    hbox_group = -1;
    hit_player_id = noone;
}

if invincible == 0 {
	if hit_lockout > 0 hit_lockout--;
	if (instance_exists(pHitBox)) {
	    last_hitbox = hit_id;
	    mask_index = hurtbox_mask;
	    hit_id = instance_place(x, y, pHitBox);
	    mask_index = collision_box;
	    if hit_id <= 0 {
	        has_hit = 0;
	    }
	    else {
	        enemy_got_hit(hit_id);
	        if (health_share_mode == 0) {
	            if (array_length(health_children) > 0) {
	                for (var i = 0; i < array_length(health_children); i++) {
	                    if (instance_exists(health_children[i]))
	                        with (health_children[i]) enemy_got_hit(hit_id);
	                }
	            }
	            if (instance_exists(health_parent) && health_parent != -1 && health_parent != id) {
	                with (health_parent) enemy_got_hit(hit_id);
	            }
	        }
	    }
	}
} else invincible--;

#define hitbox_update() //Update enemy hitboxes
if (hitpause <= 0 && hitstun <= 1) {
    old_hsp = hsp;
    old_vsp = vsp;
}

#define boss_update() 
switch (battle_state) {
    case 0:
    	if (boss_intro_mode == 1) 
        {
            next_state = PS_SPAWN;
        }
        else
        {
            done_intro = true;
            next_state = PS_IDLE;
        }
        
        if (is_boss) {
            with (obj_stage_main)
                array_push(active_bosses, other.id);
        }
        
        committed = 1;
        battle_state = 1;
        
        if (array_length(health_children) > 0) {
            for (var i = 0; i < array_length(health_children); i++) {
                if (instance_exists(health_children[i]))
                        with (health_children[i]) {
                        committed = 1;
                        battle_state = 1;
                    }
            }
        }
        if (instance_exists(health_parent) && health_parent != -1 && health_parent != id) {
            with (health_parent) {
                committed = 1;
                battle_state = 1;
            }
        }
        
    break;
    case 1:
        if (boss_intro_mode == 0) {
            done_intro = true;
            spr_dir = target_dir;
        }
        var start_battle = true;
        committed = 1;
        if (!done_intro)
            start_battle = false;
        if (array_length(health_children) > 0) {
            for (var i = 0; i < array_length(health_children); i++) {
                if (instance_exists(health_children[i]))
                    with (health_children[i]) {
                        if (!done_intro)
                            start_battle = false;
                    }
            }
        }
        if (instance_exists(health_parent) && health_parent != -1 && health_parent != id) {
            with (health_parent) {
                if (!done_intro)
                    start_battle = false;
            }
        }
        
        if (show_healthbar) {
            battle_state_timer ++;
        }
        
        if (start_battle) {
            var intro_done = true;
            
            show_healthbar = true;
            
            if (is_boss && hitpoints_max > 0) {
                if (battle_state_timer > 30) {
                    if (boss_healthbar_timer % 2 == 0) {
                        sound_play( sound_get("sfx_boss_hp_tick"), false, 0);
                    }
                    boss_healthbar_timer++;
                    if (boss_healthbar_timer < 56)
                        intro_done = false;
                }
                else {
                    intro_done = false;
                }
            }
            
            if (intro_done) {
                boss_healthbar_timer = 0;
                committed = 0;
                battle_state = 2;
                next_state = PS_IDLE;
                if (array_length(health_children) > 0) {
                    for (var i = 0; i < array_length(health_children); i++) {
                        if (instance_exists(health_children[i]))
                            with (health_children[i]) {
                                committed = 0;
                                battle_state = 2;
                                next_state = PS_IDLE;
                            }
                    }
                }
                if (instance_exists(health_parent) && health_parent != -1 && health_parent != id) {
                    with (health_parent) {
                        committed = 0;
                        battle_state = 2;
                        next_state = PS_IDLE;
                    }
                }
            }
        }
    break;
    case 2:
        var end_battle = true;
        
        if (art_state != PS_DEAD)
            end_battle = false;
        if (array_length(health_children) > 0) {
            for (var i = 0; i < array_length(health_children); i++) {
                with (health_children[i]) {
                    if (art_state != PS_DEAD)
                        end_battle = false;
                }
            }
        }
        if (instance_exists(health_parent) && health_parent != -1 && health_parent != id) {
            with (health_parent) {
                if (art_state != PS_DEAD)
                    end_battle = false;
            }
        }
            
        if (end_battle)
        {
            battle_state = 3;
            battle_state_timer = 0;
            if (health_share_mode == 0) {
                if (array_length(health_children) > 0) {
                    for (var i = 0; i < array_length(health_children); i++) {if (
                        instance_exists(health_children[i]))
                            with (health_children[i]) {
                                next_state = PS_DEAD;
                                battle_state = 3;
                                battle_state_timer = 0;
                            }
                    }
                }
                if (instance_exists(health_parent) && health_parent != -1 && health_parent != id) {
                    with (health_parent) {
                        next_state = PS_DEAD;
                        battle_state = 3;
                        battle_state_timer = 0;
                    }
                }
            }
        }
    break;
    case 3:
        battle_state_timer ++;
    break;
}


#define place_meet(__x,__y) //get place_meeting for the usual suspects
/*return (collision_rectangle(__x-colis_width/2,__y-colis_height,__x+colis_width/2,__y,asset_get("solid_32_obj"),true,true) ||
       collision_rectangle(__x-colis_width/2,__y-colis_height,__x+colis_width/2,__y,obj_stage_article_solid,true,true) ||
       collision_rectangle(__x-colis_width/2,__y-colis_height,__x+colis_width/2,__y,asset_get("jumpthrough_32_obj"),true,true) ||
       collision_rectangle(__x-colis_width/2,__y-colis_height,__x+colis_width/2,__y,obj_stage_article_platform,true,true));*/
return (place_meet_solid(__x,__y) || 
        place_meet_plat(__x,__y));

#define position_meet(__x,__y) //get place_meeting for the usual suspects
/*return (collision_rectangle(__x-colis_width/2,__y-colis_height,__x+colis_width/2,__y,asset_get("solid_32_obj"),true,true) ||
       collision_rectangle(__x-colis_width/2,__y-colis_height,__x+colis_width/2,__y,obj_stage_article_solid,true,true) ||
       collision_rectangle(__x-colis_width/2,__y-colis_height,__x+colis_width/2,__y,asset_get("jumpthrough_32_obj"),true,true) ||
       collision_rectangle(__x-colis_width/2,__y-colis_height,__x+colis_width/2,__y,obj_stage_article_platform,true,true));;*/

return (position_meeting(__x,__y,asset_get("par_block")) || 
        position_meeting(__x,__y,asset_get("par_jumpthrough")));    
#define place_meet_solid(__x,__y) //get place_meeting for the usual suspects
/*return (collision_rectangle(__x-colis_width/2,__y-colis_height,__x+colis_width/2,__y,asset_get("solid_32_obj"),true,true) ||
       collision_rectangle(__x-colis_width/2,__y-colis_height,__x+colis_width/2,__y,obj_stage_article_solid,true,true));*/
return (place_meeting(__x,__y,asset_get("par_block"))); 
#define place_meet_plat(__x,__y) //get place_meeting for the usual suspects
/*return (collision_rectangle(__x-colis_width/2,__y-colis_height,__x+colis_width/2,__y,asset_get("jumpthrough_32_obj"),true,true) ||
       collision_rectangle(__x-colis_width/2,__y-colis_height,__x+colis_width/2,__y,obj_stage_article_platform,true,true));*/
return (place_meeting(__x,__y,asset_get("par_jumpthrough")))
  
#define attack_update() //Attack update script during attacks
//if debug print_debug("[EM] Attack Updating..."+string(window)+":"+string(window_timer));
if (hitpause <= 0) {
    //Speeds
    switch ag_window_hspeed_type[window] {
        case 2:
            if window_timer == 1 hsp = ag_window_hspeed[window]*spr_dir;
            break;
        case 1:
            hsp = ag_window_hspeed[window]*spr_dir;
            break;
        default:
            if window_timer == 1 hsp += ag_window_hspeed[window]*spr_dir;
            break;
    }


    switch ag_window_vspeed_type[window] {
        case 2:
            if window_timer == 1 vsp = ag_window_vspeed[window];
            break;
        case 1:
            vsp = ag_window_vspeed[window];
            break;
        default:
            if window_timer == 1 vsp += ag_window_vspeed[window];
            break;
    }
    
    //Sounds
    if ag_window_has_sfx[window] == 1 && ag_window_sfx_frame[window] == window_timer && ag_window_sfx[window] != 0 
        sound_play(ag_window_sfx[window]);
        
    //Friction
    var g_frict = ground_friction;
    var a_frict = air_friction;
    if (ag_window_has_custom_friction[window] == 1) {
        g_frict = ag_window_custom_ground_friction[window];
        a_frict = ag_window_custom_air_friction[window];
    }
    if (free) {
        hsp *= 1-a_frict;
        if (enemy_class == 1)
            vsp *= 1-a_frict;
    }
    else {
        hsp *= 1-g_frict/5;
    }
    
    //Gravity
    if (ag_uses_custom_gravity)
    	grav = ag_window_custom_gravity[window];
    
    
    if (!free && ag_category == 1) next_state = PS_IDLE_AIR;
    if (free && ag_category == 0) next_state = PS_LAND;
    
    if (ag_air_sprite != 0) {
        if (free) 
            sprite_index = ag_air_sprite;
        else
            sprite_index = ag_sprite;
            
    }
    else
        sprite_index = ag_sprite;
    
    //Off ledge handling
    if (ag_off_ledge == 0 && !free && hsp != 0) {
        var off_r = !position_meet(bbox_right + 2, bbox_bottom + 4)
        var off_l = !position_meet(bbox_left - 2, bbox_bottom + 4)
        
        if ((off_r && hsp > 0) || (off_l && hsp < 0)) {
            x -= hsp;
        }
    }
    
    for (var j = 1; j <= hg_num_hitboxes; j += 1) if window == hg_window[j] && window_timer == hg_window_frame[j] + 1 {
        //custom_behavior(EN_EVENT.SET_ATTACK)
        var hitb = create_hitbox(attack,j,round(x)+hg_x[j]*spr_dir,round(y)+hg_y[j]);
        hitb.type = hg_type[j] == 0 ? 1 : hg_type[j];
        if not "hit_owner" in hitb hitb.hit_owner = id;
        if not "team" in hitb hitb.team = team;
    }
    
    //Statuses
    if (ag_window_invincibility[window] == 1)
        invincible = 2;
    if (ag_window_invincibility[window] == 2) {
        invincible = 2;
        invince_type = 2;
    }
    custom_behavior(EN_EVENT.ATTACK_UPDATE)
    
    window_timer++;
    
    if window_timer >= ag_window_length[window]*(1+.5*ag_window_wifflag[window]*(!has_hit_en)) {
        if ag_window_type[window] != 9 && ag_window_type[window] != 8 {
            window++;
        }
        if (ag_window_goto[window] > 0) {
        	window = ag_window_goto[window];
        }
        if window > ag_num_windows{
            is_attacking = false;
            next_state = PS_IDLE;
            hurtbox_mask = hurtbox_spr;
            set_sprite_from_state(enem_id, next_state);
            window = 1;
            window_timer = 0;
            was_parried = false;
            obj_stage_main.was_parried = false;
            invince_type = 0;
        }
        else {
            window_timer = 0;
        }
    }
    
    if (ag_window_type[window] == 8 && !free) {
        window++;
        window_timer = 0;
    }
    
}

#define attack_start() //Start attacking 
if (move_cooldown[next_attack] <= 0)
{
    has_hit_en = false;
    was_parried = false;
    last_attack = attack;
    attack = next_attack;
    window_timer = 0;
    window = 1;
    reset_attack_grid(attack);
    custom_behavior(EN_EVENT.SET_ATTACK)
    get_attack(attack);
    reset_attack_grid(attack);
    sprite_index = ag_sprite;
    image_index = 0;
    hurtbox_mask = ag_hurtbox_sprite;
    if free next_state = PS_ATTACK_AIR;
    else next_state = PS_ATTACK_GROUND;
}
next_attack = -1;

#define get_attack(_attack) //Set attack data, and attack start
if (debug) print_debug("[EN] Getting attack data for "+get_attack_name(_attack));
with obj_stage_main { //Main stage script object
    other.ag_category = get_attack_value(_attack,AG_CATEGORY);
    other.ag_num_windows = get_attack_value(_attack,AG_NUM_WINDOWS);
    other.ag_off_ledge = get_attack_value(_attack,AG_OFF_LEDGE);
    other.ag_sprite = get_attack_value(_attack,AG_SPRITE);
    other.ag_air_sprite = get_attack_value(_attack,AG_AIR_SPRITE);
    other.ag_uses_custom_gravity = get_attack_value(_attack,AG_USES_CUSTOM_GRAVITY);
    other.hg_num_hitboxes = get_num_hitboxes(_attack);
    other.ag_hurtbox_sprite = get_attack_value(_attack,AG_HURTBOX_SPRITE);
    other.ag_hurtbox_air_sprite = get_attack_value(_attack,AG_HURTBOX_AIR_SPRITE);
    for (var i = 1; i <= other.ag_num_windows; i += 1) {
        other.ag_window_type[i] = get_window_value(_attack,i,AG_WINDOW_TYPE);
        other.ag_window_length[i] = get_window_value(_attack,i,AG_WINDOW_LENGTH);
        other.ag_window_anim_frames[i] = get_window_value(_attack,i,AG_WINDOW_ANIM_FRAMES);
        other.ag_window_anim_frame_start[i] = get_window_value(_attack,i,AG_WINDOW_ANIM_FRAME_START);
        other.ag_window_invincibility[i] = get_window_value(_attack,i,AG_WINDOW_INVINCIBILITY);
        other.ag_window_custom_gravity[i] = get_window_value(_attack,i,AG_WINDOW_CUSTOM_GRAVITY);
        if get_window_value(_attack,i,AG_WINDOW_HAS_SFX) {
            other.ag_window_has_sfx[i] = get_window_value(_attack,i,AG_WINDOW_HAS_SFX);
            other.ag_window_sfx[i] = get_window_value(_attack,i,AG_WINDOW_SFX);
            other.ag_window_sfx_frame[i] = get_window_value(_attack,i,AG_WINDOW_SFX_FRAME);
        } else {
            other.ag_window_has_sfx[i] = 0;
        }
        other.ag_window_wifflag[i] = get_window_value(_attack,i,AG_WINDOW_HAS_WHIFFLAG);
        other.ag_window_hspeed[i] = get_window_value(_attack,i,AG_WINDOW_HSPEED);
        other.ag_window_hspeed_type[i] = get_window_value(_attack,i,AG_WINDOW_HSPEED_TYPE);
        other.ag_window_vspeed[i] = get_window_value(_attack,i,AG_WINDOW_VSPEED);
        other.ag_window_vspeed_type[i] = get_window_value(_attack,i,AG_WINDOW_VSPEED_TYPE);
        other.ag_window_goto[i] = get_window_value(_attack,i,AG_WINDOW_GOTO);
        if (get_window_value(_attack,i,AG_WINDOW_HAS_CUSTOM_FRICTION)) {
            other.ag_window_has_custom_friction[i] = get_window_value(_attack,i,AG_WINDOW_HAS_CUSTOM_FRICTION);
            other.ag_window_custom_air_friction[i] = get_window_value(_attack,i,AG_WINDOW_CUSTOM_AIR_FRICTION);
            other.ag_window_custom_ground_friction[i] = get_window_value(_attack,i,AG_WINDOW_CUSTOM_GROUND_FRICTION);
        }
        else {
            other.ag_window_has_custom_friction[i] = 0;
        }
    }
    for (var i = 1; i <= other.hg_num_hitboxes; i += 1) {
        other.hg_type[i] = get_hitbox_value(_attack, i, HG_HITBOX_TYPE);
        other.hg_window[i] = get_hitbox_value(_attack,i,HG_WINDOW);
        other.hg_window_frame[i] = get_hitbox_value(_attack,i,HG_WINDOW_CREATION_FRAME);
        other.hg_x[i] = get_hitbox_value(_attack,i,HG_HITBOX_X);
        other.hg_y[i] = get_hitbox_value(_attack,i,HG_HITBOX_Y);
        other.hg_bhitp[i] = get_hitbox_value(_attack,i,HG_BASE_HITPAUSE);
        other.hg_shitp[i] = get_hitbox_value(_attack,i,HG_HITPAUSE_SCALING);
        
        //This was added to prevent the hitbox from becoming the "[B]" sprite when type is 1.
        if (other.hg_type[i] == 1) {
            set_hitbox_value(_attack, i, HG_PROJECTILE_SPRITE, asset_get("empty_sprite"));
            set_hitbox_value(_attack, i, HG_PROJECTILE_MASK, -1);
        }
    }
}

#define get_inputs(_player) //Overwrite inputs with the given player's inputs (NOTE: Controller Port, NOT oPlayer)
with asset_get("oPlayer") { 
    if player == _player {
        other.down_down = down_down;
        other.up_down = up_down;
        other.left_down = left_down;
        other.right_down = right_down;
        other.jump_down = jump_down;
        other.attack_down = attack_down;
        other.shield_down = shield_down;
        other.taunt_down = taunt_down;
        other.joy_dir = joy_dir;
        other.up_strong_down = up_strong_down;
        other.down_strong_down = down_strong_down;
        other.left_strong_down = left_strong_down;
        other.right_strong_down = right_strong_down;
        other.strong_down = strong_down;
        other.left_hard_pressed = left_hard_pressed;
        other.right_hard_pressed = right_hard_pressed;
        other.down_hard_pressed = down_hard_pressed;
        other.joy_pad_idle = joy_pad_idle;
    }
}
clear_button_buffer(PC_LEFT_HARD_PRESSED);
clear_button_buffer(PC_RIGHT_HARD_PRESSED);
clear_button_buffer(PC_UP_HARD_PRESSED);
clear_button_buffer(PC_DOWN_HARD_PRESSED);
clear_button_buffer(PC_LEFT_STRONG_PRESSED);
clear_button_buffer(PC_RIGHT_STRONG_PRESSED);
clear_button_buffer(PC_UP_STRONG_PRESSED);
clear_button_buffer(PC_DOWN_STRONG_PRESSED);
clear_button_buffer(PC_LEFT_STICK_PRESSED);
clear_button_buffer(PC_RIGHT_STICK_PRESSED);
clear_button_buffer(PC_UP_STICK_PRESSED);
clear_button_buffer(PC_DOWN_STICK_PRESSED);
clear_button_buffer(PC_JUMP_PRESSED);
clear_button_buffer(PC_ATTACK_PRESSED);
clear_button_buffer(PC_SHIELD_PRESSED);
clear_button_buffer(PC_SPECIAL_PRESSED);
clear_button_buffer(PC_STRONG_PRESSED);
clear_button_buffer(PC_TAUNT_PRESSED);
#define enemy_sprite_get(_name,_sprite) //Get the sprite of this article
return sprite_get(string(_name)+"_"+string(_sprite));

#define get_attack_name(_attack) //get the name of an attack

switch _attack {
    case AT_JAB:
        return "AT_JAB";
    case AT_DATTACK:
        return "AT_DATTACK";
    case AT_FTILT:
        return "AT_FTILT";
    case AT_DTILT:
        return "AT_DTILT";
    case AT_UTILT:
        return "AT_UTILT";
    case AT_NAIR:
        return "AT_NAIR";
    case AT_FAIR:
        return "AT_FAIR";
    case AT_UAIR:
        return "AT_UAIR";
    case AT_DAIR:
        return "AT_DAIR";
    case AT_BAIR:
        return "AT_BAIR";
    case AT_FSTRONG:
        return "AT_FSTRONG";
    case AT_USTRONG:
        return "AT_USTRONG";
    case AT_DSTRONG:
        return "AT_DSTRONG";
    case AT_DSPECIAL:
        return "AT_DSPECIAL";
    case AT_USPECIAL:
        return "AT_USPECIAL";
    case AT_FSPECIAL:
        return "AT_FSPECIAL";
    case AT_NSPECIAL:
        return "AT_FSPECIAL";
    case AT_DSPECIAL_AIR:
        return "AT_DSPECIAL_AIR";
    case AT_USPECIAL_GROUND:
        return "AT_USPECIAL_GROUND";
    case AT_FSPECIAL_AIR:
        return "AT_FSPECIAL_AIR";
    case AT_NSPECIAL_AIR:
        return "AT_FSPECIAL_AIR";
    case AT_TAUNT:
        return "AT_TAUNT";
    case AT_DTHROW:
        return "AT_DTHROW";
    case AT_FTHROW:
        return "AT_FTHROW";
    case AT_NTHROW:
        return "AT_NTHROW";
    case AT_UTHROW:
        return "AT_UTHROW";
    case AT_FSTRONG_2:
        return "AT_FSTRONG_2";
    case AT_USTRONG_2:
        return "AT_USTRONG_2";
    case AT_DSTRONG_2:
        return "AT_DSTRONG_2";
    case AT_TAUNT_2:
        return "AT_TAUNT_2";
    case AT_EXTRA_1:
        return "AT_EXTRA_1";
    case AT_EXTRA_2:
        return "AT_EXTRA_2";
    case AT_EXTRA_3:
        return "AT_EXTRA_3";
}

#define set_sprite_from_state(_enemyID, _state) //Gets the sprite name from a art_state. The sprites have the same names as player sprites.
var _sprite = "";
switch (_state) {
    case PS_IDLE:
    case PS_SPAWN:
        _sprite = "idle";
        break;
    case PS_WALK:
        _sprite = "walk";
        break;
    case PS_WALK_TURN:
        _sprite = "walkturn";
        break;
    case PS_FIRST_JUMP:
    case PS_IDLE_AIR:
        _sprite = "jump";
        break;
    case PS_JUMPSQUAT:
        _sprite = "jumpstart";
        break;
    case PS_DOUBLE_JUMP:
        _sprite = "doublejump";
        break;
    case PS_AIR_DODGE:
        _sprite = "airdodoge";
        break;
    case PS_DASH:
        _sprite = "dash";
        break;
    case PS_DASH_START:
        _sprite = "dashstart";
        break;
    case PS_DASH_STOP:
        _sprite = "dashstop";
        break;
    case PS_DASH_TURN:
        _sprite = "dashturn";
        break;
    case PS_LAND:
        _sprite = "land";
        break;
    case PS_LANDING_LAG:
        _sprite = "landinglag";
        break;
    case PS_WAVELAND:
        _sprite = "waveland";
        break;
    case PS_PRATFALL:
        _sprite = "pratfall";
        break;
    case PS_CROUCH:
        _sprite = "crouch";
        break;
    case PS_PARRY:
        _sprite = "parry";
        break;
    case PS_HITSTUN:
    case PS_HITSTUN_LAND:
    case PS_TUMBLE:
        if (!free) {
            if (kb_power >= 10)
                _sprite = "bighurt";
            else
                _sprite = "hurtground";
        }
        else {
            if (kb_angle < 70 && kb_angle > 110) {
                _sprite = "uphurt";
            }
            else if (kb_angle < 290 && kb_angle > 250) {
                _sprite = "uphurt";
            }
            else {
                if (state_timer <= 10) {
                    if (kb_power >= 10)
                        _sprite = "bighurt";
                    else
                        _sprite = "hurt";
                }
                else
                {
                    _sprite = "spinhurt";
                }
            }
        }
        break;
    default:
        _sprite = "idle";
        break;
}
sprite_index = enemy_sprite_get(spr_name, _sprite);

if (sprite_index == asset_get("net_disc_spr")) { //The origin of the X Sprite 
    switch (_state) {
        case PS_HITSTUN:
        case PS_HITSTUN_LAND:
        case PS_TUMBLE:
            sprite_index = enemy_sprite_get(spr_name, "hurt");
        break;
        default:
            sprite_index = enemy_sprite_get(spr_name, "idle");
        break;
    }
}
if (sprite_index == asset_get("net_disc_spr")) { //The origin of the X Sprite 
    sprite_index = enemy_sprite_get(spr_name, "idle");
}

#define enemy_got_hit(_hbox)
if instance_exists(_hbox) && (!("hit_owner" in _hbox) || _hbox.hit_owner != id) && (!("team" in _hbox) || _hbox.team != team)  && hit_lockout <= 0 && (last_hitbox != _hbox ) && (_hbox.hbox_group == -1 || _hbox.hbox_group != hbox_group) {
    
    var d_mult = 1;
    if (multiplayer_damage_reduction) {
        var alive_players = obj_stage_main.player_count;
        if (alive_players > 1) {
                d_mult = 0.8;
                if (alive_players > 2)
                    d_mult -= 0.02 * (alive_players - 2)
        }
    }
    if (invince_type <= 0 || (invince_type > 0 && invince_type != _hbox.type)) {
        with _hbox {
            other.percent += ceil(damage * d_mult);
            other.kb_power = kb_value+other.percent*0.12*kb_scale*other.knockback_adj;
            if (other.hitstun <= 0 || kb_value*4*((other.knockback_adj-1)*0.6+1)+other.percent*0.12*kb_scale*4*0.65*other.knockback_adj >= other.hitstun) {
	            if (!other.super_armor && other.knockback_adj != 0 && other.kb_power > other.soft_armor) {
	                other.spr_dir = -spr_dir;
	                other.hitstun = kb_value*4*((other.knockback_adj-1)*0.6+1)+other.percent*0.12*kb_scale*4*0.65*other.knockback_adj;
	                other.hitstun_full = other.hitstun;
	            }
            }
    		if (other.percent < other.hitpoints_max)
                other.hitpause = min(hitpause + other.percent*hitpause_growth*0.05, 20) + extra_hitpause;
            else
                other.hitpause = 3;
            other.old_hsp = other.hsp;
            other.old_vsp = other.vsp;
            if no_other_hit != 0 other.hit_lockout = no_other_hit + other.hitpause;
            else other.hit_lockout = other.hitpause + 1 - extra_hitpause;
            other.hit_sound = sound_effect;
            other.hit_visual = hit_effect;
            other.hbox_group = hbox_group;
            other.flinch_time = (force_flinch == 1 && !other.free) || (force_flinch == 2 && other.art_state == PS_CROUCH) ? 15 : 0;
            if (dumb_di_mult != 0) {
                other.dumb_di_mult = dumb_di_mult;
            }
            if (camera_shake != -1) {
                var value_check = other.knockback_adj != 0 ? other.kb_power : kb_value+other.percent*0.12*kb_scale;
                if ((camera_shake == 0 && value_check >= 10) || camera_shake == 1) {
                    shake_camera(round(max(value_check, 10)), 5);
                }
                
            }
        }
        last_hitbox = _hbox;
        kb_angle = get_hitbox_angle(_hbox);
        art_state = PS_HITSTUN;
        state = art_state;
        if (kb_angle == 361) {
            if (free)
                kb_angle = 45;
            else
                kb_angle = 40;
        }
        with oPlayer {
            if (id == _hbox.player_id) {
                has_hit = 1;
                if (other.knockback_adj != 0) {
                    has_hit_player = 1;
                }
                has_hit_id = other.id;
                if (_hbox.type != 2) {
                    old_vsp = vsp;
                    old_hsp = hsp;
                    hitstop = other.hitpause - _hbox.extra_hitpause;
                    hitpause = 1;
                    hsp = 0;
                    vsp = 0;
             
                }
            }
        }
        hit_player_id = _hbox.player_id;
		if _hbox.player_id != 0 with _hbox.player_id {
		    if "hit_player_event" in self && hit_player_event != -1 {
		        // hit_player = -1; //Not a player
		        hit_player = 5; //Stage Player
		        hit_player_obj = other.id;
				my_hitboxID = _hbox;
		        user_event(hit_player_event);
		    } 
		}
        if (!_hbox.fx_created && _hbox.hbox_group != -1) || _hbox.hbox_group == -1 {
            _hbox.fx_created = true;
            if (hit_visual >= 0)
                with (_hbox) {
                    var fx = spawn_hit_fx(x + (spr_dir * hit_effect_x), y + hit_effect_y, hit_effect);
                    fx.pause = 8;
                }
            if (_hbox.hitstun_factor != -1)
                sound_play(hit_sound);
        }
        has_hit = 1;
        if (!is_boss) {
            with (obj_stage_main) {
                active_enemy = other.id;
                active_enemy_timer = 0;
            }
        }
        orig_knock = kb_power;
        custom_behavior(EN_EVENT.GOT_HIT);
        if (_hbox.type == 2 && _hbox.enemies == 0) {
            _hbox.fx_created = true;
            _hbox.destroyed_next = true;
        }
    }
}
#define reset_attack_grid(_attack)
with obj_stage_main { //Main stage script object
    for (var i = 0; i <= 20; i++) {
        set_attack_value(_attack, i, 0);
    }
    if (other.ag_num_windows > 0)
    for (var w = 1; w <= other.ag_num_windows; w++) {
        for (var i = 0; i <= 13; i++) {
            set_window_value(_attack, w, i, 0);
        }
        set_window_value(_attack, w, 24, 0);
        set_window_value(_attack, w, 26, 0);
        set_window_value(_attack, w, 31, 0);
        set_window_value(_attack, w, 32, 0);
        set_window_value(_attack, w, 57, 0);
        set_window_value(_attack, w, 58, 0);
        set_window_value(_attack, w, 59, 0);
        set_window_value(_attack, w, 60, 0);
    }
    if (other.hg_num_hitboxes > 0)
    for (var w = 1; w <= other.hg_num_hitboxes; w++) {
        for (var i = 0; i <= 60; i++) {
            set_hitbox_value(_attack, w, i, 0);
        }
    }
}

#define reset_hitbox_grid(_attack, _hbox_num)
with obj_stage_main { //Main stage script object if (other.hg_num_hitboxes > 0 && _for_hitbox)
    for (var i = 0; i <= 60; i++) {
        set_hitbox_value(_attack, _hbox_num, i, 0);
    }
}

#define custom_behavior(_eventID)
art_event = _eventID
user_event(6); //Custom behavior

#define ai_di()
var target_start_dir = 1;
joy_pad_idle = false;
left_down = false;
up_down = false;
down_down = false;
right_down = false;
if (instance_exists(ai_target)) {
	if (ai_target.x < x)
	    target_start_dir = -1;
	else
	    target_start_dir = 1;
}
var initial_hsp = old_hsp;
var random_drift_dir = random_func(enem_id +50, 5, true);
var perfect_di_dir = 0;
var bad_di_dir = 0;
var in_di_dir = 0;
var out_di_dir = 0;
var need_to_survive = 0;
var di_dir_sign = 1;
var out_di_sign = 1;

var kb_ang = point_direction(0, 0, old_hsp, old_vsp);
var kb_pow = point_direction(0, 0, old_hsp, old_vsp);
if ((kb_ang > 90 && kb_ang <= 180) || kb_ang > 270) {
    in_di_dir = (kb_ang - 90);
    out_di_dir = (kb_ang + 90);
    out_di_sign = 1;
}
else if (kb_ang == 90) {
    in_di_dir = (kb_ang - (90 * target_start_dir));
    out_di_dir = (kb_ang + (90 * target_start_dir));
    out_di_sign = target_start_dir;
}
else if (kb_ang == 270) {
    in_di_dir = (kb_ang + (90 * target_start_dir));
    out_di_dir = (kb_ang - (90 * target_start_dir));
    out_di_sign = -target_start_dir;
}
else {
    in_di_dir = (kb_ang + 90);
    out_di_dir = (kb_ang - 90);
    out_di_sign = -1;
}

var ai_di_dir = kb_ang;

if ((kb_ang > 260 && kb_ang < 280) || (kb_ang > -100 && kb_ang < -80)) {
    if (x < (view_get_xview() + view_get_wview()/2)) {
        perfect_di_dir = (kb_ang + 90);
        di_dir_sign = -1;
    }
    else {
        perfect_di_dir = (kb_ang - 90);
        di_dir_sign = 1;
    }
    bad_di_dir = perfect_di_dir + 180;
}
else if (kb_ang > 80 && kb_ang < 100) {
    if (ai_target.hsp > 1) {
        perfect_di_dir = (kb_ang - 90);
        bad_di_dir = perfect_di_dir + 180;
        di_dir_sign = 1;
    }
    else if (ai_target.hsp > 1) {
        perfect_di_dir = (kb_ang + 90);
        bad_di_dir = perfect_di_dir + 180;
        di_dir_sign = -1;
    }
    else {
        if (random_func(enem_id +50, 7, true)) {
            perfect_di_dir = (kb_ang + 90);
            di_dir_sign = -1;
        }
        else {
            perfect_di_dir = (kb_ang - 90);
            di_dir_sign = 1;
        }
        bad_di_dir = kb_ang;
    }
}
else {
    perfect_di_dir = kb_ang;
    bad_di_dir = out_di_dir;
}
var strong_kb = 13;
var successsful_di = false;
if (di_level == 1)
    joy_dir = bad_di_dir;
else if (di_level == 2) {
    joy_pad_idle = true;
    left_down = false;
    up_down = false;
    down_down = false;
    right_down = false;
}
else if (di_level == 3) {
    if (ai_di_dir == 0) {
        right_down = 1;
        joy_dir = 0;
    }
    if (ai_di_dir == 180) {
        left_down = 1;
        joy_dir = 180;
    }
    if (ai_di_dir == 270) {
        down_down = 1;
        joy_dir = 270;
    }
    if (ai_di_dir == 90) {
        up_down = 1;
        joy_dir = 90;
    }
}
else if (di_level == 4) {
    if (random_func(enem_id +50, 9, true)) {
        right_down = true;
        joy_dir = 0;
    }
    else {
        left_down = 1;
        joy_dir = 180;
    }
}
else if (di_level == 9) {
    joy_dir = perfect_di_dir;
}
else {
    var good_di_range = 45;
    var bad_di_range = 90;
    var combo_di_chance = 15;
    if (di_level == 6) {
        good_di_range = 30;
        bad_di_range = 60;
        combo_di_chance = 50;
    }
    else if (di_level == 7) {
        good_di_range = 20;
        bad_di_range = 45;
        combo_di_chance = 75;
    }
    else if (di_level == 8) {
        good_di_range = 15;
        bad_di_range = 20;
        combo_di_chance = 90;
    }
    var di_chance = combo_di_chance;
    if (random_func(enem_id +50, 8, true))
        successsful_di = true;
        
    if (successsful_di) {
        joy_dir = perfect_di_dir
        joy_dir += random_func(enem_id +12, good_di_range, true) * di_dir_sign;
    }
    else {
        joy_dir = kb_ang
        joy_dir += random_func(enem_id +13, bad_di_range, true) * di_dir_sign;
    }
}

#define array_cut(_array, _index)
var _array_cut = array_create(array_length_1d(_array)-1);
var j = 0;
for (var i = 0; i < array_length_1d(_array); i++) {
	if i != _index {
		_array_cut[@j] = _array[i];
		j++;
	}
}
return _array_cut;