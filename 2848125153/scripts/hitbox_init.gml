//hitbox_init

dir = player_id.spr_dir;
num = 0;
num2 = 0;

originalplayer = player_id;
reflect = false;
reflect_distance = 0;
reflected = 0;
last_player_reflected = [];

MattCanGrab = false;
MattStar = false;
CalCanSnack = false;
MorshuCanGrab = false;
UnReflectable = false;

playerurl = 0;
if("thedice" not in self)thedice = noone;
landtimer = 0;
dicearmororig = 1;
dicearmor = 1;
dicearmor2 = 0;
dicetimer = 0;

crit = false;
critboost_dmg = 1;
critboost_kb_scale = 1;

if("KoB_grabbed" not in self)KoB_grabbed = false;
KoB_was_grabbed = false;
KoB_destroy = false;

if(attack == AT_NSPECIAL){
    if(hbox_num == 1){
        MattCanGrab = true;MorshuCanGrab = true;
        CalCanSnack = 2;AriaCantAbsorb = true;Toadie_Ability = -1;
        Pocketable = true;Pocket_hsp = 7;Pocket_vsp = -7;Pocketed = false;
	    Pocket_hud = sprite_get("pocket_icons");Pocket_hud_imageindex = 0;
        
        dice_has_hit = false;
        playerurl = player_id.url;
        orig_player = player;current_player = player;
        knockback_power = 0;knockback_angle = 0;hitpausehit = 0;timer = 0;
        lasthitbox = noone;lasthitbox_player_id = noone;lasthitbox_group = -1;lasthitbox_attack = -1;
        hitlockout = 4;hitlockout2 = 0;
        hitplayer = false;hitplayertimer = 0;
        dicenum = random_func(0, 6, true);
        if(player_id.runeL){
        	var extra_rng = random_func(1, 6, true);
        	if(extra_rng > dicenum){
        		dicenum = extra_rng;
        	}
        }
        if(player_id.phone_cheats[player_id.CHEAT_Dice] > 0){
            dicenum = player_id.phone_cheats[player_id.CHEAT_Dice]-1;
            player_id.diceluck = 0;
        }else{
            if(player_id.previousdice == dicenum){
                player_id.diceluck += 1;
            }else{
                player_id.diceluck = 0;
            }num2 = player_id.diceluck;
        }
        if(player_id.phone_cheats[player_id.CHEAT_Dice2] > 0){
            if(player_id.phone_cheats[player_id.CHEAT_Dice2] == 1){ //guarantee normal dice
                player_id.diceluck = 0;
            }else if(player_id.phone_cheats[player_id.CHEAT_Dice2] == 2){ //guarantee yellow dice
                player_id.diceluck = 1;
            }else if(player_id.phone_cheats[player_id.CHEAT_Dice2] >= 3){ //guarantee red, burning dice
                player_id.diceluck = 2;
            }
            num2 = player_id.diceluck;
        }
        if(num2 == 2 && player_id.phone_cheats[player_id.CHEAT_Dice2] != 3 && player_id.finalsmashtimer <= 0){
            print("You're going to jail!");
            with(player_id){
            	set_attack(AT_USPECIAL);window = 20;vsp = -6;set_attack_value(AT_USPECIAL, AG_NUM_WINDOWS, 24);
		    	hurtboxID.sprite_index = sprite_get("uspecial_hurt");
            }
        }
        image_index = dicenum;originalnum = dicenum;
        if(dicenum == 0){
            kb_value = 0;kb_scale = 0;
            hitstun_factor = -1;damage = 1;kb_angle = 361;sound_effect = asset_get("sfx_blow_weak1");
            var selfdmg = create_hitbox(AT_NSPECIAL, 3, player_id.x, player_id.y-35);create_hitbox(AT_NSPECIAL, 4, player_id.x, player_id.y-35);
            if(instance_exists(selfdmg)){
            	with(selfdmg)damage += 5*player_id.diceluck;
            }
        }else if(dicenum == 1){
            kb_value = 3;kb_scale = 0.2;
            hitstun_factor = 0.5;damage = 3;kb_angle = 361;sound_effect = asset_get("sfx_blow_weak1");
        }else if(dicenum == 2){
            kb_value = 5;kb_scale = 0.4;
            hitstun_factor = 0.9;damage = 6;kb_angle = 361;sound_effect = asset_get("sfx_blow_medium1");
        }else if(dicenum == 3){
            kb_value = 10;kb_scale = 0.6;
            hitstun_factor = 1;damage = 7;kb_angle = 90;extra_hitpause = 5;hit_effect = 304;
        }else if(dicenum == 4){
            kb_value = 8;kb_scale = 0.85;
            hitstun_factor = 1;damage = 10;kb_angle = 361;sound_effect = asset_get("sfx_blow_heavy2");hit_effect = 304;
        }else if(dicenum == 5){
            kb_value = 9;kb_scale = 0.8;
            hitstun_factor = 1;damage = 15;kb_angle = 270;
            hitpause = 15;hitpause_growth = 2;extra_hitpause = 5;
            sound_effect = player_id.sfx_rest;hit_effect = 304;
        }
        if(dicenum >= 3){
            dicearmororig = round(dicenum*1.5);
        }else if(dicenum >= 1){
            dicearmororig = 2;
        }dicearmor = dicearmororig;
        
        if(player_id.diceluck == 1){ //same number for the 2nd time
            sprite_index = player_id.dice_sprite2;dicearmor2 = round(dicearmor/4);
            kb_value *= 1.05;kb_scale *= 1.1;damage += round(damage*0.5);
        }else if(player_id.diceluck == 2){ //same number for the 3rd time
            sprite_index = player_id.dice_sprite3;dicearmor2 = round(dicearmor/2);
            kb_value *= 1.15;kb_scale *= 1.25;damage += round(damage*1);
            player_id.diceluck = 0;
        }
        
        if(player_id.runeI){
        	damage *= 1.5;kb_scale *= 1.2;dicearmor = 99999;dicearmor2 = 99999;
        }
        originaldamage = damage;originalkb_value = kb_value;originalkb_scale = kb_scale;
        player_id.previousdice = dicenum;
    }else if(hbox_num == 2){ //hit collision
        playerurl = player_id.url;
        if("thedice" not in self)thedice = noone;
		UnReflectable = true;AriaCantAbsorb = true;Pocketable = false;Untargetable = true;
	}else if(hbox_num == 3){
    	can_hit_self = true;Pocketable = false;
	}
}

if(attack == AT_FSPECIAL){
	if(hbox_num <= 2){
		MattCanGrab = true;
        MorshuCanGrab = true;
        CalCanSnack = 2;
        AriaCantAbsorb = true;
        Bounceable = true;
        Pocketable = true;Pocket_hsp = 7;Pocket_vsp = -7;Pocketed = false;
	    Pocket_hud = sprite_get("pocket_icons");Pocket_hud_imageindex = 1;
        
        dice_has_hit = false;
        
        playerurl = player_id.url;
        orig_player = player;
        current_player = player;
        knockback_power = 0;
        knockback_angle = 0;
        hitpausehit = 0;
        timer = 0;
        lasthitbox = noone;
        lasthitbox_player_id = noone;
        lasthitbox_group = -1;
        lasthitbox_attack = -1;
        hitlockout = 4;
        hitlockout2 = 0;
        hitplayer = false;
        hitplayertimer = 0;
        dicearmor = 0;dicearmor2 = 0;
		statboost = 0;
		hittimer = -1;
		if(hbox_num == 2){
			statboost = 0.3;
			dicearmor = 4;dicearmor2 = 2;
			UnReflectable = true;
		}
			
		token_num = random_func(0, 8, true);
        if(player_id.phone_cheats[player_id.CHEAT_Fspec] > 0){
            token_num = player_id.phone_cheats[player_id.CHEAT_Fspec]-1;
        }
        image_index = token_num;
        originalnum = token_num;
        
        if(token_num == 0){ //top hat
        	hsp = 2*spr_dir;vsp = -7;
        }else if(token_num == 1){ //dog
        	hsp = 4*spr_dir;vsp = -4;
        }else if(token_num == 2){ //cat
        	hsp = 3*spr_dir;vsp = -6;
        }else if(token_num == 3){ //car
			hsp = 1*spr_dir;vsp = -4;
			damage = 7+(statboost*10);dicearmor += 2;dicearmor2 += 2;
        }else if(token_num == 4){ //plane
        	hsp = 0*spr_dir;vsp = -2;grav = 0;
        	damage = 8+(statboost*10);dicearmor += 3;dicearmor2 += 3;
        }else if(token_num == 5){ //duck
        	hsp = 3*spr_dir;vsp = -4;grav = 0;num2 = 1;
        }else if(token_num == 6){ //iron
        	hsp = 3*spr_dir;vsp = -4;
        }else if(token_num == 7){ //shoe
        	damage = 2+(statboost*10);hsp = 1*spr_dir;vsp = -6;grav = 0.3;
        }
        Pocket_hud_imageindex = token_num+1;
        originaldamage = damage;
	}
}

if(attack == AT_USPECIAL){
	Pocketable = false;
	
	if(hbox_num == 2){
		MattCanGrab = true;
        MorshuCanGrab = true;
        CalCanSnack = 2;
        Pocketable = true;Pocket_hsp = 7;Pocket_vsp = -7;Pocketed = false;
	    Pocket_hud = sprite_get("pocket_icons");Pocket_hud_imageindex = 13;
        thedice = instance_create(x,y-40,"obj_article_platform");
        thedice.choochoo = self;
        
        playerurl = player_id.url;
        orig_player = player;
        current_player = player;
        knockback_power = 0;
        knockback_angle = 0;
        hitpausehit = 0;
        timer = 0;
        lasthitbox = noone;
        lasthitbox_player_id = noone;
        lasthitbox_group = -1;
        lasthitbox_attack = -1;
        hitlockout = 4;
        hitlockout2 = 0;
        hitplayer = false;
        hitplayertimer = 0;
        dicearmor = 15;
		dicearmor2 = 15;
		spr_dir = 1;
	}else if(hbox_num == 3){
		UnReflectable = true;
		depth = -2;spr_dir = 1;
	}
	AriaCantAbsorb = true;
}

if(attack == AT_DSPECIAL){
	if(hbox_num == 1 || hbox_num == 2 || hbox_num == 3){
		if(hbox_num == 1){
			hp = 75;
			housemoney = 5000;
		}else if(hbox_num == 2){
			hp = 150;
			housemoney = 10000;
			image_index = 1;
		}else{
			hp = 500;
			housemoney = 30000;
			image_index = 2;
		}
		if(hbox_num <= 2){
			if(player_id.playercount > 2){
				hp *= 2;
			}
		}//print(player_id.playercount);
		income_boost = 1;
		if(player_id.runeB){
			income_boost = 2;
		}
		if("housemoney2" not in self){
	        housemoney2 = housemoney;
	    }housemoney = housemoney2;
		//mask_index = sprite_get("property_collision");
		collision_sprite = sprite_get("property_collision");
		originalhp = hp;
		originalnum = num;
		playermoneytimer = 6;
		lastplayer = noone;
		destroytimer = 0;destroyedbyplayer = false;
		was_parried2 = false;
		//MattCanGrab = true;
        //MorshuCanGrab = true;
        //CalCanSnack = 2;
        UnReflectable = true;
        AriaCantAbsorb = true;
        Bounceable = true;
		depth = -2;
        //thedice = instance_create(x,y-40,"obj_article_platform");
        //thedice.choochoo = self;thedice.property = true;
        moneytimer = 0;toggleplatform = false;
        playerdead = false;
        playerurl = player_id.url;
        orig_player = player;
        current_player = player;
        knockback_power = 0;
        knockback_angle = 0;
        hitpausehit = 0;
        timer = 0;
        lasthitbox = noone;lasthitbox_player_id = noone;lasthitbox_group = -1;lasthitbox_attack = -1;
        hitlockout = 4;
        hitlockout2 = 0;
        hitplayer = false;
        hitplayertimer = 0;
        destroying = false;
        
        destroysoon = false;
        if(player_id.finalsmashtimer > 0){
        	destroysoon = true;
        	housemoney = 0;
        }
	}else if(hbox_num >= 4){
		can_hit_self = true;
	}
	Pocketable = false;Freezable = false;
}

//money
if(attack == AT_JAB){
	money_timer = 0;
	if(hbox_num == 10){
		if(hitbox_timer >= 16)hit_priority = 0;
	}else if(hbox_num == 11){
	    collision_sprite = sprite_get("moneypile");
	}CalCanSnack = 1;
	UnReflectable = hit_priority <= 0;
	if(hbox_num == 10 || hbox_num == 11){
		if("value" not in self)value = 600;
	}
	Pocketable = false;
	Untargetable = true;
}

if(attack == AT_DATTACK){
	if(hbox_num == 4){
		MattCanGrab = true;
        MorshuCanGrab = true;
        CalCanSnack = 2;
        Pocketable = true;Pocket_hsp = 7;Pocket_vsp = -7;
	    Pocket_hud = sprite_get("pocket_icons");Pocket_hud_imageindex = 12;
        thedice = instance_create(x,y-10,"obj_article_platform");
        thedice.choochoo = self;
        thedice.mask_index = sprite_get("choochoo_collision");
        ilovemychoochoo = true;
        
        playerurl = player_id.url;
        orig_player = player;
        current_player = player;
        knockback_power = 0;
        knockback_angle = 0;
        hitpausehit = 0;
        timer = 0;
        lasthitbox = noone;
        lasthitbox_player_id = noone;
        lasthitbox_group = -1;
        lasthitbox_attack = -1;
        hitlockout = 4;
        hitlockout2 = 0;
        hitplayer = false;
        hitplayertimer = 0;
        dicearmor = 2;
		dicearmor2 = 2;
	}else{
		Pocketable = false;
	}
	Pocketed = false;
	if(hbox_num >= 5){
		UnReflectable = true;
	}
	if(hbox_num == 10){
		armor = 4;
		knockback_power = 0;
        knockback_angle = 0;
        hitpausehit = 0;
		lasthitbox = noone;
		lasthitbox_player_id = noone;
        lasthitbox_group = -1;
        lasthitbox_attack = -1;
        hitlockout = 4;
        hitlockout2 = 0;
	}
	AriaCantAbsorb = true;
}

if(attack == AT_BAIR){
	if(hbox_num >= 3){
		MattCanGrab = true;
        MorshuCanGrab = true;
        CalCanSnack = 2;
		angle = darctan2(-vsp * spr_dir, hsp * spr_dir);proj_angle = angle;
		Pocketable = true;Pocket_hsp = 7;Pocket_vsp = -7;Pocketed = false;
	    Pocket_hud = sprite_get("pocket_icons");Pocket_hud_imageindex = hbox_num+6;
	}else{
		Pocketable = false;
	}
}

if(attack == AT_DSTRONG){
	if(hbox_num == 6){
		UnReflectable = true;
	}
	Pocketable = false;
}

if(player_id.runeH){
	var rng = random_func(0, 100, true);//print(rng);
	if(player_id.runeL){
    	var extra_rng = random_func(1, 100, true);//print(extra_rng);
    	if(extra_rng < rng){
    		rng = extra_rng;
    	}
    	extra_rng = random_func(2, 100, true);//print(extra_rng);
    	if(extra_rng < rng){
    		rng = extra_rng;
    	}
    }
	if(rng < 8){
		crit = true;
	    damage *= 2;kb_scale *= 1.3;
	    critboost_dmg = 2;critboost_kb_scale = 1.3;
	}else{
		crit = false;
	}
}

if(player_id.runeJ){
	kb_angle = random_func(0, 360, true);
	hit_flipper = random_func(1, 11, true);
}

draw_xscale = spr_dir;