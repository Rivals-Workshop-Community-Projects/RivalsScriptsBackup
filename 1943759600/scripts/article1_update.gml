hitpause = player_id.hitpause;
invincibility_time -= (invincibility_time > 0);
state_timer += (!hitpause or state == 3);

switch(state) {
	
	default: //Idle
		y_offset = floor(sin(state_timer*0.1)*4);
		
		//RUNE M
		if has_rune("E") {
			var target = player_id.hit_player_obj;
			if target != -1 && point_distance(x,y,target.x,target.y-80) > 4 && target.state != PS_DEAD && target.state != PS_RESPAWN {
				hsp = lengthdir_x(point_distance(x,y,target.x,target.y-80)/35,point_direction(x,y,target.x,target.y-80));
				vsp = lengthdir_y(point_distance(x,y,target.x,target.y-80)/35,point_direction(x,y,target.x,target.y-80));
				x+=hsp;
				y+=vsp;
			} else {
				hsp = hsp > 0 ? (hsp-0.1 <= 0 ? 0 : hsp-0.1) : 0;
				vsp = vsp > 0 ? (vsp-0.1 <= 0 ? 0 : vsp-0.1) : 0;
				x+=hsp;
				y+=vsp;
			}
		}
		
		if !has_rune("M") crystal_check_hitboxes();
		
		animate_field();
		f_image_index = min(f_image_index + anim_speed, 3);
	break;
	
	case 1: //Cooldown (from vault)
		player_id.move_cooldown[AT_NSPECIAL] = 2;
		if cooldown >= 0 {
			invincible = true;
			field_index = 0;
			f_image_index = 4;
			
			if act == 1 {
				var amt = (cooldown/cooldown_timer);
				y_offset = (dsin(amt*180) * vault_wobble_amount);
				ang = ((1-amt)*(vault_spin_amount-(amt*vault_spin_amount)))*spr_dir;
			}
			
			cooldown++;
			if cooldown >= cooldown_timer {
				cooldown = -1; 
				state = 0; 
				state_timer = 0;
			}
		}
		
		
	break;
	
	case 2: //Shaking
		player_id.move_cooldown[AT_NSPECIAL] = cooldown_timer; 
		//start putting it on cooldown from this point to prevent it from being releasable for a frame
		x_offset = floor(random_func(0, 4, 1))-2;
		y_offset = floor(random_func(1, 4, 1))-2;
		
		if state_timer > destroy_timer {
			state = 3;
			state_timer = 0;
		}
		
		animate_field();
		f_image_index = min(f_image_index + anim_speed, 3);
	break;
	
	case 3: //Destroy
		player_id.move_cooldown[AT_NSPECIAL] = cooldown_timer;
		if state_timer == 1 {
			sound_play(asset_get("sfx_ice_shatter"));
			sound_play(asset_get("sfx_blow_medium2"));
		}
		if f_image_index + anim_speed >= img_number {instance_destroy();exit;}
		f_image_index = max(5, f_image_index + anim_speed);
	break;
}
	


image_index = f_image_index; //i kinda am forced to do this

#define animate_field

if field_index+anim_speed >= 20 field_index = 10; 
else field_index += anim_speed;

#define crystal_check_hitboxes

with (asset_get("pHitBox")) {
	if player_id != other.player_id && get_player_team(player_id.player) != get_player_team(other.player_id.player) && place_meeting(x,y,other) && !other.invincibility_time {
		other.state = 2;
		other.state_timer = 0;
		with (other) {
			sound_play(asset_get("sfx_ice_nspecial_armor"));
			sound_play(asset_get("sfx_ice_uspecial_start"));
		}
		// put player that hit into hitpause, play their hit effect 
		// and tick on their has_hit variable
		sound_play(sound_effect);
		spawn_hit_fx(other.x+hit_effect_x,other.y+hit_effect_y,hit_effect);
		if type != 2 with player_id {
		    old_hsp = hsp;
		    old_vsp = vsp;
		    hitstop_full = floor(other.hitpause+other.damage*other.hitpause_growth*.05-2);
		    hitstop = floor(other.hitpause+other.damage*other.hitpause_growth*.05-2);
		    hitpause = true;
		    has_hit = true;
		}
		break;
	}
}	
