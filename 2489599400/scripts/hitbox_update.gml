//hitbox_update

if (attack == AT_EXTRA_2 && hbox_num == 3) {
	if destroyed || hitbox_timer == length {
		player_id.tapes -= 1;
		sound_play(sound_get("sfx-tape-3"), false, noone, 1, .9);
		spawn_hit_fx(x, y, 14);
	}
	
	if free { 
		with player_id other.sprite_index = sprite_get("tape_fall");
	}
	else {
		with player_id other.sprite_index = sprite_get("tape");
	}
		
	with (asset_get("pHitBox")) {
		if (player_id == other.player_id && (attack == AT_FSPECIAL || attack == AT_DSPECIAL && hbox_num == 6 || attack == AT_DSPECIAL_2 && hbox_num == 6 || attack == AT_DAIR)) && place_meeting(x,y,other.id) {
			other.destroyed = true;
			player_id.tapes -= 1;
			player_id.old_vsp = player_id.vsp;	
			player_id.old_hsp = player_id.hsp;
			sound_play(sound_get("sfx-tape-2"), false, noone, 1, 1.1);
			player_id.has_hit = 1;
			player_id.hitpause = 1;
			player_id.hitstop = 5;
			player_id.hitstop_full = 5;	
			spawn_hit_fx(other.x,other.y,301);
		
			if attack == AT_FSPECIAL {
				take_damage(player, -1, -2);
				player_id.rolltime += 15;	
			}
			
			if attack == AT_DSPECIAL || attack == AT_DSPECIAL_2 || attack == AT_DAIR {
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
				with other sound_play(sound_get("sfx-tape-2"));
			}
		}
	}
}