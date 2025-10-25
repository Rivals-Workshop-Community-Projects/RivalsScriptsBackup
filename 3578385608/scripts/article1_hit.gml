if array_find_index(hitb_list, enemy_hitboxID)+1 exit;
meth -= enemy_hitboxID.damage*6;
if !meth{
	meth = 0;
	state = 4;
	timer = 43;
}
with enemy_hitboxID{
	sound_play(sound_effect);
	var g = spawn_hit_fx(x, y, hit_effect);
	g.depth = other.depth-1;
	if type = 2 && walls = 0 destroyed = 1;
}
array_push(hitb_list, enemy_hitboxID);
hitb_tim = enemy_hitboxID.length+1;