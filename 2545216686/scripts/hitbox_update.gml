//hitbox_update.gml

// Up Strong
if (attack == AT_USTRONG){
	if (hbox_num == 4){
		ustr_hand_timer++;
		image_index = (ustr_hand_timer / 3);
		x = player_id.x;
		y = player_id.y;
		spr_dir = player_id.spr_dir;
		if (player_id.sprite_index != sprite_get("ustrong") || image_index == 5){
			destroyed = true;
		}
	}
}

if (attack == AT_NSPECIAL || attack == AT_NSPECIAL_AIR){
	if (hbox_num == 1){
		if (hitbox_timer == 0){
			nspec_air_elec_bounced = 0
		}
		if ((hitbox_timer == 119) || (x != clamp(x, blastzone_l, blastzone_r) || y > blastzone_b || y < blastzone_t)){//>
			sound_play(asset_get("sfx_absa_jab1"));
			spawn_hit_fx( x , y, 197 );
			instance_destroy();
			exit;
		}
		/*
		with (asset_get("obj_article1")){
			if (place_meeting(x, y, other)){
				if (player_id.player == other.player){
					with (other){
						other.state = 9;
						other.state_timer = 0;
						//player_id.tailsdidbombhitrobot = true
						//spawn_hit_fx( player_id.tailsrobotx, player_id.tailsroboty - 12, player_id.fireball_normal_explode );
						sound_play(sfx_krtd_bomb_explode)
						sound_play(asset_get("sfx_ell_big_missile_fire"))
						shake_camera( 6, 3 )
						nspec_air_elec_bounced = 0;
						instance_destroy();
						exit;
					}
				}
			}
		}
		*/
		if (attack == AT_NSPECIAL_AIR){
			if (vsp < 0){//>
				nspec_air_elec_bounced++;
				if (nspec_air_elec_bounced == 1){
					sound_play(asset_get("sfx_absa_cloud_pop"));
				}
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