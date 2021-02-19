//Don't start building FSTRONG until the match starts
if (get_gameplay_time() < 120)
{
	move_cooldown[AT_FSTRONG] = 1500;
}


// Sprite Mirroring
if (spr_dir == -1)
{
	set_hitbox_value(AT_JAB, 1, HG_PROJECTILE_SPRITE, sprite_get("proj_bark_mirrored"));
	set_hitbox_value(AT_NAIR, 1, HG_PROJECTILE_SPRITE, sprite_get("proj_bark_mirrored"));
	set_attack_value(AT_DAIR, AG_SPRITE, sprite_get("dair_mirrored"));
}

//Sprite Un-Mirroring
if (spr_dir == 1)
{
	set_hitbox_value(AT_JAB, 1, HG_PROJECTILE_SPRITE, sprite_get("proj_bark"));
	set_hitbox_value(AT_NAIR, 1, HG_PROJECTILE_SPRITE, sprite_get("proj_bark"));
	set_attack_value(AT_DAIR, AG_SPRITE, sprite_get("dair"));
}


//FStrong Cooldown Correction
if (move_cooldown[AT_FSTRONG] < 0)
{
	move_cooldown[AT_FSTRONG] = 0;
}


//FStrong Cannot Cooldown While Active
if (greaterdog_timer >= 0)
{
	move_cooldown[AT_FSTRONG] = 1500;
	greaterdog_timer -= 1;
}


//Make sure there is always a target for Greater Dog
if (hit_player_obj == null)
{
	hit_player_obj = instance_furthest(x, y, oPlayer);
}


//Jump Cancelled Dash Attack
if (prev_state == PS_JUMPSQUAT && prev_prev_state == PS_ATTACK_GROUND && attack == AT_DATTACK && state_timer <= 1)
{
	hsp = 13 * spr_dir;
	old_hsp = 13 * spr_dir;
}


//Character Height Easing
if (state == PS_ATTACK_GROUND && attack == AT_USTRONG)
{
	if (window >= 1 && window <= 4)
	{
		char_height = ease_expoInOut(64, 128, state_timer, 20);
	}
	if (window == 5)
	{
		char_height = ease_expoInOut(128, 64, window_timer, 20);
	}
}
else
{
	char_height = 64;
}


//Taunt Cancelling & Secret Taunt
if (state == PS_ATTACK_GROUND && attack == AT_TAUNT)
{
	if (window == 1 && window_timer <= 1 && up_down)
	{
		window = 2;
		window_timer = 0;
	}
	
	if (window == 1 && window_timer == 79 && taunt_down)
	{
		window = 1;
		window_timer = 0;
	}
	
	if (window == 1 && window_timer >= 79)
	{
		window = 3;
		window_timer = 1;
		state = PS_IDLE;
	}
}