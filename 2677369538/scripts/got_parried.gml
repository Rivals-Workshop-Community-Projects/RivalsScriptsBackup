//got_parried.gml

KILL_RATS = 1

if(attack == AT_DATTACK){
	window = 4;
}

if (my_hitboxID.attack == AT_NSPECIAL && my_hitboxID.hbox_num == 1){
	sound_play(sound_get("sfx_bomb_explode"));
	spawn_hit_fx( my_hitboxID.x, my_hitboxID.y-20, bomb_explosion );
	my_hitboxID.destroyed = true;
}