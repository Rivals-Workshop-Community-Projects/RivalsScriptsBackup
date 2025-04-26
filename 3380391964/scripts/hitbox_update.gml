//hitbox_update

if (attack == AT_USPECIAL) {
	if hbox_num == 1 {
		if was_parried {
			img_spd = -((hsp)/6) * spr_dir;
		} else {
			img_spd = ((hsp)/6) * spr_dir;		
		}
		
		if hitbox_timer == length {
			spawn_hit_fx(x, y-10, 301);
		}
		with player_id hammerOut = true;
	}
	
	if !free {
		if bounce > 0 {
			with player_id sound_play(sound_get("hammerbounce"));
			hitbox_timer -= 10;
			bounce--;
			vsp = -4;
			hsp *= .75;
		} else if !in_hitpause {
			hitbox_timer = length;
			spawn_hit_fx(x, y-10, 301);
		}	
	}
	if in_hitpause {
		hitstop--;
	}
	if in_hitpause && hitstop == 0 {
		in_hitpause = false;
		hsp = old_hsp;
		vsp = old_vsp;
	}
	if hittimer > 0 && !in_hitpause {
		hittimer--;
	}
		
	if hittimer == 1 && !was_parried {
		for(var i = 0; i < 20; i++) can_hit[i] = true;
	}
	
	with player_id {
		victim_x = other.x;
		victim_y = other.y+20;
	}
}

if (attack == AT_NSPECIAL) {
	if hbox_num == 2 {
		x = player_id.x;
		y = player_id.y-24;
		
		with (pHitBox) {
			if (player_id == other.player_id && attack == AT_USPECIAL) {
				other.targetfound = true;
				other.victim_x = x;
				other.victim_y = y+20;
				other.victim = 1;
			}
		}
		
		var close = noone;
		
		if victim != 1 {
			with (oPlayer) {
				if get_player_team(player) != get_player_team(other.player) && (close = noone || point_distance(x, y, other.x, other.y) < point_distance(other.x, other.y, close.x, close.y)) {
					close = self;
				}
				if !(state == PS_SPAWN || state == PS_RESPAWN || state == PS_DEAD) {
					if (self = close) {
						if place_meeting(x,y,other.id) {
							other.targetfound = true;
							other.victim = 2;
						}
						if other.targetfound {
							other.victim_x = x;
							other.victim_y = y;
						}
					}
				}
			}
		}
		
		with player_id {
			targetfound = other.targetfound;		
			victim_x = other.victim_x;
			victim_y = other.victim_y;
			victim = other.victim;
			
			if !(attack == AT_NSPECIAL && window == 2) {
				other.hitbox_timer = 214214;
			}
		}
	}
}