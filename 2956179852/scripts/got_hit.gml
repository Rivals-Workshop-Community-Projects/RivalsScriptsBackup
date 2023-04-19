
if(state == PS_HITSTUN || state == PS_HITSTUN_LAND){
	sound_stop(voice);
}

if(attack == AT_FSTRONG && prev_state == PS_ATTACK_GROUND){
	if(instance_exists(peach)){peach.can_hit[hit_player_obj.player] = false;peach.mariohit = true;}
}