anim = 0;

MattCanGrab = false;
MattStar = false;
CalCanSnack = false;
MorshuCanGrab = false;
UnReflectable = false;

num = 0;
tornadosfx = noone;
playercharge = 0;

if(attack == AT_NSPECIAL){
	MattCanGrab = true;MorshuCanGrab = true;
	CalCanSnack = true;
}
if(attack == AT_FSPECIAL){
	CalCanSnack = true;
	if(hbox_num <= 2){
	    UnReflectable = true;
	}else{
		MattCanGrab = true;MorshuCanGrab = true;
	}
}

if(attack == AT_DSPECIAL){
	UnReflectable = true;
}

if(attack == AT_FSTRONG){
	MattCanGrab = true;MorshuCanGrab = true;
	CalCanSnack = true;
}

if(attack == AT_DSTRONG){
	playercharge = player_id.dstrongcharge;
	if(hbox_num == 9){
	    anim = 11;
	}
	if(hbox_num >= 9){
		UnReflectable = true;
		if(hbox_num == 9){
			tornadosfx = sound_play(sound_get("tornado"));
		}
	}
	CalCanSnack = true;
}