ue0_out = false;

	//print_debug( "userevent0 confirmed" )
	//ultra heckan thanks to fespadea for the "nearest player" base code
	var targetPlayer = noone;
	
	with (asset_get("oPlayer")){
		if (id!=other.player_id){
			if(get_player_team(player) != get_player_team(other.player)){
				na_tmp_dist = point_distance(other.x, other.y, x, y);
				if(targetPlayer == noone || na_tmp_dist < targetPlayer.na_tmp_dist){
					if(na_tmp_dist < 160){
						targetPlayer = id;
					}
				}
			}
		}
	}
	if (targetPlayer != noone){
		//print_debug( "target got" )
		if (targetPlayer.state == PS_HITSTUN){
			if (targetPlayer.last_player == player){
				if (targetPlayer.last_attack != AT_NSPECIAL_AIR){
					//print_debug( string(targetPlayer.state_timer) )
					if (targetPlayer.state_timer < 10){
						//print_debug( "result true confirm" )
						ue0_out = true;
					}
				}
			}
		}
	}
