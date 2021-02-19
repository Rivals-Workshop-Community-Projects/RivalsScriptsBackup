if my_hitboxID.attack == AT_NTHROW && !legion.badly_damaged{
	var hfx = spawn_hit_fx(x, y - 32, vfx_timed_hit);
	hfx.depth = depth - 1;
	var hfx = spawn_hit_fx(legion.x, legion.y, vfx_timed_hit);
	hfx.depth = legion.depth + 1;
	sound_play(sfx_astral_chain_timed_hit_1);
	legion_cancel_target = hit_player_obj;
}



if ("article_owner" in my_hitboxID && my_hitboxID.true_type == 1){
	my_hitboxID.article_owner.hitstop = round(hit_player_obj.hitstop);
	my_hitboxID.article_owner.has_hit_player = 1;
	my_hitboxID.article_owner.hit_player_obj = hit_player_obj;
}



if my_hitboxID.type == 1 && !hit_player_obj.clone melee_hit_player = hit_player_obj;



if (my_hitboxID.attack == AT_DAIR && my_hitboxID.hbox_num == 1) hit_player_obj.should_make_shockwave = 0;