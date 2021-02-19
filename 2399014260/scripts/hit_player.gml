if ("article_owner" in my_hitboxID && my_hitboxID.true_type == 1){
	my_hitboxID.article_owner.hitstop = round(hit_player_obj.hitstop);
}

if (my_hitboxID.attack == AT_FSPECIAL){
	my_hitboxID.hitpause_timer = hit_player_obj.hitstop;
	with my_hitboxID sound_play(other.sfx_ssbu_luma_ding);
}

if (my_hitboxID.attack == AT_NSPECIAL){
	sound_play(sfx_ssbu_luma_ding);
}

if (my_hitboxID.type == 2) my_hitboxID.has_hit = 1;

else melee_hit_player = hit_player_obj;



switch(my_hitboxID.attack){
	case AT_NSPECIAL:
	case AT_FSPECIAL:
		var hfx = spawn_hit_fx(
			lerp(hit_player_obj.x, my_hitboxID.x, 0),
			lerp(hit_player_obj.y - 32, my_hitboxID.y, 0),
			vfx_sparkles
			);
		hfx.depth = -6;
		break;
}



with my_hitboxID user_event(0);