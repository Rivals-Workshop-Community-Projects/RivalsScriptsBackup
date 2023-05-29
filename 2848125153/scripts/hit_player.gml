
if(my_hitboxID.attack == AT_NSPECIAL && my_hitboxID.hbox_num == 1){
    my_hitboxID.hsp = -1*spr_dir;my_hitboxID.spr_dir = -my_hitboxID.spr_dir;
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
		my_hitboxID.thedice.destroyed = true;
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
    	my_hitboxID.hsp = 0.5*spr_dir;
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
	}else if(my_hitboxID.hbox_num == 2){
		old_vsp = -10;
		destroy_hitboxes();attack_end();
		window_timer = 5;
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
	if("url" in hit_player_obj && hit_player_obj.url == url){ //if opponent is monopoly
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

if(hit_player_obj.should_make_shockwave || my_hitboxID.attack == AT_DAIR && my_hitboxID.hbox_num == 1){
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
	    	sound_stop(voice);voice = sound_play(sound_get("very skillful"));
	    }else if(rand == 1){
	    	sound_stop(voice);voice = sound_play(sound_get("monopoly byebyenow"));
	    }else if(rand == 2){
	    	sound_stop(voice);voice = sound_play(sound_get("gottem"));
	    }else if(rand == 3){
	    	sound_stop(voice);voice = sound_play(sound_get("thats more like it"));
	    }else if(rand == 4){
	    	sound_stop(voice);voice = sound_play(sound_get("thats the big time"));
	    }else if(rand == 5){
	    	sound_stop(voice);voice = sound_play(sound_get("youre playing like a million bucks"));
	    }else if(rand == 6){
	    	sound_stop(voice);voice = sound_play(sound_get("wow"));
	    }else if(rand == 7){
	    	sound_stop(voice);voice = sound_play(sound_get("lets go"));
	    }else if(rand == 8 || rand == 9){
	    	rand = random_func(1, 4, true);
	    	if(rand == 0){
		    	sound_stop(voice);voice = sound_play(sound_get("monopoly laugh"));
		    }else if(rand == 1){
		    	sound_stop(voice);voice = sound_play(sound_get("monopoly laugh 2"));
		    }else if(rand == 2){
		    	sound_stop(voice);voice = sound_play(sound_get("monopoly laugh 3"));
		    }else if(rand == 3){
		    	sound_stop(voice);voice = sound_play(sound_get("monopoly laugh 4"));
		    }
	    }else if(rand == 10){
	    	sound_stop(voice);voice = sound_play(sound_get("youre all wet"));
	    }else if(rand == 11){
	    	sound_stop(voice);voice = sound_play(sound_get("come on baby"));
	    }else if(rand == 12){
	    	sound_stop(voice);voice = sound_play(sound_get("couldnt have done it better myself"));
	    }else if(rand == 13){
	    	sound_stop(voice);voice = sound_play(sound_get("not bad"));
	    }else if(rand == 14){
	    	sound_stop(voice);voice = sound_play(sound_get("way to go"));
	    }else if(rand == 15){
	    	sound_stop(voice);voice = sound_play(sound_get("you want more"));
	    }else if(rand == 16){
	    	sound_stop(voice);voice = sound_play(sound_get("die"));
	    }else if(rand == 17){
	    	sound_stop(voice);voice = sound_play(sound_get("die die now"));
	    }else if(rand == 18){
	    	sound_stop(voice);voice = sound_play(sound_get("nicely done"));
	    }
	    
	    if(my_hitboxID.type == 2){
	    	rand = random_func(1, 10, true);
	    	if(rand <= 3){
		    	sound_stop(voice);voice = sound_play(sound_get("good shot"));
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

//charge final smash when projectiles hit
if("fs_charge" in self && my_hitboxID.type == 2 && finalsmashtimer <= 0){
    fs_charge += my_hitboxID.damage;
}