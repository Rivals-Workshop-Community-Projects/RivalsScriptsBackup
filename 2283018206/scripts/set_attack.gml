///#args attack



switch(attack){
	case AT_DSPECIAL:
		var ball_found = 0;
		with pHitBox if player_id == other && "am_ball" in self && !has_been_recalled{
			ball_found = 1;
		}
		if bike || free || ball_found attack = AT_DSPECIAL_AIR;
	case AT_FSPECIAL:
	case AT_USPECIAL:
		if nspecial_buffer && !move_cooldown[AT_NSPECIAL] attack = AT_NSPECIAL;
		else bike = true;
		break;
	case AT_TAUNT:
		if down_down attack = AT_TAUNT_2;
		break;
	default:
		bike = false;
		break;
}



has_hit_ball = false;



user_event(13);