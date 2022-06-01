if instance_exists(other_player_id)  && other_player_id.attack == AT_FSPECIAL && isAttacking() && instance_exists(other_player_id.grabbed_player_obj){
	//change angle
	if(other_player_id.spr_dir == 1){
	    spr_dir = -1;
	}else if(other_player_id.spr_dir == -1){
	    spr_dir = 1;
	}
	if(other_player_id.window >= 5 && other_player_id.window_timer >= 23) || other_player_id.window == 6{
	    spr_angle = 90 * spr_dir;
	}
}else{
    // spr_angle = 0;
}

#define isAttacking()

return other_player_id.state == PS_ATTACK_GROUND or other_player_id.state == PS_ATTACK_AIR