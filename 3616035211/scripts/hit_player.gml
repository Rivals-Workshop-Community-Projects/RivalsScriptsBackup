switch my_hitboxID.attack{
	
	case AT_DAIR:
	window = 5;
	window_timer = 0;
	old_vsp = -12;
	y -= 2;
	break;
	
	case AT_DATTACK:
	if dattack_turn{
		if "butthurt" in hit_player_obj hit_player_obj.butthurt = 1;
		hit_player_obj.spr_dir = spr_dir;
	}
	break;
}

with hit_fx_obj if player_id == other && array_find_index([other.fx_jm_bounce], hit_fx)+1 depth = other.depth+1;
