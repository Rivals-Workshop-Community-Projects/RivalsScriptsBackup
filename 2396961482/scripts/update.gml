if (!free) airLock = false;

move_cooldown[AT_DSPECIAL] = instance_exists(my_article)?60:move_cooldown[AT_DSPECIAL]<2&&airLock?2:move_cooldown[AT_DSPECIAL];

//Date Girl Compat
if (dategirl_init < 9) {
	dategirl_init++
	var dategirl_real = false
	with (oPlayer) {
		if (self != other && "url" in self && url == "2396061657") dategirl_real = true
	}
	if (dategirl_real) {
		DG_chat_type = []
		user_event(1) //use the same number from your filename
		dategirl_init = 9
	}
}
