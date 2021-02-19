//We eat the bone to taste the meat.

if(attack == AT_NSPECIAL && hbox_num == 1 && effect == 69){
    //Shotput hitpause
	if(in_hitpause && hitpause_timer > 0) {
		in_hitpause = true;
		hitpause_timer--;
	} else {
		in_hitpause = false;
	}

    //bounce
    if(!free && !already_bounced){
    	already_bounced = true; //added it here
        if(player_id.player == player){
            sound_play(sound_get("shotbonk"));
        }
        shotbounces--;
        if(shotbounces <= 0){
            destroyed = true;
        }else if(shotbounces > 0){
            hitbox_timer = 1;
            if(player_id.runeL){
            	vsp = -0.3 * shotbounces;
            }else{
            	vsp = -4 * shotbounces;
            	hsp += (-2 * whichHHH);
            }
            damage -= 3;
            kb_value -= 2;
            kb_scale -= 0.25;
            sound_effect = asset_get("sfx_blow_medium1");
            hitpause -= 5;
            hitpause_growth -= 0.2;
            already_bounced = true;
            
        }
		//already_bounced = true;
    }
	
	if (free && already_bounced) {
		already_bounced = false;
	}
}