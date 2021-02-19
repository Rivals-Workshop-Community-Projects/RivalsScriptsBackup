grabbedid.visible = true;
if(grabbedid != noone){
	grabbedid.state = PS_HITSTUN;
	grabbedid = noone;
}
if(ionized != noone){
	ionized = noone;
}
ion_timer = 0;