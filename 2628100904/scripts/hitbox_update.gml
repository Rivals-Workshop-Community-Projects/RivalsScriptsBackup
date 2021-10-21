//hitbox_update

//flashbang shit

if (attack==AT_USTRONG){
if (hbox_num == 2){
	vsp=vsp+0.3
	if (vsp>=4){
		with (player_id){ create_hitbox( AT_USTRONG, 3, other.x, other.y ) }
		destroyed = true;
		sound_stop(sound_get("thinkfast"))
		sound_play(sound_get("thinkfast"))
	}
}
}