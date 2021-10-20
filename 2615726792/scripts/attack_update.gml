//====> JAB / NAIR ##########################################################

if (attack == AT_JAB || attack == AT_NAIR)
{
	move_cooldown[AT_JAB] = 60; //from 35
	move_cooldown[AT_NAIR] = 60; //from 35
}

//====> FAIR ##########################################################

if (attack == AT_FAIR)
{
	if (_fair_jc > 0)
	{
		if (jump_pressed)
		{
			hsp = 0;
		}
		//hsp = 6 * spr_dir;
		can_jump = true;
	}
	
	move_cooldown[AT_FAIR] = 1000;
}

//====> B - Reversals ##########################################################

if (attack == AT_UAIR){
    if (window == 2){
        if (special_pressed){
            window = 3;
            window_timer = 0;
            destroy_hitboxes();
        }
    }
    can_fast_fall = false;
	if (window == 3 && window_timer == 16) {
		can_fast_fall = true;
	}
}

//====> COUNTERS #####################################################

//Unafected by hitpause
if (!hitpause)
{
	_fair_jc--;		if ( _fair_jc < 0 )		{ _fair_jc = 0; }
}