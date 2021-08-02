if ("am_ball" not in self) exit;
if !am_ball exit;



if player != orig_player{
	if state != 4 setState(4);
	damage = 10;
}



if sprite_index != asset_get("empty_sprite") visible = !(hitbox_timer > length - 20 && hitbox_timer % 8 < 4);



length = (state == 3) ? orig_length * 2 : orig_length;



switch(state){
	
	case 0: //traveling
	
		grounds = 2;
		sprite_index = player_id.spr_ball_moving[hbox_num - 1];
		image_index = min(lerp(0, 4, state_timer / 12), 2);
		
		if (state_timer < 12){
			hsp -= 0.75 * sign(hsp);
			proj_angle = point_direction(0, 0, hsp, vsp) - 180 * (spr_dir == -1);
		}
		else{
			sprite_index = player_id.spr_ball_idle[hbox_num - 1];
			if !(state_timer % 4) && !in_hitpause proj_angle -= 45 * spr_dir;
		}
		
		if (sign(prev_hsp) = -sign(hsp) && abs(prev_hsp) > 2){
			hsp = abs(lengthdir_x(hsp, 45)) * spr_dir;
			vsp = abs(lengthdir_y(hsp, 45)) * -1;
			state_timer = 12;
		}
		
		if fix_hitpause{
			x -= hsp;
			y -= vsp;
			fix_hitpause = false;
		}

		if player_id.nspecial_buffer == 6{
			player_id.bike_vfx_time = player_id.bike_vfx_time_max;
		}

		if player_id.nspecial_buffer == 6{
			setState(3);
			track_special_held = 1;
			var hfx = spawn_hit_fx(x, y, player_id.vfx_spin_u);
			hfx.spr_dir = spr_dir;
		}
		
		// if (vsp > 0 && hsp == 0){ //fix the STUPID thing where it bounces up even if it's past the ledge
		// 	grounds = 1;
		// 	walls = 1;
		// 	if (place_meeting(x, y + vsp, asset_get("par_block")) || place_meeting(x, y + vsp, asset_get("par_jumpthrough"))) vsp *= -1;
		// }
		
		break;
		
	case 1: //bouncing off enemy
		
		grounds = 1 + place_meeting(x, y, asset_get("par_block"));
		sprite_index = player_id.spr_ball_bounce[hbox_num - 1];
		image_index = min(lerp(0, 3, state_timer / 20), 2);
		if hitpause_timer image_index = 2;
		else if image_index == 2 && !(state_timer % 4) proj_angle -= 15 * spr_dir;
		
		if !in_hitpause vsp += (abs(hsp) > 1 ? 0.4 : 0.2);

		if player_id.nspecial_buffer == 6{
			setState(3);
			track_special_held = 0;
		}
		
		break;
	
	case 2: //arcing
	
		sprite_index = player_id.spr_ball_idle[hbox_num - 1];
		if !(state_timer % 4) proj_angle -= 45 * spr_dir;
		
		if !in_hitpause vsp += 0.6;
		vsp = min(vsp, 12);

		if player_id.nspecial_buffer == 6{
			player_id.bike_vfx_time = player_id.bike_vfx_time_max;
		}

		if player_id.nspecial_buffer == 6{
			setState(3);
			track_special_held = 1;
			var hfx = spawn_hit_fx(x, y, player_id.vfx_spin_u);
			hfx.spr_dir = spr_dir;
		}
		
		break;
	
	case 3: //hovering
	
		var s_t_max = 60;
		sprite_index = player_id.spr_ball_idle[hbox_num - 1];
		// spr_dir = 1;
		hsp *= 0.75;
		vsp *= 0.75;
		
		if track_special_held{
			if !player_id.special_down track_special_held = 0;
			else{
				proj_angle -= lerp(30, 60, state_timer / 30);
				if state_timer == bounce_charge_time{
					setState(2);
					// bounce_charge_time = min(bounce_charge_time + 10, 60);
				}
			}
		}
		
		if state == 2 break;
		
		vsp = (sinThing(state_timer - 1) - sinThing(state_timer)) * 4;
		
		proj_angle--;

		if (player_id.nspecial_buffer == 6 && hitbox_timer < length - 20){
			hitbox_timer = length - 20;
			player_id.bike_vfx_time = player_id.bike_vfx_time_max;
			sound_play(asset_get("sfx_frog_fspecial_cancel"));
			has_been_recalled = true;
		}
		
		// if has_been_hit hitbox_timer = max(hitbox_timer, length - 20);
		
		if (state_timer % s_t_max == 0){
			var time = hitbox_timer;
			var time_2 = state_timer;
			// setState(state); //for spin vfx
			hitbox_timer = time;
			state_timer = time_2;
		}
		
		// screenBorder();
		
		break;
	
	case 4: //parried
		
		if (state_timer == 0){
			var spd = 20;
			var ang = point_direction(x, y, player_id.x, player_id.y - 32);
			
			hsp = lengthdir_x(spd, ang);
			vsp = lengthdir_y(spd, ang);
			
			transcendent = 1;
			grounds = 1;
			walls = 1;
		}
		
		break;

}


		
if has_hit && (state == 0 || state == 2){
	hsp = 0;
	vsp = -6;
	proj_angle = 0;
	setState(1);
	hitbox_timer = orig_length - (has_bounced ? 20 : 80);
	has_hit = false;
	has_bounced = true;
}



if hitpause_timer{
	hitpause_timer--;
	in_hitpause = true;
}
else{
	state_timer++;
	in_hitpause = false;
}



if (sign(prev_vsp) = -sign(vsp) && abs(vsp) > 2 || sign(prev_hsp) = -sign(hsp) && abs(hsp) > 2) || state == 2 && state_timer == 1 sound_play(player_id.sfx_ball_shoot);



player_id.phone_arrow_cooldown = max(player_id.phone_arrow_cooldown, 21);



if (x != clamp(x, player_id.blastzone_l, player_id.blastzone_r) || y > player_id.blastzone_b || y < player_id.blastzone_t && state != 2){
	instance_destroy();
	exit;
}



if player == orig_player getHit();



prev_vsp = vsp;
prev_hsp = hsp;



with player_id{
	ball_time = get_gameplay_time() + 1;
	ball_x = other.x;
	ball_y = other.y;
}



collision_sprite = player_id.spr_ball_idle[1];



if (player_id.bike && !player_id.phone_attacking) || (!player_id.bike && "destroy_flag" in self){
	instance_destroy();
	exit;
}



#define sinThing(s_t)

return sin(s_t / 15) * 2;



#define setState(st)

state = st;
state_timer = 0;
hitbox_timer = 0;

var hfx = noone;
// if (hbox_num == 1) var hfx = spawn_hit_fx(x, y, player_id.vfx_spin_u);
// if (hbox_num == 3) var hfx = spawn_hit_fx(x, y, player_id.vfx_spin_d);
if hfx != noone{
	hfx.spr_dir = spr_dir;
	hfx.depth = depth - 1;
}

if state != 1 for (var i = 0; i < 20; i++){
    can_hit[i] = 1;
}

switch(state){
	case 2:
		spr_dir *= -1;
		hitbox_timer = orig_length - 60; // new
		hsp = 8 * spr_dir; // 12
		vsp = -10;
		with player_id var hfx = spawn_hit_fx(other.x, other.y + 16, vfx_dtilt_spark);
		hfx.spr_dir = spr_dir;
		break;
	case 3:
		track_special_held = 0;
		player_id.bike_vfx_time = player_id.bike_vfx_time_max;
		sound_play(asset_get("sfx_clairen_spin"));
		spawn_hit_fx(x + hsp * 2, y + vsp * 2, player_id.vfx_hit_tiny);
		hitbox_timer = 0;
		
		for (var i = 0; i < 20; i++){
		    can_hit[i] = 0;
		}
}



#define getHit

var h = hitbox_detection();

if !has_been_hit && h == 1{
	setState(0);
	state_timer = 16;
	// has_been_hit = true;
	has_bounced = true;
	fix_hitpause = true;
	for (var i = 0; i < 20; i++){
	    can_hit[i] = 1;
	}
	sound_play(player_id.ball_sounds[hbox_num - 1]);
	proj_angle = 0;
	hitbox_timer = 0;
}

// hit the ball to damage otto

else if h == 2{
	// take_damage(player_id.player, enemy_player, highest_enemy_damage);
	if enemy_type == 1{
		player = enemy_player;
		if x != player_id.x spr_dir = sign(player_id.x - x);
	}
	if enemy_type == 2{
		hitbox_timer = length - 2;
	}
}



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



#define hitbox_detection //BY SUPERSONIC
//estimated like 80% accurate imo

if hit_lockout_timer{
	hit_lockout_timer--;
	return;
}
 
var article = self;
var ret = 0;
//reset hitbox groups when necessary
with (oPlayer)
    if (state == clamp(state, 5, 6) && window == 1 && window_timer == 1) {
        other.hbox_group_2[@ player-1][@ attack] = array_create(10,0);
        //with other print_debug(`${article}: reset hb group for ${other.player},${other.attack}`);
    }
 
var currentHighestPriority = noone;
highest_enemy_damage = 0;
with (pHitBox) if other != self{
	if player_id != other.player_id{
		if place_meeting(x, y, other) && ret == 0 && damage > other.highest_enemy_damage{
			ret = 2;
			other.highest_enemy_damage = damage;
			other.enemy_player = player;
			other.enemy_type = type;
			
			if currentHighestPriority != noone {
                if currentHighestPriority.hit_priority < hit_priority
                    currentHighestPriority = self;
            } else {
                currentHighestPriority = self;
            }
            
            variable_instance_set(self, `hit_${article}`, true);
		}
	}
	else if `hit_${article}` not in self{
        if place_meeting(x,y,other) && (groundedness == 0 || groundedness == 1+free) {
            if hbox_group == -1 || ( hbox_group != -1 && other.hbox_group_2[@ orig_player-1][@ attack][@ hbox_group] == 0) {
                //hit
                if currentHighestPriority != noone {
                    if currentHighestPriority.hit_priority < hit_priority
                        currentHighestPriority = self;
                } else {
                    currentHighestPriority = self;
                }
                
                variable_instance_set(self, `hit_${article}`, true);
            }
        } else if place_meeting(x,y,other) && hbox_group != -1 && other.hbox_group_2[@ orig_player-1][@ attack][@ hbox_group] == 1 {
            //prevent from running hit detection for optimization sake
            //with other print_debug("hit but also not");
            variable_instance_set(self, `hit_${article}`, true);
        }
	}
}

 
if instance_exists(currentHighestPriority) with currentHighestPriority {
    sound_play(sound_effect);
    spawn_hit_fx(other.x+hit_effect_x,other.y+hit_effect_y,hit_effect);
    if player_id == other.player_id ret = 1;
    player_id.has_hit_ball = true;
    player_id.melee_hit_ball = other;
    with other {
        //print_debug(`hit_${article}`);
        hitpause_timer = other.hitpause + other.damage * other.hitpause_growth * 0.05;
        // hitstun_full = hitstun;
        // for you archy. 
        // if other.force_flinch && !other.player_id.free orig_knock = 0; //uncomment this line for enemies
        if other.force_flinch orig_knock = 0.3; //comment out this line for enemies.
        else orig_knock = other.kb_value + other.damage * other.kb_scale * 0.12 * kb_adj;
        orig_knock = 22;
        kb_dir = get_hitbox_angle(other);
        
        hit_lockout_timer = 15;
        
        var hitbox = other;
        var muno_angle = 0;
        if ("HG_MUNO_OBJECT_LAUNCH_ANGLE" in hitbox.player_id) with hitbox.player_id{
        	muno_angle = get_hitbox_value(hitbox.attack, hitbox.hbox_num, HG_MUNO_OBJECT_LAUNCH_ANGLE);
        }
        var swap_angle_dir = false;
        switch(muno_angle){
        	case 0:
        		break;
        	case -1:
        		kb_dir = (x > hitbox.x) ? 0 : 180;
        		break;
        	case -2:
        		kb_dir = point_direction(hitbox.x, hitbox.y, x, y);
        		break;
        	default:
        		kb_dir = muno_angle;
        		swap_angle_dir = true;
        		break;
        }
        
		/* Set the obj launch angle to:
		 * - -1 to send horizontally away (simulates flipper 3, angle 0)
		 * - -2 to send radially away (simulates flipper 8)
		 */
        
        hsp = lengthdir_x(orig_knock, kb_dir);
        vsp = lengthdir_y(orig_knock, kb_dir);
        if swap_angle_dir hsp *= other.spr_dir;
		if abs(hsp) spr_dir = sign(hsp);
		else spr_dir = other.spr_dir;
    }
    if type == 1 with player_id {
        old_vsp = vsp;
        old_hsp = hsp;
        hitpause = true;
        var desired_hitstop = other.hitpause + other.damage * other.hitpause_growth * 0.05;
        if hitstop < desired_hitstop {
            hitstop = desired_hitstop;
            hitstop_full = desired_hitstop;
        }
    }
    other.hitstop = floor(desired_hitstop);
    if hbox_group != -1 other.hbox_group_2[@ orig_player-1][@ attack][@ hbox_group] = 1;
}

return ret;