// Bomb Hit

if (enemy_hitboxID.damage == 0 || enemy_hitboxID.hit_priority == 0){
	exit;
}

bopped = true;
with (enemy_hitboxID) {
	sound_play(sound_effect);
	spawn_hit_fx(lerp(x, other.x, 0.5), y, hit_effect);
	other.hitstop = hitpause;
	if (type == 2 && enemies == 0) {
		destroyed = true;
	}
}

