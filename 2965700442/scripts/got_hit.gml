//Hitting a melee hitbox while FSpecial is stacked causes one to go away.
if (enemy_hitboxID.type == 1) {
	with (hit_player_obj) {
		for (var i = 0; i < array_length(anthem_status_stacks); i++) {
			var stack = anthem_status_stacks[i];
			if (!instance_exists(stack)) {
	    		anthem_status_stacks = array_cut(anthem_status_stacks, i);
	    		continue;
			}
			var time_end = (stack.length - 1) - (i * 3);
			if (stack.hitbox_timer >= time_end - 30) continue;
			if (i == 0) {
	    		instance_destroy(stack.id);
	    		anthem_status_stacks = array_cut(anthem_status_stacks, i);
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