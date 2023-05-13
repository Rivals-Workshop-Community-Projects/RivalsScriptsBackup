//

if (my_hitboxID.attack == AT_FSPECIAL){
    if(my_hitboxID.hbox_num == 1){
        my_hitboxID.hashitplayer = true;
        my_hitboxID.thehit_player = hit_player_obj.player;
        if(my_hitboxID.rider == self){
        	Lloid_Rocket_Ride = false;
        }
	}
}

if (my_hitboxID.attack == AT_USPECIAL){
    if(my_hitboxID.hbox_num == 1){
        my_hitboxID.hp = 0;
	}
}
if (my_hitboxID.attack == AT_DSPECIAL){
    if(my_hitboxID.hbox_num == 5 || my_hitboxID.hbox_num == 6){
		my_hitboxID.tree.hitstop = hit_player_obj.hitstop_full;my_hitboxID.tree.in_hitpause = true;
	}else if(my_hitboxID.hbox_num == 7){
		my_hitboxID.hitstop = hit_player_obj.hitstop_full;my_hitboxID.in_hitpause = true;
		if(my_hitboxID.waspocketed){
			my_hitboxID.PocketableByOwner = my_hitboxID.player;
		}
	}else if(my_hitboxID.hbox_num == 2){ //wadr
		if(!hit_player_obj.free){
			hit_player_obj.vsp = 0;
		}
		if(runeH){
			if(hit_player_obj.free && hit_player_obj.state != PS_ATTACK_AIR){
				hit_player_obj.state = PS_PRATFALL;hit_player_obj.state_timer = 0;
			}
		}
		if ("burned" in hit_player_obj && hit_player_obj.burned) {
			hit_player_obj.burned = false;hit_player_obj.burn_timer = 150;
		}
		if ("sol_burn" in hit_player_obj && hit_player_obj.sol_burn) {
			hit_player_obj.sol_burn_timer = 1;
		}
	}else if(my_hitboxID.hbox_num == 10){ //trip sapling
		with(hit_player_obj){
			was_parried = true;y -= 2;free = true;
			vsp = -7;
			set_state(PS_PRATFALL);
			sound_play(asset_get("sfx_swipe_medium1"));sound_play(asset_get("sfx_blow_medium3"));
		}
	}
}
if (my_hitboxID.attack == AT_FTILT && my_hitboxID.hbox_num == 2){
    if(!hit_player_obj.free){
		hit_player_obj.vsp = 0;
	}
	if(runeH){
		if(hit_player_obj.free && hit_player_obj.state != PS_ATTACK_AIR){
			hit_player_obj.state = PS_PRATFALL;hit_player_obj.state_timer = 0;
		}
	}
}

if(my_hitboxID.attack == AT_FSTRONG && attack == AT_FSTRONG || my_hitboxID.attack == AT_USTRONG && attack == AT_USTRONG){
    has_hit = true;
}

//hitboxes that cause custom bury status effect
if(my_hitboxID.attack == AT_DSTRONG && (my_hitboxID.hbox_num == 1 || my_hitboxID.hbox_num == 4) || my_hitboxID.attack == AT_DTILT && my_hitboxID.hbox_num == 4
|| my_hitboxID.attack == AT_GRAB && my_hitboxID.hbox_num == 6 && runeC){
	if(!hit_player_obj.villager_bury && hit_player_obj.villager_bury_cooldown <= 0
	&& (!hit_player_obj.free || my_hitboxID.attack == AT_GRAB)
	&& (hit_player_obj.state == PS_HITSTUN || hit_player_obj.state == PS_HITSTUN_LAND)){
		hit_player_obj.free = false;hit_player_obj.orig_knock = 0;
        hit_player_obj.should_make_shockwave = false;
		
		hit_player_obj.villager_bury = true;
	    hit_player_obj.villager_bury_id = id;
	    var playerdmg = get_player_damage(hit_player_obj.player)/2;
		hit_player_obj.villager_bury_timer = round(30+playerdmg)+strong_charge;
		hit_player_obj.villager_bury_hitpause = true;
		//hit_player_obj.y += 10;
	}
}

if(my_hitboxID.attack == AT_FAIR || my_hitboxID.attack == AT_BAIR){
    if(state == PS_ATTACK_AIR && (attack == AT_FAIR || attack == AT_BAIR)){
    	if(my_hitboxID.hitbox_timer < 3){
    		hitpause = true;hitstop = hit_player_obj.hitstop/2;hitstop_full = hit_player_obj.hitstop_full/2;old_vsp = vsp;old_hsp = hsp;
    	}
        if(my_hitboxID.hitbox_timer <= 5){has_hit = true;}
    }
    my_hitboxID.hsp = -0.5*my_hitboxID.spr_dir;my_hitboxID.vsp = -4;
    my_hitboxID.hit_priority = 0;my_hitboxID.hitbox_timer = 0;
}

if(my_hitboxID.attack == AT_DTILT){
    //sound_play(asset_get("sfx_blow_heavy1"));
}

if(my_hitboxID.attack == AT_DATTACK){
    if(attack == AT_DATTACK){
        has_hit = true;
    }
    sound_play(sound_get("dattack_bounce"));
}

if(my_hitboxID.attack == AT_GRAB){
    if(grabbedtarget == noone && my_hitboxID.hbox_num == 1 && (hit_player_obj.state == PS_HITSTUN || hit_player_obj.state == PS_HITSTUN_LAND)){
    	window = 4;window_timer = 0;if(free && vsp > 0 && !position_meeting(x,y+20,asset_get("par_block")) && !position_meeting(x,y+20,asset_get("par_jumpthrough"))
		&& !position_meeting(x,y+80,asset_get("par_block")) && !position_meeting(x,y+80,asset_get("par_jumpthrough")))old_vsp = -5;
        hit_player_obj.free = true;hit_player_obj.orig_knock = 0;
        grabbedtarget = hit_player_obj;soft_armor = 9999;
        hit_player_obj.y = y;hit_player_obj.x = x+(75*spr_dir);
        hit_player_obj.should_make_shockwave = false;grabbedobject = false;
        var playerdmg = get_player_damage(hit_player_obj.player)/2;
        grabtimer = 30+playerdmg;
        sound_play(sound_get("grab"));
        destroy_hitboxes();
        if(hit_player_obj.villager_bury){
        	hit_player_obj.villager_bury_cooldown = 120;
    	}
    }
}

//sharp hit fx
if(my_hitboxID.attack == AT_FSPECIAL || my_hitboxID.attack == AT_DSPECIAL && my_hitboxID.hbox_num >= 5
|| my_hitboxID.attack == AT_FSTRONG || my_hitboxID.attack == AT_USTRONG || my_hitboxID.attack == AT_DSTRONG){
	
	if(my_hitboxID.attack == AT_DSPECIAL || my_hitboxID.attack == AT_FSTRONG || my_hitboxID.attack == AT_USTRONG && my_hitboxID.hbox_num == 3 || my_hitboxID.attack == AT_DSTRONG){
		var sharphitfx = spawn_hit_fx(hit_player_obj.x, hit_player_obj.y-35,fx_sharphit_big);sharphitfx.draw_angle = random_func(0, 720, true);
		sharphitfx = spawn_hit_fx(hit_player_obj.x, hit_player_obj.y-35,fx_sharphit_big);sharphitfx.draw_angle = random_func(5, 720, true);
	}
	var sharphitfx2 = spawn_hit_fx(hit_player_obj.x, hit_player_obj.y-35,fx_sharphit);sharphitfx2.draw_angle = random_func(4, 720, true);
}
if(hit_player_obj.should_make_shockwave){
	var sharphitfx = spawn_hit_fx(hit_player_obj.x, hit_player_obj.y-35,fx_sharphit_big2);sharphitfx.draw_angle = random_func(6, 720, true);
	sharphitfx = spawn_hit_fx(hit_player_obj.x, hit_player_obj.y-35,fx_sharphit_big2);sharphitfx.draw_angle = random_func(7, 720, true);

    if(alt == 30){
    	rand = random_func(0, 4, true);
		if(rand == 0){
			PlayVoiceClip("craig inside mine", 2);
		}else if(rand == 1){
			PlayVoiceClip("craig instinct", 2.5);
		}else if(rand == 2){
			PlayVoiceClip("craig try your best to match my shot", 2.25);
		}else if(rand == 3){
			PlayVoiceClip("craig_now_this_is_the_way_a_pro_putts", 2.25);
		}
    }
}

if(strong_charge >= 10 && my_hitboxID.type != 2 && my_hitboxID.effect != 9){
	shake_camera(round((12+(round(strong_charge/8))+round(my_hitboxID.damage*2.5))*.8), round((7+(round(strong_charge/20))+(round(my_hitboxID.damage/6)))*0.5));
}

//unused bell stuff lol
/*
if(bellspawntimer <= 0){
    bellspawntimer = 30;
    //var coin = instance_create(hit_player_obj.x,hit_player_obj.y-(hit_player_obj.char_height/2),"obj_article1");
    var randombelltype = 20-round(my_hitboxID.damage);
    if(randombelltype < 1){
        randombelltype = 1;
    }
    var randombelltype2 = random_func(0,randombelltype, true);
    if(randombelltype2 == 0){
        //coin.bell_type2 = 1;
    }
    //print_debug(string(randombelltype));
}*/

//charge final smash when projectiles hit
if("fs_charge" in self && my_hitboxID.type == 2){
    fs_charge += my_hitboxID.damage;
}

if(BossMode){
	var rng = 0;
	/*if(my_hitboxID.attack == AT_NSPECIAL){
		rng = random_func(0,2,true);
	}*/
	if(rng == 0){
		has_hit = true;has_hit_player = true;
	}
}

#define PlayVoiceClip
/// PlayVoiceClip(name,?volume)
//Plays SFX
//if(!muted){
	sound_stop(voice);
	voice = sound_play(sound_get(argument[0]/* + (alt==21?" df":"")*/),false,noone,argument_count>1?argument[1]:1);
//}