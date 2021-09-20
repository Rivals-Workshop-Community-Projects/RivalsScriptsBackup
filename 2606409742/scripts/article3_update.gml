switch(state){
	case 0:
		var s_t_max = 5;
		if state_timer == 0{
			sound_play(message_type ? player_id.sfx_botw_weapon_broken : player_id.sfx_botw_weapon_damaged);
		}
		draw_alpha = lerp(0, 1, state_timer / s_t_max);
		if state_timer >= s_t_max{
			state++;
			state_timer = 0;
			draw_alpha = 1;
		}
		break;
	case 1:
		var s_t_max = 80;
		draw_alpha = 1;
		if state_timer >= s_t_max{
			state++;
			state_timer = 0;
		}
		break;
	case 2:
		var s_t_max = 10;
		draw_alpha = lerp(1, 0, state_timer / s_t_max);
		if state_timer >= s_t_max{
			instance_destroy();
			exit;
		}
		break;
}

state_timer++;