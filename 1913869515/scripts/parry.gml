//parry.gml

sound_play(sound_get("RI"));
shake_camera(4, 12)

	move_cooldown[AT_EXTRA_3] = 200
	
	if halox < 8 {
	   	halox += 1
	 } else {
	 	halo = 3
	 }
	 
	 dmhit = 2
	 
	 if zvoice != 0  {  
	 voicecd = 60
        zrandom += random_func(2,2,true) + 1
        sound_stop(zvoice)
        if zrandom % 4 == 0 {
              zvoice = sound_play(sound_get("SP1"),false,noone,.95,.95 + random_func(1,11,true)/100);
        }
        
        if zrandom % 4 == 1 {
             zvoice = sound_play(sound_get("SP2"),false,noone,.96,.95 + random_func(1,11,true)/100);
        }
        
        if zrandom % 4 == 2{
            zvoice = sound_play(sound_get("taunt"),false,noone,.96,.95 + random_func(1,11,true)/100);
        }
        
        if zrandom % 4 == 3{
            zvoice = sound_play(sound_get("tauntU"),false,noone,1,1 + random_func(1,5,true)/100);
        }
	 }