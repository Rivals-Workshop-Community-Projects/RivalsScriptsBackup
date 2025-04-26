//Anthem code: Hitting a melee hitbox while FSpecial is stacked causes one to go away.
if (enemy_hitboxID.type == 1) {
	with (hit_player_obj) {
		//unless its a mewtwo ditto
		if ("isMewtwo" in self) {
			return;
		}
		for (var i = 0; i < array_length(mewtwoOrbStacks); i++) {
			var stack = mewtwoOrbStacks[i];
			if (!instance_exists(stack)) {
	    		mewtwoOrbStacks = array_cut(mewtwoOrbStacks, i);
	    		continue;
			}
			var time_end = (stack.length - 1) - (i * 3);
			if (stack.hitbox_timer >= time_end - other.orb_warning_frames) continue;
			if (i == 0) {
	    		instance_destroy(stack.id);
	    		mewtwoOrbStacks = array_cut(mewtwoOrbStacks, i);
	    		continue;
			}
			else {
			    stack.hitbox_timer -= 5;
			}
		}
	}
}

#define array_cut(_array, _index)
var _array_cut = array_create(array_length_1d(_array)-1);
var j = 0;
for (var i = 0; i < array_length_1d(_array); i++) {
	if i != _index {
		_array_cut[@j] = _array[i];
		j++;
	}
}
return _array_cut;