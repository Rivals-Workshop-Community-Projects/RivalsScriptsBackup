triggerSplash = false;
if (my_hitboxID.attack == AT_NAIR && my_hitboxID.hbox_num == 6){
	set_state(PS_PRATLAND);
    was_parried = true;
	parry_lag = 30;
}

with my_hitboxID {
    if attack == AT_NSPECIAL && hbox_num == 1 
        destroyed = true;
}