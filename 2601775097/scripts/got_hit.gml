//got_hit.gml

if (mpGainable)
{
	mp_current += round(enemy_hitboxID.damage / 4);

	mp_gain_hit = round(enemy_hitboxID.damage / 4);
	
	//show_miniMP = true;
	//miniMP_time = miniMP_attack;
	//miniMP_alpha = 1;
		
	if (mp_current >= mp_max && !has_rune("K")) mp_current = mp_max;
	else if (mp_current >= runeK_mp_max && has_rune("K")) mp_current = runeK_mp_max;
}

//burning fury
if (burningfury_active) if (window > 7) burningfury_active = false;
burningfury_target = noone;

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
//if (guardaura_active) guardaura_active = false; //absorbtion take

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

if(menu_timer > -1){
    menu_timer = -1;
}

if (fuck_you_cheapies && super_armor)
{
	hitpause = false;
	hitstop = 0;
	hitstop_full = 0;
}

#define ApplySpark()
{
	hit_player_obj.lightstun_id = player;

	if (!hit_player_obj.lightstun && !hit_player_obj.lightstun_pre_stun) //if it isn't active at all
	{
		hit_player_obj.lightstun_timer = 300;
		hit_player_obj.lightstun_pre_stun = true;

		if (attack != AT_USTRONG) lightstun_has_hit = true;
	}
	else if (hit_player_obj.lightstun_pre_stun && !lightstun_has_hit) //if the pre-stun countdown is active
	{
		hit_player_obj.lightstun_timer = 0;
	}
	else if (hit_player_obj.lightstun) //if the lightstun is applied
	{
		hit_player_obj.lightstun_timer += 0;
	}
}