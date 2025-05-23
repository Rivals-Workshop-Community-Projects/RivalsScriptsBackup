// Slenderman animation.gml
switch (state)
{
	case PS_IDLE:
	// Set proper idle sprite.
	sprite_index = sprite_get("idle_real");
	break;
	
	case PS_PRATLAND:
	// Animated pratland setup.
	sprite_index = sprite_get("pratland")
	image_index = state_timer * pratfall_anim_speed;
	break;
	
	case PS_ATTACK_GROUND:
	case PS_ATTACK_AIR:
	switch (attack)
	{
		case AT_JAB:
		case AT_DSPECIAL:
		// Animate walking during Jab and Grounded DSpecial.
		if (window == 2) image_index = state_timer * walk_anim_speed % 6 + 1;
		if (window == 5) image_index = clamp((vsp + 13) / 3, 0, 6) + 8;
		break;
	}
	break;
	
	case PS_RESPAWN:
	// Set front facing respawning sprite.
	sprite_index = sprite_get("walkturn");
	break;
	
	case PS_SPAWN:
	// Into animation handling.
	if (get_gameplay_time() <= 122)
	{
		sprite_index = sprite_get("parry");
		if (state_timer < 100) image_index = 1;
		else if (state_timer < 110) image_index = 2;
		else image_index = 3;
	}
	else sprite_index = sprite_get("idle_real");
	break;
}