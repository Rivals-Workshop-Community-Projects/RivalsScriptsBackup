if((state == PS_HITSTUN || state == PS_HITSTUN_LAND) && hitpause){
	sound_stop(sfx);
    sound_stop(voice);
    
	if(instance_exists(grabbedtarget)){
		if(grabbedobject){
	    	grabbedobject = false;grabbedtarget.KoB_grabbed = false;
	    	if(grabbedarticle){
	    		grabbedtarget.state = 1;grabbedtarget.timer = 60;
	    		if("StarterBlock" in grabbedtarget){grabbedtarget.state = 2;}
	    		grabbedtarget.visible = true;
	    	}else{
	    		//if("Villager_Tree" in self || "Villager_Bowling_Ball" in self){despawning = true;}
	    	}//grabbedtarget.sprite_index = grabbedtargetsprite;
	    }else{
	    	grabbedtarget.visible = true;
		}
    }
}