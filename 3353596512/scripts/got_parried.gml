//got parried

if (my_hitboxID.attack == AT_USPECIAL && !activated_kill_effect){
    jetpack_was_parried = true;
    state = PS_PRATFALL;
    state_timer = 0;
    old_hsp = 0;
    old_vsp = 0;
}

if (my_hitboxID.attack == AT_USPECIAL_2 && my_hitboxID.hbox_num == 5){
    state = PS_PRATFALL;
    state_timer = 0;
    old_hsp = 0;
    old_vsp = 0;
}


if (my_hitboxID.attack == AT_FSPECIAL && my_hitboxID.hbox_num == 1){
    my_hitboxID.length = 90;
    my_hitboxID.hitbox_timer = 0;
    var parry_tracking = point_direction(hit_player_obj.x, hit_player_obj.y, x, y);
    my_hitboxID.hsp = lengthdir_x(-20, parry_tracking);
    my_hitboxID.vsp = 3 + lengthdir_y(-25, parry_tracking);
}

if (my_hitboxID.attack == AT_DSPECIAL_2){
    if (my_hitboxID.hbox_num == 2 || my_hitboxID.hbox_num == 1){
        my_hitboxID.length = my_hitboxID.hitbox_life;
        my_hitboxID.hitbox_timer = 0;
        var parry_tracking = point_direction(hit_player_obj.x, hit_player_obj.y, x, y);
        my_hitboxID.hsp = lengthdir_x(-20, parry_tracking);
        my_hitboxID.vsp = 3 + lengthdir_y(-25, parry_tracking);
    }
}

if (hit_player_obj != self){
	if (overtime_bonus > 0) overtime_bonus -= (6 + ((quota_level-1)*2) );
	if (has_scrap){
    	current_scrap = noone;
    	item_weight = 0;
    	has_scrap = false;
    	scan_nofind = false;
    	calculate_weight()
	}
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