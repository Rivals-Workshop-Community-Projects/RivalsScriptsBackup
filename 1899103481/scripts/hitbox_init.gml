// state_timer = 0;

if (attack == AT_USTRONG){
	isBoosted = false;
	
	damage_start = damage;
	kb_start = kb_value;
	
	// with (player_id){
		// set_hitbox_value(AT_USTRONG, 1, HG_PROJECTILE_VSPEED, -(12+floor(strong_charge/6)));
		// set_hitbox_value(AT_USTRONG, 1, HG_DAMAGE, 6+floor(strong_charge/10));
		// set_hitbox_value(AT_USTRONG, 1, HG_BASE_KNOCKBACK, 5+floor(strong_charge/10));
	// }
}

if (attack == AT_NSPECIAL){
	fuckthisshit_timer = 0;
}