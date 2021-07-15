//hitbox_update.gml

if (attack == AT_NSPECIAL){
	proj_angle += (-8 * spr_dir);
	vsp = vsp + 0.1
	if place_meeting(x, y, asset_get("par_block")){
		//spawn_hit_fx( x, y - 12, 141 );
		spawn_hit_fx( x, y - 12, player_id.fireball_normal_explode );
		sound_play(sfx_krtd_bomb_explode)
		sound_play(asset_get("sfx_ell_big_missile_fire"))
		shake_camera( 6, 3 )
		instance_destroy();
		exit;
	}
	if (hitbox_timer > 24){
		hsp = hsp - (0.4 * spr_dir)
	}
	if (hitbox_timer == 89){
		sound_play(sfx_krtd_bomb_explode)
		sound_play(asset_get("sfx_ell_big_missile_fire"))
		//shake_camera( 6, 3 )
		instance_destroy();
		exit;
	}
	with (asset_get("obj_article1")){
        if (place_meeting(x, y, other)){
            if (player_id.player == other.player){
                with (other){
                    player_id.tailsdidbombhitrobot = true
					spawn_hit_fx( player_id.tailsrobotx, player_id.tailsroboty - 12, player_id.fireball_normal_explode );
					sound_play(sfx_krtd_bomb_explode)
					sound_play(asset_get("sfx_ell_big_missile_fire"))
					shake_camera( 6, 3 )
					instance_destroy();
					exit;
                }
            }
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