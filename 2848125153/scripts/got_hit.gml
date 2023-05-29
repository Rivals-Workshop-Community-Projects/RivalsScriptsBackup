if((state == PS_HITSTUN || state == PS_HITSTUN_LAND) && hitpause){
	mask_index = asset_get("ex_guy_collision_mask");
	//current_money -= floor(enemy_hitboxID.damage*100);
	var hitbox_dmg = round(enemy_hitboxID.damage*(1+(enemy_hitboxID.player_id.strong_charge/100)));//print(hitbox_dmg);
	if(current_money >= 600 && hitbox_dmg >= 3){
		sound_play(sound_get("money_pickup2"),false,noone,2)
		sound_play(sound_get("money_pickup3"),false,noone,2)
		var money = create_hitbox(AT_JAB, 10, round(x), round(y-35));money.hsp = 5-random_func(0, 10, true);money.vsp = -2-random_func(1, 8, true);money.hitbox_timer = 20;money.hit_priority = 0;
		current_money -= 600;
		if(current_money >= 1000 && hitbox_dmg >= 8){
			var money = create_hitbox(AT_JAB, 10, round(x), round(y-35));money.hsp = 5-random_func(1, 10, true);money.vsp = -2-random_func(2, 8, true);money.hitbox_timer = 20;money.hit_priority = 0;money.value = 1000;
			current_money -= 1000;
		}
		if(current_money >= 1000 && hitbox_dmg >= 15){
			var money = create_hitbox(AT_JAB, 10, round(x), round(y-35));money.hsp = 5-random_func(2, 10, true);money.vsp = -2-random_func(3, 8, true);money.hitbox_timer = 20;money.hit_priority = 0;money.value = 1000;
			current_money -= 1000;
		}
		if(current_money >= 1000 && hitbox_dmg >= 20){
			var money = create_hitbox(AT_JAB, 10, round(x), round(y-35));money.hsp = 5-random_func(3, 10, true);money.vsp = -2-random_func(4, 8, true);money.hitbox_timer = 20;money.hit_priority = 0;money.value = 1000;
			current_money -= 1000;
		}
		if(current_money >= 1000 && hitbox_dmg >= 25){
			var money = create_hitbox(AT_JAB, 10, round(x), round(y-35));money.hsp = 5-random_func(4, 10, true);money.vsp = -2-random_func(5, 8, true);money.hitbox_timer = 20;money.hit_priority = 0;money.value = 1000;
			current_money -= 1000;
		}
	}
	
	if(current_money < 0){
	    current_money = 0;
	}
	
	if(/*attacking && */attack == AT_DATTACK /*&& window >= 2*/ && takearideontherailroad){
		//if(!free && freemd){
					var choochoo = create_hitbox(AT_DATTACK, 4, x+60*spr_dir, y-25);choochoo.hsp = hsp;choochoo.vsp = vsp;
				//}else{
					//var choochoo = create_hitbox(AT_DATTACK, 4, x+60*spr_dir, y-29);choochoo.hsp = hsp;choochoo.vsp = vsp;
				//}
	}
	
	sound_stop(voice);
	
	rand = random_func(0, 2, true);
	if(hit_player == player || should_make_shockwave || rand == 0){
	    rand = random_func(0, 10, true);
	    if(hit_player == player){
	        rand = random_func(0, 2, true);
	    }
	    if(rand == 0){
		    sound_play(sound_get("ow"));
	    }else if(rand == 1){
		    sound_play(sound_get("ouch"));
	    }
	}
	
	takearideontherailroad = false;

}