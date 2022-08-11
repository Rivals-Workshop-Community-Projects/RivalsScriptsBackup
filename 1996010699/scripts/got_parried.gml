triggerSplash = false;
if (my_hitboxID.attack == AT_NAIR && my_hitboxID.hbox_num == 6){
	set_state(PS_PRATLAND);
    was_parried = true;
	parry_lag = 30;
}