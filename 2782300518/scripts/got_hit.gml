if (motorbike == true)
{
	clinging = false;
	//This variable determines the strength of Knockback for bike animation
	if (enemy_hitboxID.kb_value >= 9)
	{
		damageCheck = true;
	}
	else
	{
		damageCheck = false;
	}
	//A bunch of conditions to prevent Carol from flying off into outer space on her bike
	/*if (wall_ride)
	{
		hsp = 0;
		vsp = 0;
		wall_ride = false;
	}
	switch (prev_state)
	{
		case PS_WALL_JUMP:
			hsp = 0;
			vsp = 0;
			wall_ride = false;
		break;
	}
	switch (prev_prev_state)
	{
		case PS_WALL_JUMP:
			hsp = 0;
			vsp = 0;
			wall_ride = false;
		break;
	}*/
}
else
{
	move_cooldown[AT_USPECIAL] = 0;
	pounce_number = 0;
}

if (multikick_energy < 200)
{
	feline_power = false;
	move_cooldown[AT_NSPECIAL]= 200;
	move_cooldown[AT_NSPECIAL_2]= 200;
	sound_stop(sound_get ("wild_kick"));
}

if (walljump_number = walljump_limit)
{
	walljump_number--;
}

stopVoice();

if (voice == 1 && enemy_hitboxID.effect != 9)
{
    var random_hurt_voice = random_func_2(123, 11, 1);
    switch (random_hurt_voice)
    {
        case 0:
            sound_play(sound_get("hurt"));
        break;
    }
}

#define stopVoice

sound_stop(sound_get("aw_yeah"));
sound_stop(sound_get("feel_my_power"));
sound_stop(sound_get("hold_on_lilac"));
sound_stop(sound_get("im_bored"));
sound_stop(sound_get("parry"));
sound_stop(sound_get("pow_pow"));
sound_stop(sound_get("that_stupid_panda"));
sound_stop(sound_get("try_and_catch_me"));
sound_stop(sound_get("what_you_doing"));
sound_stop(sound_get("why_are_we_stopping"));
sound_stop(sound_get("wittle_wiwac"));