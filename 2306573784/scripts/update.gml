//

if !_init and is_aether_stage() {
	live_plats[0] = instance_create(0,0,"obj_stage_article_platform",3);
	live_plats[0].plat_type = random_func(seed,3,true);
	live_plats[1] = instance_create(0,0,"obj_stage_article_platform",3);
	live_plats[1].plat_type = random_func(seed+1,3,true)+3;
	live_plats[1]._init = 0;
	_init = 1;
	exit;
}
if is_aether_stage(){
	for(var i = 0; i < array_length_1d(time); i++) {
		time[i]++;
		if time[i] > time_max {
			with live_plats[i] {
				swapping = true;
				hsp = i*move_speed - (1-i)*move_speed;
				vsp = 0;
			}
			if live_plats[i].x > right_blast || live_plats[i].x < left_blast {
				with live_plats[i] {
					plat_type = random_func(get_gameplay_time() % 200,3,true)+3*i;
					print_debug(string(i)+" SWAPPING TO: "+string(plat_type));
					swapping = false;
					plat_markers_l = array_length_1d(plat_markers[plat_type]);
    				cur_marker = 0;
				}
				time[i] = random_func(get_gameplay_time() % 200,time_diff_max,true);	
			}
		}
	}
	/*
	time--;
	
	if mode_left > 6{
		mode_left = 0;
	}
	if mode_right > 6{
		mode_right = 0;
	}
	
	if time <= 0{
		mode_left++;
		mode_right++;
		time = maxtime;
		print_debug("Mode Left: " + string(mode_left));
		print_debug("Mode Right: " + string(mode_right));
		if mode_left == 1{
			with obj_stage_article_platform{
				if num == 1{
					x = get_marker_x(marker[0]);
					y = get_marker_y(marker[0]);
					current_marker = -1;
				}
			}
		}
		if mode_left == 3{
			with obj_stage_article_platform{
				if num == 1{
					x = get_marker_x(marker[6]);
					y = get_marker_y(marker[6]);
					current_marker = 6;
				}
			}
		}
		
	}

	if mode_left == 0 or mode_left == 2 or mode_left == 4 or mode_left == 6{
		with obj_stage_article_platform{
			if num == 1{
				active = 0;
			}
		}
	} else {
		with obj_stage_article_platform{
			if num == 1{
				active = 1;
			}
		}
	}
	
	if mode_left == 0 or mode_left == 2 or mode_left == 4 or mode_left == 6{
		with obj_stage_article_platform{
			if num == 2{
				active2 = 0;
			}
		}
	} else {
		with obj_stage_article_platform{
			if num == 2{
				active2 = 1;
			}
		}
	}
	
	
	switch(mode_left){
		case 0:	// Nothing
			with obj_stage_article_platform{
				if num == 1{
					active = 0;
				}
			}
			break;
		case 1:	// Guts Man Plat
			with obj_stage_article_platform{
				if num == 1{
					type = 0;
					active = 1;
				}
			}
			break;
		case 2:	// Nothing
			with obj_stage_article_platform{
				if num == 1{
					active = 0;
				}
			}
			break;
		case 3:	// Simple Plat moving up and down
			with obj_stage_article_platform{
				if num == 1{
					type = 1;
					active = 1;
				}
			}
			break;
		case 4:	// Nothing
			with obj_stage_article_platform{
				if num == 1{
					active = 0;
				}
			}
			break;
		case 5:	// Standard Platform
			with obj_stage_article_platform{
				if num == 1{
					type = 2;
					active = 1;
				}
			}
			break;
		case 6:	// Nothing
			with obj_stage_article_platform{
				if num == 1{
					active = 0;
				}
			}
			break;
	}
	
	switch(mode_right){
		case 0:	// Nothing
			break;
		case 1:	// Simple Plat moving up and down
			break;
		case 2:	// Nothing
			break;
		case 3:	// Guts Man Plat
			break;
		case 4:	// Nothing
			break;
		case 5:	// Standard Platform
			break;
		case 6:	// Nothing
			break;
	}
	*/
}

// Determine left right players
// Coded by Rare Boy and Rayvn
if (!get_match_setting(SET_TEAMS)) {
    if (player_count == 1) {
        left = player_list[0];
        right = player_list[0];
    } else if (player_count == 2) {
        left = player_list[1];
        right = player_list[0];
    } else {
        with (oPlayer) {
            other.player_values[player] = (get_player_stocks(player) * 1000) + get_player_damage(player)
        }
        // Sort for first and second place
        var lowestone = 1000000;
        var lowestone_index = 0;
        var lowesttwo = 1000000;
        var lowesttwo_index = 0;
        for (i = 1; i <= 4; i++) if (players[i] != -1) {
            if (player_values[i] < lowestone) {
                lowestone = player_values[i];
                lowestone_index = i;
            }
        }
        for (i = 1; i <= 4; i++) if (players[i] != -1 && players[i] != lowestone_index) {
            if (player_values[i] < lowesttwo) {
                lowesttwo = player_values[i];
                lowesttwo_index = i;
            }
        }
        if ((players[lowestone_index] + players[lowesttwo_index]) != right + left) {
            // Re-organize only if one of the top two is different now, as back/front
            // order doesn't technically matter. Makes it less jumpy.
            right = players[lowestone_index];
            left = players[lowesttwo_index];
        }
    }
} else {
    with (oPlayer) {
        if (get_player_team(player) == 1) {
            other.player_values_teamone[player] = (get_player_stocks(player) * 1000) + get_player_damage(player);
        } else {
            other.player_values_teamtwo[player] = (get_player_stocks(player) * 1000) + get_player_damage(player);
        }
    }
    var lowestteamone = 1000000;
    var lowestteamone_index = 0;
    var lowestteamtwo = 1000000;
    var lowestteamtwo_index = 0;
    for (i = 1; i <= 4; i++) if (player_values_teamone[i] != -1) {
        if (player_values_teamone[i] < lowestteamone) {
            lowestteamone = player_values_teamone[i];
            lowestteamone_index = i;
        }
    }
    for (i = 1; i <= 4; i++) if (player_values_teamtwo[i] != -1) {
        if (player_values_teamtwo[i] < lowestteamtwo) {
            lowestteamtwo = player_values_teamtwo[i];
            lowestteamtwo_index = i;
        }
    }
    right = players[lowestteamone_index];
    left = players[lowestteamtwo_index];
}

if (right_prev != right) {
    right_boss_changed = true;
    right_prev = right;
}
if (left_prev != left) {
    left_boss_changed = true;
    left_prev = left;
}
