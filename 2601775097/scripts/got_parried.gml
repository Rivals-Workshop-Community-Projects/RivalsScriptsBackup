//got_parried.gml

if (holyburning)
{
    holyburning = false;
}

reset_window_value(AT_SKILL4, 4, AG_WINDOW_HSPEED);
reset_window_value(AT_SKILL4, 4, AG_WINDOW_VSPEED);
accelblitz_active = false;
accelblitz_active_timer = false;

burst_pos = 56;
burst_count = 0;

flashbanged_id = noone;

if (holyburn_mechanic_active)
{
	other.outline_color = [0, 0, 0];
}

//gtting parried sets lightstun_parried to true
if (lightstun_mechanic_active)
{
	//moves that use the mechanic
	switch (attack)
	{
		//photon blast, accel blitz, guard aura and theikos U-strong all apply the mechanic
		case AT_DTHROW: case AT_NSPECIAL_2: case AT_USPECIAL_2: case AT_USTRONG_2:
			ParriedLight();
			break;
		//normal burning U-strong doesn't use it
		case AT_USTRONG:
			if (!burningfury_active && pHitBox.hbox_num < 4) ParriedLight();
			break;
		//only applies to the light attack Fstrong rune
		case AT_FSTRONG:
			if (has_rune("C") && !burningfury_active) ParriedLight();
			break;

        //burning light dagger doesn't use it
		case AT_NTHROW: case AT_NSPECIAL_AIR:
			if (pHitBox.hbox_num < 3) lightstun_parried = true;
			break;    
        //burning light hookshot also doesn't
		case AT_EXTRA_2:
			if (pHitBox.hbox_num == 1) lightstun_parried = true;
			break;
	}
}

//if bar parries his own lightstun the lightstun parry becomes false
if (my_hitboxID.attack == 48 && my_hitboxID.hbox_num == 1 && my_hitboxID.player_id == id) lightstun_parried = false;

#define ParriedLight()
{
    lightstun_parried = true;

	if (!lightstun && !lightstun_pre_stun)
	{
		lightstun_timer = 300;
		lightstun_pre_stun = true;
	}
	else if (lightstun_pre_stun)
	{
		lightstun_timer = 0;
	}
	else if (lightstun)
	{
		lightstun_timer += 0;
	}
}