switch(my_hitboxID.attack){
	case AT_FSPECIAL:
		my_hitboxID.dont_article = 1;
		my_hitboxID.hitbox_timer = 0;
		break;
	case AT_NSPECIAL:
		my_hitboxID.transcendent = 1;
		my_hitboxID.proj_break = 1;
		my_hitboxID.hitbox_timer = 0;
		break;
}

if my_hitboxID.attack == AT_NSPECIAL || my_hitboxID.attack == AT_FSPECIAL{
	my_hitboxID.hitbox_timer = 0;
	my_hitboxID.dont_article = 1;
}

nspecial_charge = 0;