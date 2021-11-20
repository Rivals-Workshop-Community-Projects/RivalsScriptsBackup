//user event 13 - hit player but for stages

////////////////////////////////////////////////////////MANA MECHANIC SECTION////////////////////////////////////////////////////////

if (mpGainable)
{
	if (my_hitboxID.damage * 0.6 >= 1) mp_current += round(my_hitboxID.damage * 0.6);
	else if (my_hitboxID.damage * 0.6 < 1) mp_current += 1;
	else if (attack == AT_FSTRONG || attack == AT_DSTRONG || attack == AT_USTRONG) mp_current += round(my_hitboxID.damage * 0.75);

	if (mp_current >= mp_max && !has_rune("K")) mp_current = mp_max;
	else if (mp_current >= runeK_mp_max && has_rune("K")) mp_current = runeK_mp_max;
	
	mp_gain_hit = round(my_hitboxID.damage * 0.6); //stat debug thing
}

//show mini MP gauge
if ((mpGainable || burningfury_active) && show_player_info)
{
	show_miniMP = true;
	miniMP_time = miniMP_attack;
	miniMP_alpha = 1;
}

////////////////////////////////////////////////////////HOLY BURNING SECTION////////////////////////////////////////////////////////

//NORMALS don't disable burning fury, and they take down mana when hitting with it on
//STRONGS, like specials do disable it
//SKILLS disable burning fury
if (burningfury_active) //these moves apply holy burning only if burning fury is active
{
	switch (my_hitboxID.attack)
	{
		case AT_JAB:
			if (my_hitboxID.hbox_num == 2)
			{
				ManaBurn();
				HolyBurn();
			}
			break;

		case AT_UTILT: case AT_FAIR: case AT_DAIR:
			ManaBurn();
			HolyBurn();
			break;

		case AT_TAUNT:
			HolyBurn();
			break;

		case AT_FSTRONG:
			ManaBurn();
			HolyBurn();
			break;

		case AT_USTRONG:
			if (my_hitboxID.hbox_num != 4)
			{
				ManaBurn();
				HolyBurn();
			}
			break;

		case AT_EXTRA_1: //chasm burster (punch)
			if (my_hitboxID.hbox_num == 3)
			{
				ManaBurn();
				HolyBurn();
			}
			break;
		case 39: //flashbang
			if (my_hitboxID.hbox_num == 2) HolyBurn();
			break;
		case AT_FSTRONG_2: //theikos F-strong
			HolyBurn();
			break;
	}
}
switch (my_hitboxID.attack) //these moves apply holy burn regardless if burning fury is on or not
{
	case AT_DSTRONG:
		if (my_hitboxID.hbox_num == 1 || my_hitboxID.hbox_num == 3)
		{
			ManaBurn();
			HolyBurn();
		}
		break;

	case AT_NTHROW: case AT_NSPECIAL_AIR: //light dagger
		if (my_hitboxID.hbox_num == 3) HolyBurn();
		break;
	case AT_FTHROW: case AT_FSPECIAL_AIR: //burning fury
		if (my_hitboxID.hbox_num < 4) HolyBurn();
		break;

	case AT_UTHROW: //force leap
		if (my_hitboxID.hbox_num > 1) HolyBurn();
		break;

	case AT_EXTRA_1: //chasm burster
		if (my_hitboxID.hbox_num == 2 || my_hitboxID.hbox_num == 4) HolyBurn();
		break;

	case AT_FSPECIAL_2: //power smash
		if (my_hitboxID.hbox_num > 1 && my_hitboxID.hbox_num != 4) HolyBurn();
		break;

	case AT_DSPECIAL_2: //ember fist
		if (my_hitboxID.hbox_num < 4) HolyBurn();
		break;

	case AT_EXTRA_2: //light hookshot
		if (my_hitboxID.hbox_num == 2) HolyBurn();
		break;
	case AT_EXTRA_3: //searing descent
		HolyBurn();
		break;
	case AT_DSTRONG_2:
		HolyBurn();
		break;
}

//strongs deactivate burning fury's buff only on hit
//it's done on update.gml

////////////////////////////////////////////////////////RUNES SECTION////////////////////////////////////////////////////////

if ((has_rune("G") || fuck_you_cheapies && theikos_active) && state_cat != SC_HITSTUN) //warping light spears
{
	last_attack_hit = attack;
	
	switch (attack)
    {
		case AT_USTRONG:
			if (my_hitboxID.hbox_num == 4 && !has_rune("H"))
			{
				AccelBlitzEffect();
				
				x = my_hitboxID.proj_x;
				y = my_hitboxID.proj_y;
				runeG_blitzjump = true;

				state = PS_ATTACK_AIR;
				attack = AT_SKILL4;
				window = 4;
				window_timer = 0;
			}
			break;	
		case AT_NTHROW: case AT_NSPECIAL_AIR:
			if (my_hitboxID.hbox_num < 3)
			{
				AccelBlitzEffect();
				
				x = my_hitboxID.proj_x;
				y = my_hitboxID.proj_y;
				runeG_blitzjump = true;

				state = PS_ATTACK_AIR;
				attack = AT_SKILL4;
				window = 4;
				window_timer = 0;
			}
			break;
		case AT_EXTRA_2:
			if (my_hitboxID.hbox_num == 1)
			{
				AccelBlitzEffect();

				x = my_hitboxID.proj_x;
				y = my_hitboxID.proj_y;
				runeG_blitzjump = true;

				state = PS_ATTACK_AIR;
				attack = AT_SKILL4;
				window = 4;
				window_timer = 0;

				with (obj_article1)
            	{
                	particletime = 41;
            	}
			}
			break;
	}
}

if (has_rune("H")) //U-strong hookshot
{
	if (attack == AT_USTRONG && my_hitboxID.hbox_num == 4)
	{
		runeH_target = hit_player_obj;
	}
}

if (lightstun_mechanic_active) //light spark
{
	//moves that use the mechanic
	switch (my_hitboxID.attack)
	{
		//burning light dagger doesn't use it
		case AT_NTHROW: case AT_NSPECIAL_AIR:
			if (my_hitboxID.hbox_num < 3) ApplySpark();
			break;
		//photon blast, accel blitz, guard aura and theikos U-strong all apply the mechanic
		case AT_DTHROW: case AT_NSPECIAL_2: case AT_USPECIAL_2: case AT_USTRONG_2:
			ApplySpark();
			break;

		//normal burning U-strong doesn't use it
		case AT_USTRONG:
			if (!burningfury_active && my_hitboxID.hbox_num < 5) ApplySpark();
			break;

		//burning light hookshot also doesn't
		case AT_EXTRA_2:
			if (my_hitboxID.hbox_num == 1) ApplySpark();
			break;
		//flashbang applies a spark on a successful grab only
		case 39:
			if (my_hitboxID.hbox_num == 2 && !burningfury_active) ApplySpark();
			break;
		//only applies to the light attack Fstrong rune
		case AT_FSTRONG:
			if (has_rune("C") && !burningfury_active) ApplySpark();
			break;
	}

	//lightstunner hit
	if (my_hitboxID.attack == 48)
	{
		hit_player_obj.lightstun_timer = 120;
        hit_player_obj.lightstun = true;

		if (hit_player_obj == self) lightstun_parried = false; //getting hit by it will disable the lightstun_parried
	}

	//light stun cancelling
	if (hit_player_obj.lightstun)
	{
		switch (my_hitboxID.attack)
		{
			//light cancelling attacks
			//if anyone is hit while being lightstunned it takes them out of lightstun, and resets the stun timer
			//unlike holy burning, the timer for a spark doesn't reset
			case AT_JAB: case AT_DATTACK: case AT_UTILT: case AT_FTILT: case AT_DTILT: case AT_NAIR: case AT_UAIR: case AT_FAIR: case AT_DAIR: case AT_BAIR:
			case AT_FSTRONG_2: case AT_DSTRONG: case AT_DSTRONG_2: case AT_FTHROW: case AT_FSPECIAL_AIR: case AT_UTHROW:
			case AT_EXTRA_1: case AT_FSPECIAL_2: case AT_DSPECIAL_2: case AT_EXTRA_3:
				LightstunCancel();
				break;
			case AT_NTHROW: case AT_NSPECIAL_AIR:
				if (my_hitboxID.hbox_num == 3) LightstunCancel();
				break;
			case AT_USTRONG: 
				if (burningfury_active || my_hitboxID.hbox_num == 5) LightstunCancel();
				break;
			case AT_EXTRA_2: //the burning version cancels lightstunning
				if (my_hitboxID.hbox_num == 2) LightstunCancel();
				break;
			case 39: //flashbang cancels lightstunning if it's the burning fury version
				if (my_hitboxID.hbox_num == 2 && burningfury_active) LightstunCancel();
				break;
			case AT_FSTRONG:
				if (!has_rune("C") || burningfury_active) LightstunCancel();
				break;
		}
	}
}

if (has_rune("O")) //OVERDRIVE attack
{
	if (od_gainable) 
	{
		if (my_hitboxID.damage * 0.4 >= 1) od_current += round(my_hitboxID.damage * 0.4);
		else if (my_hitboxID.damage * 0.4 < 1) od_current += 1;
	}

	if (od_current >= od_max) od_current = od_max;
	else if (od_current < od_max && !godpower) gauge_OD_timer_active = true;
}

////////////////////////////////////////////////////////MISC SECTION////////////////////////////////////////////////////////

//lord's blessing buff damage increase
if (godpower) take_damage(hit_player_obj.player, player, floor(my_hitboxID.damage * god_damage));
if (theikos_active) take_damage(hit_player_obj.player, player, floor(my_hitboxID.damage * theikosAttack));

//ustrong targeting
if(attack == AT_USTRONG and window < 7)
{
	tracking_target = hit_player_obj; //sets tracking for ustrong proj
}

if (attack == AT_DSTRONG_2) //when the fireball of theikos D-strong hits a player
{
	if (my_hitboxID.hbox_num == 1)
    {
        var hit_collision = create_hitbox(AT_DSTRONG_2, 2, hit_player_obj.x, hit_player_obj.y-32);
		hit_collision.fx_particles = 2;
        if (user_event_1_active) hit_collision.fx_particles = 6;
		spawn_hit_fx(hit_player_obj.x, hit_player_obj.y-32, fx_fireblow3);
        sound_play(asset_get("sfx_forsburn_combust"), 0, 0);
    }
}

//burning fury, searing descent and flashbang all have grab properties
//make sure the opponent is actually grabable by making sure they are in hitstun
if (hit_player_obj.state_cat == SC_HITSTUN)
{
	if ((attack == AT_SKILL1 || attack == AT_SKILL1_AIR) && my_hitboxID.hbox_num == 2) burningfury_target = hit_player_obj;
	if (attack == AT_SKILL10 && my_hitboxID.hbox_num < 4) searingdescent_id = hit_player_obj;
	if (attack == AT_SKILL11 && my_hitboxID.hbox_num == 1) flashbanged_id = hit_player_obj;
}


if (polaris_active && !was_parried)
{
	if (my_hitboxID.attack == AT_SKILL7 && my_hitboxID.hbox_num == 1) homing_target_id = noone;
	else homing_target_id = hit_player_obj;
	
	//prevents it from spawning on some attacks
	if (my_hitboxID.attack != AT_SKILL7 && my_hitboxID.attack != 48
	&& (attack != AT_SKILL11 || attack == AT_SKILL11 && my_hitboxID.hbox_num != 1)
	&& !already_shot && homing_target_id != self)
	{
		already_shot = true;
		if (x > hit_player_obj.x) create_hitbox(AT_SKILL7, 1, x+64, y-48);
		else create_hitbox(AT_SKILL7, 1, x-64, y-48);
		ManaBurn();
	}
}
if (my_hitboxID.attack == AT_SKILL7 && my_hitboxID.hbox_num == 1) sound_play(asset_get("sfx_holy_lightning"));


//reset bar's accel blitz if he hits someone with a move
//not including accel blitz itself
if (attack != AT_SKILL4)
{
	accelblitz_active = false;
    accelblitz_active_timer = false;
    accelblitz_done_once = false;
    accelblitz_post_timer = 0;
}

//if bar hits an enemy he will pull
//but he won't get a free pull if it's himself
if (my_hitboxID.attack == AT_SKILL9 && my_hitboxID.hbox_num == 1 && (state == PS_ATTACK_AIR || state == PS_ATTACK_GROUND)
&& hit_player_obj != self && !has_rune("G")) hookshot_speedboost = true;



#define ManaBurn()
{
	if (!has_rune("K") && !theikos_active && phone_cheats[CHEAT_MPDRAIN] == 0) mp_current -= round(my_hitboxID.damage / 2);
}
#define HolyBurn()
{
	hit_player_obj.holyburning = player; // unique burning id to know who burnt the opponent
	hit_player_obj.holyburn_counter = 0;
}
#define ApplySpark()
{
	with (hit_player_obj)
	{
		if (!lightstun_pre_stun && !lightstun)
		{
			lightstun_pre_stun = true;
			lightstun_timer = 300;
			with (other) if (attack != AT_USTRONG) lightstun_has_hit = true;
		}
		else if (lightstun_pre_stun && !lightstun && !other.lightstun_has_hit)
		{
			lightstun = true;
			lightstun_timer = 120;
		}
	}
}
#define LightstunCancel()
{
	with (hit_player_obj)
	{
		lightstun = false;
		lightstun_timer = 0;
	}
}
#define AccelBlitzEffect()
{
	var fx_accelbitz_blast = spawn_hit_fx(x, y-32, fx_accelblitz);
    fx_accelbitz_blast.depth = -6;
    var random_angle = random_func(18, 60, true)-30;
    fx_accelbitz_blast.draw_angle = random_angle;
}