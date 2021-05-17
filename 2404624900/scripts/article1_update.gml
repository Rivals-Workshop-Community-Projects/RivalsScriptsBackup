//article1_update - runs every frame the article exists
//if (replacedcount > maxarticles){
//    shoulddie = true;
//}


//Get hurt by opponents' hitbox (NOTE: does not work properly with maxarticles > 1)




//Make time progress

state_timer++;
player_id.clone_alive = true;
clone_counter = player_id.clone_counter;


if (place_meeting(x, y, asset_get("plasma_field_obj")) && !(state == 3 || state == 2)) {
	sound_play(asset_get("sfx_clairen_hit_med"));
	spawn_hit_fx(floor(x),floor(y),256);
	clone_cooldown = true;
	sound_play(sound_get("clone_damage"));
	shoulddie = true;
}

with (asset_get("pHitBox")){
	
if (damage > 0 && kb_value > 0){
	
if (other.player_id.runeL == false){

if (place_meeting(x,y,other.id) && other.player != player){
	if !(get_player_team(other.player_id.player ) == get_player_team( player_id.player )){
	if (other.clone_counter = true){
		other.clone_counter_attack = true;
	}
	else{
		other.clone_cooldown = true;
	}
		spawn_hit_fx( x+30, y, 13);
		other.clone_death_sound = true;
		other.shoulddie = true;
    }
}

}
    
if (attack == AT_FSPECIAL && (place_meeting(x,y,other.id) && other.player_id = player_id)){
	
	if (other.clone_counter = false){
		spawn_hit_fx( other.x, other.y-20, 13);
		spawn_hit_fx( player_id.x, player_id.y-20, 13);
		if ((player_id.attack == AT_FSTRONG || player_id.attack == AT_USTRONG || player_id.attack == AT_DSTRONG)
		&& (player_id.state == PS_ATTACK_GROUND || player_id.state == PS_ATTACK_AIR)){
			player_id.strong_max = true;
			player_id.max_reach = false;
		}
		player_id.x = other.x;
		sound_play(sound_get("counter_success"));
		if (other.free = true){
			player_id.y = other.y+5;
		}
		if (other.free = false){
			player_id.y = other.y;
		}
		
		other.clone_proj = true;
	}
	if (other.clone_counter = true){
		spawn_hit_fx( other.x, other.y-20, 143);
		other.clone_counter_attack = true;
		other.clone_proj = true;
	}
		
		other.shoulddie = true;
    }
    
if (attack == AT_USPECIAL && (place_meeting(x,y,other.id) && other.player_id = player_id)){
		other.clone_izuna = true;
		sound_play(sound_get("clone_blow"));
		other.shoulddie = true;
    }

}

}

if (clone_death_sound == true){
	sound_play(sound_get("clone_damage"));
}

if (player_id.runeM_hit == true){
	clone_counter_attack = true;
	player_id.runeM_hit = false;
	sound_play(asset_get("sfx_ell_strong_attack_explosion"));
	spawn_hit_fx( x, y-20, 143);
	sound_play(sound_get("clone_blow"));
	shoulddie = true;
}

if (player_id.i_died == true){
	sound_play(sound_get("clone_damage"));
		shoulddie = true;
    }

player_id.clone_proj = clone_proj;
player_id.clone_izuna = clone_izuna;

if (clone_counter_attack == true){
	sound_play(asset_get("sfx_ell_strong_attack_explosion"));
	spawn_hit_fx( x, y-20, 143);
	create_hitbox(AT_NSPECIAL, 2, x, y-20);
	player_id.runeM_hit = false;
	clone_counter_attack = false;
}

if (clone_izuna == true){
	sound_play(asset_get("sfx_ell_strong_attack_explosion"));
	spawn_hit_fx( x, y-20, 143);
	create_hitbox(AT_NSPECIAL, 3, x, y-20);
	clone_izuna = false;
	player_id.vsp = -20;
}

player_id.clone_izuna = clone_izuna;

if (clone_cooldown == true){
	player_id.move_cooldown[AT_NSPECIAL] = 300;
	sound_play(sound_get("clone_damage"));
	shoulddie = true;
}

if (shoulddie == true){
//	sound_play(sound_get("clone_damage"));
	spawn_hit_fx( x+30, y, 13);
//	player_id.clone_proj = false;
	player_id.clone_died = true;
	player_id.clone_alive = false;
	player_id.i_died = false;
        player_id.killarticles = false;
        instance_destroy();
        exit;
}

if (instance_exists(dtilt_hitbox)){
	with (dtilt_hitbox){
			x = other.x + other.hsp + (23*spr_dir);
			y = other.y + other.vsp - 4;
		}
}
if (instance_exists(dattack_hitbox1)){
	with (dattack_hitbox1){
			x = other.x + other.hsp + (65*spr_dir);
			y = other.y + other.vsp - 52;
		}
}
if (instance_exists(dattack_hitbox2)){
	with (dattack_hitbox2){
			x = other.x + other.hsp + (51*spr_dir);
			y = other.y + other.vsp - 36;
		}
}
if (instance_exists(dattack_hitbox3)){
	with (dattack_hitbox3){
			x = other.x + other.hsp + (31*spr_dir);
			y = other.y + other.vsp - 18;
		}
}
if (instance_exists(fstrong_hitbox1)){
	with (fstrong_hitbox1){
			x = other.x + other.hsp + (-12*spr_dir);
			y = other.y + other.vsp - 41;
		}
}
if (instance_exists(fstrong_hitbox2)){
	with (fstrong_hitbox2){
			x = other.x + other.hsp + (22*spr_dir);
			y = other.y + other.vsp - 27;
		}
}
if (instance_exists(fstrong_hitbox3)){
	with (fstrong_hitbox3){
			x = other.x + other.hsp + (55*spr_dir);
			y = other.y + other.vsp - 29;
		}
}
if (instance_exists(dstrong_hitbox)){
	with (dstrong_hitbox){
			x = other.x + other.hsp + (4*spr_dir);
			y = other.y + other.vsp - 20;
		}
}
if (instance_exists(ustrong_hitbox1)){
	with (ustrong_hitbox1){
			x = other.x + other.hsp + (3*spr_dir);
			y = other.y + other.vsp - 11;
		}
}
if (instance_exists(ustrong_hitbox2)){
	with (ustrong_hitbox2){
			x = other.x + other.hsp + (22*spr_dir);
			y = other.y + other.vsp - 39;
		}
}
if (instance_exists(ustrong_hitbox3)){
	with (ustrong_hitbox3){
			x = other.x + other.hsp + (36*spr_dir);
			y = other.y + other.vsp - 63;
		}
}
if (instance_exists(ustrong_hitbox4)){
	with (ustrong_hitbox4){
			x = other.x + other.hsp + (10*spr_dir);
			y = other.y + other.vsp - 84;
		}
}
if (instance_exists(ustrong_hitbox5)){
	with (ustrong_hitbox5){
			x = other.x + other.hsp + (34*spr_dir);
			y = other.y + other.vsp - 66;
		}
}
if (instance_exists(dair_hitbox)){
	with (dair_hitbox){
			x = other.x + other.hsp + (20*spr_dir);
			y = other.y + other.vsp - 14;
		}
}

//State 0: Idle
if (state == 0){
	sprite_index = sprite_get("idle_clone");
	if (player_id.attack == AT_NSPECIAL && (player_id.state == PS_ATTACK_GROUND || player_id.state == PS_ATTACK_AIR)){
		image_index += .15;
	}
	else {
		image_index += .1;
	}
    
    hsp = 0;
	vsp = 0;
}

//State 1: Jab
if (state == 1){
	mask_index = sprite_get("jab_hurt");
	sprite_index = sprite_get("jab_clone");
	image_index = player_id.image_index;
	if (player_id.window == 1){
		hsp = 5.9*spr_dir;
		if (player_id.window_timer == 1){
			sound_play(sound_get("clone_sword_swing"));
		}
	}
	if (player_id.window == 2){
		hsp = 0;
		if (player_id.window_timer == 0){
			jab1_hitbox = create_hitbox( AT_JAB, 9, x+(26*spr_dir), y-40);	
			jab2_hitbox = create_hitbox( AT_JAB, 10, x+(-2*spr_dir), y-72);
			jab1_hitbox.no_absorb = true;
			jab2_hitbox.no_absorb = true;
		}
	}
	if (player_id.window == 4){
		hsp = 4.25*spr_dir;
		if (player_id.window_timer == 1){
			sound_play(sound_get("clone_sword_swing"));
		}
	}
	if (player_id.window == 5){
		hsp = 2.25*spr_dir;
		if (player_id.window_timer == 0){
			jab3_hitbox = create_hitbox( AT_JAB, 11, x+(-57*spr_dir), y-41);	
			jab4_hitbox = create_hitbox( AT_JAB, 12, x+(-23*spr_dir), y-27);
			jab5_hitbox = create_hitbox( AT_JAB, 13, x+(29*spr_dir), y-35);
			jab3_hitbox.no_absorb = true;
			jab4_hitbox.no_absorb = true;
			jab5_hitbox.no_absorb = true;
		}
	}
	if (player_id.window == 6){
		hsp = 0;
	}
	if (player_id.window == 7){
		hsp = 6*spr_dir;
	}
	if (player_id.window == 8){
		hsp = 5*spr_dir;
		if (player_id.window_timer == 1){
			sound_play(sound_get("clone_sword_swing"));
		}
	}
	if (player_id.window == 9){
		hsp = 0;
		if (player_id.window_timer == 0){
			jab6_hitbox = create_hitbox( AT_JAB, 14, x+(-15*spr_dir), y-75);	
			jab7_hitbox = create_hitbox( AT_JAB, 15, x+(17*spr_dir), y-52);
			jab8_hitbox = create_hitbox( AT_JAB, 16, x+(37*spr_dir), y-25);
			jab6_hitbox.no_absorb = true;
			jab7_hitbox.no_absorb = true;
			jab8_hitbox.no_absorb = true;
		}
	}
//	hsp = 0;
	vsp = 0;
}

//State 2: FTilt
if (state == 2){
	mask_index = sprite_get("ftilt_hurt");
	sprite_index = sprite_get("ftilt_clone");
	image_index = player_id.image_index;
	if (state_timer == 8){
		sound_play(sound_get("clone_sword_swing"));
		ftilt1_hitbox = create_hitbox( AT_FTILT, 3, x+(59*spr_dir), y-41);	
		ftilt2_hitbox = create_hitbox( AT_FTILT, 4, x+(22*spr_dir), y-25);
		ftilt1_hitbox.no_absorb = true;
		ftilt2_hitbox.no_absorb = true;
	}
	hsp = 0;
	vsp = 0;
}

//State 3: DTilt
if (state == 3){
	mask_index = sprite_get("dtilt_hurt");
	sprite_index = sprite_get("dtilt_clone");
	image_index = player_id.image_index;
		if (state_timer == 7){
			sound_play(sound_get("clone_kick_swing"));
			dtilt_hitbox = create_hitbox( AT_DTILT, 3, x+(23*spr_dir), y-4);
			dtilt_hitbox.no_absorb = true;
		}
		if (player_id.window == 2){
			hsp = 9*spr_dir;
		}
		if (player_id.window == 3){
			hsp = 3*spr_dir;
		}
	vsp = 0;
}

//State 4: UTilt
if (state == 4){
	mask_index = sprite_get("utilt_hurt");
	sprite_index = sprite_get("utilt_clone");
	image_index = player_id.image_index;
		if (state_timer == 6){
			sound_play(sound_get("clone_sword_swing"));
			utilt_hitbox = create_hitbox( AT_UTILT, 2, x+(-1*spr_dir), y-53);	
			utilt_hitbox.no_absorb = true;
		}
	hsp = 0;
	vsp = 0;
}

//State 5: Dash Attack
if (state == 5){
	mask_index = sprite_get("dattack_hurt");
	sprite_index = sprite_get("dattack_clone");
	image_index = player_id.image_index;
	
	if (player_id.window == 2){
		hsp = 7*spr_dir;
		if (state_timer == 3){
			sound_play(sound_get("clone_dash_attack"));
		}
	}
	if (player_id.window == 3){
		hsp = 4*spr_dir;
	}
	if (player_id.window == 4){
		hsp = 2*spr_dir;
	}
	if (state_timer == 7){
			dattack_hitbox1 = create_hitbox( AT_DATTACK, 4, x+(65*spr_dir), y-52);
			dattack_hitbox2 = create_hitbox( AT_DATTACK, 5, x+(51*spr_dir), y-36);
			dattack_hitbox3 = create_hitbox( AT_DATTACK, 6, x+(31*spr_dir), y-18);
			dattack_hitbox1.no_absorb = true;
			dattack_hitbox2.no_absorb = true;
			dattack_hitbox3.no_absorb = true;
		}
	vsp = 0;
}

//State 6: FStrong
if (state == 6){
	mask_index = sprite_get("fstrong_hurt");
	sprite_index = sprite_get("fstrong_clone");
	image_index = player_id.image_index;
	
	if (player_id.window == 1){
		hsp = 0;
	}
	
	if (player_id.window == 2){
		hsp = player_id.fstrong_dis*spr_dir;
		if (player_id.window_timer == 7){
			sound_play(sound_get("clone_sword_swing"));
		}
	}
	if (player_id.window == 3){
		hsp = 1*spr_dir;
		if (player_id.window_timer == 0){
			fstrong_hitbox1 = create_hitbox( AT_FSTRONG, 4, x+(-12*spr_dir), y-41);
			fstrong_hitbox2 = create_hitbox( AT_FSTRONG, 5, x+(22*spr_dir), y-27);
			fstrong_hitbox3 = create_hitbox( AT_FSTRONG, 6, x+(55*spr_dir), y-29);
			fstrong_hitbox1.no_absorb = true;
			fstrong_hitbox2.no_absorb = true;
			fstrong_hitbox3.no_absorb = true;
		}
	}
	vsp = 0;
}

//State 7: DStrong
if (state == 7){
	if (player_id.down_down){
		can_be_grounded = false; 
	}
	if (player_id.down_down == false){
		can_be_grounded = true; 
	}
	
	mask_index = sprite_get("dstrong_hurt");
	sprite_index = sprite_get("dstrong_clone");
	image_index = player_id.image_index;
	
	if (player_id.window == 3){
		vsp = player_id.dstrong_dis;
		if (player_id.window_timer == 1){
			vsp += -1;
			sound_play(sound_get("clone_sword_swing"));
		}
	}
	if (player_id.window > 3 && free == true){
		vsp = 30;
		dstrong_hitbox = create_hitbox( AT_DSTRONG, 3, x+(4*spr_dir), y+10);
		dstrong_hitbox.no_absorb = true;
	}
	if (player_id.window == 5 && free == false){
		vsp = 0;
		if (player_id.window_timer == 1){
			sound_play(sound_get("clone_kick_swing"));
			dstrong_hitbox2 = create_hitbox( AT_DSTRONG, 4, x+(4*spr_dir), y-11);
			dstrong_hitbox2.no_absorb = true;
		}
	}
	hsp = 0;
}

//State 8: UStrong
if (state == 8){
	mask_index = sprite_get("ustrong_hurt");
	sprite_index = sprite_get("ustrong_clone");
	image_index = player_id.image_index;
	
	if (player_id.window == 1){
		hsp = 0;
	}
	
	if (player_id.window == 2){
		hsp = 3.5*spr_dir;
		if (player_id.window_timer == 1){
			sound_play(sound_get("clone_sword_swing"));
		}
	}	
	if (player_id.window == 3 && player_id.hitpause == false){
		hsp = 2.5*spr_dir;
		vsp = player_id.ustrong_dis;
		if (player_id.window_timer == 0){
			ustrong_hitbox1 = create_hitbox( AT_USTRONG, 6, x+(3*spr_dir), y-11);
			ustrong_hitbox2 = create_hitbox( AT_USTRONG, 7, x+(22*spr_dir), y-39);
			ustrong_hitbox3 = create_hitbox( AT_USTRONG, 8, x+(36*spr_dir), y-63);
			ustrong_hitbox1.no_absorb = true;
			ustrong_hitbox2.no_absorb = true;
			ustrong_hitbox3.no_absorb = true;
		}
		if (player_id.window_timer == 3){
			ustrong_hitbox4 = create_hitbox( AT_USTRONG, 9, x+(10*spr_dir), y-84);
			ustrong_hitbox5 = create_hitbox( AT_USTRONG, 10, x+(34*spr_dir), y-66);
			ustrong_hitbox4.no_absorb = true;
			ustrong_hitbox5.no_absorb = true;
		}
	}	
	if (player_id.window == 4){
		if (player_id.window_timer >= 0 && player_id.window_timer <= 8){
			hsp = 2.5*spr_dir;
			vsp = player_id.ustrong_dis/7;
		}
		
	}	
}

//State 9: NAir
if (state == 9){
	mask_index = sprite_get("nair_hurt");
	sprite_index = sprite_get("nair_clone");
	image_index = player_id.image_index;
	if (player_id.runeD){
		if (player_id.window = 1 && player_id.window_timer = 3){
			sound_play(sound_get("clone_nair"));
			nair_hitbox1 = create_hitbox( AT_NAIR, 3, x, y-20);
			nair_hitbox1.no_absorb = true;
		}
	}
	else {
		if (player_id.window = 1 && player_id.window_timer = 7){
			sound_play(sound_get("clone_nair"));
			nair_hitbox2 = create_hitbox( AT_NAIR, 3, x, y-20);
			nair_hitbox2.no_absorb = true;
		}
	}
	
	hsp = 0;
	vsp = 0;
}

//State 10: FAir
if (state == 10){
	mask_index = sprite_get("fair_hurt");
	sprite_index = sprite_get("fair_clone");
	image_index = player_id.image_index;
		if (state_timer == 8){
			sound_play(sound_get("clone_sword_swing"));
			fair_hitbox1 = create_hitbox( AT_FAIR, 4, x+(-48*spr_dir), y-67);
			fair_hitbox2 = create_hitbox( AT_FAIR, 5, x+(-24*spr_dir), y-40);
			fair_hitbox3 = create_hitbox( AT_FAIR, 6, x+(22*spr_dir), y-31);
			fair_hitbox1.no_absorb = true;
			fair_hitbox2.no_absorb = true;
			fair_hitbox3.no_absorb = true;
		}
	hsp = 0;
	vsp = 0;
}

//State 11: BAir
if (state == 11){
	mask_index = sprite_get("bair_hurt");
	sprite_index = sprite_get("bair_clone");
	image_index = player_id.image_index;
		if (state_timer == 6){
			sound_play(sound_get("clone_kick_swing"));
			bair_hitbox1 = create_hitbox( AT_BAIR, 3, x+(-30*spr_dir), y-18);
			bair_hitbox1.no_absorb = true;
		}
		if (state_timer == 17){
			sound_play(sound_get("clone_kick_swing"));
			bair_hitbox2 = create_hitbox( AT_BAIR, 4, x+(-30*spr_dir), y-18);
			bair_hitbox2.no_absorb = true;
		}
	hsp = 0;
	vsp = 0;
}

//State 12: UAir
if (state == 12){
	mask_index = sprite_get("uair_hurt");
	sprite_index = sprite_get("uair_clone");
	image_index = player_id.image_index;
		if (state_timer == 6){
			sound_play(sound_get("clone_sword_swing"));
			uair_hitbox1 = create_hitbox( AT_UAIR, 3, x+(-15*spr_dir), y-54);
			uair_hitbox2 = create_hitbox( AT_UAIR, 4, x+(3*spr_dir), y-85);
			uair_hitbox1.no_absorb = true;
			uair_hitbox2.no_absorb = true;
		}
	hsp = 0;
	vsp = 0;
}

//State 13: DAir
if (state == 13){
	mask_index = sprite_get("dair_hurt");
	sprite_index = sprite_get("dair_clone");
	image_index = player_id.image_index;
	if (player_id.window == 1){
		hsp = 0;
		vsp = 0;
	}
	if (state_timer == 6){
			sound_play(sound_get("clone_kick_swing"));
			dair_hitbox = create_hitbox( AT_DAIR, 3, x+(18*spr_dir), y-8);
			dair_hitbox.no_absorb = true;
		}
		if (player_id.window == 2){
			hsp = 9*spr_dir;
			vsp = 13;
		}
		if (player_id.window == 3){
			hsp = 9*spr_dir;
			vsp = 13;
		}
		if (!free){
			hsp = 5*spr_dir;
		}
		if (player_id.window == 4){
		hsp = 0;
		vsp = 0;
	}

}

//State 14: Taunt
if (state == 14){
	sprite_index = sprite_get("taunt_clone");
	image_index = player_id.image_index;
	hsp = 0;
	vsp = 0;
}

//Destroy when offstage
var stage_y = get_stage_data( SD_Y_POS );
var stage_xl = get_stage_data( SD_X_POS ) - 400;
var stage_xr = get_stage_data( SD_X_POS ) + 1100;
var stage_b = get_stage_data( SD_BOTTOM_BLASTZONE );
if (stage_y + stage_b < y){
	sound_play(sound_get("clone_damage"));
	shoulddie = true;
}

if (stage_xl > x){
	sound_play(sound_get("clone_damage"));
	shoulddie = true;
}

if (stage_xr < x){
	sound_play(sound_get("clone_damage"));
	shoulddie = true;
}

if (player_id.move_cooldown[AT_NSPECIAL] != 0){
	sound_play(sound_get("clone_damage"));
	shoulddie = true;
}



if (shoulddie == true){
//	sound_play(sound_get("clone_damage"));
	spawn_hit_fx( x+30, y, 13);
//	player_id.clone_proj = false;
	player_id.clone_died = true;
	player_id.clone_alive = false;
	player_id.i_died = false;
        player_id.killarticles = false;
        instance_destroy();
        exit;
}


