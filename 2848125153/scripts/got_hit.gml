if((state == PS_HITSTUN || state == PS_HITSTUN_LAND) && hitpause){
	mask_index = asset_get("ex_guy_collision_mask");
	//current_money -= floor(enemy_hitboxID.damage*100);
	var hitbox_dmg = round(enemy_hitboxID.damage*(1+(enemy_hitboxID.player_id.strong_charge/100)));//print(hitbox_dmg);
	if(enemy_hitboxID.player_id == self){
		hitbox_dmg *= 2;
		if(enemy_hitboxID.attack == AT_NSPECIAL && enemy_hitboxID.hbox_num == 3){
			hitbox_dmg *= 2;
		}
	}
	if(current_money >= 600 && hitbox_dmg >= 3){
		sound_play(sound_get("money_pickup2"),false,noone,2)
		sound_play(sound_get("money_pickup3"),false,noone,2)
		var money = create_hitbox(AT_JAB, 10, round(x), round(y-35));money.hsp = 5-random_func(0, 10, true);money.vsp = -2-random_func(1, 8, true);money.hitbox_timer = 20;money.hit_priority = 0;money.UnReflectable = true;
		current_money -= 600;
		if(current_money >= 1000 && hitbox_dmg >= 8){
			var money = create_hitbox(AT_JAB, 10, round(x), round(y-35));money.hsp = 5-random_func(1, 10, true);money.vsp = -2-random_func(2, 8, true);money.hitbox_timer = 20;money.hit_priority = 0;money.value = 1000;money.UnReflectable = true;
			current_money -= 1000;
		}
		if(current_money >= 1000 && hitbox_dmg >= 15){
			var money = create_hitbox(AT_JAB, 10, round(x), round(y-35));money.hsp = 5-random_func(2, 10, true);money.vsp = -2-random_func(3, 8, true);money.hitbox_timer = 20;money.hit_priority = 0;money.value = 1000;money.UnReflectable = true;
			current_money -= 1000;
		}
		if(current_money >= 1000 && hitbox_dmg >= 20){
			var money = create_hitbox(AT_JAB, 10, round(x), round(y-35));money.hsp = 5-random_func(3, 10, true);money.vsp = -2-random_func(4, 8, true);money.hitbox_timer = 20;money.hit_priority = 0;money.value = 1000;money.UnReflectable = true;
			current_money -= 1000;
		}
		if(current_money >= 1000 && hitbox_dmg >= 25){
			var money = create_hitbox(AT_JAB, 10, round(x), round(y-35));money.hsp = 5-random_func(4, 10, true);money.vsp = -2-random_func(5, 8, true);money.hitbox_timer = 20;money.hit_priority = 0;money.value = 1000;money.UnReflectable = true;
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
		    PlayVoiceClip("ow", 1.0);
	    }else if(rand == 1){
		    PlayVoiceClip("ouch", 1.0);
	    }
	}
	
	takearideontherailroad = false;
	
	if("weegeefied" in self){
		propertymoney = 0;
		if(instance_exists(property))if("housemoney" in property)propertymoney = property.housemoney;
		weegeefied_sprite = current_money+propertymoney<(30000-discount_stocks)?sprite_get("weegeefied"):sprite_get("weegeefied skill");
	}
}

#define PlayVoiceClip
	/// PlayVoiceClip(name,?volume)
	//Plays SFX
	//if(!muted){
		sound_stop(voice);
		voice = sound_play(sound_get(argument[0]/* + (alt==21?" df":"")*/),false,noone,argument_count>1?argument[1]:1, voicepitch);
	//}