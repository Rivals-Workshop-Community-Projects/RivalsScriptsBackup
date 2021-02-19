if(grabbedid != noone){
	grabbedid.ungrab++;
	if(grabbedid.ungrab == 2){
		 //Feel free to remove this line if the grab does not make the opponent invisible.
		grabbedid.invincible = false; //Feel free to remove this line if the grab does not make the opponent invincible.
		grabbedid.state = PS_WRAPPED;
		grabbedid.ungrab = 0;
		grabbedid = noone;
	}
}

if(ionized != noone){
	if(ionized.state == PS_DEAD || ionized.state == PS_RESPAWN){
			ionized = noone;
	}
}

if(ion_timer > 0){
	ion_timer = ion_timer - 0.5;
}

if(ion_timer < 0){
	ion_timer = 0;
}

if(ion_timer == 0 || ionized == self){
	ionized = noone;
	ion_timer = 0;
}