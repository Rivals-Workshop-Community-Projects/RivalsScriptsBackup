timer++;

//collect stars
	if (timer >= time_before_grabbable){
	with (oPlayer){
		if (place_meeting(x, y, other)){
			if (state != PS_RESPAWN && state != PS_DEAD && state_cat != SC_HITSTUN && !obj_stage_main.game_ended){
				var player_stored = player;
					
				with (other){
					//add to star count
					if (!obj_stage_main.teams_enabled){ //regular
						obj_stage_main.stage_points[player_stored] += 1;
					}
					else{ //teams
						obj_stage_main.team_points[get_player_team(player_stored)] += 1;
					}
					
					//sfx and vfx stuff
					sound_play(sound_get("itemget"));
					spawn_hit_fx(x, y, 113);
					
					//respawn bricks
					with (obj_stage_article_solid) if (num == 1 || num == 4){
						broken = false;
					    image_index = 0;
					}
					
					//destroy
					instance_destroy();
					exit;
				}
			}
		}
	}
}

//despawning stuff
var despawn_time = 720; //12 seconds to get a naturally spawned star

//flash when close to despawn time
if (timer > despawn_time - 60){
	visible = !(timer % 10 < 5);
}

//despawn after time is up
if (timer >= despawn_time){
	sound_stop(asset_get("sfx_ell_steam_hit"));
	sound_play(asset_get("sfx_ell_steam_hit"));
	spawn_hit_fx(x, y, 144);
	
	instance_destroy();
	exit;
}

//vfx
if (visible){
	var vfx_rate = 20;
	var random_x_range = 60;
	var random_y_range = 60;
	
	var random_x = random_func_2( 1, random_x_range, true ) - random_x_range/2;
	var random_y = random_func_2( 2, random_y_range, true ) - random_y_range/2;
	
	if (timer mod vfx_rate == 0){
		spawn_hit_fx( x + (random_x)*spr_dir - 0*spr_dir, y - 0 + (random_y), obj_stage_main.sparkle_vfx );
	}
}