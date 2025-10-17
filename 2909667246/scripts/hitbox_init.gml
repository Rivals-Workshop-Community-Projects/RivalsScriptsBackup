//hitbox_init

VillagerHitbox = true;
originalplayer = player_id;
num = 0;
timer = 0;
if("KoB_grabbed" not in self)KoB_grabbed = false;
KoB_was_grabbed = false;
KoB_destroy = false;

if (player_id.runeE) {
	VillagerTreeCut = 1;
}

if(attack == AT_NSPECIAL){
    if(hbox_num == 1){
    	Pocketable = false;UnReflectable = true;AriaCantAbsorb = true;
    }
}else if(attack == AT_FSPECIAL){
	if(hbox_num == 1){
		Is_Lloid_Rocket = true;
	    Pocketable = true;Pocket_hsp = hsp;Pocket_vsp = vsp;Pocketed = false;PocketBuff = 0;
	    Pocket_hud = sprite_get("nspecial_pocket_hud_icons");Pocket_hud_imageindex = 3;
	    if((player_id.alt >= 15 && player_id.alt <= 21 || player_id.kewtmode >= 1)
	    && (sprite_index == sprite_get("fspecial_lloid_mjau") || sprite_index == sprite_get("fspecial_lloid_mjau_alts"))){
        	Pocket_hud = sprite_get("nspecial_pocket_hud_icons_alt");
        	if(player_id.alt != 0)Pocket_hud_imageindex = 18;
        }
        if(player_id.alt == 30){
        	Pocket_hud = sprite_get("nspecial_pocket_hud_icons_alt");Pocket_hud_imageindex = 17;
        }
	    MattCanGrab = true;
	    MorshuCanGrab = true;
	    CalCanSnack = 1;SellValue = 500;
	    SpikeCanEat = true;//SpikeHealPercent = 0;
	    
	    rider = noone;old_rider = noone;
	    orig_player = player;
	    current_player = player;
	    prev_player = player;
	    hp = 12;
	    hashitplayer = false;
	    hitpausehit = 0;
    	timer = 0;
    	lasthitbox = noone;
	    hitlockout = 4;
        hitlockout2 = 0;
        hitplayer = false;
    	hitplayertimer = 0;
    	lastplayerhit = -1;
    	thehit_player = -1;
    	anim = 0;
    	jumpoff_timer = 0;
    	sound = false;
    	startsound = noone;
    	loopsound = noone;
    	sfx_start = sound_get("fspecial_start");
    	sfx_loop = sound_get("fspecial_loop");
    	sfx_explode = sound_get("fspecial_explode");
    	if(player_id.alt == 30){
    		sfx_loop = sound_get("craig_car");
    	}
    	speedmod = 1;
    	if(player_id.runeL){
    		speedmod = 2;
    	}
	}else if(hbox_num == 2){
		playerurl = player_id.url;
		Pocketable = false;
		UnReflectable = true;AriaCantAbsorb = true;
		if("theotherhitbox" not in self){
        	theotherhitbox = noone;
            with(asset_get("pHitBox")){
    			if(place_meeting(x,y,other)){
    		    	if(attack == AT_FSPECIAL && hbox_num == 1 && hitbox_timer <= 2 && player_id == other.player_id && other != self){
    		        	other.theotherhitbox = self;theotherhitbox = other;
    		    	}
    			}
    		}
		}
	}else{
		Pocketable = false;FireHitbox = true;Toadie_Ability = 3;
	}
	Blockable = true;
}else if (attack == AT_USPECIAL){
	if(hbox_num == 1){ //balloon
		Villager_Balloon = true;
		
		runeD = player_id.runeD;
		sfx_explode = sound_get("fspecial_explode");
		
		Pocketable = true;Pocket_hsp = 1;Pocket_vsp = 2;Pocketed = false;
        Pocket_hud = sprite_get("nspecial_pocket_hud_icons");Pocket_hud_imageindex = 7;
        if((player_id.alt >= 15 && player_id.alt <= 21 || player_id.kewtmode >= 1 || player_id.alt == 22 || player_id.alt == 25)
	    && (sprite_index == sprite_get("uspecial_balloon_sol") || sprite_index == sprite_get("uspecial_balloon_sol_alts"))){
        	Pocket_hud = sprite_get("nspecial_pocket_hud_icons_alt");
        	if(player_id.alt == 0){Pocket_hud_imageindex = 16;}
        }
		MattCanGrab = true;MorshuCanGrab = true;
	    CalCanSnack = 1;AriaCantAbsorb = true;SpikeCanEat = true;SellValue = 500;
		
		hp = 1;hitpausehit = 0;timer = 0;
    	lasthitbox = noone;
		hitlockout = 4;hitlockout2 = 0;
        hitplayer = false;hitplayertimer = 0;
    	lastplayerhit = -1;orig_player = player;
		num2 = 0;attached = true;
        pop_sfx = sound_get("uspecial_balloon_pop");
	}else if(hbox_num == 2){ //balloon hit collision
		Pocketable = false;UnReflectable = true;AriaCantAbsorb = true;
	}
}else if(attack == AT_DSPECIAL){
	UnReflectable = true;AriaCantAbsorb = true;
	if(hbox_num == 1){ //seed
		timer = 0;airtime = 0;watr = 0;hit_timer = 0;SellValue = 50;
		Is_Villager_Sapling = true;
	}else if(hbox_num == 2){ //water
        Pocketable = true;Pocket_hsp = 8;Pocket_vsp = -1;
        Pocket_hud = sprite_get("nspecial_pocket_hud_icons");Pocket_hud_imageindex = 8;
        CalCanSnack = 1;WaterHitbox = true;Toadie_Ability = 6;SellValue = 50;
	}else if(hbox_num == 3){ //tree
		hp = 60;
		image_index = 1;
        knockback_power = 0;knockback_angle = 0;
        hitpausehit = 0;timer = 0;timer2 = 0;cuts = 0;
        lasthitbox = noone;hitlockout = 4;hitlockout2 = 0;
        hitplayer = false;hitplayertimer = 0;
        hitcollision = create_hitbox(AT_DSPECIAL, 4, round(x), round(y-45));hitcollision.theplant = self;
        chopsfx = player_id.tree_chopsfx;fallsfx = player_id.tree_fallsfx;
	}else if(hbox_num == 4){ //tree hit collision
        playerurl = player_id.url;
    	UnReflectable = true;AriaCantAbsorb = true;
	}else if(hbox_num == 5 || hbox_num == 6){ //tree growing hitboxes
		Pocketable = false;UnReflectable = true;AriaCantAbsorb = true;
	}else if(hbox_num == 7){ //tree falling
    	//image_index = 22;
    	Villager_Tree = true;
    	Pocketable = true;PocketableByOwner = 0;
        Pocketed = false;waspocketed = false;waspocketed2 = false;
        Pocket_hud = sprite_get("nspecial_pocket_hud_icons");Pocket_hud_imageindex = 9;
        if(player_id.alt == 31){
        	Pocket_hud = sprite_get("nspecial_pocket_hud_icons_alt");Pocket_hud_imageindex = 15;
        }else if(player_id.alt != 0){
        	Pocket_hud = sprite_get("nspecial_pocket_hud_icons_alt");
        }
        despawning = false;
        prev_player = player;
        MattCanGrab = true;
        //MorshuCanGrab = true;
        CalCanSnack = 2;
        UnReflectable = false;
        AriaCantAbsorb = true;
        timer = 0;
        timer2 = 0;
        landtimer = 0;
        landsfx = player_id.tree_landsfx;
        hsp = 1.5*spr_dir;vsp = -5;prev_vsp = vsp;
        Pocket_hsp = 2;Pocket_vsp = -12;SellValue = 1000;
    }else if(hbox_num == 8){ //tree stump
    	image_index = 23;SellValue = 100;
    }
}else if (attack == AT_FSTRONG){
    if(hbox_num == 1){
    	Villager_Bowling_Ball = true;
        Pocketable = true;Pocket_hsp = 6;Pocket_vsp = -6;
        Pocketed = false;waspocketed = false;waspocketed2 = false;
        Pocket_hud = sprite_get("nspecial_pocket_hud_icons");Pocket_hud_imageindex = 2;
        despawning = false;
        prev_player = player;
        MattCanGrab = true;MorshuCanGrab = true;
        CalCanSnack = 2;AriaCantAbsorb = true;SellValue = 500;
        SpikeCanEat = true;//SpikeHealPercent = 0;
        landtimer = 0;
        landsfx = sound_get("fstrong_land");
        if(sprite_index == sprite_get("bowlingball_planet")){
        	Pocket_hud = sprite_get("nspecial_pocket_hud_icons_alt");
        }
        if(player_id.alt == 25){
        	Pocket_hud = sprite_get("nspecial_pocket_hud_icons_alt");Pocket_hud_imageindex = 10;
        }else if(player_id.alt == 30){
        	Pocket_hud = sprite_get("nspecial_pocket_hud_icons_alt");Pocket_hud_imageindex = 11;
        }else if(player_id.alt == 31){
        	Pocket_hud = sprite_get("nspecial_pocket_hud_icons_alt");Pocket_hud_imageindex = 12;
        	landsfx = sound_get("fstrong_land_anvil");
        }
        image_xscale += 0.1;image_yscale += 0.1;
    }else{
        vsp = -2;
    }
}else if (attack == AT_USTRONG){
	Pocketable = false;Pocketed = false;waspocketed = false;UnReflectable = true;
	if(hbox_num == 1 || hbox_num == 5){ //initial hit
		AriaCantAbsorb = true;CalCanSnack = 0;
		Pocket_hud = sprite_get("nspecial_pocket_hud_icons");Pocket_hud_imageindex = 1;
	}else if(hbox_num == 4){ //fireworks
		PocketBuff = 0;
		MattCanGrab = false;
        MorshuCanGrab = false;
        CalCanSnack = 0;
        Pocket_hsp = 1;Pocket_vsp = -3;
        Pocket_hud = sprite_get("nspecial_pocket_hud_icons");Pocket_hud_imageindex = 5;
        if(player_id.alt == 31){
        	Pocket_hud = sprite_get("nspecial_pocket_hud_icons_alt");
        }
        
        playercharge = 0;
        num2 = 0;used = false;
        fireworks_sfx = sound_get("ustrong");
        fireworks_sfx2 = sound_get("ustrong_charge");
        thechargesfx = noone;
        chargesfx = 80;
        FireHitbox = true;Toadie_Ability = 3;SellValue = 750;
	}else{ //fireworks explosions
		Pocketable = true;Pocket_hsp = 0;Pocket_vsp = 0;
		UnReflectable = false;AriaCantAbsorb = false;
		Pocket_hud = sprite_get("nspecial_pocket_hud_icons");Pocket_hud_imageindex = 6;
		FireHitbox = true;Toadie_Ability = 3;
	}
}else if (attack == AT_FAIR || attack == AT_BAIR){
	Villager_Slingshot = true;
    Pocketable = true;Pocket_hsp = hsp;Pocket_vsp = vsp;
    Pocket_hud = sprite_get("nspecial_pocket_hud_icons");Pocket_hud_imageindex = 1;
    if(player_id.alt >= 15 && player_id.alt <= 21 || player_id.kewtmode >= 1){
    	Pocket_hud = sprite_get("nspecial_pocket_hud_icons_alt");
    }
    if(player_id.alt == 25){
    	Pocket_hud = sprite_get("nspecial_pocket_hud_icons_alt");Pocket_hud_imageindex = 13;
    }else if(player_id.alt == 30){
    	Pocket_hud = sprite_get("nspecial_pocket_hud_icons_alt");Pocket_hud_imageindex = 14;
    }
    MattCanGrab = true;
    MorshuCanGrab = true;
    CalCanSnack = 1;
    AriaCantAbsorb = true;SellValue = 250;
    SpikeCanEat = true;//SpikeHealPercent = 0;
    if (attack == AT_FAIR){
		if(hsp > 0){
			spr_dir = 1;
		}else{
			spr_dir = -1;
		}
	}else{
		if(hsp > 0){
			spr_dir = -1;
		}else{
			spr_dir = 1;
		}
	}
}else if(attack == AT_DATTACK){
    Pocketable = true;
    Pocket_hud = sprite_get("nspecial_pocket_hud_icons");Pocket_hud_imageindex = 4;
    if(player_id.alt == 30){
    	Pocket_hud = sprite_get("nspecial_pocket_hud_icons_alt");
    }
    MattCanGrab = true;
    MorshuCanGrab = true;
    CalCanSnack = 1;
    AriaCantAbsorb = true;SellValue = 350;
    SpikeCanEat = true;//SpikeHealPercent = 0;
}

if(attack == AT_TAUNT && hbox_num == 2){collision_sprite = player_id.sprite_index;image_index = image_number;}

draw_xscale = spr_dir;