
shader_start();
    if (((state == PS_ATTACK_GROUND || state == PS_ATTACK_AIR) && 
    ((attack == AT_DSPECIAL || attack == AT_DSPECIAL_2 || attack == AT_NTHROW) && window == 3)) ||
    ((state == PS_ATTACK_GROUND || state == PS_ATTACK_AIR) && 
    ((attack == AT_DSPECIAL_AIR || attack == AT_TAUNT_2 || attack == AT_DTHROW) && window == 2))){
		for(var m = 0; m < array_length_1d(blur); m++) {
			var _img = blur[m];
			var _percent = 1 - (m / array_length_1d(blur));
			draw_sprite_ext(_img[0], _img[1], _img[2], _img[3], _img[4], _img[5], _img[6], _img[7], _img[8] * _percent);
		}
	}
shader_end();
