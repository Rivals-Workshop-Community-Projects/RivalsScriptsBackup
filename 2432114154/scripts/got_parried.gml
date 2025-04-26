

    	     	sound_play(sound_get("zoice_closs1"),false,noone,zolume,zitch)
    	     	sound_play(sound_get("zoice_closs1"),false,noone,zolume,zitch)


if my_hitboxID.type == 1{
allhit = 20
uphit = 0
downhit = 0
neutralhit = 0
sidehit = 0
}

if (my_hitboxID.attack == AT_NSPECIAL) {
    set_state (PS_PRATFALL)
    parry_lag = 60;
}  