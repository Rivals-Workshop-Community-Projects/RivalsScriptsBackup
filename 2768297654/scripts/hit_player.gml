// I'll recode this

//16 hit combo jank
if(my_hitboxID.dumb_di_mult > 0){
	if(my_hitboxID.attack != AT_DSPECIAL){
	if(combo_cooldown == 0){
stop_instrum = true;

if(combo_num == 0){
	if(was_parried == false && hit_player_obj.clone == false){
		hit_player_obj.other_combo_marked = true;
	}
}

if(duster_muted = false){
if(stop_instrum){
	sound_stop(sound_get("dusterbass_1-1"));
	sound_stop(sound_get("dusterbass_1-2"));
	sound_stop(sound_get("dusterbass_1-3"));
	sound_stop(sound_get("dusterbass_1-4"));
	sound_stop(sound_get("dusterbass_1-5"));
	sound_stop(sound_get("dusterbass_1-6"));
	sound_stop(sound_get("dusterbass_2-1"));
	sound_stop(sound_get("dusterbass_2-2"));
	sound_stop(sound_get("dusterbass_2-3"));
	sound_stop(sound_get("dusterbass_2-4"));
	sound_stop(sound_get("dusterbass_2-5"));
	sound_stop(sound_get("dusterbass_2-6"));
	sound_stop(sound_get("dusterbass_3-1"));
	sound_stop(sound_get("dusterbass_3-2"));
	sound_stop(sound_get("dusterbass_3-3"));
	sound_stop(sound_get("dusterbass_3-4"));
	sound_stop(sound_get("dusterbass_3-5"));
	sound_stop(sound_get("dusterbass_3-6"));
    stop_instrum = false;
}
}

if(hit_player_obj.other_combo_marked = true && hit_player_obj.clone == false){
if(combo_num < 16){
    combo_num += 1;
    hud_combo_num += 1;
    hit_player_obj.other_combo_num += 1;
    combo_timer = 420;
}

if(combo_num == 1){
    instrum_num = 1;
    if(!beta_voice_mode){
    snd_rng = random_func(0, 6, true);
    if (snd_rng == 0) {
        instrum_num = 1;
    }    if (snd_rng == 1) {
        instrum_num = 2;
    }    if (snd_rng == 2) {
        instrum_num = 3;
    }    if (snd_rng == 3) {
        instrum_num = 4;
    }    if (snd_rng == 4) {
        instrum_num = 5;
    }    if (snd_rng == 5) {
        instrum_num = 6;
    }
    }
}

if(duster_muted == false){
if(combo_num == 1){
    sound_play(sound_get("dusterbass_1-" + string(instrum_num)), false, 0, 2);
}if(combo_num == 2){
    sound_play(sound_get("dusterbass_2-" + string(instrum_num)), false, 0, 2);
}if(combo_num == 3){
    sound_play(sound_get("dusterbass_3-" + string(instrum_num)), false, 0, 2);
}if(combo_num == 4){
    sound_play(sound_get("dusterbass_1-" + string(instrum_num)), false, 0, 2);
}if(combo_num == 5){
    sound_play(sound_get("dusterbass_2-" + string(instrum_num)), false, 0, 2);
}if(combo_num == 6){
    sound_play(sound_get("dusterbass_3-" + string(instrum_num)), false, 0, 2);
}if(combo_num == 7){
    sound_play(sound_get("dusterbass_1-" + string(instrum_num)), false, 0, 2);
}if(combo_num == 8){
    sound_play(sound_get("dusterbass_2-" + string(instrum_num)), false, 0, 2);
}if(combo_num == 9){
    sound_play(sound_get("dusterbass_3-" + string(instrum_num)), false, 0, 2);
}if(combo_num == 10){
    sound_play(sound_get("dusterbass_1-" + string(instrum_num)), false, 0, 2);
}if(combo_num == 11){
    sound_play(sound_get("dusterbass_2-" + string(instrum_num)), false, 0, 2);
}if(combo_num == 12){
    sound_play(sound_get("dusterbass_3-" + string(instrum_num)), false, 0, 2);
}if(combo_num == 13){
    sound_play(sound_get("dusterbass_1-" + string(instrum_num)), false, 0, 2);
}if(combo_num == 14){
    sound_play(sound_get("dusterbass_2-" + string(instrum_num)), false, 0, 2);
}if(combo_num == 15){
    sound_play(sound_get("dusterbass_3-" + string(instrum_num)), false, 0, 2);
}if(combo_num == 16){
    sound_play(sound_get("dusterbass_1-" + string(instrum_num)), false, 0, 2.5);
}
}

if(combo_num == 16){
	hitstop = 25;
	other.hitstop = 25;
	spawn_hit_fx(other.x, other.y -25, 306);
	vfx = spawn_hit_fx(other.x, other.y -25, combo_max_hit_fx);
	vfx.spr_dir = 1;
	vfx.depth = -10;
	vfx2 = spawn_hit_fx(other.x, other.y -115, sixteen_combo_vfx);
	vfx2.spr_dir = 1;
	vfx2.depth = -10;
	sound_play(sound_get("sfx_smash"), false, noone, 1);
	if(get_player_color(player) != 20){
	 sound_play(sound_get("sfx_16hit"), false, noone, 2.5);
	}
	 if(get_player_color(player) = 20){
	 sound_play(sound_get("sfx_NOW"), false, noone, 2.7);	
	 sound_play(asset_get("sfx_holy_lightning"));
	 sound_play(asset_get("sfx_absa_boltcloud"));
	 sound_play(asset_get("sfx_absa_uair"));
	 vfx3 = spawn_hit_fx(other.x, other.y -25, 157);
	 vfx3.depth = -10;
	 }
    combo_num = 0;
    hit_player_obj.other_combo_num = 0;
    hit_player_obj.other_combo_marked = false;
    combo_cooldown = 600;
    hud_combo_cooldown = 0;
    hud_cooldown_mult = 2;
    combo_timer = 0;
	}
}

}
}
}

if(my_hitboxID.attack == AT_DSTRONG){
	sound_play(sound_get("sfx_wallstaple"), false, noone, 1.5);
}
if(my_hitboxID.attack == AT_FSTRONG){
	sound_play(sound_get("sfx_statdown"));
}

if(my_hitboxID.attack == AT_FSPECIAL){
	if(my_hitboxID.hbox_num == 1){
		destroy_hitboxes();
		window = 4;
		window_timer = 0;
	}if(my_hitboxID.hbox_num == 2){
		move_cooldown[AT_FSPECIAL] = 90;
	}
}

if(my_hitboxID.attack = AT_FTHROW || my_hitboxID.attack = AT_DTHROW || my_hitboxID.attack = AT_UTHROW || my_hitboxID.attack = AT_DSPECIAL_2){
	if (my_hitboxID.hbox_num == 1){
		instance_create(other.x, other.y-38, ("obj_article1"));
		destroyed = true;
	}
    }