//hitbox_update

if (attack==AT_DSPECIAL){
	//hsp=2;
				//reused from n/a:
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
					if (hitbox_timer==1){
						proj_angle = point_direction(x, y, targetPlayer.x, targetPlayer.y-(targetPlayer.char_height/2))
					}else{
						var target_angle = point_direction(x, y, targetPlayer.x, targetPlayer.y-(targetPlayer.char_height/2))
						var temp_diff = angle_difference(proj_angle, target_angle)
						/*if (temp_diff<0){
							proj_angle = proj_angle + 2;
						}
						if (temp_diff>0){
							proj_angle = proj_angle - 2;
						}*/
						//print(string(target_angle))
						if (target_angle > 90 && target_angle < 270) { head_dir = -1; /*print("left");*/
						}else{
							head_dir = 1;  /*print("right");*/
						}
					}
				}
		dsp_speed = 3;//2
		dsp_angle_str = proj_angle
			dsp_angle_move = dsp_angle_str / 180 * -3.14; //45)*45)/180
		hsp = (dsp_speed * cos(dsp_angle_move));
		vsp = (dsp_speed * sin(dsp_angle_move));
		if (hitbox_timer == length-1 || was_parried){
			destroyed = true;
		}
}