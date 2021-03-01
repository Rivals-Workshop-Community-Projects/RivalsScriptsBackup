x = round(x);
y = round(y);


// article_update, or init?
y = clamp(y, 0, room_height - 10);


switch(state){
	
	case PS_IDLE:
	
		sprite_index = player_id.spr_dest_idle;
		image_index = state_timer / 4;
		
		if other_dest == noone state_timer = 0;
		
		if (player_id.phone_attacking && player_id.attack == AT_USPECIAL){
			state_timer--;
			image_index = 5 * (player_id.uspecial_target == self);
		}
		
		
		
		if player_id.phone_attacking switch(player_id.attack){
			case AT_FSPECIAL:
				if other_dest == noone || player_id.spr_dir == sign(x - other_dest.x) setAttack(AT_FSPECIAL_2);
				break;
		}
		
		
		
		car_time = state_timer;
		
		if car_time > car_time_max || player_id.state == PS_DEAD || player_id.state == PS_RESPAWN || should_die{
			die();
		}
		
		break;
	
	case PS_ATTACK_AIR: // attack
	
		// initialising stuff...
		
		if (state_timer == 0){
			window = 1;
			window_timer = 1;
			has_hit_player = 0;
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
					set_hitbox_value(other.attack, i, HG_PROJECTILE_SPRITE, asset_get("empty_sprite"));
					set_hitbox_value(other.attack, i, HG_PROJECTILE_MASK, -1);
					set_hitbox_value(other.attack, i, HG_PROJECTILE_GROUND_BEHAVIOR, 1);
					set_hitbox_value(other.attack, i, HG_PROJECTILE_WALL_BEHAVIOR, 1);
					set_hitbox_value(other.attack, i, HG_PROJECTILE_ENEMY_BEHAVIOR, 1);
					set_hitbox_value(other.attack, i, HG_PROJECTILE_UNBASHABLE, 1);
					set_hitbox_value(other.attack, i, HG_PROJECTILE_DOES_NOT_REFLECT, 1);
					set_hitbox_value(other.attack, i, HG_PROJECTILE_IS_TRANSCENDENT, 1);
					attack_end(other.attack);
				}
			}
				
		}
		
		image_index = win_frame_start + lerp(0, win_frames, max(window_timer - 1, 0) / win_length);
		
		if win_sfx && (window_timer - 2) == win_sfx_frame && !hitstop sound_play(win_sfx);
		
		// print_debug(string(window) + " / " + string(window_timer) + " / " + string(image_index))
		
		
		
		// spawn hitboxes
		
		var hbox = noone;
		
		if hbox_active && !hitstop{
			
			with player_id set_hitbox_value(other.attack, other.hbox_number, HG_HITBOX_TYPE, 2);
			
			hbox = create_hitbox(attack, hbox_number, round(x) + hbox_x * spr_dir, round(y) + hbox_y);
			hbox.article_owner = self;
			
			hbox.no_absorb = true;
			
			hbox.true_type = real_type;
			hbox.type = 2;
			hbox.offset_x = hbox_x;
			hbox.offset_y = hbox_y;
			hbox.spr_dir = spr_dir;
			
			
			if hbox.true_type == 1{
				//
			}
			
			with player_id reset_hitbox_value(other.attack, other.hbox_number, HG_HITBOX_TYPE);
			
		}
		
		
		
		// attack_update
		
		switch(attack){
			
			case AT_FSPECIAL_2:
				
				if (window == 1) has_activated = 0;
				
				if has_hit_player && !hitstop && !has_activated{
					
					if other_dest == noone{
						setAttack(AT_FSPECIAL_AIR);
					}
					
					else{
						with other_dest setAttack(AT_FSPECIAL_AIR);
						other_dest.hit_player_obj = hit_player_obj;
					}
					
					has_activated = 1;
					sound_play( sound_get("Reconnecting"))
				}
				
				break;
			
			case AT_FSPECIAL_AIR:
				
				if (window == 1){
					var other_one = (other_dest == noone) ? self : other_dest;
					
					hit_player_obj.x = lerp(other_one.x, x, window_timer / win_length);
					hit_player_obj.y = lerp(other_one.y, y, window_timer / win_length);
				}
				
				break;
			
		}
		
		
		
		// end-of-frame housekeeping
		
		if !hitstop window_timer++;
		
		if window_timer > win_length{
			if (window >= num_windows) die();
			else setWindow(window + 1);
		}
		
		if new_window setWindow(new_window);
		
		break;
	
}



if !hitstop state_timer++;
exist_timer++;



#define die

player_id.dest_1 = noone;
player_id.dest_2 = noone;
spawn_hit_fx(x, y, 301);
if other_dest != noone spawn_hit_fx(other_dest.x, other_dest.y, 301);
instance_destroy(other_dest);
instance_destroy();
exit;



#define setState(n_s)

state = n_s;
state_timer = 0;

walking = 0;



#define setWindow(n_w)

window = n_w;
window_timer = 1;



#define setAttack(n_a)

attack = n_a;
setState(PS_ATTACK_AIR);

window = 1;
window_timer = 1;
has_hit_player = 0;

stopped_sounds = [];