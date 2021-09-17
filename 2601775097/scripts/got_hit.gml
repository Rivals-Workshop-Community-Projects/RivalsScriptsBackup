//got_hit.gml

if (mpGainable)
{
	mp_current += round(enemy_hitboxID.damage / 4);

	mp_gain_hit = round(enemy_hitboxID.damage / 4);
	
	//show_miniMP = true;
	//miniMP_time = miniMP_attack;
	//miniMP_alpha = 1;
		
	if (mp_current >= mp_max)
	{
		mp_current = mp_max;
	}
}

//burning fury
if (burningfury_active) if (window > 7) burningfury_active = false;

//accel blitz is reset on hit
accelblitz_active = false;
accelblitz_active_timer = false;
accelblitz_done_once = false;
accelblitz_post_timer = 0;
dist_x = 0;
dist_y = 0;

//reset chasm burster's burst position if bar gets hit
burst_pos = 56;
burst_count = 0;

//guard aura activates if bar gets hit while it's active
if (guardaura_active) guard_explosion = true;

//light hookshot resets
hookshot_speedboost = false;
hookshot_launch = false;

//Ustrong hookshot reset
runeH_target = noone;

//air dash
if (has_rune("A"))
{
    runeA_dash = false;
    runeA_dash_cool_active = true;
    runeA_dash_timer = runeA_dash_time_max;
}