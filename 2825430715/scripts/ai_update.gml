/// 

	if move_cooldown[AT_FTHROW] == 0 && state_cat != SC_HITSTUN {
			sound_play(asset_get("sfx_ori_energyhit_medium"),false,noone,1,1.2)
			sound_play(sound_get("SpaceCut"),false,noone,1,1.4)
			create_hitbox(AT_DTHROW,1, x + 208*spr_dir, y - 46)
			grab = spawn_hit_fx (x + 48*spr_dir, y - 10, ptgone)
			grab.depth = -6
		}
		
		//