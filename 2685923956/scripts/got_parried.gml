if (my_hitboxID.attack==AT_DSPECIAL){
	move_cooldown[AT_DSPECIAL] = doomdesire_cooldown_amount
}
if (doomdesire_storage!=-4){
	if (doomdesire_storage.state==0){
		doomdesire_storage.state = 5
		doomdesire_storage.state_timer = 0
		doomdesire_storage.state_end = 1
	}
}