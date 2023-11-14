//lock camera to be centered
if (!game_ended){
	set_view_position(room_width/2, room_height/2 + 18);
}

//screenwrap
with (oPlayer){
		if (state_cat != SC_HITSTUN && state != PS_DEAD && state != PS_RESPAWN){
			var stage_x = get_stage_data( SD_X_POS );
			
			if (x < 0){
				x = room_width + 0;
			}
			else if (x > room_width + 0){
				x = 0;
			}
		}
}

with (pHitBox){
		if (type == 2 && !unbashable && length < 6000 && hsp != 0){
			var stage_x = get_stage_data( SD_X_POS );
			
			if (x <= 0){
				x = room_width + 0;
			}
			else if (x >= room_width + 0){
				x = 0;
			}
		}
}

with (obj_stage_article){
		if (num == 6){
			var stage_x = get_stage_data( SD_X_POS );
			
			if (x <= 0){
				x = room_width - 16;
			}
			else if (x >= room_width + 0){
				x = 16;
			}
		}
}

//spawn platform
var marker_x = get_marker_x( 1 );
var platform_rate = 120;

timer++;

if (timer mod platform_rate == 0 && timer > 120){
    //spawn platform
    var plat = instance_create(get_marker_x( 1 ), room_height + 10, "obj_stage_article_platform", 2);
    plat.initialized_by_stage = true;
}

//respawn bricks naturally if not on aether form
if (is_aether_stage() == false){
	if (timer > 240){
	    if (timer mod brick_respawn_rate == 0){
	        sound_play(sound_get("spit"), false, noone, 1, 1);
	        with (obj_stage_article_solid) if (num == 1 || num == 4){
	            broken = false;
	            image_index = 0;
	        }
	    }
	}
}


//star stuff for aether form
if (is_aether_stage()){
    
    
    for (i = 1; i < 5; i++) {
    	var i_stored = i;
    	
		if (!teams_enabled){
		    var num_stars = obj_stage_main.stage_points[i_stored];
		}
		else{
		    var num_stars = obj_stage_main.team_points[get_player_team(i_stored)];
		}
    	
    	//make player sparkly if theyre 1 away and play warning sfx
    	if (num_stars == stars_to_win - 1){
    		with (oPlayer) if (variable_instance_exists(self, "mvl_sparkle")){
    			if (player == i_stored && !mvl_sparkle){
    				mvl_sparkle = true;
    				
    				with (other){
	    				sound_stop(sound_get("hurry_up"));
	    				sound_play(sound_get("hurry_up"), false, 0, 1, 1);
	    				
	    				mute_timer = hurry_up_jingle_length;
    				}
    			}
    		}
    	}
    	else{
    		with (oPlayer) if !clone{
    			if (player == i_stored && mvl_sparkle){
    				mvl_sparkle = false;
    			}
    		}
    	}
    	
    	//end match if a player gets enough stars
    	if (num_stars >= stars_to_win && !game_ended){
			//Finding scores
			if (!teams_enabled){ //no teams
				var place;
				var winner = array_create(4, 0)
				for (var k = 1; k < 5; k++) { //k is the current player being checked. j is the player it's being compared to.
					place = 3; //Last place
					for (var j = 1; j < 5; j++) {
						if k == j continue; //lol same player
						if obj_stage_main.stage_points[k] > obj_stage_main.stage_points[j] {
							place--;
						}
					}
					if winner[place] != 0 winner[place] = -1; else winner[place] = k;
				}
				end_match(winner[0], winner[1], winner[2], winner[3])
			}
			else{ //teams
				end_match(i_stored);
			}
    	    
    	    sound_stop(sound_get("hurry_up"));
    	    sound_play(sound_get("level_clear"), false, 0, 1, 1);
    	    
    	    game_ended = true;
    	}
    }
    
    //surpress music while mute timer is greater than 0 for the hurry up sfx
    if (mute_timer > 0){
    	mute_timer--;
    	
    	suppress_stage_music( 0, 0.2 );
    }
    
    //end match is time is "up" based on who has the most stars
    if (get_game_timer() == 1 && !game_ended){
		//Finding scores
		if (!teams_enabled){ //no teams
			var place;
			var winner = array_create(4, 0)
			for (var k = 1; k < 5; k++) { //k is the current player being checked. j is the player it's being compared to.
				place = 3; //Last place
				for (var j = 1; j < 5; j++) {
					if k == j continue; //lol same player
					if obj_stage_main.stage_points[k] > obj_stage_main.stage_points[j] {
						place--;
					}
				}
				if winner[place] != 0 winner[place] = -1; else winner[place] = k;
			}
			end_match(winner[0], winner[1], winner[2], winner[3])
		}
		else{ //teams
			end_match(i_stored);
		}
		
		sound_stop(sound_get("hurry_up"));
		sound_stop(sound_get("level_clear"));
    	sound_play(sound_get("level_clear"), false, noone, 1, 1);
    	    
    	game_ended = true;
    }
    
    //spawn stars
    var star_spawn_rate = 1200;
    
    if ((timer + 120) mod star_spawn_rate == 0){
        sound_play(sound_get("powerup"), false, noone, 1, 1);
    }
    
    if (timer mod star_spawn_rate == 0){
        var random_seed = 0;
        var num_locations = 7;
        var chosen_location = 0;
        
        with (oPlayer) {
            random_seed += x;
            random_seed += y;
            random_seed %= 200;
        }
        chosen_location = random_func_2( floor(random_seed), num_locations, true );
        chosen_location += 2; //adding 2 because the first marker is being used for the moving plat spawner lol

        var star = instance_create(get_marker_x( chosen_location ), get_marker_y( chosen_location ), "obj_stage_article", 5);
        
        sound_play(sound_get("star_appear"), false, noone, 1, 1);
    }
    
}