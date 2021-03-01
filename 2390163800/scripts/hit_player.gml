if ("article_owner" in my_hitboxID && my_hitboxID.true_type == 1){
	my_hitboxID.article_owner.hitstop = round(hit_player_obj.hitstop);
	my_hitboxID.article_owner.has_hit_player = 1;
	my_hitboxID.article_owner.hit_player_obj = hit_player_obj;
}


if (hit_player_obj.should_make_shockwave) {
	sound_play (sound_get("route"))
	sound_stop (sound_get("Connection_terminated"))
	sound_stop (sound_get("Signal_Lost"))
	sound_stop (sound_get("Signal_Found"))


}

if attack == 49 {
	hit_player_obj.visible = false;
}