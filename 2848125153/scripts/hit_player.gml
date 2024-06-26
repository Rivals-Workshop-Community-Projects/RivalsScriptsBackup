
if("should_make_shockwave" not in hit_player_obj)hit_player_obj.should_make_shockwave = false;
if("activated_kill_effect" not in hit_player_obj)hit_player_obj.activated_kill_effect = false;
if(my_hitboxID.hitstun_factor < 0)hit_player_obj.should_make_shockwave = false;

//extra hitpause and shake code
extrahitpauseon = my_hitboxID.type==1?true:false;
shaketarget = hit_player_obj;hitpausesetpos = true;hitpausecap = 40;shakecap = 50;

if(my_hitboxID.attack == AT_NSPECIAL && my_hitboxID.hbox_num == 1){
    my_hitboxID.hsp = -1*my_hitboxID.spr_dir;my_hitboxID.spr_dir = -my_hitboxID.spr_dir;
    my_hitboxID.vsp = -10;
    my_hitboxID.hit_priority = 0;my_hitboxID.grounds = 1;my_hitboxID.walls = 1;my_hitboxID.dice_has_hit = true;
    if(my_hitboxID.dicenum == 0){
    	with(my_hitboxID){
    		sound_play(other.sfx_dice1);
    	}
    }
    if(my_hitboxID.dicetimer < 20){
	    if(instance_exists(thedice1) && my_hitboxID == thedice1){
	    	thedice1 = noone;
	    }else if(instance_exists(thedice2) && my_hitboxID == thedice2){
	    	thedice2 = noone;
	    }
    }
    if(instance_exists(my_hitboxID.thedice)){
		//my_hitboxID.thedice.destroyed = true;
	}
}

if(my_hitboxID.attack == AT_FSPECIAL && my_hitboxID.hbox_num <= 2){
	my_hitboxID.hittimer = 50;
    if(my_hitboxID.num == 0){ //top hat
    	my_hitboxID.hsp = 0.5*my_hitboxID.spr_dir;
    	if(my_hitboxID.vsp > -10){
    		my_hitboxID.vsp = -10;
    	}my_hitboxID.hittimer = 30;
    }else if(my_hitboxID.num == 5){ //rubber duck
    	my_hitboxID.hsp = 0.5*my_hitboxID.spr_dir;
    	my_hitboxID.vsp = -my_hitboxID.vsp;
    }else if(my_hitboxID.num == 6){ //iron
    	my_hitboxID.hsp = 0.5*my_hitboxID.spr_dir;
    	if(my_hitboxID.vsp > -10){
    		my_hitboxID.vsp = -10;
    	}my_hitboxID.hittimer = 30;
    }else if(my_hitboxID.num == 7){ //shoe
    	//my_hitboxID.hsp = 0.5*spr_dir;
    	if(my_hitboxID.vsp > -7){
    		my_hitboxID.vsp = -7;
    	}
    }my_hitboxID.dice_has_hit = true;
    /*if(instance_exists(thetoken) && my_hitboxID == thetoken){
    	thetoken = noone;
    }*/
}

if(my_hitboxID.attack == AT_DSPECIAL && my_hitboxID.hbox_num <= 3){
    my_hitboxID.hitpausehit = my_hitboxID.hitpause;my_hitboxID.in_hitpause = true;
	if(my_hitboxID.hitpausehit <= 0){
		my_hitboxID.hitpausehit = 5;
	}
	my_hitboxID.hitstop = my_hitboxID.hitpausehit;
}

if(my_hitboxID.attack == AT_DAIR && free){
	if(my_hitboxID.hbox_num == 1){
		old_vsp = -11;
	}else if(my_hitboxID.hbox_num >= 2){
		old_vsp = -10;
		destroy_hitboxes();attack_end();
		window_timer = 5;
		DairBounceHits += 1;
	}
	if(up_down){
		old_vsp -= 3;
    }
}

if(my_hitboxID.attack == AT_FTILT && my_hitboxID.hbox_num == 3 && (hit_player_obj.state == PS_HITSTUN || hit_player_obj.state == PS_HITSTUN_LAND)){
	hit_player_obj.old_hsp += hsp;
	hit_player_obj.should_make_shockwave = false;
}

if(my_hitboxID.attack == AT_USTRONG || my_hitboxID.attack == AT_BAIR){
	if(current_money2 <= 15000){
		//sound_play(sound_get("moneybag_hit2"),false,noone,1.5);
	}else{
		sound_play(sound_get("moneybag_money"),false,noone,0.75);
	}
}

if(my_hitboxID.attack == AT_JAB && my_hitboxID.hbox_num == 5 || my_hitboxID.attack == AT_UAIR && my_hitboxID.hbox_num == 2
|| my_hitboxID.attack == AT_FSTRONG  && my_hitboxID.hbox_num != 2){
	sound_play(sound_get("soldsfx"),false,noone,2);
}

if((attack == AT_JAB && my_hitboxID.hbox_num < 10 && my_hitboxID.hbox_num != 5 || attack != AT_JAB) && (attack == AT_UAIR && my_hitboxID.hbox_num == 1 || attack != AT_UAIR) && attack != AT_DSPECIAL
&& hit_player_obj != self && my_hitboxID.type <= 1){
	if("orly" in hit_player_obj || "VerySkillful" in hit_player_obj){ //if opponent is certain other characters
		current_money += floor(((my_hitboxID.damage*150)*(1+(strong_charge/100)))*income_boost);
	}else{ //anyone else
		current_money += floor(((my_hitboxID.damage*175)*(1+(strong_charge/100)))*income_boost);
		//round(enemy_hitboxID.damage*(1+(enemy_hitboxID.player_id.strong_charge/100)))
	}
}

if(my_hitboxID.type == 1 && crit || my_hitboxID.type == 2 && "crit" in my_hitboxID && my_hitboxID.crit){
	sound_play(sound_get("soldsfx"),false,noone,1.5);sound_play(sound_get("rest_hit"),false,noone,0.5);
	sound_stop(voice);voice = sound_play(sound_get("lucky"));
	spawn_hit_fx(hit_player_obj.x,hit_player_obj.y-25,304);
}

if(hit_player_obj.should_make_shockwave && hit_player_obj != self || my_hitboxID.attack == AT_DAIR && my_hitboxID.hbox_num == 1){
	if(alt == 26){ //toadsworth
		rand = random_func(0, 2, true);
	    if(rand == 0){
	    	sound_stop(voice);voice = sound_play(sound_get("toadsworth noise"),false,noone,1.25);
	    }else if(rand == 1){
	    	sound_stop(voice);voice = sound_play(sound_get("toadsworth noise 2"),false,noone,1.25);
	    }
    }else{
		rand = random_func(0, 20, true);
	    if(rand == 0){
	    	PlayVoiceClip("very skillful", 1.0);
	    }else if(rand == 1){
	    	PlayVoiceClip("monopoly byebyenow", 1.0);
	    }else if(rand == 2){
	    	PlayVoiceClip("gottem", 1.0);
	    }else if(rand == 3){
	    	PlayVoiceClip("thats more like it", 1.0);
	    }else if(rand == 4){
	    	PlayVoiceClip("thats the big time", 1.0);
	    }else if(rand == 5){
	    	PlayVoiceClip("youre playing like a million bucks", 1.0);
	    }else if(rand == 6){
	    	PlayVoiceClip("wow", 1.0);
	    }else if(rand == 7){
	    	PlayVoiceClip("lets go", 1.0);
	    }else if(rand == 8 || rand == 9){
	    	rand = random_func(1, 4, true);
	    	if(rand == 0){
		    	PlayVoiceClip("monopoly laugh", 1.0);
		    }else if(rand == 1){
		    	PlayVoiceClip("monopoly laugh 2", 1.0);
		    }else if(rand == 2){
		    	PlayVoiceClip("monopoly laugh 3", 1.0);
		    }else if(rand == 3){
		    	PlayVoiceClip("monopoly laugh 4", 1.0);
		    }
	    }else if(rand == 10){
	    	PlayVoiceClip("youre all wet", 1.0);
	    }else if(rand == 11){
	    	PlayVoiceClip("come on baby", 1.0);
	    }else if(rand == 12){
	    	PlayVoiceClip("couldnt have done it better myself", 1.0);
	    }else if(rand == 13){
	    	PlayVoiceClip("not bad", 1.0);
	    }else if(rand == 14){
	    	PlayVoiceClip("way to go", 1.0);
	    }else if(rand == 15){
	    	PlayVoiceClip("you want more", 1.0);
	    }else if(rand == 16){
	    	PlayVoiceClip("die", 1.0);
	    }else if(rand == 17){
	    	PlayVoiceClip("die die now", 1.0);
	    }else if(rand == 18){
	    	PlayVoiceClip("nicely done", 1.0);
	    }else if(rand == 19){
	    	PlayVoiceClip("skill", 1.0);
	    }
	    
	    if(my_hitboxID.type == 2){
	    	rand = random_func(1, 10, true);
	    	if(rand <= 3){
		    	PlayVoiceClip("good shot", 1.0);
		    }
	    }
    }
	/*}else if(alt == 30){ //morshu
		rand = random_func(0, 3, true);
	    if(rand == 0){
	    	sound_stop(voice);voice = sound_play(sound_get("morshu_mmm"));
	    }else if(rand == 1){
	    	sound_stop(voice);voice = sound_play(sound_get("morshu_its_yours_my_friend"));
	    }else if(rand == 2){
	    	sound_stop(voice);voice = sound_play(sound_get("morshu_rubies"));
	    }
	}*/
}

if(my_hitboxID.sound_effect == asset_get("sfx_blow_heavy1") || my_hitboxID.sound_effect == asset_get("sfx_blow_heavy2")
|| my_hitboxID.attack == AT_NSPECIAL && my_hitboxID.hbox_num == 1 && my_hitboxID.num >= 4){
	if(alt == 29){
		sound_play(sound_get("dbzhit"));
	}
}

if(hit_player_obj.should_make_shockwave || my_hitboxID.attack == AT_NSPECIAL && my_hitboxID.hbox_num == 1 && my_hitboxID.num >= 4 || my_hitboxID.attack == AT_DSPECIAL
|| my_hitboxID.attack == AT_FSTRONG || my_hitboxID.attack == AT_USTRONG || my_hitboxID.attack == AT_DSTRONG){
	if(alt == 29){
		sound_play(sound_get("dbzhit2"));
	}
}

//hitboxes that trigger the silly angle 0 galaxy thing
if(my_hitboxID.attack == AT_JAB || my_hitboxID.attack == AT_DTILT || my_hitboxID.attack == AT_DATTACK && my_hitboxID.hbox_num < 8){
	//trigger silly angle 0 thing (if galaxy)
	if(hit_player_obj.should_make_shockwave)killtarget = hit_player_obj;
}

//charge final smash when projectiles hit
if("fs_charge" in self && my_hitboxID.type == 2 && finalsmashtimer <= 0){
    fs_charge += my_hitboxID.damage;
}

#define PlayVoiceClip
	/// PlayVoiceClip(name,?volume)
	//Plays SFX
	//if(!muted){
		sound_stop(voice);
		voice = sound_play(sound_get(argument[0]/* + (alt==21?" df":"")*/),false,noone,argument_count>1?argument[1]:1, voicepitch);
	//}