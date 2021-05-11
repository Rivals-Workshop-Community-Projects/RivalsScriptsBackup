if attack == AT_FSPECIAL and ftarget != noone{
	ftarget.hitpause = false;
	ftarget.state = set_state(PS_HITSTUN);
	ftarget.hitstun = 2;
	ftarget.hitstun_full = 2;
	ftarget.hitstop = 0;
	ftarget.y = ftarget.y + 100;
	ftarget = noone
}