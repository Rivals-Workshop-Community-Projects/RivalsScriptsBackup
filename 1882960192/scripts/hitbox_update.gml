//hitbox_update
if (attack == AT_NSPECIAL) {
	if hbox_num == 1 {
		if hitbox_timer == 1 || hitbox_timer mod 4 == 0 {
			spawn_hit_fx(x, y, player_id.nspecialAfter);
		}
	}

	if hbox_num == 2 {
		if hitbox_timer == 1 || hitbox_timer mod 4 == 0 {
			spawn_hit_fx(x, y, player_id.nspecialAfter2);
			spawn_hit_fx(x-30*spr_dir, y, player_id.nspecialAfter);			
		}
	}

	if hbox_num == 3 { 
		if hitbox_timer == 1 || hitbox_timer mod 5 == 0 {
				spawn_hit_fx(x-10*spr_dir, y, player_id.nspecialAfter2);
				spawn_hit_fx(x-20*spr_dir, y+26, player_id.nspecialAfter);
				spawn_hit_fx(x-20*spr_dir, y-26, player_id.nspecialAfter);
		}
	}
}

if (attack == AT_FSPECIAL) {
	if hbox_num == 1 {
		img_spd = hsp/5*spr_dir;

		var got_hit = false;
		var enemy_hitboxID = noone;
		var hit_distance = 4;
		var hit_dir = 0;
		
		if hitbox_timer == length {
			spawn_hit_fx(x, y, 14);
			with player_id ballDown = 30;
		}
		
		if destroyed {
			with player_id ballDown = 30;
		}		
		
		if smacked && (hitbox_timer == 1 || hitbox_timer mod 2 == 0) {
			spawn_hit_fx(x, y, player_id.fspecialAfter);
		}
		
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
			(attack == AT_FAIR || attack == AT_FSTRONG || attack == AT_DSTRONG || attack == AT_JAB && hbox_num == 3 || attack == AT_FSPECIAL_AIR || 
			attack == AT_DSPECIAL || attack == AT_DSPECIAL_AIR || attack == AT_DSPECIAL_2 || attack == AT_DTHROW)
			&& place_meeting(x,y,other.id) && !other.was_parried && !other.has_hit && !player_id.has_hit) {
				other.player = player;
				enemy_hitboxID = noone;
				other.smacked = true;
				other.borked = false;
				other.hitbox_timer = 20;
				other.spr_dir = player_id.spr_dir;
				other.grav += .1;
				other.air_friction = 0;			
				other.grounds = 2;
				other.hitstop = 7;
				other.in_hitpause = 1;
				sound_play(asset_get("sfx_metal_hit_strong"), false, noone, 1, 1.1);
				player_id.old_vsp = player_id.vsp;	
				player_id.old_hsp = player_id.hsp;
				player_id.has_hit = 1;
				player_id.hitpause = 1;
				player_id.hitstop = 7;
				player_id.hitstop_full = 7;					
				player_id.move_cooldown[AT_FSPECIAL] = 30;
				spawn_hit_fx(other.x, other.y, 304);
				
				if (attack == AT_FAIR) {
					other.old_vsp = 7;
					other.old_hsp = 7 * (spr_dir);
				}
				
				if (attack == AT_FSPECIAL_AIR) {
					other.old_vsp = -5;
					other.old_hsp = 6 * (spr_dir);
				}
				
				if (attack == AT_FSTRONG) {
					other.old_vsp = -6;
					other.old_hsp = 10 * (spr_dir);
				}
				
				if (attack == AT_DSTRONG) {
					other.old_vsp = -15;
					if hbox_num == 1 || hbox_num == 4 {
						other.old_hsp = 4 * (spr_dir);
					}
					if hbox_num == 2 || hbox_num == 5 {
						other.old_hsp = -4 * (spr_dir);
					}					
				}
				
				if (attack == AT_JAB) {
					other.old_vsp = -1;
					other.old_hsp = 11 * (spr_dir);
				}
				
				if (attack == AT_DSPECIAL || attack == AT_DSPECIAL_2) {
					other.old_vsp = -18;
					other.old_hsp = .5 * (spr_dir);
					other.grounds = 0;
					other.frict -= .05;
					other.hitbox_timer =+ 50;
				}			
				if (attack == AT_DSPECIAL_AIR || attack == AT_DTHROW) {
					if 5 > hbox_num {
						other.old_vsp = 10;
						other.old_hsp = 8 * (spr_dir);
						other.grounds = 0;
							with player_id {
								window = 5;
								window_timer = 2;
								old_vsp = -10;
								old_hsp = 10*spr_dir;
								destroy_hitboxes();
								sound_play(asset_get("sfx_blow_medium3"), false, noone, 1, .95);
							}
					} else {
					other.old_vsp = -8;
					other.old_hsp = 8 * (spr_dir);		
					other.grounds = 0;
					}
				}
			}
			
			if (place_meeting(x-2*spr_dir, y, other.id) && player_id != other.player_id && !player_id.has_hit && !other.borked && damage >= 6 && !proj_break && !other.player_id.Lmao){
				got_hit = true;
				with player_id enemy_hitboxID = player;
				hit_distance = kb_value;
				if hit_flipper == 5 {
				hit_dir = -spr_dir;
				}
				else {
				hit_dir = spr_dir;
				}
				other.borked = true;
				
				if type == 1 {
					player_id.old_vsp = player_id.vsp;	
					player_id.old_hsp = player_id.hsp;
					player_id.hitpause = 1;
					player_id.hitstop = 7;
					player_id.hitstop_full = 7;	
					player_id.has_hit = 1;
				}
				
				if ((other.player_id.url == 1882960192 || other.player_id.url == 2014106219) && (attack == AT_FSPECIAL || attack == AT_FSPECIAL_2) && hbox_num == 1 && got_hit) {
					hit_dir = -other.spr_dir;
				}
			}
		}
		
	if got_hit{
		in_hitpause = true;
		hitstop = 7;
		smacked = true;
		hitbox_timer = 25;
		player = enemy_hitboxID;
		spr_dir = hit_dir;
		old_vsp = -5;
		old_hsp = (hit_distance) * hit_dir;
		grounds = 2;
		grav = .65;
		spawn_hit_fx(x, y, 304);
		sound_play(asset_get("sfx_metal_hit_strong"), false, noone, 1, .9);		
		}
	}
}
if (attack == AT_FSPECIAL_2) {
	if hbox_num == 1 {
		img_spd = hsp/7*spr_dir;

		var got_hit = false;
		var enemy_hitboxID = noone;
		var hit_distance = 4;
		var hit_dir = 0;
		
		if smacked && (hitbox_timer == 1 || hitbox_timer mod 2 == 0) {
			spawn_hit_fx(x, y, player_id.fspecialAfter2);
		}
		
		if in_hitpause {
			hitstop--;
		}
		
		if in_hitpause && hitstop == 0 {
			in_hitpause = false;
			hsp = old_hsp;
			vsp = old_vsp;
		}
		
		if hitbox_timer == length {
			spawn_hit_fx(x, y, 111);
			with player_id ballDown = 40;
		}
		
		if destroyed {
			with player_id ballDown = 40;
		}
		
		with (asset_get("pHitBox")) {
			if (player_id == other.player_id &&
			(attack == AT_FAIR || attack == AT_FSTRONG || attack == AT_DSTRONG || attack == AT_JAB && hbox_num == 3 || attack == AT_FSPECIAL_AIR || 
			attack == AT_DSPECIAL || attack == AT_DSPECIAL_AIR || attack == AT_DSPECIAL_2 || attack == AT_DTHROW)
			&& place_meeting(x,y,other.id) && !other.was_parried && !other.has_hit && !player_id.has_hit) {
				other.player = player;
				enemy_hitboxID = noone;
				other.smacked = true;
				other.borked = false;
				other.hitbox_timer = 20;
				other.spr_dir = player_id.spr_dir;
				other.grav += .1;
				other.air_friction = 0;	
				other.grounds = 2;
				other.hitstop = 7;
				other.in_hitpause = 1;
				sound_play(asset_get("sfx_metal_hit_strong"), false, noone, 1, 1.1);
				player_id.old_vsp = player_id.vsp;	
				player_id.old_hsp = player_id.hsp;
				player_id.has_hit = 1;
				player_id.hitpause = 1;
				player_id.hitstop = 7;
				player_id.hitstop_full = 7;					
				player_id.move_cooldown[AT_FSPECIAL] = 30;
				spawn_hit_fx(other.x, other.y, 304);
				
				if (attack == AT_FAIR) {
					other.old_vsp = 8;
					other.old_hsp = 7 * (spr_dir);
				}
				
				if (attack == AT_FSTRONG) {
					other.old_vsp = -6;
					other.old_hsp = 10 * (spr_dir);
				}
				
				if (attack == AT_FSPECIAL_AIR) {
					other.old_vsp = -5;
					other.old_hsp = 6 * (spr_dir);
				}
				
				if (attack == AT_DSTRONG) {
					other.vsp = -16;
					if hbox_num == 1 || hbox_num == 4 {
						other.old_hsp = 5 * (spr_dir);
					}
					if hbox_num == 2 || hbox_num == 5 {
						other.old_hsp = -5 * (spr_dir);
					}					
				}
				
				if (attack == AT_JAB) {
					other.old_vsp = -1;
					other.old_hsp = 11 * (spr_dir);
				}
				
				if (attack == AT_DSPECIAL || attack == AT_DSPECIAL_2) {
					other.old_vsp = -18;
					other.old_hsp = .5 * (spr_dir);
					other.grounds = 0;
				}			
				if (attack == AT_DSPECIAL_AIR || attack == AT_DTHROW) {
					if 5 > hbox_num {
						other.old_vsp = 10;
						other.old_hsp = 8 * (spr_dir);
						other.grounds = 0;
							with player_id {
								window = 5;
								window_timer = 2;
								old_vsp = -10;
								old_hsp = 10*spr_dir;
								destroy_hitboxes();
								sound_play(asset_get("sfx_blow_medium3"), false, noone, 1, .95);
							}
					} else {
					other.old_vsp = -8;
					other.old_hsp = 11 * (spr_dir);		
					other.grounds = 0;
					}
				}
			}
			
			if (place_meeting(x-2*spr_dir, y, other.id) && player_id != other.player_id && !player_id.has_hit && !other.borked && damage >= 6 && !proj_break && !other.player_id.Lmao){
				got_hit = true;
				with player_id enemy_hitboxID = player;
				if hit_flipper == 5 {
				hit_dir = -spr_dir;
				}
				else {
				hit_dir = spr_dir;
				}
				hit_distance = kb_value;
				other.borked = true;

				if type == 1 {
					player_id.old_vsp = player_id.vsp;	
					player_id.old_hsp = player_id.hsp;
					player_id.hitpause = 1;
					player_id.hitstop = 7;
					player_id.hitstop_full = 7;	
					player_id.has_hit = 1;
				}
			
				if ((other.player_id.url == 1882960192 || other.player_id.url == 2014106219) && (attack == AT_FSPECIAL || attack == AT_FSPECIAL_2) && hbox_num == 1 && got_hit) {
					hit_dir = -other.spr_dir;
				}
			}
		}
		
	if got_hit{
		in_hitpause = true;
		hitstop = 7;
		smacked = true;
		hitbox_timer = 25;
		player = enemy_hitboxID;
		spr_dir = hit_dir;
		old_vsp = -5;
		old_hsp = (hit_distance) * hit_dir;
		grounds = 2;
		grav = .75;
		spawn_hit_fx(x, y, 304);
		sound_play(asset_get("sfx_metal_hit_strong"), false, noone, 1, .9);		
		}
	}
}