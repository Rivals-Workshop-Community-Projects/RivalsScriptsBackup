//article2_update

state_timer++;

// // // // STATE 0 - START
if (state == 0){
	state_end = 1;
	
    if (state_timer == state_end){
        state = 1;
        state_timer = 0;
		void_spawn();
		sound_play(asset_get("sfx_boss_shine"), false, noone, 1, 0.8);
    }
}

// // // // STATE 1 - IDLE
if (state == 1){
	state_end = 15;
	
	/*
	with(player_id){
		if (shield_down){
			if (up_down){
				other.image_angle++;
			}
			if (down_down){
				other.image_angle--;
			}
		}
	}
	*/
	
	//var angle_e = ((image_angle + ((spr_dir)?0:180))*spr_dir) / 180 * -3.14;
	var angle_e = image_angle / 180 * -3.14;
	//var void_speed = 3;//void speed is defined in init now
	hsp = void_speed * cos(angle_e);
	vsp = void_speed * sin(angle_e);
	
	//point_distance(x, y-(char_height/2), latest_light_sentry.x, latest_light_sentry.y) <= 80
	var article1check = false;
	
	with(asset_get("obj_article1")){
		if (player_id == other.player_id){
			if (point_distance(x, y, other.x, other.y) <= void_range){
				
				article1check = true;
				
			}
		}
	}
	if (article1check == true){
		//print_debug( "i see article" )
		/*var test = instance_position(x, y, asset_get("obj_article1"))
		if (test != noone){
			if (test.player_id == player_id){
				//print_debug( "article confirmed" )
				//ultra heckan thanks to fespadea for the "nearest player" base code
				var targetPlayer = noone;
				
				with (asset_get("oPlayer")){
					if (id!=other.player_id){
						if(get_player_team(player) != get_player_team(other.player)){
							na_tmp_dist = point_distance(other.x, other.y, x, y);
							if(targetPlayer == noone || na_tmp_dist < targetPlayer.na_tmp_dist){
								targetPlayer = id;
							}
						}
					}
				}
				if (targetPlayer != noone){
					//print_debug( "target got" )
					var target_angle = point_direction(x, y, targetPlayer.x, targetPlayer.y)
					var temp_diff = angle_difference(image_angle, target_angle)
					if (temp_diff<0){
						image_angle = image_angle + 1;
					}
					if (temp_diff>0){
						image_angle = image_angle - 1;
					}
				}
				
				
			}
		}*/
	}
	if (extraparried == true){
		state_end = 6
	}else if (article1check == true || parried_player != -4){
		state_end = 8//12
	}else{
		state_end = 15
	}
	
	/*
	if (position_meeting(x,y, asset_get("plasma_field_obj"))){
		instance_destroy();
		exit;
	}
	*/
	
	var vol_tmp = 1-(loop_count/loop_max);
	
    if (state_timer >= state_end){
		if (loop_count < loop_max){
			void_spawn();
			sound_play(asset_get("sfx_boss_shine"), false, noone, vol_tmp/((slash_immune)?2:1), 0.8+((article1check)?0.05:0)-((slash_immune)?0.1:0));
			if (article1check == false){
				loop_count++;
			}else{
				sound_play(asset_get("sfx_abyss_despawn"), false, noone, vol_tmp*0.8, 1.9);
				spawn_hit_fx( x, y, 67 );
			}
			state = 1;
			state_timer = 0;
		}else{
			instance_destroy();
			exit;
		}
    }
}


#define void_spawn()
	
	if (slash_immune==true){
	var voidfx_id = spawn_hit_fx( x, y, player_id.voidfxB )
	}else{
	var voidfx_id = spawn_hit_fx( x, y, player_id.voidfx )
	}
	voidfx_id.draw_angle = image_angle;
	voidfx_id.spr_dir = 1;
	voidfx_id.depth = -20;
	
	user_event(0);
	if (ue0_out=false){
	var angle_1 = (image_angle + 90) / 180 * -3.14;
	var angle_2 = (image_angle - 90) / 180 * -3.14;
	var disp_1 = 18;
	var disp_2 = 36;
	var hbtx = 0;
	var hbty = 0;
	var hbidA = create_hitbox( AT_NSPECIAL_AIR, 2, x+hbtx, y+hbty );
	hbidA.owner_article=id;
	hbidA.spr_dir = tmpdir;
	hbidA.image_angle = image_angle
	//hbidA.leaderhb = hbidA;
	//hbidA.idbox = [0,0,0,0,0]
	//hbidA.idbox[0] = hbidA
	//hbidA.can_hit_fake = [0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0]
	if (parried_player!=-4){
		hbidA.player = parried_player
		hbidA.was_parried = true;
	}
	
	/*var angle_1 = (image_angle + 90) / 180 * -3.14;
	var angle_2 = (image_angle - 90) / 180 * -3.14;
	var disp_1 = 18;
	var disp_2 = 36;
	var hbtx = 0;
	var hbty = 0;
	var hbidA = create_hitbox( AT_NSPECIAL_AIR, 1, x+hbtx, y+hbty );
	hbidA.owner_article=id;
	hbidA.spr_dir = tmpdir;
	hbidA.leaderhb = hbidA;
	hbidA.idbox = [0,0,0,0,0]
	hbidA.idbox[0] = hbidA
	hbidA.can_hit_fake = [0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0]
	if (parried_player!=-4){
		hbidA.player = parried_player
		hbidA.was_parried = true;
	}*/
	
	/*hbtx = round(disp_1 * cos(angle_1));
	hbty = round(disp_1 * sin(angle_1));
	var hbid = create_hitbox( AT_NSPECIAL_AIR, 1, x+hbtx, y+hbty );
	hbid.owner_article=id;
	hbid.spr_dir = tmpdir;
	hbid.leaderhb = hbidA;
	hbidA.idbox[1] = hbid
	hbid.can_hit_fake = [0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0]
	if (parried_player!=-4){
		hbid.player = parried_player
		hbid.was_parried = true;
	}
	hbtx = round(disp_1 * cos(angle_2));
	hbty = round(disp_1 * sin(angle_2));
	var hbid = create_hitbox( AT_NSPECIAL_AIR, 1, x+hbtx, y+hbty );
	hbid.owner_article=id;
	hbid.spr_dir = tmpdir;
	hbid.leaderhb = hbidA;
	hbidA.idbox[2] = hbid
	hbid.can_hit_fake = [0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0]
	if (parried_player!=-4){
		hbid.player = parried_player
		hbid.was_parried = true;
	}
	hbtx = round(disp_2 * cos(angle_1));
	hbty = round(disp_2 * sin(angle_1));
	var hbid = create_hitbox( AT_NSPECIAL_AIR, 1, x+hbtx, y+hbty );
	hbid.owner_article=id;
	hbid.spr_dir = tmpdir;
	hbid.leaderhb = hbidA;
	hbidA.idbox[3] = hbid
	hbid.can_hit_fake = [0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0]
	if (parried_player!=-4){
		hbid.player = parried_player
		hbid.was_parried = true;
	}
	hbtx = round(disp_2 * cos(angle_2));
	hbty = round(disp_2 * sin(angle_2));
	var hbid = create_hitbox( AT_NSPECIAL_AIR, 1, x+hbtx, y+hbty );
	hbid.owner_article=id;
	hbid.spr_dir = tmpdir;
	hbid.leaderhb = hbidA;
	hbidA.idbox[4] = hbid
	hbid.can_hit_fake = [0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0]
	if (parried_player!=-4){
		hbid.player = parried_player
		hbid.was_parried = true;
	}*/
	
	}//else{
		//print_debug( "spawn successfully prevented" )
	//}
	

