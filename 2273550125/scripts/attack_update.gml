// attack_update

//B - Reversals
if (attack == AT_NSPECIAL || attack == AT_FSPECIAL || attack == AT_DSPECIAL || attack == AT_USPECIAL)
{
    trigger_b_reverse();
}

//Jump Cancel Tilts
if (attack == AT_FTILT || attack == AT_DTILT || attack == AT_UTILT)
{
	if (has_hit_player == true)
	{
		can_jump = true;
	}
}

//Jump Cancel Dash Attack
if (attack == AT_DATTACK && window == 2)
{
	can_jump = true;
}

//Fstrong Speed & Cooldown
if (attack == AT_FSTRONG && window == 3 && window_timer == 1)
{
	set_hitbox_value(AT_FSTRONG, 1, HG_DAMAGE, 13);
	set_hitbox_value(AT_NSPECIAL, 1, HG_DAMAGE, (strong_charge/12)+10);

	instance_create(x+(48*spr_dir),y-24,"obj_article2");
	move_cooldown[AT_FSTRONG] = 1500;
}

//Uair Projectile Spawning
if (attack == AT_UAIR)
{
	switch (window)
	{
	default: move_cooldown [AT_UAIR] = 10; set_attack_value(AT_UAIR, AG_CATEGORY, 2); break;
	case 4: move_cooldown [AT_UAIR] = 40; set_attack_value(AT_UAIR, AG_CATEGORY, 1); break;
	}
	
	if (!free && window <= 1)
	{
		window =  2;
		window_timer = 1;
		hsp = hsp*0.75;
	}
	
	if (window == 3 && window_timer == 1)
	{
		instance_create(x-(34*spr_dir), y-40, "obj_article1");
	}
}


//Jab Cooldown
if (attack == AT_JAB)
{
	if (window_timer == 1)
	{
			move_cooldown[AT_JAB] = 30;
	}
}

//Fspecial Loop
if (attack == AT_FSPECIAL && window == 2)
{
	//Set up pratfall if attack is whiffed
	set_window_value(AT_FSPECIAL, 4, AG_WINDOW_TYPE, 7);
	
	//Skip to end of attack when button is pressed
	if (attack_pressed || special_pressed || jump_pressed)
	{
		window = 3;
		window_timer = 0;
		destroy_hitboxes();
		sound_stop(sound_get("dog_motor"));
		sound_play(sound_get("dog_motorstop"));

	}
}

//Fspecial Cancel
if (attack == AT_FSPECIAL && window == 3 && window_timer == 9)
{
	spawn_hit_fx(x,y-48,148);
}

//Fspecial Lag Reduction
if (attack == AT_FSPECIAL && window == 4 && window_timer < 30 && has_hit_player == true)
{
	window_timer = 30;
	set_window_value(AT_FSPECIAL, 4, AG_WINDOW_TYPE, 0);

}
//Dspecial Cooldown
if (attack == AT_DSPECIAL)
{
	can_move = false;
	move_cooldown[AT_DSPECIAL] = 45;
	pHitBox.through_platforms = 130;
}

//Down Aerial
if (attack == AT_DAIR)
{
	//Dair Cooldown
	switch(free)
	{
		case true: move_cooldown[AT_DAIR] = 20; break;
		case false: move_cooldown[AT_DAIR] = 10; break;
	}
	
	//Dair Vertical Speed
	if (state_timer < 2 && vsp <= 17)
	{
		vsp = -8.5;
		old_vsp = -8.5;
	}
	
	//Dair Land Cancel 1
	if (free)
	{
		set_attack_value(AT_DAIR, AG_CATEGORY, 2);
	}
	
	//Dair Land Cancel 2
	if (!free && window < 3)
	{
		window = 5;
		window_timer = 0;
	}
	
	//Dair Land Cancel 3
	if (!free && window > 4 && window_timer > 0)
	{
		set_attack_value(AT_DAIR, AG_CATEGORY, 1);
		//set_state(PS_LANDING_LAG);
	}
}


//Bair Autocancel
if (attack == AT_BAIR)
{
	if (window <= 1)
		set_attack_value(AT_BAIR, AG_LANDING_LAG, 3);
	else
		set_attack_value(AT_BAIR, AG_LANDING_LAG, 13);
}


//UP SPECIAL
//ANNOYING K. ROUND

//HOLY ALMOND MILK,
//THERE'S A LOT HERE

//Uspecial Right Speed
if (attack == AT_USPECIAL && spr_dir == 1)
{
	if (left_down) set_window_value(AT_USPECIAL, 2, AG_WINDOW_HSPEED, 2.5);
	else if (right_down) set_window_value(AT_USPECIAL, 2, AG_WINDOW_HSPEED, 6.5);
	else set_window_value(AT_USPECIAL, 2, AG_WINDOW_HSPEED, 4.5);
}

//Uspecial Left Speed
if (attack == AT_USPECIAL && spr_dir == -1)
{
	if (right_down) set_window_value(AT_USPECIAL, 2, AG_WINDOW_HSPEED, 2.5);
	else if (left_down) set_window_value(AT_USPECIAL, 2, AG_WINDOW_HSPEED, 6.5);
	else set_window_value(AT_USPECIAL, 2, AG_WINDOW_HSPEED, 4.5);
}

//Uspecial Fastfall Disable & Allow Wall Jump
if (attack == AT_USPECIAL)
{
	can_fast_fall = false;
	can_wall_jump = true;
}
else
{
	can_fast_fall = true;
}

//Uspecial Loop
if (attack == AT_USPECIAL && window == 2 && window_timer >= 19)
{
	
	window_timer = 1;
	window = 2;
	//Whiff Lag
	set_window_value(AT_USPECIAL, 4, AG_WINDOW_TYPE, 7);
}

//Uspecial Landing Pause
if (attack == AT_USPECIAL && window == 2 && free == false)
{
	window_timer = 0;
	window = 3;
	destroy_hitboxes();
	attack_end();
	sound_play(sound_get("dog_bounce"));

}

//Uspecial Bounce Height
if (attack == AT_USPECIAL && window == 3 && window_timer == 4)
{
	if (up_down) vsp = -13;
	else if (down_down) vsp = -9;
	else vsp = -11;
	
	window_timer = 1;
	window = 2;
}

//Uspecial Cancel
if (attack == AT_USPECIAL && window == 2)
{
	if (attack_pressed || special_pressed || jump_pressed)
	{
		window_timer = 1;
		window = 4;
		destroy_hitboxes();
		
		//Remove whiff lag on hit
		if (has_hit_player == true)
		{
			set_window_value(AT_USPECIAL, 4, AG_WINDOW_TYPE, 0);
		}
	}
}