if (state == PS_HITSTUN || state == PS_WALL_JUMP || state_cat == SC_GROUND_NEUTRAL || state_cat == SC_GROUND_COMMITTED || state == PS_RESPAWN){
	move_cooldown[AT_USPECIAL] = 0;
	set_attack_value(AT_USPECIAL, AG_SPRITE, sprite_get("uspecial"));
	set_attack_value(AT_USPECIAL, AG_AIR_SPRITE, sprite_get("uspecial"));
}

if (state == PS_HITSTUN || state == PS_WALL_JUMP || state == PS_RESPAWN){
    move_cooldown[AT_FSPECIAL] = 0;
}



if (state == PS_PRATFALL){
    set_attack_value(AT_USPECIAL, AG_SPRITE, sprite_get("uspecial"));
    set_attack_value(AT_USPECIAL, AG_AIR_SPRITE, sprite_get("uspecial"));
}


nspecial_cooldown_thing = move_cooldown[AT_NSPECIAL];


//Muno start

attacking = (state == PS_ATTACK_AIR || state == PS_ATTACK_GROUND);






//rune stuff (not muno lol)


//update.gml
if runesUpdated {
	if runeA { //trigger the attribute change
		max_djumps = 4;
	} else { //reset the attribute change
		max_djumps = 1;
	}
}

if runesUpdated {
	if runeB { //trigger the attribute change
	    roll_forward_max = 12;
        roll_backward_max = 12;
	    techroll_speed = 14;
		air_dodge_speed = 12;
	} else { //reset the attribute change
        roll_forward_max = 9;
        roll_backward_max = 9;
	    techroll_speed = 10;
		air_dodge_speed = 7.5;
	}
}

if (url != 2111038605){
	player = -1;
	spawn_hit_fx(x,y,0);
}

if runesUpdated {
	if runeC { //trigger the attribute change
		block_cooldown = block_cooldown_def/2;
	} else { //reset the attribute change
		block_cooldown = block_cooldown_def;
	}
}

if runesUpdated {
	if runeE { //trigger the attribute change
		set_window_value(AT_BAIR, 3, AG_WINDOW_HSPEED, bair_speed_rune);
	} else { //reset the attribute change
		set_window_value(AT_BAIR, 3, AG_WINDOW_HSPEED, bair_speed_def);
	}
}

if runesUpdated {
	if runeI { //trigger the attribute change
		max_blocks = 12;
	} else { //reset the attribute change
		max_blocks = 5;
	}
}

if runesUpdated {
	if runeJ { //trigger the attribute change
		wave_land_adj = 1.65;
	}else{
		wave_land_adj = 1.35;
	}
}


if runesUpdated {
	if runeK { //trigger the attribute change
		set_window_value(AT_DATTACK, 2, AG_WINDOW_HSPEED, dattack_speed_rune);
	} else { //reset the attribute change
		set_window_value(AT_DATTACK, 2, AG_WINDOW_HSPEED, dattack_speed_def);
	}
}

if (runeN){
    if (taunt_pressed && free && flip_cooldown <= 0){
        clear_button_buffer( PC_TAUNT_PRESSED );
        sound_play (asset_get ("sfx_chester_jump"));
        vsp = clamp(vsp*-1, -8, 12);
        hsp = hsp*-1;
        flip_cooldown = flip_cooldown_max;
    }
}

if (flip_cooldown > 0){
    flip_cooldown--;
}


//new runes
if (has_rune("A")){
	walljump_vsp = 16;

	jump_speed = 12;
	djump_speed = 12;
	
	air_accel = .4;
	max_jump_hsp = 7;
	air_max_speed = 7;

	jump_sound = sound_get("boing");
	djump_sound = sound_get("boing");
}

if (has_rune("B")){
	set_window_value(AT_DATTACK, 2, AG_WINDOW_HSPEED, 14);
}

if (has_rune("C")){
	uspec_max_time = 450;
	max_blocks = 14;
}

if (has_rune("D")){
	block_cooldown = 60;
	block_cooldown_def = 60;
	block_cooldown_fell = 35;
}

if (has_rune("E")){
	set_attack_value(AT_FSTRONG, AG_SPRITE, sprite_get("fstrong_rune"));
	
	set_hitbox_value(AT_FSTRONG, 2, HG_HITBOX_X, 160);
	set_hitbox_value(AT_FSTRONG, 2, HG_WIDTH, 360);
	
	set_hitbox_value(AT_FSTRONG, 3, HG_HITBOX_X, 340);
	
	set_hitbox_value(AT_FSTRONG, 1, HG_HIT_SFX, sound_get("pan"));
	set_hitbox_value(AT_FSTRONG, 2, HG_HIT_SFX, sound_get("pan"));
}

if (has_rune("F")){
	set_hitbox_value(AT_NSPECIAL, 1, HG_WIDTH, 55);
	set_hitbox_value(AT_NSPECIAL, 1, HG_HEIGHT, 55);
	
	set_hitbox_value(AT_NSPECIAL, 2, HG_WIDTH, 55);
	set_hitbox_value(AT_NSPECIAL, 2, HG_HEIGHT, 55);
}



if (has_rune("H")){
	knockback_adj = .7;
}

if (has_rune("J")){

		
		set_attack_value(AT_DSTRONG, AG_CATEGORY, 2);
		set_attack_value(AT_FSTRONG, AG_CATEGORY, 2);
		set_attack_value(AT_USTRONG, AG_CATEGORY, 2);
	
			//this part is edited mollo code sorry giik oops
				if state == PS_ATTACK_AIR && state_timer == 0 {
					
					
						if up_strong_pressed set_attack(AT_USTRONG);
						if left_strong_pressed {set_attack(AT_FSTRONG); spr_dir = -1}
						if right_strong_pressed {set_attack(AT_FSTRONG); spr_dir = 1}
						if down_strong_pressed set_attack(AT_DSTRONG);
					
				}
}

if (has_rune("K")){
	set_hitbox_value(AT_UAIR, 1, HG_EFFECT, 1);
	set_hitbox_value(AT_UAIR, 2, HG_EFFECT, 1);
	
	set_hitbox_value(AT_FAIR, 1, HG_EFFECT, 1);
	set_hitbox_value(AT_FAIR, 2, HG_EFFECT, 1);
	set_hitbox_value(AT_FAIR, 3, HG_EFFECT, 1);
	
	set_hitbox_value(AT_DAIR, 1, HG_EFFECT, 1);
	
	set_hitbox_value(AT_BAIR, 1, HG_EFFECT, 1);
	set_hitbox_value(AT_BAIR, 2, HG_EFFECT, 1);
	
	set_hitbox_value(AT_NAIR, 1, HG_EFFECT, 1);
	set_hitbox_value(AT_NAIR, 2, HG_EFFECT, 1);
}






if (has_rune("L")){
	runeL = true;
}

if (has_rune("M")){
	runeM = true;
}

if (has_rune("N")){
	set_hitbox_value(AT_DSPECIAL, 1, HG_ANGLE, 90);
	set_hitbox_value(AT_DSPECIAL, 1, HG_BASE_KNOCKBACK, 12);
	set_hitbox_value(AT_DSPECIAL, 1, HG_KNOCKBACK_SCALING, 1);
	
	set_hitbox_value(AT_DSPECIAL, 1, HG_HIT_SFX, sound_get("bat"));
}

if (has_rune("O")){
	fspec_cooldown = 15;
}