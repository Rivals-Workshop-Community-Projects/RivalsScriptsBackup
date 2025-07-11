// Barrel Hit

if (enemy_hitboxID.player_id == player_id && enemy_hitboxID.attack == AT_FSPECIAL) ||
   (enemy_hitboxID.hit_priority == 0){
	exit;
}

hp -= enemy_hitboxID.damage;
with (enemy_hitboxID) {
	sound_play(sound_effect);
	spawn_hit_fx(lerp(x, other.x, 0.5), y, hit_effect);
	if (type == 2 && enemies == 0) {
		destroyed = true;
	}
}
hit_cooldown = hit_cooldown_max;

