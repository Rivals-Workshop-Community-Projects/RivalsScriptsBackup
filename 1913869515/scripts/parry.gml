//parry.gml

sound_play(sound_get("RI"));
shake_camera(4, 12)

	move_cooldown[AT_EXTRA_3] = 200
	
	voicecd = 0
	
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
              zvoice = sound_play(sound_get("SP1"),false,noone,.95,.95 + 0.05 + random_func(1,6,true)/100);
        }
        
        if zrandom % 4 == 1 {
             zvoice = sound_play(sound_get("SP2"),false,noone,.96,.95 + 0.05 + random_func(1,6,true)/100);
        }
        
        if zrandom % 4 == 2{
            zvoice = sound_play(sound_get("taunt"),false,noone,.96,.95 + 0.05 + random_func(1,6,true)/100);
        }
        
        if zrandom % 4 == 3{
            zvoice = sound_play(sound_get("tauntU"),false,noone,1,1 + random_func(1,5,true)/100);
        }
	 }
	 
	 
	 
window_timer = floor(window_timer)
noparryedit = 15


			if legacy == false {
			var halodeact = spawn_hit_fx( x - (16 * spr_dir) , y - 50 , 302 )
    		halodeact.depth = depth + 2
    		halodeact.pause = 4
         	offense = 1
            offensetimer = 1	
            enhanceee = 1
    		dmhit = 3
    		fx3 = spawn_hit_fx( x - (8* spr_dir), y - 30 , shit5 )	
	    	fx3.depth = depth - 5
	    	sound_play(sound_get("ADfinish"),false,noone, .8,1.4)
	    	shake_camera(4,4)
			}
