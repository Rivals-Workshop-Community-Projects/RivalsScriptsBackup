//hitbox_init.gml
frost_missile_offset = player_id.frost_missile_offset;

if(attack == AT_DSPECIAL){
	switch(hbox_num) {
		case 1:
			marked_player = -1;
			missile_spr_dir = player_id.spr_dir;
			switch(frost_missile_offset) {
				case 1:
					x = x+4*missile_spr_dir;
					y = y-16;
					depth = 10;
					proj_angle = -30*missile_spr_dir;
				break;
				case 2:
					//x = x;
					y = y-96;
					depth = 10;
					proj_angle = 30*missile_spr_dir;
				break;
				case 3:
					x = x-20*missile_spr_dir;
					y = y-120;
					depth = 1;
					proj_angle = 45*missile_spr_dir;
				break;
				case 4:
					x = x-40*missile_spr_dir;
					y = y-46;

					proj_angle = -30*missile_spr_dir;
				break;
				case 5:
					x = x+40*missile_spr_dir;
					y = y-64;
					depth = 10;
					proj_angle = -10*missile_spr_dir;
				break;
				case 6:
					x = x+32*missile_spr_dir;
					y = y-40;
					depth = 10;
					proj_angle = -10*missile_spr_dir;
				break;
			}
			
			meteor_sparkle_timer = 10+random_func_2(30+frost_missile_offset,20,true);
			missile_til_fire = 90;
		break;
		case 2:
			sound_play(asset_get("sfx_waveland_eta"), 0, 0, 0.6);
			frost_missile_trail = hit_fx_create( sprite_get("frost_missile_trail"), 20 );
			if missile_spr_dir != player_id.spr_dir { sprite_index = sprite_get("frost_missile_flipped"); } else { sprite_index = sprite_get("frost_missile"); }
			frost_missile_target_x = player_id.frost_missile_target_x;
			frost_missile_target_y = player_id.frost_missile_target_y;

			angleFromProjectileToTarget = -1;
			tracking = true;
			
			fx_particles = 1;
			meteor_sparkle_timer = 10+random_func_2(30+frost_missile_offset,20,true);
			missile_speed = 10;
		break;
	}
}

if attack == AT_BAIR || attack == AT_DAIR{
	sound_play(asset_get("sfx_waveland_eta"), 0, 0, 0.8);
	meteor_sparkle_timer = random_func_2(35, 10, true);
}

if attack == AT_FSTRONG{
	sound_play(asset_get("sfx_waveland_eta"), 0, 0, 0.6);
	meteor_sparkle_timer = random_func_2(36, 10, true);
	fx_particles = 1;
}