if array_find_index(hitb_list, enemy_hitboxID)+1 exit;
with enemy_hitboxID{
	sound_play(sound_effect);
	var g = spawn_hit_fx(x, y, hit_effect);
	g.depth = other.depth-1;
	if type = 2 && walls = 0 destroyed = 1;
}
state = (state = 5? 7: 5);
timer = 0;