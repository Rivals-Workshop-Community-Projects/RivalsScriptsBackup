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

#define calculate_weight()

	weight_value = passive_weight + item_weight;
	dash_speed = lerp(7, 4, weight_value/weight_max);
	initial_dash_speed = lerp(7.5, 4.5, weight_value/weight_max);
	wave_land_adj = lerp(1.4, 1, weight_value/weight_max);
	air_max_speed = lerp(4.5, 3, weight_value/weight_max);
	gravity_speed = lerp(0.5, 0.65, weight_value/weight_max);
	leave_ground_max = round(lerp(6.5, 3, weight_value/weight_max)*2) / 2;
	max_jump_hsp = round(lerp(6.5, 3, weight_value/weight_max)*2) / 2;