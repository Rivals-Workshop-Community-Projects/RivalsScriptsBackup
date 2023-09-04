sound_stop(sound_get("sfx_prepare"));

if(state_cat == SC_HITSTUN){
	var rng = 1 + random_func_2(abs(floor(x%200)), 5, true);
	if(rng < 4){
		sound_play(sound_get("vc_hurt" + string(rng)), false, false, voice_brawl);
	}
	
	var rng_2 = 1 + random_func_2(abs(floor(x%200)), 6, true);
	if(rng_2 == 1 || rng_2 == 2){
		sound_play(sound_get("vc_hurt" + string(rng_2)), false, false, voice_ult);
	}
	if(rng_2 == 3 || rng_2 == 4){
		sound_play(sound_get("vc_ult_bighurt" + string(rng_2 - 2)), false, false, voice_ult);
	}
}

if(enemy_hitboxID.type == 1 && (((state == PS_ATTACK_AIR || state == PS_ATTACK_GROUND) && attack == AT_DSPECIAL) || countering) && enemy_hitboxID.effect != 14){
    // hitpause = false;
    ike_grabbed_id = hit_player_obj;
    hitstop = enemy_hitboxID.hitpause;
    hitstop_full = enemy_hitboxID.hitpause;
    // super_armor = false;
    hit_player_obj.hitstop = hitstop + 25;
    hit_player_obj.hitstop_full = hitstop + 25;
    invincible = true;
    invince_time = 10;
    orig_knock = 0;
    if(state != PS_ATTACK_AIR && state != PS_ATTACK_GROUND && enemy_hitboxID.effect != 14){
        state = PS_ATTACK_GROUND - free;
    }
    if(hit_player_obj.x > x){
        spr_dir = 1;
    }
    if(hit_player_obj.x < x){
        spr_dir = -1;
    }
    with(hit_player_obj){
        set_state(PS_PRATFALL);
        hit_player_obj = other;
        old_vsp = 0;
        old_hsp = 0;
        vsp = 0;
        hsp = 0;
        orig_knock = 0;
        hitstun = 10;
        hitstun_full = 10;
    }
    if(enemy_hitboxID.effect == 14){
        window = 3;
        window_timer = 0;
        super_armor = false;
    }
    sound_play(asset_get("sfx_abyss_explosion_start"), false, false, 200);
    set_attack(AT_DSPECIAL_2);
	set_hitbox_value(AT_DSPECIAL_2, 1, HG_WIDTH, 190);
	set_hitbox_value(AT_DSPECIAL_2, 1, HG_HEIGHT, 150);
	
	countered = true;
} else if(enemy_hitboxID.type == 2 && (((state == PS_ATTACK_AIR || state == PS_ATTACK_GROUND) && attack == AT_DSPECIAL) || countering) && enemy_hitboxID.effect != 14 && (hit_player_obj != self || (hit_player_obj == self && enemy_hitboxID.attack != AT_NSPECIAL))){
    if(hit_player_obj.x > x){
        spr_dir = 1;
    }
    if(hit_player_obj.x < x){
        spr_dir = -1;
    }
	if(!enemy_hitboxID.transcendent){
   		enemy_hitboxID.destroyed = true;
	}
	invincible = true;
	invince_time = 20;
	window = 4;
	window_timer = 0;
	sound_play(sound_get("counter_hit"));
	spawn_hit_fx(x + 10 * spr_dir, y - 50, 305);
}

if(eruption_stored && enemy_hitboxID.type == 1 && state_cat == SC_HITSTUN){
	var hfx = spawn_hit_fx(x, y - char_height/2, large_quick);
	hfx.depth = depth - 1;
	sound_play(asset_get("sfx_forsburn_combust"), false, false, 1.5);
	if(rofSuperTimer > 0 && !has_rune("L")){
		take_damage(player, hit_player_obj.player, 2);
	} else if(!has_rune("L")){
		take_damage(player, hit_player_obj.player, 4);
		eruption_stored = false;
	}
}

move_cooldown[AT_USPECIAL] = 0;