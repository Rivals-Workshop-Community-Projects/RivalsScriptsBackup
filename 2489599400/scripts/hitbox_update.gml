//hitbox_update

if (attack == AT_DSPECIAL && hbox_num == 1) {
	if !free {
		with player_id create_hitbox(AT_EXTRA_2, 3, other.x, other.y+10);
		with player_id sound_play(sound_get("sfx-tape-2"), false, noone, 1, .9);
		hitbox_timer = length;
	}
}


if (attack == AT_EXTRA_2 && hbox_num == 3) {
	if destroyed || hitbox_timer == length {
		player_id.tapes -= 1;
		with player_id sound_play(sound_get("sfx-tape-3"), false, noone, 1, .9);
		spawn_hit_fx(x, y, 14);
	}
	
	if free { 
		with player_id other.sprite_index = sprite_get("tape_fall");
	}
	else {
		with player_id other.sprite_index = sprite_get("tape");
	}
		
	with (asset_get("pHitBox")) {
		if (player_id == other.player_id && (attack == AT_FSPECIAL_2 || attack == AT_DSPECIAL_2 && hbox_num == 6 || attack == AT_EXTRA_1 && hbox_num == 6)) && place_meeting(x,y,other.id) {
			other.destroyed = true;
			player_id.old_vsp = player_id.vsp;	
			player_id.old_hsp = player_id.hsp;
			with player_id sound_play(sound_get("sfx-tape-2"), false, noone, 1, 1.1);
			player_id.has_hit = 1;
			player_id.hitpause = 1;
			player_id.hitstop = 5;
			player_id.hitstop_full = 5;	
			spawn_hit_fx(other.x,other.y,301);
		
			if attack == AT_FSPECIAL_2 {
				take_damage(player, -1, -3);
				player_id.rolltime += 15;	
			}
			
			if attack == AT_DSPECIAL_2 || attack == AT_EXTRA_1 {
					create_hitbox(AT_EXTRA_2, 4, other.x-4, other.y-10);
					create_hitbox(AT_EXTRA_2, 5, other.x+4, other.y-10);		
				}
		}
		
		if player_id != other.player_id && place_meeting(x,y,other.id) {
		other.destroyed = true;
		other.player_id.tapes -= 1;
			if type == 1 {
				player_id.old_vsp = player_id.vsp;	
				player_id.old_hsp = player_id.hsp;
				player_id.hitpause = 1;
				player_id.hitstop = 5;
				player_id.hitstop_full = 5;	
				player_id.has_hit = 1;
				with other.player_id sound_play(sound_get("sfx-tape-2"));
			}
		}
	}
}

if (attack == AT_USPECIAL) {
	if hbox_num == 1 {
		proj_angle -= 1;

		if !free {
			hitbox_timer = length;
		}
		
		
		if hitbox_timer == length {
			spawn_hit_fx(x,y,304);
			sound_play(asset_get("sfx_ice_shatter_big"));
			create_hitbox( AT_USPECIAL, 2, x, y+2);
			create_hitbox( AT_USPECIAL, 3, x, y+2);
		}
	}
	
	if hbox_num == 2 || hbox_num == 3 {	
		if !free && !was_parried {
			destroyed = true;
		}

		with (asset_get("pHitBox")) {
			if (attack == AT_USPECIAL && was_parried) {
				other.player = player;
			}
		}
		if was_parried {
			var angle = point_direction(x, y, player_id.x, player_id.y-24);
			hsp = lengthdir_x(12, angle);
			vsp = lengthdir_y(12, angle);
			proj_angle -= 5;
			walls = 1;
			grounds = 1;
		}
	}
}