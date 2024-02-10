if attack == AT_FSTRONG{
	if !(place_meeting((x + (spr_dir * 40)), y + 10, (asset_get("par_block"))) || place_meeting(x + (spr_dir * 40), y + 10, (asset_get("par_jumpthrough")))) || place_meeting(x - (spr_dir * 80), y, (asset_get("par_block"))){
		destroyed = true;
	}
}

if attack == AT_NSPECIAL{
	through_platforms = 2;
	if place_meeting(x + (spr_dir * 8), y - 10, asset_get("par_block")) || place_meeting(x, y + 2, asset_get("par_block")){
		destroyed = true;
	}
	
	switch (homing_state){
		//Pre-Homing
		case PS_IDLE:
			if (hitbox_timer >= homing_trigger){
				homing_state = PS_ATTACK_AIR;
			}
		break;
		
		//Homing
		case PS_ATTACK_AIR:
			// Get Player
			with (oPlayer){
				if (player == other.player){
					other.get_pID = id;
				}
			}
			var xx = get_pID.x;
			get_pID.x = -10000;
			
			if (was_parried){
				was_parried = false;
				hitbox_timer = 4;
				hsp += 2 * spr_dir;
				tracking_cap++;
			}
			if (player != orig_player){
				target_id = player_id;
			}
			else{
				target_id = locate_nearest_player();
			}
			//print_debug(target_id);
			
			//Make sure we aren't targeting ourselves!
			if (target_id != get_pID){
				var dir, point_y, new_hsp, new_vsp;
				dir = point_direction(x, y, floor(target_id.x), floor(target_id.y - (target_id.char_height / 2)));
				//point_x = lengthdir_x(max_speed,dir);
				point_y = lengthdir_y(max_speed,dir);
				
				//new_hsp = lerp(hsp, point_x, 0.01);
				//new_hsp = hsp;
				new_vsp = lerp(vsp, point_y, tracking_intensity);
				
				// if abs(new_hsp-hsp) > tracking_intensity
				// {
				// 	new_hsp = tracking_intensity*sign(new_hsp);
				// }
				if abs(new_vsp-vsp) > tracking_cap{
					new_vsp = tracking_cap*sign(new_vsp);
				}
				//hsp = new_hsp;
				vsp = new_vsp;
			}
			
			if hitbox_timer >= homing_trigger + homing_duration{
				//Do not home on the target player.
				homing_state = PS_DEAD;
			}
			
			get_pID.x = xx;
		break;
	}
}

if attack == AT_FSPECIAL && hbox_num == 3{
	if place_meeting(x + (spr_dir * 8), y - 10, asset_get("par_block")) || place_meeting(x, y - 10, asset_get("par_block")) || (place_meeting(x, y, player_id.flowey_save) && !instance_exists(player_id.grabp) && hitbox_timer <= 20){
		if place_meeting(x, y, player_id.flowey_save) && !instance_exists(player_id.grabp) && hitbox_timer <= 20{
            player_id.flowey_save.hsp = player_id.flowey_grapples_used >= 3? 0:((has_rune("K") && player_id.special_down?12:8) - (player_id.flowey_grapples_used * 3)) * -player_id.spr_dir;
		}
		spawn_hit_fx(x, y, player_id.small_wood_hfx);
		sound_play(asset_get("sfx_leafy_hit2"), false, noone, 1, 0.9);
		player_id.y -= 1;
		with player_id{
			set_state(PS_ATTACK_AIR);
		}
		player_id.hsp = player_id.flowey_grapples_used >= 3? 0:((has_rune("K") && player_id.special_down?12:8) - (player_id.flowey_grapples_used * 3)) * player_id.spr_dir;
		player_id.vsp = player_id.flowey_grapples_used >= 3? 0:(has_rune("K") && player_id.special_down?-10:-5) - (player_id.flowey_grapples_used * -2);
		player_id.state = PS_IDLE_AIR;
		player_id.hurtboxID.sprite_index = player_id.hurtbox_spr;
		player_id.flowey_vine.destroyed = true;
		y -= 1000;
		destroyed = true;
		if (player_id.djumps > 1) {
            player_id.djumps = 1;
        }
        player_id.flowey_grapples_used += 1;
	}
}

if attack == AT_FSPECIAL && hbox_num == 5{
	with oPlayer{
		if get_player_damage(player) >= 100 && player != other.orig_player_id.player{
			other.can_hit[player] = true;
		}
	}
}

if attack == AT_DSPECIAL{
	image_index = (hitbox_timer - 1) / 5;
	switch hitbox_timer{
		case 11:
			hit_priority = 5;
		break;
		case 16:
			hit_priority = 0;
		break;
	}
	if has_hit{
		player_id.has_hit = true;
	}
	hsp = 0;
	vsp = 0;
	if place_meeting(x, y + 2, asset_get("par_block")){
		y += 2;
	}
}

#define locate_nearest_player
var shortest_dist = 9999;
var shortest_id = noone;

with (oPlayer) {
	if (player != other.player_id.player) {
		var curr_dist = point_distance(x,y,other.x,other.y);
		if (curr_dist < shortest_dist && state != PS_DEAD && state != PS_RESPAWN && !clone) {
			shortest_dist = curr_dist;
			shortest_id = id;
		}
	}
}

return shortest_id;