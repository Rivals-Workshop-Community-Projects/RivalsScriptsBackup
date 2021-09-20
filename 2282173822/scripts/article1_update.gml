//Detonate when T&A enter lightning state

if player_id.lightning{
	if state != 4 && state != 5 && state != 2{
		setState(5);
	}
}



//Enforce cloud limit

else{
	var total_clouds = 0;                             //This gets incremented whenever a new article is created.
	var oldest = -1;                                    //Records the oldest article found's exist_timer. -1 means nothing found yet
	var oldest_obj = noone;                             //Records the oldest article found's ID.
	
	with(asset_get("obj_article1")){ //Change articleX to article1 or etc
	    if (player_id == other.player_id){
	        total_clouds++;
	        if (oldest == -1 || exist_timer > oldest){
	            oldest = exist_timer;
	            oldest_obj = id;
	        }
	    }
	}
	
	with player_id if !snail total_clouds++;
	
	if (total_clouds > player_id.max_clouds && !oldest_obj.dying){
	    oldest_obj.should_die = true;
	}
}



switch(state){
		
	case 10: //USpecial
	case 11: //FSpecial
		sprite_index = (state == 10 ? player_id.spr_cloud_uspecial : player_id.spr_cloud_fspecial);
	
	case 0: //Spawning
		var s_t_max = (state == 11 ? 25 : 20);
		image_index = lerp(0, image_number, state_timer / s_t_max);
		
		if collide() has_been_pushed = true;
		
		if has_been_pushed hsp *= 0.5;
		else hsp *= 0.9;
		if (abs(hsp) < 1) hsp = 0;
		
		vsp *= 0.9;
		if (abs(vsp) < 1) vsp = 0;
		
		screenBorder(s_t_max);
		
		if (state_timer == s_t_max) setState(1);
		
		find_slowmo_player();
		break;
		
	case 12: //NSpecial
		sprite_index = player_id.spr_cloud_nspecial;
		var s_t_max = (image_number + 1) * 5;
		image_index = lerp(0, image_number, state_timer / s_t_max);
		
		if (state_timer == 1) has_face_spawned = false;
		
		if (image_index > 4){
			
			if !has_face_spawned{
				instance_create(x, y - 20, "obj_article2");
				has_face_spawned = true;
			}
		
			if collide() has_been_pushed = true;
			
			if has_been_pushed hsp *= 0.5;
			else hsp *= 0.9;
			if (abs(hsp) < 1) hsp = 0;
			
			vsp *= 0.9;
			if (abs(vsp) < 1) vsp = 0;
			
			screenBorder(s_t_max);
			
			x = lerp(x, player_id.x, 0.1);
			y = lerp(y, player_id.y, 0.01);
			
		}
		
		if (state_timer == s_t_max) setState(1);
		break;
		
	case 1: //Idle
		image_index += 0.1;
		x = orig_x + sin(state_timer / 16) * 4;
		y = orig_y + sin(state_timer / 8) * 2;
		hsp *= 0.5;
		vsp *= 0.5;
		if (abs(hsp) < 1) hsp = 0;
		if (abs(vsp) < 1) vsp = 0;
		
		getHit();
		find_slowmo_player();
		break;
	
	case 2: //Die
		var s_t_max = 28;
		image_index = lerp(0, 7, state_timer / s_t_max);
		hsp = 0;
		vsp = 0;
		if (state_timer == s_t_max){
			instance_destroy();
			exit;
		}
		break;
		
	case 3: //Launched
		var s_t_max = 20;
		image_index = lerp(0, image_number, state_timer / s_t_max);
		
		if collide() has_been_pushed = true;
		
		if has_been_pushed hsp *= 0.5;
		else hsp *= 0.9;
		if (abs(hsp) < 1) hsp = 0;
		
		vsp *= 0.9;
		if (abs(vsp) < 1) vsp = 0;
		
		if place_meeting(x, y, asset_get("par_block")){
			hsp = 0;
			vsp = 0;
		}
		
		screenBorder(s_t_max);
		
		if (state_timer == s_t_max) setState(1);
		find_slowmo_player();
		
		break;
	
	case 4: //c o n s u m e
		dying = true;
		var s_t_max = 20;
		sprite_index = player_id.spr_cloud_spawn;
		image_index = lerp(image_number - 1, -1, state_timer / s_t_max);
		
		hsp = 0;
		vsp = 0;
		
		x = lerp(x, player_id.x, 0.25);
		y = lerp(y, player_id.y, 0.25);
		
		if (state_timer == s_t_max){
			instance_destroy();
			exit;
		}
		break;
		
	case 5: //Explode
		var s_t_max = 20;
		sprite_index = player_id.spr_cloud_explode;
		image_index = lerp(0, image_number, state_timer / s_t_max);
		
		if explode_timer{
			explode_timer--;
			state_timer--;
		}
		
		hsp = 0;
		vsp = 0;
		
		if (state_timer == 5){
			create_hitbox(AT_EXTRA_1, 2, round(x), round(y) - 32);
			if player_id.lightning < player_id.lightning_max - 8{
				sound_play(player_id.sfx_ssbu_screw_attack);
			}
		}
		
		if (state_timer == s_t_max) setState(2);
		break;
	
	case 6: //Trumpet
	
		var nspecialing = (player_id.attacking && player_id.attack == AT_NSPECIAL_2);
		sprite_index = player_id.spr_cloud_trumpet;
		image_index = player_id.image_index * nspecialing;
		spr_dir = player_id.spr_dir;
		depth = player_id.depth - 1 - cloud_num;
		
		hsp = 0;
		vsp = 0;
		
		var target_x = player_id.x;
		var target_y = player_id.y;
		
		switch(cloud_num){
			case 0:
				target_x -= 10 * spr_dir;
				target_y -= 80;
				// image_angle = -20 * spr_dir;
				break;
			case 1:
				target_x -= 30 * spr_dir;
				target_y += 10;
				// image_angle = 20 * spr_dir;
				break;
			case 2:
				target_x -= 80 * spr_dir;
				target_y -= 32;
				break;
		}
		
		if (image_index < 2){
			
			var amt = nspecialing ? 0.2 : 0.01;
			
			x = round(lerp(x, target_x, amt));
			y = round(lerp(y, target_y, amt));
			
			if !player_id.attacking setState(2);
			
		}
		
		if (image_index >= image_number) should_die = true;
		
		break;
	
	case 20: // slowmo
		
		if state_timer % 20 == random_func(0, 20, true){
			var dx = x + slowmo_target.hsp * 3;
			var dy = y + slowmo_target.vsp * 3 - 24;
			
			dx += random_func(1, 64, true) - 32;
			dy += random_func(2, 64, true) - 32;
			
			var da = random_func(3, 3, true) * 90;
			
			var h = spawn_hit_fx(dx, dy, player_id.vfx_ssj3_lightning);
			
			h.draw_angle = da;
			h.depth = depth - 1;
			
			sound_play(player_id.sfx_ssbu_shock, 0, noone, 0.5, 1.7 + (random_func(1, 3, true) * 0.1));
		}
		
		sprite_index = sprite_get("cloud_slowmo");
		
		if state_timer == 1{
			hfx = spawn_hit_fx(x, y - 8, player_id.vfx_stasis_chains);
			hfx.depth = depth - 1;
			note_oct = 0;
			note_sca = 1;
			note_key = 0;
			note_not = random_func(0, 4, true) - 1;
			user_event(2);
			sound_play(sound_get("botw_stasis_start"), 0, noone, 1.1, returned_pitch);
		}
		
		if "hfx" in self && instance_exists(hfx){
			hfx.x = x;
			hfx.y = y - 8;
		}
		
		var mult = 3;
		
		if !slowmo_target.hitpause{
			slowmo_hitpause_check = true;
		}
		
		if slowmo_target.state != PS_HITSTUN || state_timer >= 120 || (slowmo_hitpause_check && slowmo_target.hitpause){
			with slowmo_target{
				// hitstun_grav = trum_normal_hit_grav;
				// air_friction = trum_normal_air_fric;
				dumb_di_mult = 1;
				// hsp *= mult;
				// vsp *= mult;
			}
			setState(2);
			break;
		}
		
		var remaining = min(120 - state_timer, slowmo_target.hitstun - slowmo_target.state_timer);
		
		visible = (remaining > 6 || round(remaining) % 2);
		
		x = slowmo_target.x;
		y = slowmo_target.y - 8;
		depth = slowmo_target.depth - 1;
		
		with slowmo_target{ // based on menace code
			// if "trum_normal_hit_grav" not in self{
			// 	trum_normal_hit_grav = hitstun_grav;
			// 	trum_normal_air_fric = air_friction;
			// }
			if (!hitpause) {
				var other_part = (1 - 1 / mult);
				hitstun += other_part;
				vsp -= hitstun_grav * other_part;
				hsp += air_friction * other_part * sign(hsp);
				var new_drift_hsp = hsp - ((right_down - left_down) * air_accel * dumb_di_mult * other_part);
				if abs(hsp) > abs(new_drift_hsp) || abs(hsp) < air_max_speed{
					hsp = clamp(new_drift_hsp, -air_max_speed, air_max_speed);
				}
				x -= hsp * other_part;
				y -= vsp * other_part;
			}
			// hitstun_grav = trum_normal_hit_grav / (mult * mult);
			// air_friction = trum_normal_air_fric / (mult * mult);
			dumb_di_mult = 1 / (mult * mult);
		}
		
		break;
}



//Clairen plasma field will destroy the article

if (place_meeting(x, y, asset_get("plasma_field_obj")) && state != 2 && state != 4) {
    sound_play(asset_get("sfx_clairen_hit_med"));
    // spawn_hit_fx(floor(x),floor(y),256)
    should_die = true;
}



//Make time progress
if !hitstop{
    state_timer++;
}

exist_timer++;



if should_die && !dying{
	setState(2);
	dying = true;
	image_angle = 0;
}



#define find_slowmo_player

var found = noone;

with oPlayer if get_player_team(player) != get_player_team(other.player_id.player) && state == PS_HITSTUN && !hitpause && place_meeting(x, y, other){
	found = self;
}

if found != noone{
	with obj_article1 if "is_trum_cloud" in self && state == 20{
		setState(2);
	}
	slowmo_target = found;
	setState(20);
}



#define getHit

var true_x = (state == 1) ? orig_x : x;
var true_y = (state == 1) ? orig_y : y;

with pHitBox if "trummel_dont_push" not in self && !(player_id == other.player_id && attack == AT_FSPECIAL) {
	with other if place_meeting(true_x, true_y, other){
		setState(3);
		var ang = get_hitbox_angle(other);
		var str = other.kb_value * 1;
		hsp = lengthdir_x(str, ang);
		vsp = lengthdir_y(str, ang);
	}
}



#define collide

var pushed = false;

with (obj_article1) if (player_id.muno_char_id == other.player_id.muno_char_id && state == 1 && place_meeting(orig_x, orig_y, other)){
	other.hsp = sign(other.x - orig_x) * 10;
	if !abs(other.hsp) other.hsp = 10;
	pushed = true;
}

return pushed;



#define screenBorder(s_t_max)

var border_x = 50;
var border_y = 80;
var clamped_x = clamp(x, border_x, room_width - border_x);
var clamped_y = clamp(y, border_y, room_height - border_y + 40);
var amt = (state_timer == s_t_max) ? 1 : 0.25;
if x != clamped_x{
    hsp = 0;
    x = lerp(x, clamped_x, amt);
}
if y != clamped_y{
    vsp = 0;
    y = lerp(y, clamped_y, amt);
}



#define setState(new_state) //This custom function makes it easier to switch states. You can't use it outside of articleX_update.gml; if you want to do this from the player's update.gml or something, just copy the contents of this to the with statement.

if (state == 1){
	x = orig_x;
	y = orig_y;
}
depth = orig_depth;
prev_state = state;
state = new_state;
state_timer = 0;
image_index = 0;
orig_x = x;
orig_y = y;
visible = true;

switch(state){
	case 0:
		sprite_index = player_id.spr_cloud_spawn;
		break;
	case 1:
	case 3:
		sprite_index = player_id.spr_cloud_idle;
		break;
	case 2:
		sprite_index = player_id.spr_cloud_die;
		break;
}

spr_dir = 1;