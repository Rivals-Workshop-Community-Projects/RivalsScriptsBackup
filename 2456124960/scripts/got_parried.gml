actionMeterStatus = 0;
actionMeterFill -= 80;
if (actionMeterFill < 0) {
	actionMeterFill = 0;
}

activeBuff = 0;
activeBuffUses = 0;

if (my_hitboxID.attack == AT_FSPECIAL) {
	if (my_hitboxID.hbox_num == 1) {
		flash.gotParried = 1;
		flash.parriedPlayer = hit_player;
	}
}

if (my_hitboxID.attack == AT_DATTACK) {
	set_state(PS_PRATFALL);
	hsp = 0;
	vsp = 0;
}