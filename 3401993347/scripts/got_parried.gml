// // //parrying the trap destroys it
// if (hit_player != player && my_hitboxID.attack == AT_FSPECIAL && my_hitboxID.hbox_num == 5) {
// 	//destroy trapbox
// 	instance_destroy(trapbox);
// 	instance_destroy(trapboxCollectable);
// 	//clear exising trap orbs
// 	for (var i = 0; i < array_length(trapOrbStacks); i++) {
// 		var stack = trapOrbStacks[i];
// 		with (stack) {
// 			instance_destroy(id);
// 			continue;
// 		}
// 	}
// }

//remove dspecial invincibility
invince_time = 0;
invincible = false;

if(my_hitboxID.type == 2){
	my_hitboxID.hitbox_timer = 0;
}

//melee parrying causes all orbs to go away.
if(my_hitboxID.type != 2 && 
(my_hitboxID.attack != AT_JAB && (my_hitboxID.hbox_num < 3 || my_hitboxID.hbox_num == 6))){
	with (hit_player_obj) {
		for (var i = 0; i < array_length(mewtwoOrbStacks); i++) {
			var stack = mewtwoOrbStacks[i];
			if (!instance_exists(stack)) continue;
			instance_destroy(stack.id);
			continue;
		}
		mewtwoOrbStacks = [];
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

	trapOrbStacks = [];

	//remove charge
	recentShadowBallChange = -shadowBallCharge;
	recentShadowBallChangeTimer = 20;
	shadowBallCharge = 0;
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