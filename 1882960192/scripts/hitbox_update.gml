//hitbox_update
if (attack == AT_NSPECIAL) {
	if hbox_num != 2 {
		if hbox_num == 1 {
			if hitbox_timer == 1 || hitbox_timer mod 4 == 0 {
				spawn_hit_fx(x+2*spr_dir, y, player_id.nspecialAfter);
			}
			
			if !free {
				if bounce > 0 {
					with player_id sound_play(sound_get("magicbounce"));
					if 5 > vsp && vsp >= 0 {
						vsp = -5;
					} else { vsp *= -.85; }
					bounce--;
					hitbox_timer -= 10;
				} else if !in_hitpause {
					hitbox_timer = length;
				}
			}
		}

		if hbox_num == 3 {
			if hitbox_timer == 1 || hitbox_timer mod 5 == 0 {
					spawn_hit_fx(x+2*spr_dir, y, player_id.nspecialAfter3);
					spawn_hit_fx(x-20*spr_dir, y+18, player_id.nspecialAfter);
					spawn_hit_fx(x-20*spr_dir, y-18, player_id.nspecialAfter);
			}
			
			if !free && landedground == false && (length-1) > hitbox_timer {
				hitbox_timer = length-1;
				landedground = true;
			}
			
			if hitbox_timer == length-1 {
				y += 10;
				with player_id create_hitbox(AT_NSPECIAL, 2, other.x, other.y);
				spawn_hit_fx(x, y, 112);
				sound_play(asset_get("sfx_absa_kickhit"));
				shake_camera(8, 12);
			}
		}
		
		var got_hit = false;
		var enemy_hitboxID = noone;
		var hit_distance = 4;
		var hit_dir = 0;
		
			
		if in_hitpause {
				hitstop--;
		}
		
		if in_hitpause && hitstop == 0 {
			in_hitpause = false;
			hsp = old_hsp;
			vsp = old_vsp;
		}
		
		with (asset_get("pHitBox")) {
			if (player_id == other.player_id &&
			(attack == AT_FAIR || attack == AT_FSTRONG || attack == AT_FSPECIAL || attack == AT_TAUNT || attack == AT_FSPECIAL_2)
			&& place_meeting(x,y,other.id) && !other.was_parried && !other.has_hit && !player_id.has_hit) {
				other.player = player;
				enemy_hitboxID = noone;
				other.smacked = true;
				other.borked = false;
				other.spr_dir = player_id.spr_dir;
				other.bounce = 2;
				if other.hbox_num == 3 {
					other.grav = 0;
					other.hitbox_timer = other.length-10;
					sound_play(asset_get("sfx_clairen_tip_med"), false, noone, 1, 0.85);
					other.hitstop = 7;
					player_id.hitstop = 7;
					player_id.hitstop_full = 7;		
					spawn_hit_fx(other.x, other.y, 112);
					other.air_friction = 0;		
				} else {
					other.grav += .2;
					other.hitbox_timer = other.length-60;
					sound_play(asset_get("sfx_clairen_tip_weak"), false, noone, 1, 1.1);
					other.hitstop = 4;
					player_id.hitstop = 4;
					player_id.hitstop_full = 4;	
					spawn_hit_fx(other.x, other.y, 111);		
					other.air_friction = 0.05;						
				}	
				other.in_hitpause = 1;
				player_id.old_vsp = player_id.vsp;	
				player_id.old_hsp = player_id.hsp;
				player_id.has_hit = 1;
				player_id.hitpause = 1;			
				player_id.move_cooldown[AT_FSPECIAL] = 30;
				
				if (attack == AT_FAIR) {
					if other.hbox_num == 3 { 
						other.old_vsp = 8;
						other.old_hsp = 8 * (spr_dir);
					} else { 
						other.old_vsp = 17;
						other.old_hsp = 6 * (spr_dir);
					}
				}
				
				if (attack == AT_FSPECIAL) {
					if other.hbox_num == 3 { 
						other.old_vsp = 0; 
						other.old_hsp = 13 * (spr_dir);
						sound_play(sound_get("hammer-hit"), false, noone, .55, 0.85);
					} else { 
						other.old_vsp = -2;
						other.old_hsp = 11 * (spr_dir);
						sound_play(sound_get("hammer-hit"), false, noone, .5, 1.2);
					}
				}
				
				if (attack == AT_FSPECIAL_2) { //this will probably never happen
					if other.hbox_num == 3 { other.old_vsp = 0; } else other.old_vsp = -6;
					other.old_hsp = 10 * (spr_dir);
				}
				
				if (attack == AT_FSTRONG) {
					if other.hbox_num == 3 { 
						other.old_vsp = -8; 
						other.old_hsp = 9 * (spr_dir);
					} else { 
						other.old_vsp = -8;
						other.old_hsp = 9 * (spr_dir);
					}
				}
					
				if (attack == AT_TAUNT) {
					other.old_vsp = 20;
					other.old_hsp = 20 * (-spr_dir);
				}
				
				if other.hbox_num == 3 {
					other.old_vsp *= 2;
					other.old_hsp *= 2;
				}
			}
		}
	}
	
	if hbox_num == 2 {
		with (asset_get("pHitBox")) {
			if (player_id == other.player_id && attack == AT_NSPECIAL && hbox_num == 3) {
				other.player = player;
				other.spr_dir = spr_dir;
			}
		}
	}
}