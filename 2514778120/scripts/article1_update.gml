//Buddy Update
force_depth = 1;

if hitpause <= 1 { 
    if (hitstun <= 0) {
        hsp = old_hsp;
        vsp = old_vsp;
    }
}
else {
    hsp = 0;
    vsp = 0;
}

if (hitpause > 0)
    hitpause--;
    
if next_attack != -1 attack_start();

if (follow_type == 0) invincible = 1;
follower_hit();
physics_update();
state_machine();
animation_machine();
if (state == PS_ATTACK_AIR)
        attack_machine();
with (pHitBox) {
    if ("sword_owner" in self && player_id == other.id && type == 1) {
        if (instance_exists(sword_owner)) {	
	        if (sword_owner.follow_type == 0 && ((at_type == 1 && !player_id.free) && (at_type == 0 && player_id.free))) {
	        	instance_destroy(id);
	        	exit;
	        }
        }
    }
}

mask_index = collision_box;
visible = state != PS_RESPAWN;

if (follow_type == 0) {
    if (sprite_type == 0) {
        depth = player_id.depth - force_depth;
    }
    else {
        depth = player_id.depth + force_depth;
    }
}
else {
	depth = 0;
}

if (y >= room_height && (state == PS_HITSTUN || state == PS_DEAD)) {
    percent = hitpoints_max;
    sound_play(asset_get("sfx_death2"))
    //death_effect_spawn();
    shake_camera(12, 6);
    follower_set_state(PS_RESPAWN);
}

if ((x >= room_width || x <= 0) && (state == PS_HITSTUN || state == PS_DEAD)) {
    percent = hitpoints_max;
    sound_play(asset_get("sfx_death2"))
    //death_effect_spawn();
    shake_camera(12, 6);
    follower_set_state(PS_RESPAWN);
}

//Kill the swords when the player is dead or respawning.
if ((player_id.state == PS_DEAD || player_id.state == PS_RESPAWN) && state != PS_RESPAWN) {
    follower_set_state(PS_RESPAWN);
    hitstun = 0;
    hitpause = 0;
    state_timer = get_match_setting(SET_PRACTICE) ? respawn_time : 0;
    spawn_hit_fx(round(x), round(y), fx_death)
    
}

if (hitpause <= 0) {
    if (hitstun <= 0) {
        old_hsp = hsp;
        old_vsp = vsp;
    }
}

#define physics_update()
if (follow_type == 1) {
    ignores_walls = false;
    can_be_grounded = true;
}
else {
    ignores_walls = true;
    can_be_grounded = false;
}
if (dspecial_move > 0) {
    if (free && dspecial_move == 1)
        vsp += hitstun_grav 
    if hit_wall hsp = -old_hsp*.7;
    if (vsp > 3) {
    	dspecial_move = 2;
    }
    if (dspecial_move == 2) {
		hsp *= 1-ground_friction;
	    vsp *= 1-ground_friction;
    }
    if ((vsp <= 0.05 || !free) && dspecial_move == 2) {
    	vsp = 0;
    	dspecial_move = 0;
    }
}
else {
	if (state != PS_ATTACK_AIR) {
	    if (free) {
	        if (state == PS_HITSTUN || state == PS_DEAD){
	            hsp *= 1-air_friction;
	        }
	        else {
	            hsp *= 1-air_friction;
	            vsp *= 1-air_friction;
	        }
	    }
	    else {
	        if (state == PS_HITSTUN) {
	            hsp *= 1-ground_friction;
	        }
	        else {
	            hsp *= 1-ground_friction;
	        }
	    }
	} 
}


#define state_machine()
var prev_spr_dir = spr_dir;
var target_x = player_id.x + follower_offset_x * player_id.spr_dir;
var target_y = player_id.y + follower_offset_y;
var target_dir = point_direction(x, y, target_x, target_y);
var target_dist = point_distance(x, y, target_x, target_y);

state_timer++;

if hitstun <= 0 {
    if next_state != -1 state_start()
} else {
    if (state != PS_DEAD) {
        state = PS_HITSTUN;
    }
}

if (state != PS_ATTACK_AIR)
    strong_charge = 0;

switch (state) {
    case PS_SPAWN:
        x = target_x;
        y = target_y;
        follower_set_state(PS_IDLE);
        break;
     
    case PS_IDLE:
        committed = 0;
        if (follow_type == 0) {
            x += lengthdir_x(target_dist / max(1, follow_speed), target_dir);
            y += lengthdir_y(target_dist / max(1, follow_speed), target_dir);
            
            if (player_id.spr_dir != spr_dir)
                follower_set_state(PS_WALK_TURN);
        }
            
        break;
    case PS_WALK_TURN:
        committed = 0;
        if (follow_type == 0) {
            x += lengthdir_x(target_dist / max(1, follow_speed), target_dir);
            y += lengthdir_y(target_dist / max(1, follow_speed), target_dir);
        }
        if (state_timer == 1)
            spr_dir = -spr_dir;
        if (state_timer >= walk_turn_time) {
            follower_set_state(PS_IDLE);
        }
    break;
    case PS_ATTACK_AIR:
        committed = 1;
        if (player_id.sword_attack_can_move[sprite_type, attack]) {
            if (follow_type == 0) {
                target_x = player_id.x + player_id.sword_attack_xoff[sprite_type, attack] * player_id.spr_dir;
                target_y = player_id.y + player_id.sword_attack_yoff[sprite_type, attack];
                target_dir = point_direction(x, y, target_x, target_y);
                target_dist = point_distance(x, y, target_x, target_y);
                x += lengthdir_x(target_dist / max(1, 4), target_dir);
                y += lengthdir_y(target_dist / max(1, 4), target_dir);
            }
        }
    break;
    case PS_HITSTUN:
    case PS_TUMBLE:
    case PS_DEAD:
        committed = 1;
        go_back = false;
        dspecial_move = false;
        if hitpause > 0 {
            hit_ground = false;
            state_timer = 0;
        } else {
            if (state_timer == 1 && knockback_adj != 0) {
                if (state == PS_DEAD) orig_knock *= 1.25;
                var new_dir = degtorad(kb_angle);
                if !free && new_dir > 3.14159 && new_dir < 3.14159*2 vsp = orig_knock*sin(new_dir);
                else if !free vsp = -abs(orig_knock*sin(new_dir));
                else vsp = -orig_knock*sin(new_dir);
                hsp = orig_knock*cos(new_dir);
                if hsp != 0 spr_dir = -sign(hsp);
            }
            if hit_wall hsp = -old_hsp*.7;
            if (state == PS_DEAD) {
                invincible = 1;
                vsp += hitstun_grav;
                if (get_gameplay_time() % 4 == 0) {
                    spawn_hit_fx(round(x), round(y), 13);
                }
                if (state_timer >= 60) {
                    hitstun = 0;
                    hit_ground = false;
                    bounced = false;
                    sound_play(asset_get("sfx_ori_seinhit_medium"));
                    spawn_hit_fx(round(x), round(y), fx_death)
                    follower_set_state(PS_RESPAWN);
                }
                
                if (!free) {
                    vsp = -old_vsp - 8;
                }
            }
            else {
                if (vsp >= 3 && !free && !hit_ground && hitstun > 0) {
                    if (old_vsp > 3 && kb_angle > 180 && kb_angle < 360) {
                        vsp = -old_vsp * 0.5 - 4;
                        hitstun = hitstun_full;
                        bounced = true;
                    }
                    else if (vsp > -1 && state != PS_DEAD) {
                        if (state_timer < 5)
                            hitstun += flinch_time;
                    }
                }
                if (free)
                    vsp += hitstun_grav 
            }
                
                
            old_hsp = hsp;
            old_vsp = vsp;
            if hitstun <= 0 {
                if (!free) {
                    if (state != PS_DEAD) {
                        if (!hit_ground) {
                            hitstun = hitstun_full / 4;
                            hit_ground = true;
                        }
                        else {
                            hitstun = 0;
                            hit_ground = false;
                            bounced = false;
                            follower_set_state(PS_LANDING_LAG);
                        }
                    }
                }
            }
            else {
                hitstun--;
            }
        }
        break;
    case PS_LANDING_LAG:
        committed = 1;
        invincible = 2;
        go_back = false;
        dspecial_move = false;
        if (state_timer < 4) {
            y -= 2;
            vsp = -8;
        }
        else {
            vsp *= 0.7;
            if (abs(vsp) <= 0.1) {
                follower_set_state(PS_IDLE);
            }
        }
    break;
    
    case PS_RESPAWN:
        committed = 1;
        invincible = 2;
        x += lengthdir_x(target_dist / max(1, follow_speed), target_dir);
        y += lengthdir_y(target_dist / max(1, follow_speed), target_dir);
            
        var respawn = respawn_time;
        var player_count = 0;
        with (oPlayer) {
            if (is_player_on(player) && !clone && !custom_clone)
                player_count++;
        }
        
        if (player_count == 3) {
            respawn = respawn_time * 0.75;
        }
        
        if (player_count == 4) {
            respawn = respawn_time * 0.5;
        }
        
        
        if ((state_timer >= respawn && player_id.state != PS_DEAD) || (player_id.state == PS_RESPAWN && player_id.visible)) {
            committed = 0;
            percent = 0;
		    attack = AT_NSPECIAL;
		    strong_charge = 0;
		    window_timer = 1;
		    window = 14;
		    go_back = false;
		    player_id.sword_shared_sound = -1;
		    follower_set_state(PS_ATTACK_AIR);
        }
        break;
}
if (state == PS_DEAD || state == PS_RESPAWN){
	percent = hitpoints_max;
}
if (go_back && !committed) {
    attack = AT_NSPECIAL;
    strong_charge = 0;
    state_timer = 0;
    window_timer = 1;
    window = 14;
    go_back = false;
    player_id.sword_shared_sound = -1;
    follower_set_state(PS_ATTACK_AIR);
	sprite_index = player_id.sword_attack_spr[sprite_type, attack];
	hurtbox_mask = player_id.sword_attack_hurtbox_spr[sprite_type, attack];
	image_index = 0;
}

#define animation_machine()
switch (state) {
    case PS_SPAWN:
    case PS_LANDING_LAG:
    case PS_IDLE:
        sprite_index = sword_get_sprite("idle");
        hurtbox_mask = hurtbox_spr;
        if (state_timer == 1 && sprite_type == 1) {
            image_index = image_number / 2 - 1;
        }
        image_index += idle_anim_speed;
    break
    case PS_WALK_TURN:
        hurtbox_mask = hurtbox_spr;
        sprite_index = sword_get_sprite("walkturn");
        image_index = ease_linear(0, image_number, state_timer, walk_turn_time);
    break;
    case PS_ATTACK_AIR:
        image_index = clamp(sword_get_window_value(attack, window, AG_WINDOW_ANIM_FRAME_START)+floor(ease_linear(0,sword_get_window_value(attack, window, AG_WINDOW_ANIM_FRAMES),window_timer,
            floor((sword_get_window_value(attack, window, AG_WINDOW_LENGTH)) *(1+.5*sword_get_window_value(attack, window, AG_WINDOW_HAS_WHIFFLAG)*(!has_hit_player))))), 0, image_number - 1);
    break;
    case PS_HITSTUN:
    case PS_HITSTUN_LAND:
    case PS_TUMBLE:
        hurtbox_mask = hurtbox_spr;
        set_sprite_hitstun();
        break;
    case PS_DEAD:
        hurtbox_mask = hurtbox_spr;
        sprite_index = sword_get_sprite("spinhurt");
        if (hitpause <= 0)
            image_index += 0.15;
    break;
}

#define set_sprite_hitstun()
var spr_name = -1;
if (!free) {
    if (orig_knock >= 10)
        spr_name = "bighurt";
    else
        spr_name = "hurt";
}
else {
    if (state_timer <= 10) {
        if (orig_knock >= 10)
            spr_name = "bighurt";
        else
            spr_name = "hurt";
        if (vsp < 0) {
            spr_name = "uphurt";
        }
        else if (vsp > 0) {
            spr_name = "downhurt";
        }
    }
    else
    {
        spr_name = "spinhurt";
        if (hitpause <= 0)
        image_index += 0.15;
    }
}

if (spr_name != -1) {
    sprite_index = sword_get_sprite(spr_name);
}

#define attack_machine()
if (hitpause <= 0) {
    switch sword_get_window_value(attack, window, AG_WINDOW_HSPEED_TYPE) {
        case 2:
            if window_timer == 0 hsp = sword_get_window_value(attack, window, AG_WINDOW_HSPEED)*spr_dir;
            break;
        case 1:
            hsp = sword_get_window_value(attack, window, AG_WINDOW_HSPEED)*spr_dir;
            break;
        default:
            if window_timer == 0 hsp += sword_get_window_value(attack, window, AG_WINDOW_HSPEED)*spr_dir;
            break;
    }


    switch sword_get_window_value(attack, window, AG_WINDOW_VSPEED_TYPE) {
        case 2:
            if window_timer == 0 vsp = sword_get_window_value(attack, window, AG_WINDOW_VSPEED);
            break;
        case 1:
            vsp = sword_get_window_value(attack, window, AG_WINDOW_VSPEED);
            break;
        default:
            if window_timer == 0 vsp += sword_get_window_value(attack, window, AG_WINDOW_VSPEED);
            break;
    }
    
    //Sounds
    if sword_get_window_value(attack, window, AG_WINDOW_HAS_SFX) == 1 && sword_get_window_value(attack, window, AG_WINDOW_SFX_FRAME) == window_timer && sword_get_window_value(attack, window, AG_WINDOW_SFX) != 0 
        sound_play(sword_get_window_value(attack, window, AG_WINDOW_SFX));
        
    var a_frict = air_friction*2;
    if (sword_get_window_value(attack, window, AG_WINDOW_HAS_CUSTOM_FRICTION) == 1) {
        a_frict = sword_get_window_value(attack, window, AG_WINDOW_CUSTOM_AIR_FRICTION);
    }
    
    if (dspecial_move <= 0) {
	    hsp *= 1-a_frict;
	    vsp *= 1-a_frict;
    }
    
    sprite_index = player_id.sword_attack_spr[sprite_type, attack];
    hurtbox_mask = player_id.sword_attack_hurtbox_spr[sprite_type, attack];
    
    for (var j = player_id.sword_window_hitbox_min[sprite_type, attack]; j <= player_id.sword_window_hitbox_max[sprite_type, attack]; j += 1) if window == sword_get_hitbox_value(attack, j, HG_WINDOW) && window_timer == sword_get_hitbox_value(attack, j, HG_WINDOW_CREATION_FRAME) {
        var hitb = create_hitbox(attack,j,round(x) + sword_get_hitbox_value(attack, j, HG_HITBOX_X)*spr_dir,round(y) + sword_get_hitbox_value(attack, j, HG_HITBOX_Y));
        hitb.type = sword_get_hitbox_value(attack, j, HG_HITBOX_TYPE) == 0 ? 1 : sword_get_hitbox_value(attack, j, HG_HITBOX_TYPE);
        if not "sword_owner" in hitb hitb.sword_owner = id;
        var x_off = 0;
        var y_off = 0;
        with (player_id) {
            x_off = get_hitbox_value(attack, hitb.hbox_num, HG_HITBOX_X);
            y_off = get_hitbox_value(attack, hitb.hbox_num, HG_HITBOX_Y);
        }
    }
	
    
    if (sword_get_window_value(attack, window, AG_WINDOW_INVINCIBILITY) == 1)
        invincible = 2;
    if (sword_get_window_value(attack, window, AG_WINDOW_INVINCIBILITY) == 2) {
        invincible = 2;
        invince_type = 2;
    }
    var last_window_timer = sword_get_window_value(attack, window, AG_WINDOW_LENGTH)*(1+.5*sword_get_window_value(attack, window, AG_WINDOW_HAS_WHIFFLAG)*(!has_hit_player));
    
    if (window != player_id.sword_attack_charge_window[sprite_type, attack]) || (window == player_id.sword_attack_charge_window[sprite_type, attack] && window_timer < last_window_timer) {
        window_timer++;
        strong_charge = 0;
     }
    attack_update();
     
    if (window_timer >= last_window_timer) {
        if (window == player_id.sword_attack_charge_window[sprite_type, attack]) {
            if (follower_charging_attack() && strong_charge < 60)
                strong_charge ++;
            else {
                strong_charge = 0;
                window++;
                window_timer = 0;
            }
        }
        else {
            if sword_get_window_value(attack, window, AG_WINDOW_TYPE) != 9 {
                if (sword_get_window_value(attack, window, AG_WINDOW_GOTO) > 0)
                    window = sword_get_window_value(attack, window, AG_WINDOW_GOTO);
                else
                    window++;
            }
            window_timer = 0;
            strong_charge = 0;
        }
        if (strong_charge == 0) {
            if window > player_id.sword_window_max[sprite_type, attack] {
                follower_set_state(PS_IDLE);
                hurtbox_mask = hurtbox_spr;
                window = 1;
                window_timer = 0;
                invince_type = 0;
                strong_charge = 0;
            }
        }
    }
}

#define attack_start()
has_hit_player = false;
was_parried = false;
attack = next_attack;
strong_charge = 0;
window_timer = 1;
window = player_id.sword_window_min[sprite_type, attack];
sprite_index = player_id.sword_attack_spr[sprite_type, attack];
hurtbox_mask = player_id.sword_attack_hurtbox_spr[sprite_type, attack];
image_index = 0;
follower_set_state(PS_ATTACK_AIR);
next_attack = -1;

#define sword_get_attack_value(_attack, _window_value)
with (player_id) {
    return get_attack_value(_attack, _window_value)
}

#define sword_get_window_value(_attack, _window, _window_value)
with (player_id) {
    return get_window_value(_attack, _window, _window_value)
}

#define sword_get_hitbox_value(_attack, _window, _window_value)
with (player_id) {
    return get_hitbox_value(_attack, _window, _window_value)
}

#define follower_set_state(new_state)
image_index = 0;
prev_state = state;
state_timer = 0;
state = new_state;
available_swords();
animation_machine();

#define state_start()
image_index = 0;
prev_state = state;
state_timer = 0;
state = next_state;
next_state = -1;
animation_machine();

#define sword_get_sprite(name)
return sprite_get("sword" + string(sprite_type) + "_" + name)
#define attack_update()
if (attack == AT_UTILT) {
    if (window == 7 && window_timer == sword_get_window_value(attack, window, AG_WINDOW_LENGTH) - 1) {
        var x_offset = (player_id.x + (36 * player_id.spr_dir));
        var y_offset = player_id.y - 48;
        while (y_offset <= 8) {
            if (collision_rectangle(bbox_left - 2, bbox_bottom + 50, bbox_right + 2, bbox_bottom + 51, asset_get("par_block"), 1, 0) ||
                collision_rectangle(bbox_left - 2, bbox_bottom + 50, bbox_right + 2, bbox_bottom + 51, asset_get("par_jumpthrough"), 1, 0)) 
                break;
            y_offset++;
        }
        if (!collision_rectangle(x_offset + 4 * spr_dir, y_offset + 50, x_offset + 5 * spr_dir, y_offset + 51, asset_get("par_block"), 1, 0) &&
            !collision_rectangle(x_offset + 4 * spr_dir, y_offset + 50, x_offset + 5 * spr_dir, y_offset + 51, asset_get("par_jumpthrough"), 1, 0))
            x_offset -= 32 * player_id.spr_dir;
        x = x_offset;
        y = y_offset;
    }
    if (window >= 8 && window <= 11) {
    	ignores_walls = false;
        can_be_grounded = true;
    }
    if (window == 12 && window_timer == 0) {
        x = player_id.x + follower_offset_x * player_id.spr_dir;
        y = player_id.y + follower_offset_y;
    }
    if (window == 12 && window_timer == 0) {
        x = player_id.x + follower_offset_x * player_id.spr_dir;
        y = player_id.y + follower_offset_y;
    }
}

if (attack == AT_DSTRONG) {
    if (window == 11 || window == 12)
        force_depth = -1;
}

if (attack == AT_DAIR) {
    if (window > 7 && window < 10) {
        if (follow_type == 0) {
            target_x = player_id.x + player_id.sword_attack_xoff[sprite_type, attack] * player_id.spr_dir;
            target_y = player_id.y + player_id.sword_attack_yoff[sprite_type, attack];
            target_dir = point_direction(x, y, target_x, target_y);
            target_dist = point_distance(x, y, target_x, target_y);
            x += lengthdir_x(target_dist / max(1, 4), target_dir);
            y += lengthdir_y(target_dist / max(1, 4), target_dir);
        }
    }
    if (window == 12 && window_timer == 0) {
        x = player_id.x + follower_offset_x * player_id.spr_dir;
        y = player_id.y + follower_offset_y;
    }
}

if (attack == AT_NSPECIAL) {
    invincible = 1;
    dspecial_move = 0;
    if (window < 8) {
        if (follow_type == 0) {
            ignores_walls = false;
            can_be_grounded = true;
            target_x = player_id.x + player_id.sword_attack_xoff[sprite_type, attack] * player_id.spr_dir;
            target_y = player_id.y + player_id.sword_attack_yoff[sprite_type, attack];
            var target_dir = point_direction(x, y, target_x, target_y);
            var target_dist = point_distance(x, y, target_x, target_y);
            x += lengthdir_x(target_dist / max(1, 4), target_dir);
            y += lengthdir_y(target_dist / max(1, 4), target_dir);
        }
    }
    if (window == 8 || window == 10) {
        vsp = 0;
        if (window_timer == 1) {
            hsp = 0;
        }
        if (window_timer == sword_get_window_value(attack, window, AG_WINDOW_LENGTH)) {
            follow_type = 1;
            hsp = ease_linear(20, 60, player_id.nspecial_charge_timer, player_id.nspecial_charge_timer_max) * spr_dir;
            if (window == 8) sound_play(asset_get("sfx_clairen_swing_mega_delayed"))
            if (window == 10) sound_play(asset_get("sfx_clairen_swing_mega_instant")) 
        }
    }
    
    if (window == 9) {
        if (window_timer % 2 == 0 && hitpause <= 0 && abs(hsp) <= 8 ) {
            var hitb = create_hitbox(attack,1,round(x) + sword_get_hitbox_value(attack, 1, HG_HITBOX_X)*spr_dir,round(y) + sword_get_hitbox_value(attack, 1, HG_HITBOX_Y));
            hitb.type = sword_get_hitbox_value(attack, 1, HG_HITBOX_TYPE) == 0 ? 1 : sword_get_hitbox_value(attack, 1, HG_HITBOX_TYPE);
            if not "sword_owner" in hitb hitb.sword_owner = id;
            if (abs(hsp) > 10)
                hitb.kb_value = 7;
        }
        if (collision_rectangle(x - 56, y - 32, x + 56, y - 16, asset_get("par_block"), 1, 0)) {
            hsp = 0;
            window = 12;
            window_timer = 0; 
            sound_play(asset_get("sfx_ell_dspecial_explosion_3"))
            shake_camera(4, 6);
        }
        else {
            if (abs(hsp) <= 0.05) {
                hsp = 0;
                window = 11;
                window_timer = 0;
            }
        }
    }
    if (window == 13) {
        if (window_timer == 2) {
            sound_play(asset_get("sfx_ori_bash_use"))
        }
    }
    if (window == 14) {
    	spr_dir = player_id.spr_dir;
    	if (window_timer == 2) {
        	if (player_id.sword_shared_sound == -1) {
            	player_id.sword_shared_sound = sound_play(asset_get("sfx_ori_bash_use"))
        	}
    	}
        if (window_timer >= 3) {
            follow_type = 0;
            var target_x = player_id.x + follower_offset_x * player_id.spr_dir;
            var target_y = player_id.y + follower_offset_y;
            target_dir = point_direction(x, y, target_x, target_y);
            target_dist = point_distance(x, y, target_x, target_y);
            if (window_timer == 3) {
                x = target_x;
                y = target_y;
            }
            else {
                x += lengthdir_x(target_dist / max(1, 4), target_dir);
                y += lengthdir_y(target_dist / max(1, 4), target_dir);
            }
        }
    }
}

if (attack == 49) {
    if (window > 6 && window < 8) {
        if (follow_type == 0) {
            target_x = player_id.x + player_id.sword_attack_xoff[sprite_type, attack] * player_id.spr_dir;
            target_y = player_id.y + player_id.sword_attack_yoff[sprite_type, attack];
            target_dir = point_direction(x, y, target_x, target_y);
            target_dist = point_distance(x, y, target_x, target_y);
            x += lengthdir_x(target_dist / max(1, 4), target_dir);
            y += lengthdir_y(target_dist / max(1, 4), target_dir);
        }
    }
    if (window == 10 && window_timer == 0) {
        x = player_id.x + follower_offset_x * player_id.spr_dir;
        y = player_id.y + follower_offset_y;
    }
}
        
#define follower_charging_attack()
var result = false;
if (attack == AT_USTRONG || attack == AT_USTRONG_2)
    if (player_id.up_strong_down)
        result = true;
if (attack == AT_DSTRONG || attack == AT_DSTRONG_2)
    if (player_id.down_strong_down)
        result = true;
if (attack == AT_FSTRONG || attack == AT_FSTRONG_2)
    if (player_id.right_strong_down && spr_dir == 1) || (player_id.left_strong_down && spr_dir == -1)
        result = true;
if (player_id.attack_down)
    result = true;
if (player_id.strong_down)
    result = true;
return result;

#define follower_hit()

if hit_player_id != noone && hit_player_id.object_index == oPlayer.object_index && ((hit_player_id.state != 5 &&  hit_player_id.state != 6) || hit_player_id.window == 1) {
    hbox_group = -1;
    hit_player_id = noone;
}


if invincible <= 0 {
    last_hitbox = hit_id;
    mask_index = hurtbox_mask;
    hit_id = instance_place(x, y, pHitBox);
    mask_index = collision_box;
    if hit_lockout > 0 hit_lockout--;
} else invincible--;

if (state != PS_RESPAWN && state != PS_DEAD) {
	if instance_exists(hit_id) && player_id != hit_id.player_id && hit_lockout <= 0 && last_hitbox != hit_id && (hit_id.hbox_group == -1 || hit_id.hbox_group != hbox_group) {
	    if (invincible <= 0) {
	        with hit_id {
	            if (!other.super_armor && other.knockback_adj != 0) {
	                other.spr_dir = -spr_dir;
	                other.hitstun = kb_value*4*((other.knockback_adj-1)*0.6+1)+other.percent*0.12*kb_scale*4*0.65*other.knockback_adj;
	                other.hitstun_full = other.hitstun;
	            }
	            other.percent += damage;
	            other.orig_knock = kb_value+other.percent*0.12*kb_scale*other.knockback_adj;
	    		other.hitpause = hitpause + other.percent*hitpause_growth*0.05 + extra_hitpause;
	            if no_other_hit != 0 other.hit_lockout = no_other_hit + other.hitpause;
	            else other.hit_lockout = other.hitpause + 1 - extra_hitpause;
	            other.hbox_group = hbox_group;
	            other.flinch_time = (force_flinch == 1 && !other.free) || (force_flinch == 2 && other.state == PS_CROUCH) ? 15 : 0;
	            
	            other.old_hsp = other.hsp;
	            other.old_vsp = other.vsp;
	            if (!fx_created && hbox_group != -1) || hbox_group == -1 {
	                fx_created = true;
	                if (hit_effect >= 0)
	                    with (other)
	                        spawn_hit_fx(x + (spr_dir * other.hit_effect_x), y + other.hit_effect_y, other.hit_effect);
	                if (hitstun_factor != -1)
	                    with (player_id)
	                        sound_play(other.sound_effect);
	            }
	            
	            if (camera_shake != -1) {
	                var value_check = other.knockback_adj != 0 ? other.orig_knock : kb_value+other.percent*0.12*kb_scale;
	                if ((camera_shake == 0 && value_check >= 10) || camera_shake == 1) {
	                    shake_camera(round(max(value_check, 10)), 5);
	                }
	                
	            }
	        }
	        kb_angle = get_hitbox_angle(hit_id);;
	        if (kb_angle == 361) {
	            if (free)
	                kb_angle = 45;
	            else
	                kb_angle = 40;
	        }
	        
	        if (percent >= hitpoints_max && hitpoints_max > 0) {
	            sound_play(asset_get("sfx_ori_bash_projectile"))
	            follower_set_state(PS_DEAD);
	        }
	        with hit_id.player_id {
	            has_hit_id = other.id;
	            has_hit = 1;
	            if (other.knockback_adj != 0) {
	                has_hit_player = 1;
	            }
	            if (other.hit_id.type != 2) {
	                old_vsp = vsp;
	                old_hsp = hsp;
	                hitstop = other.hitpause;
	                hitpause = 1;
	                hsp = 0;
	                vsp = 0;
	                other.hit_player_id = id;
	            }
	        }
	        
	            
	        if (hit_id.type == 2 && !hit_id.enemies) {
	        	instance_destroy(hit_id);
	        }
	    }
	}
	if instance_exists(hit_id) && player_id == hit_id.player_id && hit_id.attack == AT_DSPECIAL && hit_id.hbox_num == 1 && hit_lockout <= 0 && last_hitbox != hit_id && state != PS_HITSTUN && state != PS_DEAD && state != PS_RESPAWN {
		if (invincible <= 0) {
	        with hit_id {
	            //other.percent += damage;
	            other.orig_knock = ease_linear(round(kb_value * 1.66), round(kb_value * 1.33), hitbox_timer, length);
	    		other.hitpause = hitpause + other.percent*hitpause_growth*0.05 + extra_hitpause;
	            if no_other_hit != 0 other.hit_lockout = no_other_hit + other.hitpause;
	            else other.hit_lockout = other.hitpause + 1 - extra_hitpause;
	            if (!fx_created && hbox_group != -1) || hbox_group == -1 {
	                fx_created = true;
	                if (hit_effect >= 0)
	                    with (other)
	                        spawn_hit_fx(x + (spr_dir * other.hit_effect_x), y + other.hit_effect_y, other.hit_effect);
	                if (hitstun_factor != -1)
	                    with (player_id)
	                        sound_play(other.sound_effect);
	            }
	            
	            if (camera_shake != -1) {
	                var value_check = other.knockback_adj != 0 ? other.orig_knock : kb_value+other.percent*0.12*kb_scale;
	                if ((camera_shake == 0 && value_check >= 10) || camera_shake == 1) {
	                    shake_camera(round(max(value_check, 10)), 5);
	                }
	                
	            }
	        }
	        kb_angle = 60;
	        dspecial_move = 1;
	    	hsp = lengthdir_x(orig_knock * hit_id.spr_dir, kb_angle);
	        vsp = lengthdir_y(orig_knock, kb_angle);
	        old_hsp = hsp;
	        old_vsp = vsp;
	        with hit_id.player_id {
	            has_hit_id = other.id;
	            has_hit = 1;
	            if (other.knockback_adj != 0) {
	                has_hit_player = 1;
	            }
	            if (other.hit_id.type != 2) {
	                old_vsp = vsp;
	                old_hsp = hsp;
	                hitstop = other.hitpause;
	                hitpause = 1;
	                hsp = 0;
	                vsp = 0;
	                other.hit_player_id = id;
	            }
	        }
	    }
	    
	}
	
	// if instance_exists(hit_id) && player_id == hit_id.player_id && ((hit_id.attack == AT_USPECIAL && hit_id.hbox_num != 5) || (hit_id.attack == AT_FSPECIAL)) && hit_lockout <= 0 && last_hitbox != hit_id && state != PS_HITSTUN && state != PS_DEAD && state != PS_RESPAWN {
	// 	if (invincible <= 0) {
	//         with hit_id {
	//             //other.percent += damage;
	//     		other.hitpause = 4;
	//             if no_other_hit != 0 other.hit_lockout = no_other_hit + other.hitpause;
	//             else other.hit_lockout = other.hitpause + 1 - extra_hitpause;
	//             if (!fx_created && hbox_group != -1) || hbox_group == -1 {
	//                 fx_created = true;
	//                 if (hit_effect >= 0)
	//                     with (other)
	//                         spawn_hit_fx(x + (spr_dir * other.hit_effect_x), y + other.hit_effect_y, other.hit_effect);
	//                 if (hitstun_factor != -1)
	//                         sound_play(asset_get("sfx_buzzsaw_hit"));
	//             }
	            
	//             if (camera_shake != -1) {
	//                 var value_check = other.knockback_adj != 0 ? other.orig_knock : kb_value+other.percent*0.12*kb_scale;
	//                 if ((camera_shake == 0 && value_check >= 10) || camera_shake == 1) {
	//                     shake_camera(round(max(value_check, 10)), 5);
	//                 }
	                
	//             }
	//         }
	//         go_back = true;
	//     	hsp = 0;
	//         vsp = 0;
	//         old_hsp = hsp;
	//         old_vsp = vsp;
	//         with hit_id.player_id {
	//             has_hit = 1;
	//             old_vsp = 0;
	//             old_hsp = hsp;
	//             hitstop = other.hitpause;
	//             hitpause = 1;
	//             hsp = 0;
	//             vsp = 0;
	//             window = 1;
	//             window_timer = -1;
	//             if (hit_id.attack == AT_USPECIAL) {
	//             	if (left_down)
	//             		spr_dir = -1;
	//             	if (right_down)
	//             		spr_dir = 1;
	//             }
	//         }
	//     }
	// }
}


#define available_swords
with (player_id) {
    if (instance_exists(sword_id[nspecial_sword])) {
        if (sword_id[nspecial_sword].follow_type == 1 || sword_id[nspecial_sword].state == PS_DEAD || sword_id[nspecial_sword].state == PS_RESPAWN) {
            nspecial_sword = !nspecial_sword
        }
    }
}

#define death_effect_spawn()
var spawn = noone;
with (player_id) spawn = spawn_dust_fx(round(other.x), round(other.y), asset_get("stage_explosion_spr"), 32);
with (spawn)
{
	color = get_player_hud_color(other.player_id.player);
	
	if (y > room_height - 32)
	{
	    y = (room_height)
	    draw_angle  = 90
	    if (x < 0)
	        draw_angle  = 45
	    if (x > room_width)
	        draw_angle  = 135
	}
	if (y < 32)
	{
	    y = 0
	    draw_angle  = 270
	    if (x < 0)
	        draw_angle  = -45
	    if (x > room_width)
	        draw_angle  = 225
	}
	if (x > room_width - 32)
	{
	    draw_angle  = 180
	    if (y < 0)
	        draw_angle  = 225
	    if (y > room_height)
	        draw_angle  = 135
	    x = (room_width)
	}
	if (x < 32)
	{
	    draw_angle  = 0
	    if (y < 0)
	        draw_angle  = -45
	    if (y > room_height)
	        draw_angle  = 45
	    x = 0
	}
}