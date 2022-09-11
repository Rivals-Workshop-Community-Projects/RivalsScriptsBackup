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
thedice = noone;
landtimer = 0;
dicearmororig = 1;
dicearmor = 1;
dicearmor2 = 0;
dicetimer = 0;

if(attack == AT_NSPECIAL){
    if(hbox_num == 1){
        MattCanGrab = true;
        MorshuCanGrab = true;
        CalCanSnack = 2;
        AriaCantAbsorb = true;
        
        playerurl = player_id.url;
            orig_player = player;
            current_player = player;
            knockback_power = 0;
            knockback_angle = 0;
            hitpausehit = 0;
            timer = 0;
            lasthitbox = noone;
            hitlockout = 4;
            hitlockout2 = 0;
            hitplayer = false;
            hitplayertimer = 0;
            with(asset_get("pHitBox")){
    			if(place_meeting(x,y,other)){
    		    	if(attack == AT_NSPECIAL && player == other.player && hitbox_timer <= 2 && other != self && hbox_num == 2){
    		        	other.thedice = self;
    		    	}
    			}
            }
            
        num = random_func(0, 6, true);
        if(player_id.phone_cheats[player_id.CHEAT_Dice] > 0){
            num = player_id.phone_cheats[player_id.CHEAT_Dice]-1;
            player_id.diceluck = 0;
        }else{
            if(player_id.previousdice == num){
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
        image_index = num;
        originalnum = num;
        if(num == 0){
            kb_value = 0;kb_scale = 0;
            hitstun_factor = -1;damage = 1;kb_angle = 361;
            sound_effect = asset_get("sfx_blow_weak1");
            create_hitbox(AT_NSPECIAL, 3, player_id.x, player_id.y-35);create_hitbox(AT_NSPECIAL, 4, player_id.x, player_id.y-35);
        }else if(num == 1){
            kb_value = 3;kb_scale = 0.2;
            hitstun_factor = 0.5;damage = 3;kb_angle = 361;
            sound_effect = asset_get("sfx_blow_weak1");
        }else if(num == 2){
            kb_value = 5;kb_scale = 0.4;
            hitstun_factor = 0.9;damage = 6;kb_angle = 361;
            sound_effect = asset_get("sfx_blow_medium1");
        }else if(num == 3){
            kb_value = 10;kb_scale = 0.6;
            hitstun_factor = 1;damage = 7;kb_angle = 90;
            extra_hitpause = 5;hit_effect = 304;
        }else if(num == 4){
            kb_value = 8;kb_scale = 0.9;
            hitstun_factor = 1;damage = 10;kb_angle = 361;
            sound_effect = asset_get("sfx_blow_heavy2");hit_effect = 304;
        }else if(num == 5){
            kb_value = 10;kb_scale = 0.9;
            hitstun_factor = 1;damage = 15;kb_angle = 270;
            hitpause = 15;hitpause_growth = 2;extra_hitpause = 5;
            sound_effect = player_id.sfx_rest;hit_effect = 304;
        }
        if(num >= 3){
            dicearmororig = round(num*1.5);
        }else if(num >= 1){
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
        
        player_id.previousdice = num;
    }else if(hbox_num == 2){ //hit collision
        playerurl = player_id.url;
        thedice = noone;
            with(asset_get("pHitBox")){
    			if(place_meeting(x,y,other)){
    		    	if((attack == AT_NSPECIAL && hbox_num == 1 || attack == AT_FSPECIAL && hbox_num <= 2) && player == other.player && hitbox_timer <= 2 && other != self){
    		        	other.thedice = self;
    		    	}
    			}
    		}
    		UnReflectable = true;AriaCantAbsorb = true;
        }else if(hbox_num == 3){
            can_hit_self = true;
        }
}

if(attack == AT_FSPECIAL){
	if(hbox_num <= 2){
		MattCanGrab = true;
        MorshuCanGrab = true;
        CalCanSnack = 2;
        AriaCantAbsorb = true;
        Bounceable = true;
        
        playerurl = player_id.url;
            orig_player = player;
            current_player = player;
            knockback_power = 0;
            knockback_angle = 0;
            hitpausehit = 0;
            timer = 0;
            lasthitbox = noone;
            hitlockout = 4;
            hitlockout2 = 0;
            hitplayer = false;
            hitplayertimer = 0;
            dicearmor = 2;dicearmor2 = 2;
			statboost = 0;
			hittimer = -1;
			if(hbox_num == 2){
				statboost = 0.3;
				dicearmor = 4;dicearmor2 = 2;
				UnReflectable = true;
			}
			with(asset_get("pHitBox")){
    			if(place_meeting(x,y,other)){
    		    	if(attack == AT_NSPECIAL && player == other.player && hitbox_timer <= 2 && other != self && hbox_num == 2){
    		        	other.thedice = self;
    		    	}
    			}
            }
			
		num = random_func(0, 8, true);
        if(player_id.phone_cheats[player_id.CHEAT_Fspec] > 0){
            num = player_id.phone_cheats[player_id.CHEAT_Fspec]-1;
        }
        image_index = num;
        originalnum = num;
        
        if(num == 0){ //top hat
        	hsp = 2*spr_dir;vsp = -7;
        }else if(num == 1){ //dog
        	hsp = 4*spr_dir;vsp = -4;
        }else if(num == 2){ //cat
        	hsp = 3*spr_dir;vsp = -6;
        }else if(num == 3){ //car
			hsp = 1*spr_dir;vsp = -4;
			damage = 7+(statboost*10);dicearmor += 2;dicearmor2 += 2;
        }else if(num == 4){ //plane
        	hsp = 0*spr_dir;vsp = -2;grav = 0;
        	damage = 8+(statboost*10);dicearmor += 3;dicearmor2 += 3;
        }else if(num == 5){ //duck
        	hsp = 3*spr_dir;vsp = -4;grav = 0;num2 = 1;
        }else if(num == 6){ //iron
        	hsp = 3*spr_dir;vsp = -4;
        }else if(num == 7){ //shoe
        	damage = 2+(statboost*10);hsp = 1*spr_dir;vsp = -6;grav = 0.3;
        }
        originaldamage = damage;
	}
}

if(attack == AT_USPECIAL){
	if(hbox_num == 2){
		MattCanGrab = true;
        MorshuCanGrab = true;
        CalCanSnack = 2;
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
			hp = 50;
			housemoney = 5000;
		}else if(hbox_num == 2){
			hp = 100;
			housemoney = 10000;
			image_index = 1;
		}else{
			hp = 500;
			housemoney = 30000;
			image_index = 2;
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
		destroytimer = 0;
		was_parried2 = false;
		//MattCanGrab = true;
        //MorshuCanGrab = true;
        //CalCanSnack = 2;
        UnReflectable = true;
        AriaCantAbsorb = true;
        Bounceable = true;
		depth = -2;
        thedice = instance_create(x,y-40,"obj_article_platform");
        thedice.choochoo = self;
        moneytimer = 0;
        playerdead = false;
        playerurl = player_id.url;
            orig_player = player;
            current_player = player;
            knockback_power = 0;
            knockback_angle = 0;
            hitpausehit = 0;
            timer = 0;
            lasthitbox = noone;
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
}

if(attack == AT_JAB){
	if(hbox_num == 10){
		UnReflectable = true;
		if(hitbox_timer >= 16){
			hit_priority = 0;
		}
	}else if(hbox_num == 11){
	    UnReflectable = true;depth = -2;
	    collision_sprite = sprite_get("moneypile");
	}CalCanSnack = 1;
	
	if(hbox_num == 10 || hbox_num == 11){
		if("value" not in self){
	        value = 600;
	    }
	}
}

if(attack == AT_DATTACK){
	if(hbox_num == 4){
		MattCanGrab = true;
        MorshuCanGrab = true;
        CalCanSnack = 2;
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
            hitlockout = 4;
            hitlockout2 = 0;
            hitplayer = false;
            hitplayertimer = 0;
            dicearmor = 2;
			dicearmor2 = 2;
	}
	if(hbox_num >= 5){
		UnReflectable = true;
	}
	if(hbox_num == 10){
		armor = 4;
		knockback_power = 0;
            knockback_angle = 0;
            hitpausehit = 0;
		lasthitbox = noone;
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
	}
}

if(attack == AT_DSTRONG){
	if(hbox_num == 6){
		UnReflectable = true;
	}
}

draw_xscale = spr_dir;