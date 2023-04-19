switch(curr_materia){
	case 1:
                reset_materia_stats(); 
                materia_fire_cooldown = 660;
                materia_state = 7;
                dspecial_deactivate();
	break;
	case 2:
                reset_materia_stats(); 
                materia_ice_cooldown = 660;
                materia_state = 9;
                dspecial_deactivate();
	break;
	case 3:
                reset_materia_stats(); 
                materia_elec_cooldown = 660;
                materia_state = 11;
                dspecial_deactivate();
	break;
}

#define reset_materia_stats 
print("resetting stats");
walk_speed          = 3.25;
initial_dash_speed  = 6.75;		
dash_speed          = 5.75;
air_max_speed       = 4.6;
knockback_adj       = 1.1;
materia_damage_buff = 0;
materia_kb_buff = 0;
#define dspecial_deactivate
sound_play(sound_get("59"));
materia_boost_num = 0;
draw_materia = 1;
materia_currhp = 0;
materia_lockedin = false;
curr_materia = 0;
materia_state_timer = 0;
outline_color = [0, 0, 0]; 
init_shader();