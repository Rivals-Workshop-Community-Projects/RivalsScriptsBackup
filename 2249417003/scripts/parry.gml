//parry.gml

//parry inertia rune
if (runeB && enemy_hitboxID.type == 1) {
	spawn_hit_fx( enemy_hitboxID.x, enemy_hitboxID.y, epinel_fx_inertia_medium);
	sound_play(sound_get("drop"));
	with (hit_player_obj) {
		epinel_other_weightless_inflicted = 4;
		epinel_other_player_that_inflicted_weightless_id = other.id;
	}
}


//activate 'special parry' effect if down + parry is pressed.
if (!down_down) exit;


sound_play(sound_get("drop"));

//if a projectile, stop the projectile in its tracks.
if (enemy_hitboxID.type == 2) {
	spawn_hit_fx( enemy_hitboxID.x, enemy_hitboxID.y, epinel_fx_inertia_medium);
	with (enemy_hitboxID) {
		length = 300;
		hsp = 0;
		vsp = 0;
		grav *= 0.1;
	}
}
//if a melee attack, stop the opponent.
else {
	spawn_hit_fx( hit_player_obj.x, hit_player_obj.y, epinel_fx_inertia_medium);
	with (hit_player_obj) {
		hsp = 0;
		vsp = 0;
		old_hsp = 0;
		old_vsp = 0;
	}
}