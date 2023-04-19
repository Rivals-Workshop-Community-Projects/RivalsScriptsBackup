//mado update


if (state==PS_WALK){
if ((image_index%image_number == 0||image_index%image_number == 2) && !walksound){
sound_play(sound_get("step"), false, noone, 0.5);
walksound=true;
}
//if (image_index%image_number != 1 && image_index%image_number != 6 && walksound){
if ((image_index%image_number == 1||image_index%image_number == 3) && walksound){
walksound=false;
}
} else if(walksound){
walksound=false;
}

if (state==PS_DASH || (state==PS_DASH_START && sprite_index==sprite_get("dash"))){
if ((image_index%image_number == 0||image_index%image_number == 2) && !dashsound){
sound_play(sound_get("step"), false, noone, dashvolume);
dashvolume = clamp(dashvolume-dashvolume_inc, dashvolume_min, dashvolume_max);
dashsound = true;
}
//if (image_index%image_number != 1 && image_index%image_number != 6 && walksound){
if ((image_index%image_number == 1||image_index%image_number == 3) && dashsound){
dashsound = false;
}
} else {
	dashvolume = dashvolume_max;
	if(dashsound){
		dashsound=false;
	}
}

if (move_cooldown[AT_DSPECIAL] == 1){
	spawn_hit_fx( x, y-(char_height/2), 67 );
	sound_play(sound_get("door_summon"), false, noone, 1);
}

//no effect equip sfx mode
if (!no_equip_sound){
	if (state==PS_SPAWN){
		if (taunt_down){
			no_equip_sound = true;
			white_flash_timer = 18;
			sound_play(sound_get("effect_unequip_short"));
			no_equip_indicate_timer = 120
		}
	}
}else{
	if (no_equip_indicate_timer>0){
		no_equip_indicate_timer--;
	}
}


//extra col stuff
if (state==PS_SPAWN && extra_col == 0){
	if (special_down&&down_down){//transformed (nuzl)
		extra_col = 1
		white_flash_timer = 18;
		sound_play(sound_get("small_build"));
		init_shader();
	}
}


if (!alt_init){
	if (get_player_color( player ) == 21){
		//print("spidercol detected")
		set_victory_portrait(sprite_get("portrait_beta"));
	}else{
		set_victory_portrait(sprite_get("portrait"));
	}
	

	set_victory_theme( sound_get( "mado_victory_1" ));
	set_victory_bg( sprite_get( "victorybg" ));
	alt_init = true;
}

if (uair_timer>0){
	if (!free || state==PS_HITSTUN || state==PS_WALL_JUMP){
		uair_timer = 0;
	}
}
if (nsp_djump_healed){
	if (!free || state==PS_HITSTUN || state==PS_WALL_JUMP){
		nsp_djump_healed = false;
	}
}

if (fsp_used){
	move_cooldown[AT_FSPECIAL] = 2;
	if ((!free && state!=PS_ATTACK_GROUND) || state==PS_HITSTUN || state==PS_WALL_JUMP || state==PS_JUMPSQUAT){
		fsp_used = false;
		move_cooldown[AT_FSPECIAL] = 0;
		fsp_timer = 0;
	}
}


if (state == PS_LANDING_LAG){
	destroy_hitboxes()
}

if (state == PS_LANDING_LAG && attack == AT_DAIR){
	//sound_stop(sound_get("neon"))
	sound_stop(sound_get("elec"))
	sound_stop(asset_get("sfx_clairen_dspecial_counter_active"))
}

if (fsp_jump_storage != -1 && !pratfall_queue){
	if ((state == PS_ATTACK_AIR || state == PS_ATTACK_GROUND) && attack == AT_FSPECIAL){
	}else{
		//print("detected");
		djumps = fsp_jump_storage;
		fsp_jump_storage = -1;
	}
}
if (pratfall_queue){
	if (state == PS_PRATLAND || state == PS_WALL_JUMP || state == PS_DEAD || state == PS_RESPAWN || state==PS_HITSTUN ){
		pratfall_queue = false;
	}
}
if (pratfall_queue && (state_cat == SC_AIR_NEUTRAL || state_cat == SC_GROUND_NEUTRAL || state == PS_LANDING_LAG)){
	set_state( PS_PRATFALL )
}

// sounds stuff
if (state == PS_SPAWN){
	if (state_timer==70){
		sound_play(sound_get("door_close"), false, noone, 1)
	}
}
if (state == PS_AIR_DODGE){
	if (state_timer==2){
		sound_play(sound_get("ghost_in_short"), false, noone, 0.4)
	}
	if (state_timer==11){
		sound_play(sound_get("ghost_out"), false, noone, 0.4)
	}
}
if (state == PS_ROLL_FORWARD || state == PS_ROLL_BACKWARD){
	if (state_timer==2){
		sound_play(sound_get("ghost_in_short"), false, noone, 0.6)
	}
	if (state_timer==16){
		sound_play(sound_get("ghost_out"), false, noone, 0.5)
	}
}
if (state == PS_TECH_FORWARD || state == PS_TECH_BACKWARD){
	if (state_timer==7){
		sound_play(sound_get("ghost_in_short"), false, noone, 0.6)
	}
	if (state_timer==20){
		sound_play(sound_get("ghost_out"), false, noone, 0.5)
	}
}
if (state == PS_TECH_GROUND){
	if (state_timer==2){
		sound_play(sound_get("small_build"), false, noone, 0.5)
	}
}
if (state == PS_WALL_JUMP || state == PS_WALL_TECH){
	if (state_timer==1){
		sound_play(sound_get("frog"), false, noone, 1)
	}
}
if (state == PS_LANDING_LAG){
	if (state_timer==1){
		sound_play(sound_get("squishy"), false, noone, 1)
	}
}
// sounds stuff end



if ((((state == PS_ATTACK_AIR ||
	state == PS_ATTACK_GROUND) &&
	attack != AT_FSTRONG &&
	attack != AT_DSTRONG &&
	attack != AT_USTRONG &&
	attack != AT_USPECIAL &&
	attack != AT_NSPECIAL &&
	attack != AT_NSPECIAL_2 &&
	attack != AT_FSPECIAL &&
	attack != AT_DSPECIAL &&
	attack != AT_DSPECIAL_2 &&
	attack != AT_TAUNT_2 ) ||
	state == PS_AIR_DODGE ||
	state == PS_PARRY ||
	state == PS_ROLL_FORWARD ||
	state == PS_ROLL_BACKWARD ||
	state == PS_TECH_GROUND ||
	state == PS_TECH_BACKWARD ||
	state == PS_TECH_FORWARD ||
	state == PS_WALL_JUMP ||
	state == PS_WALL_TECH ||
	state == PS_LANDING_LAG ||
	state == PS_CROUCH) &&
	in_effect_tracker == false &&
	state_timer == 2){
	in_effect_tracker_prev = in_effect_tracker;
	in_effect_tracker = true;
	//white_flash_timer = 3;
	if (!no_equip_sound){
	spawn_hit_fx( x, y, effectequip_faded );
	sound_stop(sound_get("effect_unequip_short"));
	sound_play(sound_get("effect_equip_short"), false, noone, 0.1);
	}
	//print("detect: equip")
}
if ((( (state == PS_ATTACK_GROUND || state == PS_ATTACK_AIR) &&
	(attack == AT_FSTRONG ||
	attack == AT_DSTRONG ||
	attack == AT_USTRONG ||
	attack == AT_USPECIAL ||
	attack == AT_NSPECIAL ||
	attack == AT_FSPECIAL) )) &&
	state_timer == 2){
	in_effect_tracker_prev = in_effect_tracker;
	in_effect_tracker = true;
	white_flash_timer = 4;
	if (!no_equip_sound){
	spawn_hit_fx( x, y, effectequip );
	sound_stop(sound_get("effect_unequip_short"));
	sound_play(sound_get("effect_equip"), false, noone, 0.5);
	}
	//print("detect: equip_emphasis")
}
if (state != PS_ATTACK_AIR &&
	(state != PS_ATTACK_GROUND ||
	(state == PS_ATTACK_GROUND && 
	(attack == AT_DSPECIAL || attack == AT_DSPECIAL_2 ||
	attack == AT_TAUNT_2) ) ) &&
	state != PS_AIR_DODGE &&
	state != PS_PARRY &&
	state != PS_ROLL_FORWARD &&
	state != PS_ROLL_BACKWARD &&
	state != PS_TECH_GROUND &&
	state != PS_TECH_BACKWARD &&
	state != PS_TECH_FORWARD &&
	state != PS_WALL_JUMP &&
	state != PS_WALL_TECH &&
	state != PS_LANDING_LAG &&
	state != PS_CROUCH &&
	state != PS_WAVELAND &&
	in_effect_tracker == true &&
	state_timer == 2){
	in_effect_tracker_prev = in_effect_tracker;
	in_effect_tracker = false;
	//white_flash_timer = 3;
	if (!no_equip_sound){
	spawn_hit_fx( x, y, effectequip_faded );
	sound_stop(sound_get("effect_equip_short"));
	sound_play(sound_get("effect_unequip_short"), false, noone, 0.1);
	}
	//print("detect: unequip")
}
if (state == PS_WAVELAND &&	in_effect_tracker == true){
	in_effect_tracker_prev = in_effect_tracker;
	in_effect_tracker = false;
	sound_stop(sound_get("effect_equip_short"));
}
if (state == PS_ATTACK_AIR ||
	state == PS_ATTACK_GROUND){
	if (spr_angle != 0){
		spr_angle = 0;
	}
}

if (has_hit){
    if (pratfall_queue){
        //this is for fspecial.
        pratfall_queue = false;
    }
}

if (general_init_check==1){
	//summon pancake manager
	instance_create( x, y, "obj_article3" );
	
	//check mirrors
	//init has "has_mirror" variable
	with (oPlayer){
		if (id != other.id){
			if (url == other.url){
				other.has_mirror = true;
				//print("has mirror")
			}
		}
	}
	general_init_check = 2;
}
if (general_init_check==0){
	general_init_check = 1;//this stalls for time juuuust in case
}











