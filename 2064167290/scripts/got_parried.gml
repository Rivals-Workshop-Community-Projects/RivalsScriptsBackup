// got parried
cd_level = 0;
switch(my_hitboxID.attack){
	case AT_DSPECIAL:
	with (obj_article1)
	{
		if (player_id == other)
		{
			can_hit = false;
			 //hsp = hsp * 1.5;
			vsp = -7 - (hsp == 0) * 2;
			
			PV -= uspecial_damage;
		}
	}
	parry_lag = 70;
	break

	case AT_FSPECIAL:
	set_state(PS_PRATFALL)
	break

	case AT_DSPECIAL_2:
	parry_lag=60
	if(free){
	set_state(PS_PRATFALL)}
	else{
	set_state(PS_PRATLAND)}
	break

	case AT_USTRONG:
	if (my_hitboxID.hbox_num < 4)
	{
		was_parried = true;

	}
	break

	case AT_NSPECIAL:
	my_hitboxID.hitbox_timer = 0
	my_hitboxID.hsp *= 1.5;
	break
}