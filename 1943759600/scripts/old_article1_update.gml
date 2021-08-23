hitpause = player_id.hitpause;


invincibility_time -= (invincibility_time > 0);

state_timer += (!hitpause or state == 1);

switch(state) {
	
	default: //Normal
	
		//==============================================================================
		//                          	Abyss Rune Code
		//==============================================================================
		//RUNE M: Crystal Floats towards the opponent.
		if has_rune("M") {
			var target = player_id.hit_player_obj;
			if target != -1 && point_distance(x,ystart,target.x,target.y-80) > 4 && target.state != PS_DEAD && target.state != PS_RESPAWN {
				hsp = lengthdir_x(point_distance(x,ystart,target.x,target.y-80)/35,point_direction(x,ystart,target.x,target.y-80));
				vsp = lengthdir_y(point_distance(x,ystart,target.x,target.y-80)/35,point_direction(x,ystart,target.x,target.y-80));
				ystart+=vsp;
			} else {
				hsp = hsp > 0 ? (hsp-0.1 <= 0 ? 0 : hsp-0.1) : 0;
				vsp = vsp > 0 ? (vsp-0.1 <= 0 ? 0 : vsp-0.1) : 0;
				ystart+=vsp;
				xstart+=hsp;
			}
		}
		//===============================================================================
		//								Rune Code Over
		//===============================================================================
		y = ystart + floor(sin(state_timer*0.1)*4)
		
		with (asset_get("pHitBox")) {
			if player_id != other.player_id && get_player_team(player_id.player) != get_player_team(other.player_id.player) && place_meeting(x,y,other) && !other.invincibility_time {
				other.state = 3;
				other.state_timer = 0;
				sound_play(asset_get("sfx_ice_nspecial_armor"))
				sound_play(asset_get("sfx_ice_uspecial_start"))
				
				break;
			}
		}		
		
		if field_index+anim_speed >= 20 {field_index = 10} else field_index += anim_speed;
		image_index = min(image_index + anim_speed, 3)
		
		
	break;
	
	case 1: //Broken
	
		player_id.move_cooldown[AT_NSPECIAL] = cooldown_timer;
		if state_timer == 1 {
		sound_play(asset_get("sfx_ice_shatter"));
		sound_play(asset_get("sfx_blow_medium2"));

		}
		if image_index + anim_speed >= image_number {instance_destroy();exit;}
		image_index = max(5, image_index + anim_speed)
		cooldown = -1
	break;
	
	case 2: //cooldown
		player_id.move_cooldown[AT_NSPECIAL] = 2;
		if cooldown >= 0 {
			invincible = true;
			image_index = 4;
			field_index = 0;
			
			if act == 1 {
				var amt = (cooldown/cooldown_timer);
				y = ystart+(dsin(amt*180) * vault_wobble_amount);
				image_angle = ((1-amt)*(vault_spin_amount-(amt*vault_spin_amount)))*spr_dir;
			}
			cooldown++;
			if cooldown >= cooldown_timer {cooldown = -1; state = 0; state_timer = 0;}
		}
	break;
	
	case 3: //Shaking
	
		player_id.move_cooldown[AT_NSPECIAL] = cooldown_timer;
		x = xstart+floor(random_func(0, 4, 1))-2
		y = ystart+floor(random_func(1, 4, 1))-2
		if state_timer > destroy_timer {
			state = 1;
			state_timer = 0;
		}
		if field_index+anim_speed >= 20 {field_index = 10} else field_index += anim_speed;
		image_index = 3
		
	break;
}
	






#define crystal_check_hitboxes

		with (asset_get("pHitBox")) {
			if player_id != other.player_id && get_player_team(player_id.player) != get_player_team(other.player_id.player) && place_meeting(x,y,other) && !other.invincibility_time {
				other.state = 3;
				other.state_timer = 0;
				with (other) {
				sound_play(asset_get("sfx_ice_dspecial_ground"));
				sound_play(asset_get("sfx_ori_sein_fstrong_hit_final"));
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
