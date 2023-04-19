// Initialize Variables
old_shell_1_falling_state = 1;
old_shell_2_falling_state = 1;

/*
if(attack == AT_NSPECIAL_2 && (hbox_num == 1 || hbox_num == 2)){
    //if(90 > player_id.nspecial_direction > 270){proj_angle = 180 - player_id.nspecial_direction};
    if(player_id.spr_dir = 1){proj_angle = player_id.nspecial_direction;}
    else proj_angle = 180 + player_id.nspecial_direction;
}
*/
if(attack == AT_NSPECIAL || attack == AT_NSPECIAL_2){
	initial_pellet_damage = damage;
	initial_pellet_knockback = 	kb_value;
	initial_pellet_knockback_scaling = kb_scale;
	initial_pellet_hitpause = hitpause;
	initial_pellet_hitpause_scaling = hitpause_growth;
	initial_pellet_hitstun = hitstun_factor;
	through_platforms = length;
}

// New Uspecial Code
if(attack == AT_USPECIAL && hbox_num == 4){
	max_distance_to_travel = -180; // GML up is negative
	current_distance_traveled = 0;
}

// Set Hit Particles for PProjec
switch(attack){
	case AT_DSPECIAL:
		fx_particles = player_id.hp_steam;
	break;
	case AT_NSPECIAL:
	case AT_NSPECIAL_2:
		fx_particles = player_id.hp_shotgun;
	break;
	default:
	break;
}