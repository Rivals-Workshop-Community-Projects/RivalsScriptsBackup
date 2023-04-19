//
//print(clam_hair_colors)
init_shader();

if (instance_exists(mic_proj)) {
	if !(state == PS_ATTACK_AIR || state == PS_ATTACK_GROUND) {
		instance_destroy(mic_proj);
	}
}

if !(state == PS_ATTACK_AIR || state == PS_ATTACK_GROUND) {
	mic_grabbed_obj = -4;
}

if (!free) {
	can_wall_tether = true;
}

