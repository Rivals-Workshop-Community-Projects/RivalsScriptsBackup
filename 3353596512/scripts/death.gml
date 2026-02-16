//death
sound_stop(employee_death_sound);
employee_death_sound = sound_play(sound_get("death" + string(random_func(0, 2, true) + 1 ) ), false, noone, 0.8, 1);

jetpack_fuel = jetpack_fuel_max;
cant_use_jetpack = false;
anti_thrust_stall = 0;
in_cruiser = false;

if (has_scrap){
    current_scrap = noone;
    item_weight = 0;
    has_scrap = false;
    scan_nofind = false;
    calculate_weight()
}

overtime_bonus = 0;

if (!employee_playing_rogue){
	fine_penalty();
}

if (champ_alt && extra_col == 1){
	sound_play(sound_get("squidward_scream"));
}

#define calculate_weight()

	weight_value = passive_weight + item_weight;
	//dash_speed = lerp(7, 4, weight_value/weight_max);
	dash_speed = (ceil(lerp(7, 4, weight_value/weight_max)*4) / 4)-0.25;
	//initial_dash_speed = lerp(7.5, 4.5, weight_value/weight_max);
	initial_dash_speed = (ceil(lerp(7.5, 4.5, weight_value/weight_max)*4) / 4)-0.25;
	wave_land_adj = lerp(1.4, 1, weight_value/weight_max);
	//air_max_speed = lerp(4.5, 3, weight_value/weight_max);
	air_max_speed = (ceil(lerp(4.5, 3, weight_value/weight_max)*4) / 4)-0.25;
	gravity_speed = lerp(0.5, 0.65, weight_value/weight_max);
	leave_ground_max = round(lerp(7, 3, weight_value/weight_max)*2) / 2;
	max_jump_hsp = round(lerp(7, 3, weight_value/weight_max)*2) / 2;
	wave_friction = lerp(0.11, 0.2, weight_value/weight_max);
	air_accel = (floor(lerp(0.4, 0, weight_value/weight_max)*20) / 20)-0.05;
	air_accel = clamp(air_accel, 0.2, 0.35);
	
#define fine_penalty

if (quota_current > 0 && quota_level > 1){
	switch (quota_level){
		case 2:
		death_fine = round((quota_next*0.4)*0.2) / 0.2;
		break;
		case 3:
		death_fine = round((quota_next*0.45)*0.2) / 0.2;
		break;
		case 4:
		death_fine = round((quota_next*0.5)*0.2) / 0.2;
		break;
	}
	if (quota_level >= 5){
		death_fine = round((quota_next*0.5)*0.2) / 0.2;
	}
	if (death_fine > 999){
		death_fine = 999;
	}
	if (death_fine > quota_current){
		death_fine = quota_current;
	}
	if (!show_result){
		result_queue = true;
	}
	show_fine += 1;
	quota_current -= death_fine;
}