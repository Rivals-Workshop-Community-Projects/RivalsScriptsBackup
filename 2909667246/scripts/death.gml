// called when the character gets KO'd

move_cooldown[AT_USPECIAL] = 0;uspec_fuel = 300;uspec_landed = true;uspec_landed = false;
Lloid_Rocket_Ride = false;

bells -= 10000;
if(bells < 0){
    bells = 0;
}

if(instance_exists(Pocketed_Projectile)){
    Pocketed_Projectile.x = 9000;
    Pocketed_Projectile.destroyed = true;Pocketed_Projectile = noone;
    pocket_projectile = false;pocket_article = false;
}

if(instance_exists(grabbedtarget)){
    if(grabbedobject){
    	grabbedobject = false;grabbedtarget.KoB_grabbed = false;
    	if(instance_exists(grabbedtarget)){
    		grabbedtarget.state = 1;grabbedtarget.timer = 60;
    	}
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

sound_stop(voice);

if(get_player_stocks(player) <= 1){ //last stock
	if(alt == 30){
	    PlayVoiceClip("craig_you_beat_me_today_but_tomorrow_im_gonna_catch_you", 3);
	}else if(alt == 31){
		sound_play(sound_get("villager death"));
	}
}else{
	if(alt == 30){
	    PlayVoiceClip("craig just missed it a little", 3);
	}else if(alt == 31){
		sound_play(sound_get("villager death"));
	}
}

#define PlayVoiceClip
/// PlayVoiceClip(name,?volume)
//Plays SFX
//if(!muted){
	sound_stop(voice);
	voice = sound_play(sound_get(argument[0]/* + (alt==21?" df":"")*/),false,noone,argument_count>1?argument[1]:1);
//}