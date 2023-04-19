//

hsp = eust_lameDir * 8;

if(free){
	vsp += eust_lame_grav;
	if (vsp > lame_maxf){vsp = lame_maxf;}
}

if(hit_wall){
	eust_lameDir *= -1;
	x += eust_lameDir * 8;
	eust_lameBounces += 1;
}

if(eust_lameBounces > 1){
	with(pHurtBox){
		if(place_meeting(x,y,other.id) && playerID == other.player_id){
				sound_play(sound_get("getOff"))
				playerID.eust_forceOffTimer = 400;
				playerID.eust_laaame = 7*60;
				instance_destroy();
        			exit;
		}
	}
}

if(eust_lameBounces > 3 || vsp > 4 || player_id.free){
	instance_destroy();
        exit;
}