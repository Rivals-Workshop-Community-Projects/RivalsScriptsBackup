// attack_update

//B - Reversals
if (attack == AT_NSPECIAL || attack == AT_FSPECIAL || attack == AT_DSPECIAL || attack == AT_USPECIAL){
    trigger_b_reverse();
}

//Dash attack off ledge
if (attack == AT_DATTACK){
	if window == 3 {
		off_edge = true;
		vsp = clamp(vsp, -100, 1);
		if (15 > window_timer && has_hit_player && !hitpause && hit_player_obj.super_armor == 0){
			hit_player_obj.hsp = lerp(hit_player_obj.hsp,hsp,1.5);
			hit_player_obj.x = lerp(hit_player_obj.x,x,0.1);
		}
	}
	
	if window == 4 and window_timer == 1 and !free {
	sound_play(asset_get("sfx_land_heavy"));
	}
}


//Jab parry stuff
if(attack == AT_JAB && was_parried){
    was_parried = false;
}

//Down tilt stuff
if (attack == AT_DTILT){
	if window == 4 and window_timer == 4 and !was_parried {
		set_state(PS_CROUCH);
		state_timer = 8;
	}
}


//Down aerial cooldown
if (attack == AT_DAIR){
	if window == 3 and window_timer == 5 {
		move_cooldown[AT_DAIR] = 90;
	}

	if 4 > window {
		can_fast_fall = false;
	} else {
		can_fast_fall = true;
	}
}

//Down special stuff
if (attack == AT_DSPECIAL){
	if window == 3 and window_timer == 10 {
		instance_create(x+50*spr_dir, y-20, "obj_article1");
	}
}

//Neutral special cooldown
if (attack == AT_NSPECIAL){
	if window == 3 and window_timer == 3 {
		move_cooldown[AT_NSPECIAL] = 40;
	}
}

//Forward special stuff
if (attack == AT_FSPECIAL){
	if window == 3 and window_timer == 10 {
		move_cooldown[AT_FSPECIAL] = 200;
	}
}

if (attack == AT_DSPECIAL_2 && shield_pressed){
	with(asset_get("obj_article1")){
		minionHealth = 0;
    }
}


//Up special stuff
if (attack == AT_USPECIAL) {
	can_attack = true;
	can_fast_fall = false;
	can_shield = true;
	if window == 2 and burnerFuel > 0 {
		if vsp > -5 {
			vsp -= 1;
		}
		
		burnerFuel -= 2;
		
		if special_down and window_timer == 14 {
		window = 2;
		window_timer = 0;
		}
		else if window_timer == 14 {
		window = 3;
		window_timer = 0;
		}
	}
}

if burnerFuel <= 0 {
	burnerFuel = 0;
}
if burnerFuel == 0 {
    move_cooldown[AT_USPECIAL] = 999;
	}
	
//Burner stuff
if burnerFuel > 40 {
	if attack == AT_FAIR && window == 3 && window_timer == 1 && !hitpause {
		if attack_down || strong_down || left_strong_down || right_strong_down {
			vsp = clamp(vsp, -100, -2);
			hsp = -8*spr_dir;
			old_hsp = -8*spr_dir;
			burnerFuel -= 60;
		}
	}
}
	
//UAir momentum stuff
if (attack == AT_UAIR && window == 2 && window_timer == 5 && !hitpause) {
	vsp = clamp(vsp, -100, 0);
}

if (attack == AT_BAIR && window == 3 && window_timer == 2 && !hitpause) {
	hsp -= 1*spr_dir;
}

//VFX Stuff

if (attack == AT_DSPECIAL) {
	if (window == 3 && window_timer == 10) {
		spawn_hit_fx( x+50*spr_dir, y-20, 194);
	}
}

if (attack == AT_FSPECIAL) {
	if (window == 3 && window_timer == 3) {
		spawn_hit_fx( x+50*spr_dir, y-20, 194);
	}
}

if (attack == AT_FSTRONG) {
	if (window == 4 && window_timer == 7 && !hitpause) {
	hsp += 8*spr_dir;	
	}
	
	if (window == 1 && window_timer == 6) {
		spawn_hit_fx( x+25*spr_dir, y-30, 194);
	}
	
	if (window == 7 && window_timer == 4) {
		spawn_hit_fx( x+25*spr_dir, y-30, 194);
	}
}

if (attack == AT_USTRONG) {
	if (window == 1 && window_timer == 6) {
		spawn_hit_fx( x+25*spr_dir, y-30, 194);
	}
	
	if (window == 7 && window_timer == 4) {
		spawn_hit_fx( x+25*spr_dir, y-30, 194);
	}
}

if (attack == AT_TAUNT) || (attack == AT_TAUNT_2) {
	if (window == 6 && window_timer == 1) {
		spawn_hit_fx( x+45*spr_dir, y-65, 14);
	}
}

//Taunt
if (attack == AT_TAUNT) and (window == 1) and (window_timer == 1) { //please hikaru don't tamper with the taunt it ruins the joke
	set_attack(AT_TAUNT_2);
}

if (attack == AT_TAUNT || attack == AT_TAUNT_2) && window == 1 && window_timer == 1 {
	randomTaunt = random_func(0, 77, true);
}

//taunt

if attack == AT_TAUNT || attack == AT_TAUNT_2 {
	if window == 3 && window_timer == 6 {
		if randomTaunt == 0 {
			sound_play(sound_get("sfx_switchsnap"));
		}
		if randomTaunt == 8 {
			sound_play(sound_get("PICKLE"));
		}
		if randomTaunt == 20 { //it's actually the 21th picture
			sound_play(sound_get("21"));
		}
		if randomTaunt == 51 {
			sound_play(sound_get("bigyoshi"));
		}
		if randomTaunt == 59 {
			sound_play(sound_get("picklepower"));
		}
		if randomTaunt == 68 {
			sound_play(sound_get("thwomp"));
		}
		if randomTaunt == 69 {
			sound_play(sound_get("pufferfish"));
		}
		if randomTaunt == 70 {
			sound_play(sound_get("amongus"));
			sound_play(sound_get("AMOGUS"));
		}
		if randomTaunt == 71 {
			sound_play(sound_get("dripgoku"));
		}
		if randomTaunt == 72 {
			sound_play(sound_get("squeaky"));
		}
		if randomTaunt == 74 {
			sound_play(sound_get("bluy"));
		}
		if randomTaunt == 76 {
			sound_play(sound_get("bluey_taunt"));
		}	
	}
	if window == 5 and window_timer == 12 {
		if taunt_down {
			window_timer = 11;
		} else {
			window = 6;
			window_timer = 0;
		}
	}
}

//Control the Blueytank's movement
with(asset_get("obj_article1")){
    if (player_id.attack == AT_DSPECIAL_2 && player_id.window == 1 && player_id.window_timer == 2) {
		if state = 2 {
		state = 1;
		}
		else if state = 1 {
		state = 2;
		spr_dir = player_id.spr_dir;
		minionHealth += .02;
		}
	}
}

if window == 1 {
	randomFunny = random_func(0, 12, true);
}

//funny sounds
if (funnyfish == 6) && (hit_player_obj.activated_kill_effect) {
	if attack == AT_BAIR {
        sound_play(sound_get("tacobell"));
	}
	if attack == AT_FAIR {
        sound_play(sound_get("fwr"));
	}
	if attack == AT_FSTRONG {
        sound_play(sound_get("vineboom"));
	}
	if !(attack == AT_FAIR || attack == AT_BAIR || attack == AT_FSTRONG) {
		if randomFunny == 11 {
			sound_play(sound_get("hamburger"));
		} if randomFunny == 10 {
			sound_play(sound_get("youstupid"));
		} if randomFunny == 9 {
			sound_play(sound_get("squeaky"));
		} if randomFunny == 8 {
			sound_play(sound_get("bababooey"));
		} if randomFunny == 7 {
			sound_play(sound_get("omagah"));
		} if randomFunny == 6 {
			sound_play(sound_get("wetfart"));
		} if randomFunny == 5 {
			sound_play(sound_get("fwr"));
		} if randomFunny == 4 {
			sound_play(sound_get("tacobell"));
		} if randomFunny == 3 {
			sound_play(sound_get("yodadies"));
		} if randomFunny == 2 {
			sound_play(sound_get("yeet"));
		} if randomFunny == 1 {
			sound_play(sound_get("bruh"));
		} if randomFunny == 0 {
			sound_play(sound_get("vineboom"));
		}
	}
}