switch attack {
    case AT_FSTRONG:
	    if player_id.up_down || player_id.up_strong_down || player_id.up_stick_down {
		    player_id.fstrong_aim -= 1;
		}
		if player_id.down_down || player_id.down_strong_down || player_id.down_stick_down {
		    player_id.fstrong_aim += 1;
		}
		vsp += player_id.fstrong_aim;
		player_id.fstrong_aim = clamp(player_id.fstrong_aim, -3, 4);
	case AT_USPECIAL:
	    through_platforms = 4000;
		if attack = AT_USPECIAL hsp = -player_id.hsp * 0.5;
	break;
	
	case AT_NSPECIAL:
	    fx_particles = 4;
		fx_fire_trail = player_id.fx_fire_trail
	break;
	case 40:
	    fx_particles = 3;
	break;
}