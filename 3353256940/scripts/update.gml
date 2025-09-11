// update
//end_match(player)



// Intro
if (state == PS_SPAWN) {
	switch (state_timer) {
		case 21:
			sound_play(asset_get("sfx_plant_ready"))
		break;
		case 40:
			sound_play(asset_get("sfx_waveland_mol"), false, 0, 0.5, 1);
			sound_play(asset_get("sfx_forsburn_cape_swipe"), false, 0, 0.4, 0.9);
			sound_play(asset_get("sfx_kragg_roll_loop"), false, 0, 0.7, 1.6);
		break;
		case 65:
			sound_play(asset_get("sfx_waveland_mol"), false, 0, 0.9, 1.1);
			sound_play(asset_get("sfx_ell_cooldown"), false, 0, 0.5, 1.35);
		break;
		case 1:
			if (is_voiced) {
				var voice_line = random_func_2((current_second % 50) + get_player_color( player ), 9, true); // TODO: does this desync?
				//print_debug (get_gameplay_time() % 50)
				//print_debug (voice_line)
				if get_stage_data(SD_ID) == "3361189673" {
					voice_line = 0;
					sound_play(sound_get("intro_sewer"), false, 0, 1, 1); //dont say "It's not everyday I leave the studio" when in the Ambrosia Sewers
				}
				if (voice_line == 1) sound_play(sound_get("intro_1"), false, 0, 1, 1);
				else if (voice_line == 2) sound_play(sound_get("intro_2"), false, 0, 1, 1);
				else if (voice_line == 3) sound_play(sound_get("intro_3"), false, 0, 1, 1);
				else if (voice_line == 4) sound_play(sound_get("intro_4"), false, 0, 1, 1);
				else if (voice_line == 5) sound_play(sound_get("intro_5"), false, 0, 1, 1);
				else if (voice_line == 6) sound_play(sound_get("intro_6"), false, 0, 1, 1);
				else if (voice_line == 7) sound_play(sound_get("intro_7"), false, 0, 1, 1);
				//print_debug (voice_line)
			}
	}
	
	if (state_timer > 40 && state_timer < 80) {
		if (state_timer % 10 == 0) {
				sound_play(asset_get("sfx_shovel_swing_light1"), false, 0, 0.5, (random_func(3, 5, true) + 8) * 0.1);
		} else if (state_timer % 8 == 0) {
				sound_play(sound_get("metal_clatter"), false, 0, 0.3, (random_func(3, 5, true) + 10) * 0.1);
		}
	}
}

// Pipe warp cd
if (pipewarp_cd > 0) pipewarp_cd--;

// Crawl and movement anims
switch (state) {
    case PS_WALK:
        if (state_timer % 33) == 8 sound_play(sound_get("robotstep"), false, 0, 1, (random_func(2, 3, true) + 8) * 0.1);
        was_crouching = false;
        break;
    case PS_DASH_START:
    	if is_deadalt {
    		if is_deadalt if (state_timer == 0) sound_play(sound_get("robotstep"), false, 0, 1, 1);
    	} else {
    		if (state_timer == 0) sound_play(sound_get("keyboard"), false, 0, 1, 1.1);
    	}
    case PS_DASH:
        if is_deadalt {
        	if (state_timer % 10 == 1) sound_play(sound_get("robotstep"), false, 0, 0.9, (random_func(2, 4, true) + 8) * 0.08);
        }
        else {
        	if (state_timer % 4 == 1) sound_play(sound_get("keyboard"), false, 0, 0.9, (random_func(2, 4, true) + 8) * 0.1);
        }
        break;
    case PS_CROUCH:
        was_crouching = true;
        
        if (left_down) spr_dir = -1;
        else if (right_down) spr_dir = 1;
        if (!right_down && !left_down) crawl_time = 0;
        else
        {
            crawl_time ++;
            var max_check = (sprite_get_number(sprite_get("crawl")) / crawl_anim_speed);
            var mod_check = floor(crawl_time % max_check);
            if (crawl_time % 20 == 1) {
                sound_stop(asset_get("sfx_gus_jump"));
                if is_deadalt crawl_sound = sound_play(sound_get("robotstep"), false, 0, 0.5, (random_func(2, 3, true) + 8) * 0.08);
                else crawl_sound = sound_play(asset_get("sfx_gus_jump"), false, 0, 0.5, (random_func(2, 3, true) + 8) * 0.2);
            }
    
            if (right_down && spr_dir || left_down && -spr_dir) fake_img = crawl_time * crawl_anim_speed;
    		if (left_down && spr_dir || right_down && -spr_dir) fake_img = crawl_time * -crawl_anim_speed;
            fake_img = fake_img % sprite_get_number(sprite_get("crawl"));
    
    
            if (right_down) hsp = crawl_speed;
            if (left_down) hsp = -crawl_speed;
        }
        break;
    case PS_IDLE:
    case PS_DASH_START:
    case PS_HITSTUN:
        was_crouching = false;
        break;
}

if (!free || state == PS_HITSTUN) {
	move_cooldown[AT_FSPECIAL] = 0;
    dair_used = false;
    sound_stop(asset_get("sfx_absa_current_pop"));
}

//galaxy checker
if (galaxy_timer == 0 && instance_exists(hit_player_obj) && hit_player_obj.activated_kill_effect && attack != AT_FSTRONG && attack != AT_EXTRA_3)
{
    galaxy_timer = 90;
}
galaxy_timer = max(galaxy_timer-1,0)
//voiceline on galaxy
if galaxy_timer == 89 {
        if (is_voiced) {
				var voice_line = random_func_2((current_second % 50) + get_player_color( player ), 8, true); // TODO: does this desync?
				if (voice_line == 1) sound_play(sound_get("ig_galaxy_1"), false, 0, 1, 1);
				else if (voice_line == 2) sound_play(sound_get("ig_galaxy_2"), false, 0, 1, 1);
				else if (voice_line == 3) sound_play(sound_get("ig_galaxy_3"), false, 0, 1, 1);
				else if (voice_line == 4) sound_play(sound_get("ig_galaxy_high"), false, 0, 1, 1);
				print_debug (voice_line)
			}
}

//dtaunt failsafe
if (state != PS_CROUCH && state != PS_ATTACK_GROUND && attack == AT_EXTRA_5) attack = AT_TAUNT; 

// So... no head?
if (in_hstance) {
    if (!hstance_applied) {
        hstance_applied = true;
        hstance_old_djumps = !free ? 0 : djumps;
        djumps = max_djumps;
        knockback_adj = hstance_knockback_adj;
        walljump_hsp = hstance_walljump_hsp;
        walljump_vsp = hstance_walljump_vsp;
    }
    
    hurtbox_spr = sprite_get("3_headhbox");
    
    if (state == PS_TECH_GROUND || state == PS_TECH_FORWARD || state == PS_TECH_BACKWARD) {
    	// Using the normal getup anim during techs causes massive headaches, so this just cancels hstance immediately instead.
    	in_hstance = false;
    } else if (state_cat == SC_HITSTUN && state != PS_HITSTUN_LAND) {
    	// Mostly a filter, but certain grounded statuses should remove HStance.
    	if (state == PS_FROZEN || state == PS_BURIED) in_hstance = false;
    } else if (!free && !(state == PS_ATTACK_GROUND && attack == AT_EXTRA_3 && 4 <= window && window <= 7)) {
    	attack_end();
        state = PS_ATTACK_GROUND;
        state_timer = 0;
        attack = AT_EXTRA_1;
        hurtboxID.sprite_index = sprite_get("uspecial_land_hurt");
        window = 1;
        window_timer = 0;
    } else if (vsp >= 0 && state == PS_IDLE_AIR && (special_pressed || is_special_pressed(DIR_ANY)) && move_cooldown[AT_EXTRA_3] == 0) {
    	attack_end();
        state = PS_ATTACK_AIR;
        state_timer = 0;
    	attack = AT_EXTRA_3;
    	window = 1;
    	window_timer = 0;
    }
    
    move_cooldown[AT_NSPECIAL] = 9999;
    move_cooldown[AT_FSPECIAL] = 9999;
    move_cooldown[AT_DSPECIAL] = 9999;
    move_cooldown[AT_USPECIAL] = 9999;
    
    move_cooldown[AT_NAIR] = 9999;
    move_cooldown[AT_UAIR] = 9999;
    move_cooldown[AT_FAIR] = 9999;
    move_cooldown[AT_DAIR] = 9999;
    move_cooldown[AT_BAIR] = 9999;
} else if (hstance_applied) {
    hstance_applied = false;
    knockback_adj = base_knockback_adj;
    djumps = hstance_old_djumps;
    walljump_hsp = base_walljump_hsp;
    walljump_vsp = base_walljump_vsp;
    
    hurtbox_spr = sprite_get("1_idlehbox");
    
    move_cooldown[AT_NSPECIAL] = 0;
    move_cooldown[AT_FSPECIAL] = 0;
    move_cooldown[AT_DSPECIAL] = 0;
    move_cooldown[AT_USPECIAL] = 0;
    
    move_cooldown[AT_NAIR] = 0;
    move_cooldown[AT_UAIR] = 0;
    move_cooldown[AT_FAIR] = 0;
    move_cooldown[AT_DAIR] = 0;
    move_cooldown[AT_BAIR] = 0;
    move_cooldown[AT_EXTRA_3] = 0;
}


//alt
if (state == PS_SPAWN && extra_col == 0 && get_player_color(player) == 11 && taunt_down){
	extra_col = 1;
	white_flash_timer = 18;
	init_shader();
	sound_stop(sound_get("intro_1"));
	sound_stop(sound_get("intro_2"));
	sound_stop(sound_get("intro_3"));
	sound_stop(sound_get("intro_4"));
	sound_stop(sound_get("intro_5"));
	sound_stop(sound_get("intro_6"));
	sound_stop(sound_get("intro_7"));
	sound_stop(sound_get("intro_sewer"));
	sound_play(sound_get("teto"))
}
