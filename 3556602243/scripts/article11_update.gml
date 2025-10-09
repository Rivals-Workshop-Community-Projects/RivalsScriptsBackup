//
if (!free && !touched_ground) {
	touched_ground = true;
	vsp = 0;
	sound_play(asset_get("sfx_blow_weak1"));
	spawn_hit_fx(x, y, 301);
}

with pHitBox {
	if place_meeting(x, y, other) {
		if "ror_player_id" in self {
			ror_player_id.ror_cracked_eggs++;
		} else {
			player_id.ror_cracked_eggs++
			if type == 1 {
				if (!player_id.hitpause) {
					player_id.old_vsp = player_id.vsp;
					player_id.old_hsp = player_id.hsp;
				}
				player_id.hitstop = 10;
				player_id.hitpause = true;				
			}
		}
		sound_play(asset_get("sfx_oly_crystal_cracking"));
		spawn_hit_fx(x, y, 304);
		instance_destroy(other);
		if (type == 2 && !transcendent) {
			destroyed = true;
		}
	}
}

//Kill
if (obj_stage_main.round_state != "alive") {
	if (death_offset) {
		death_offset--
	} else {
		if instance_exists(obj_stage_main.last_alive) {
			/*
			with (obj_stage_main.last_alive) {
				ror_cracked_eggs++
			}
			*/
			for (var i = 0; i < array_length(obj_stage_main.main_players); i++) {
				if (get_player_team(obj_stage_main.main_players[i].player) == get_player_team(obj_stage_main.last_alive.player)) {
					obj_stage_main.main_players[i].ror_cracked_eggs++;
				}
			}
			//
			sound_play(asset_get("sfx_oly_crystal_cracking"));
			spawn_hit_fx(x, y, 304);
			instance_destroy(self);
		} else {
			spawn_hit_fx(x, y, HFX_SHO_GEAR_BREAK);
			sound_play(asset_get("sfx_abyss_hazard_burst"));
			instance_destroy(self);
		}
	}
}
