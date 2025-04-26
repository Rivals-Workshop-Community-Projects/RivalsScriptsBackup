
nspecial_direction = -10
direction_lock = false;
switch (attack) {
	case AT_DSPECIAL:
		display_timer = 0;
		display_intro = true;
		display_selected = false;
	break;
    case AT_FTILT:
        ftilt_times = 0;
    break;
    case AT_NSPECIAL:
        bombs_thrown = 0;
        bomb_direction = 0;
        
        if charging_nspecial_buffer and charged_nspecial_timer >= charged_nspecial_max_time {
            attack = AT_EXTRA_1;
            nspecial_charged_times += 1;
            charged_nspecial_timer = 0;
			charging_nspecial_buffer = false;
			
			nspecial_charged_stats.active = true;
			nspecial_charged_stats.timer = -2;
			nspecial_charged_stats.position = {x:x, y:y}
			nspecial_charged_stats.angle = 90
			nspecial_charged_stats.angle_interval = 180
        }
        
        charging_nspecial_buffer = false;
    break;
    case AT_FSPECIAL:
        // fspecial_distance = fspecial_min_distance;
        // fspecial_timer = 0;
    break;
    case AT_TAUNT:
    	if get_player_color(player) == 8 attack = AT_TAUNT_2
    break;
}

if (attack == AT_FSPECIAL or attack == AT_NSPECIAL) and move_cooldown[attack] != 0 {
	user_event(2)
}