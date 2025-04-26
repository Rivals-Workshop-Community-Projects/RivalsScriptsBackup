//remove orbs from enemies
with (hit_player_obj) {
	for (var i = 0; i < array_length(mewtwoOrbStacks); i++) {
		var stack = mewtwoOrbStacks[i];
		if (!instance_exists(stack)) continue;
		other.mewtwoOrbStacks = array_cut(other.mewtwoOrbStacks, i);
		instance_destroy(stack.id);
		continue;
	}
}

//clear exising trap orbs
for (var i = 0; i < array_length(trapOrbStacks); i++) {
	var stack = trapOrbStacks[i];
	with (stack) {
		instance_destroy(id);
		continue;
	}
}

//destroy trapbox
instance_destroy(trapbox);
instance_destroy(trapboxCollectable);
//clear exising trap orbs
for (var i = 0; i < array_length(trapOrbStacks); i++) {
	var stack = trapOrbStacks[i];
	with (stack) {
		instance_destroy(id);
		continue;
	}
}

recentShadowBallChange = -shadowBallCharge;
recentShadowBallChangeTimer = 20;
shadowBallCharge = 0;



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