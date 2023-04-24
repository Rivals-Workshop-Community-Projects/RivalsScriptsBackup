
//Points are lost on parry
impulse_points -= ceil(my_hitboxID.damage);

if (my_hitboxID.attack == AT_NSPECIAL && my_hitboxID.hbox_num == 6) {
    was_parried = true;
}

//Parrying FSpecial marks causes all of them to go away.
with (hit_player_obj) {
	for (var i = 0; i < array_length(anthem_status_stacks); i++) {
		var stack = anthem_status_stacks[i];
		if (!instance_exists(stack)) continue;
		other.anthem_status_stacks = array_cut(other.anthem_status_stacks, i);
		instance_destroy(stack.id);
		continue;
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