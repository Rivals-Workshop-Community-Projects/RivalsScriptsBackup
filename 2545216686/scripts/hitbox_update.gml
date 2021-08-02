//hitbox_update.gml

if (attack == AT_NSPECIAL || attack == AT_NSPECIAL_AIR){
	if (hitbox_timer == 0){
		nspec_air_elec_bounced = 0
	}
	with (asset_get("obj_article1")){
        if (place_meeting(x, y, other)){
            if (player_id.player == other.player){
                with (other){
                    player_id.tailsdidbombhitrobot = true
					//spawn_hit_fx( player_id.tailsrobotx, player_id.tailsroboty - 12, player_id.fireball_normal_explode );
					sound_play(sfx_krtd_bomb_explode)
					sound_play(asset_get("sfx_ell_big_missile_fire"))
					shake_camera( 6, 3 )
					nspec_air_elec_bounced = 0
					instance_destroy();
					exit;
                }
            }
        }
    }
	if (attack == AT_NSPECIAL_AIR){
		if (vsp < 0){
			nspec_air_elec_bounced++;
			if (nspec_air_elec_bounced == 1){
				sound_play(asset_get("sfx_absa_cloud_pop"));
			}
		}
	}
}

if (attack == AT_FSPECIAL_AIR){
	if (hbox_num == 2){
		if (player_id.defaultcolor == true){
			sprite_index = sprite_get("robot_spin_default")
		}
		if (place_meeting(x, y, asset_get("par_block"))){
			var RemoteRobotThrownWithFspecHitSomeone = true
		}
		if RemoteRobotThrownWithFspecHitSomeone == true{
			//spawn_hit_fx( x, y - 12, 143 );
			RemoteRobotThrownWithFspecHitSomeone = false
			spawn_hit_fx( x, y - 12, 143);
			create_hitbox(AT_DSPECIAL, 2, x, y - 12);
			sound_play(sfx_krtd_bomb_explode)
			sound_play(asset_get("sfx_ell_big_missile_fire"))
			shake_camera( 6, 3 )
			instance_destroy();
			exit;
		}
	}
	
}

if (attack == AT_DSPECIAL){
	if (hbox_num == 3){
		if (player_id.tailsisrobotout == true){
			x = player_id.tailsrobotx
			y = player_id.tailsroboty - 15
		}
		if (player_id.tailsdspechbox3destroyplease == true){
			player_id.tailsdspechbox3destroyplease = false
			instance_destroy();
			exit;
		}
		if (player_id.tailsdspecheydidtherobotdieyet == 1){
			player_id.tailsdspecheydidtherobotdieyet = 0
			instance_destroy();
			exit;
		}
		if (player_id.tailsdidstartingdownbhitboxhit == true){
			player_id.tailsdidstartingdownbhitboxhit = false
			instance_destroy();
			exit;
		}
	}
}