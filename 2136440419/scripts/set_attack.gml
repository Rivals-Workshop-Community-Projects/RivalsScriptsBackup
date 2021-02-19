///#args attack

switch (attack) {
    case AT_DATTACK:
        landing_sfx_played = false; // Resets this variable since it hasn't landed
        break;
    case AT_DSPECIAL:
    	//dspecial_jumped = -1;
    	//dspecial_jump_index = 0;
        dspecial_cancellable = false; // Resets this variable since it hasn't hit
        dspecial_land = 0;
        if (!sweatwhirl_exists) {
            nspecial_thrown = false;
        }
        sweatwhirl_looped = false;
        sweatwhirl_grabbed = false;
        sweatwhirl_held_frame = 0;
        dspecial_level_2_hit = false;
        dspecial_level_3_hit = false;
        if (djumps == 0) {
            dspecial_jc = false;
        }
        // Handspring
        if (!free) {
            dspecial_handspring = true;
            // Add back the sweetspot in grounded version
            reset_hitbox_value(AT_DSPECIAL, 1, HG_WIDTH);
            reset_hitbox_value(AT_DSPECIAL, 1, HG_HEIGHT);
            reset_hitbox_value(AT_DSPECIAL, 1, HG_DAMAGE);
            reset_hitbox_value(AT_DSPECIAL, 1, HG_ANGLE);
            reset_hitbox_value(AT_DSPECIAL, 1, HG_BASE_KNOCKBACK);
            reset_hitbox_value(AT_DSPECIAL, 1, HG_KNOCKBACK_SCALING);
            reset_hitbox_value(AT_DSPECIAL, 1, HG_BASE_HITPAUSE);
            reset_hitbox_value(AT_DSPECIAL, 1, HG_HITPAUSE_SCALING);
            reset_hitbox_value(AT_DSPECIAL, 1, HG_HIT_SFX);
            reset_hitbox_value(AT_DSPECIAL, 1, HG_VISUAL_EFFECT);
            reset_hitbox_value(AT_DSPECIAL, 1, HG_HIT_PARTICLE_NUM);
            
            // Spring effects
            set_window_value(AT_DSPECIAL, 1, AG_WINDOW_HSPEED, -5);
            set_window_value(AT_DSPECIAL, 1, AG_WINDOW_LENGTH, 9);
            set_window_value(AT_DSPECIAL, 1, AG_WINDOW_ANIM_FRAMES, 3);
            set_window_value(AT_DSPECIAL, 1, AG_WINDOW_ANIM_FRAME_START, 0);
            set_window_value(AT_DSPECIAL, 1, AG_WINDOW_SFX_FRAME, 4);
            reset_window_value(AT_DSPECIAL, 2, AG_WINDOW_ANIM_FRAME_START);
            set_window_value(AT_DSPECIAL, 2, AG_WINDOW_HSPEED, 9);
        } else {
            dspecial_handspring = false;
            
            // Get rid of sweetspot in aerial veresion
            set_hitbox_value(AT_DSPECIAL, 1, HG_WIDTH, 70);
            set_hitbox_value(AT_DSPECIAL, 1, HG_HEIGHT, 70);
            set_hitbox_value(AT_DSPECIAL, 1, HG_DAMAGE, 4);
            set_hitbox_value(AT_DSPECIAL, 1, HG_ANGLE, 70);
            set_hitbox_value(AT_DSPECIAL, 1, HG_BASE_KNOCKBACK, 5);
            set_hitbox_value(AT_DSPECIAL, 1, HG_KNOCKBACK_SCALING, 0.40);
            set_hitbox_value(AT_DSPECIAL, 1, HG_BASE_HITPAUSE, 4);
            set_hitbox_value(AT_DSPECIAL, 1, HG_HITPAUSE_SCALING, 0.25);
            set_hitbox_value(AT_DSPECIAL, 1, HG_HIT_SFX, asset_get("sfx_blow_weak2"));
            set_hitbox_value(AT_DSPECIAL, 1, HG_VISUAL_EFFECT, 0);
            set_hitbox_value(AT_DSPECIAL, 1, HG_HIT_PARTICLE_NUM, 0);
            
            // Reset other vars
            reset_window_value(AT_DSPECIAL, 1, AG_WINDOW_HSPEED);
            reset_window_value(AT_DSPECIAL, 1, AG_WINDOW_LENGTH);
            reset_window_value(AT_DSPECIAL, 1, AG_WINDOW_ANIM_FRAMES);
            reset_window_value(AT_DSPECIAL, 1, AG_WINDOW_ANIM_FRAME_START);
            reset_window_value(AT_DSPECIAL, 1, AG_WINDOW_SFX_FRAME);
            set_window_value(AT_DSPECIAL, 2, AG_WINDOW_ANIM_FRAME_START, 8);
            reset_window_value(AT_DSPECIAL, 2, AG_WINDOW_HSPEED);
        }
        break;
    case AT_DSTRONG:
    	if (state != PS_PARRY) {
	        // Reset the splash
	        splash_created = false;
	        // Rune Buddy
	        ustrong_parry = false;
	        fstrong_parry = false;
	        has_set_dstrong_whiff = false;
	        dstrong_parried = false;
	    	// This gets what the value has to be to give it properly increased whifflag
    	}
        break;
    case AT_NAIR:
        // Reset the splash
        set_num_hitboxes(AT_NAIR, 2);
        splash_created = false;
        nair_anim_frame = get_window_value(AT_NAIR, 2, AG_WINDOW_ANIM_FRAME_START);
        nair_parry = false;
        break;
    case AT_USTRONG:
        grappled_block = false;
        grappled_platform = false;
        set_hitbox_value(AT_USTRONG, 1, HG_HITBOX_GROUP, 0);
        set_hitbox_value(AT_USTRONG, 2, HG_HITBOX_GROUP, 0);
        grabbed = -1; // Reset the grabbed variable, just in case
        slam_hit = false; // Reset the slam hitbox
        // Rune Buddy
        if (state != PS_PARRY) {
	        dstrong_parry = false;
	        fstrong_parry = false;
        }
        break;
    case AT_FSTRONG:
        // Rune Buddy
        if (state != PS_PARRY) {
	        ustrong_parry = false;
	        dstrong_parry = false;
        }
        break;
    case AT_NSPECIAL:
        if (!sweatwhirl_exists) {
            nspecial_recorded = false;
            sweatwhirl_old_hsp = nspecial_hspeed * spr_dir;
            sweatwhirl_old_vsp = nspecial_vspeed;
        }
    case AT_FSPECIAL:
        if (!sweatwhirl_exists) {
            nspecial_thrown = false;
            sweatwhirl_grabbed = false;
            flash_sprite = sprite_get(type + "fspecialflash");
            sweatwhirl_starting_dir = spr_dir;
            sweatwhirl_bashed = false;
            sweatwhirl_level = 1;
            sweatwhirl_leveled_hit = false;
            sweatwhirl_hitpause_frames = -1;
            sweatwhirl_level_3_timer = -1;
            if (attack != AT_NSPECIAL) {
                sweatwhirl_old_hsp = fspecial_hspeed * spr_dir;
                sweatwhirl_old_vsp = fspecial_vspeed;
            }
            if (sweatwhirl_charged) {
                sweatwhirl_old_hsp = sweatwhirl_charged_hspeed * spr_dir;
                sweatwhirl_old_vsp = sweatwhirl_charged_vspeed;
            }
        }
        break;
    case AT_USPECIAL:
        flash_sprite = sprite_get(type + "uspecialflash");
        if (!sweatwhirl_exists) {
            nspecial_thrown = false;
        }
        sweatwhirl_looped = false;
        sweatwhirl_grabbed = false;
        sweatwhirl_held_frame = 0;
        dspecial_level_2_hit = false;
        dspecial_level_3_hit = false;
        break;
    case AT_UAIR:
        uair_count = 0;
        if (runeL && up_strong_pressed) {
            if (left_down) {
                spr_dir = -1;
            } else if (right_down) {
                spr_dir = 1;
            }
            grappled_block = false;
            grappled_platform = false;
            attack = AT_USTRONG;
            set_hitbox_value(AT_USTRONG, 1, HG_HITBOX_GROUP, 0);
            set_hitbox_value(AT_USTRONG, 2, HG_HITBOX_GROUP, 0);
            grabbed = -1; // Reset the grabbed variable, just in case
            slam_hit = false; // Reset the slam hitbox
        }
        break;
    case AT_TAUNT:
    	if (ambi_alt) {
    		attack = AT_TAUNT_2;
    	}
}

// Charge percent increase
if ((steam >= 1 || steam <= -1) && (v_steam <= -1)) {
    // Double charge
    // This goes through and automatically buffs all the hitboxes in the
    // attack you're currently in
    var hitbox_amt = get_num_hitboxes(attack);
    for (i = 1; i <= hitbox_amt; i++) {
    	reset_hitbox_value(attack, i, HG_DAMAGE); // Starts it at normal dmg
    	var prev_dmg = get_hitbox_value(attack, i, HG_DAMAGE);
    	set_hitbox_value(attack, i, HG_DAMAGE, prev_dmg + 3);
    }
    // Some manual exceptions to the rule
    if (attack == AT_JAB) {
	    set_hitbox_value(AT_JAB, 2, HG_DAMAGE, 3);
    }
    if (sweatwhirl_charged) {
        set_hitbox_value(AT_FSPECIAL, 1, HG_DAMAGE, 4);
    } else {
        set_hitbox_value(AT_FSPECIAL, 1, HG_DAMAGE, 5);
    }
    if (steam == spr_dir) {
        set_hitbox_value(AT_FAIR, 1, HG_DAMAGE, 12);
    } else {
        set_hitbox_value(AT_FAIR, 1, HG_DAMAGE, 9);
    }
} else if (steam >= 1 || steam <= -1 || v_steam <= -1) {
    // Single charge
    // This goes through and automatically buffs all the hitboxes in the
    // attack you're currently in
    var hitbox_amt = get_num_hitboxes(attack);
    for (i = 1; i <= hitbox_amt; i++) {
    	reset_hitbox_value(attack, i, HG_DAMAGE); // Starts it at normal dmg
    	var prev_dmg = get_hitbox_value(attack, i, HG_DAMAGE);
    	set_hitbox_value(attack, i, HG_DAMAGE, prev_dmg + 2);
    }
    // Some manual exceptions to the rule
    if (attack == AT_JAB) {
	    set_hitbox_value(AT_JAB, 2, HG_DAMAGE, 2);
    }
    // This handles moves with multiple things
    if (sweatwhirl_charged) {
        set_hitbox_value(AT_FSPECIAL, 1, HG_DAMAGE, 3);
    } else {
        set_hitbox_value(AT_FSPECIAL, 1, HG_DAMAGE, 4);
    }
    if (steam == spr_dir) {
        set_hitbox_value(AT_FAIR, 1, HG_DAMAGE, 11);
    } else {
        set_hitbox_value(AT_FAIR, 1, HG_DAMAGE, 8);
    }
} else {
	// Sets it to normal if there is no charge
    var hitbox_amt = get_num_hitboxes(attack);
    for (i = 1; i <= hitbox_amt; i++) {
    	reset_hitbox_value(attack, i, HG_DAMAGE);
    }
}

// Specific charge moves
// Vertical charge
if (v_steam <= -1) {
    // Charge USPECIAL
    if (!down_down || (down_down && up_down)) {
	    somersault_charged = true;
	    set_window_value(AT_USPECIAL, 2, AG_WINDOW_VSPEED, -25);
	    set_window_value(AT_USPECIAL, 2, AG_WINDOW_HSPEED, 5);
	    set_hitbox_value(AT_USPECIAL, 1, HG_ANGLE, 80);
	    set_window_value(AT_USPECIAL, 1, AG_WINDOW_SFX, asset_get("sfx_swipe_heavy1"));
	    set_hitbox_value(AT_USPECIAL, 1, HG_BASE_KNOCKBACK, 10);
	    set_hitbox_value(AT_USPECIAL, 1, HG_KNOCKBACK_SCALING, 1.2);
	    set_hitbox_value(AT_USPECIAL, 1, HG_VISUAL_EFFECT, 304); // Big Hit Effect
	    set_hitbox_value(AT_USPECIAL, 1, HG_HIT_SFX, asset_get("sfx_blow_heavy2"));
	    set_hitbox_value(AT_USPECIAL, 1, HG_HITPAUSE_SCALING, 0.45);
	    set_hitbox_value(AT_USPECIAL, 1, HG_VISUAL_EFFECT, big_hit_fx);
	    set_hitbox_value(AT_USPECIAL, 2, HG_KNOCKBACK_SCALING, 0.7);
	    set_hitbox_value(AT_USPECIAL, 2, HG_HITPAUSE_SCALING, 0.45);
	    set_hitbox_value(AT_USPECIAL, 2, HG_HIT_SFX, asset_get("sfx_blow_medium2"));
	    set_hitbox_value(AT_USPECIAL, 2, HG_VISUAL_EFFECT, 304);
    }
    // Charge DSTRONG
    dstrong_charged = true;
    set_attack_value(AT_DSTRONG, AG_SPRITE, sprite_get("dstrong"));
    set_attack_value(AT_DSTRONG, AG_HURTBOX_SPRITE, sprite_get("dstrong_parry_hurt"));
    reset_hitbox_value(AT_DSTRONG, 2, HG_WINDOW);
    reset_hitbox_value(AT_DSTRONG, 3, HG_WINDOW);
    if (!runeM) {
    	set_hitbox_value(AT_DSTRONG, 1, HG_WINDOW_CREATION_FRAME, 3);
    	set_hitbox_value(AT_DSTRONG, 1, HG_LIFETIME, 3);
    	set_window_value(AT_DSTRONG, 2, AG_WINDOW_LENGTH, 20);
    }
} else {
    // Reset USPECIAL
    somersault_charged = false;
    reset_window_value(AT_USPECIAL, 2, AG_WINDOW_VSPEED);
    reset_window_value(AT_USPECIAL, 2, AG_WINDOW_HSPEED);
    reset_hitbox_value(AT_USPECIAL, 1, HG_ANGLE);
    reset_window_value(AT_USPECIAL, 1, AG_WINDOW_SFX);
    reset_hitbox_value(AT_USPECIAL, 1, HG_BASE_KNOCKBACK);
    reset_hitbox_value(AT_USPECIAL, 1, HG_KNOCKBACK_SCALING);
    reset_hitbox_value(AT_USPECIAL, 1, HG_VISUAL_EFFECT);
    reset_hitbox_value(AT_USPECIAL, 1, HG_HIT_SFX);
    reset_hitbox_value(AT_USPECIAL, 1, HG_HITPAUSE_SCALING);
    reset_hitbox_value(AT_USPECIAL, 1, HG_VISUAL_EFFECT);
    reset_hitbox_value(AT_USPECIAL, 2, HG_KNOCKBACK_SCALING);
    reset_hitbox_value(AT_USPECIAL, 2, HG_HITPAUSE_SCALING);
    reset_hitbox_value(AT_USPECIAL, 2, HG_HIT_SFX);
    reset_hitbox_value(AT_USPECIAL, 2, HG_VISUAL_EFFECT);
    // Reset DSTRONG
    if (!runeM) {
	    dstrong_charged = false;
	    reset_attack_value(AT_DSTRONG, AG_SPRITE);
	    reset_attack_value(AT_DSTRONG, AG_HURTBOX_SPRITE);
    }
	reset_hitbox_value(AT_DSTRONG, 2, HG_WINDOW);
	reset_hitbox_value(AT_DSTRONG, 3, HG_WINDOW);
    reset_window_value(AT_DSTRONG, 2, AG_WINDOW_ANIM_FRAMES);
    reset_hitbox_value(AT_DSTRONG, 1, HG_WINDOW_CREATION_FRAME);
    reset_hitbox_value(AT_DSTRONG, 1, HG_LIFETIME);
	reset_window_value(AT_DSTRONG, 2, AG_WINDOW_LENGTH);
    reset_window_value(AT_DSTRONG, 4, AG_WINDOW_LENGTH);
}

if (runeM) {
	if (v_steam > -1) {
		fake_dstrong_charge = true;
	} else {
		fake_dstrong_charge = false;
	}
	dstrong_charged = true;
    set_attack_value(AT_DSTRONG, AG_SPRITE, sprite_get("dstrong"));
    set_attack_value(AT_DSTRONG, AG_HURTBOX_SPRITE, sprite_get("dstrong_parry_hurt"));
}

// Horizontal charge reverse
if ((steam <= -1 && spr_dir == 1) || (steam >= 1 && spr_dir == -1) || (inf_steam)) {
    // Sweatwhirl
    if (!sweatwhirl_exists) {
        // Makes it so it only changes if the sweatwhirl isn't active
        sweatwhirl_charged = true;
        // FSPECIAL
        set_window_value(AT_FSPECIAL, 3, AG_WINDOW_LENGTH, 14);
        set_hitbox_value(AT_FSPECIAL, 1, HG_PROJECTILE_HSPEED, sweatwhirl_charged_hspeed);
        set_hitbox_value(AT_FSPECIAL, 1, HG_BASE_KNOCKBACK, 1);
        set_hitbox_value(AT_FSPECIAL, 1, HG_KNOCKBACK_SCALING, 0);
        set_hitbox_value(AT_FSPECIAL, 1, HG_BASE_HITPAUSE, 4);
        set_hitbox_value(AT_FSPECIAL, 1, HG_HITPAUSE_SCALING, 0.25);
        set_hitbox_value(AT_FSPECIAL, 1, HG_SDI_MULTIPLIER, 0.01);
        set_hitbox_value(AT_FSPECIAL, 1, HG_HIT_SFX, sound_get("sfx_stinky_steam1"));
        // NSPECIAL
        set_window_value(AT_NSPECIAL, 3, AG_WINDOW_LENGTH, 14);
        set_hitbox_value(AT_NSPECIAL, 1, HG_PROJECTILE_HSPEED, sweatwhirl_charged_hspeed);
        set_hitbox_value(AT_NSPECIAL, 1, HG_BASE_KNOCKBACK, 1);
        set_hitbox_value(AT_NSPECIAL, 1, HG_KNOCKBACK_SCALING, 0);
        set_hitbox_value(AT_NSPECIAL, 1, HG_BASE_HITPAUSE, 4);
        set_hitbox_value(AT_NSPECIAL, 1, HG_HITPAUSE_SCALING, 0.25);
        set_hitbox_value(AT_NSPECIAL, 1, HG_SDI_MULTIPLIER, 0.01);
        set_hitbox_value(AT_NSPECIAL, 1, HG_HITBOX_X, 32);
        set_hitbox_value(AT_NSPECIAL, 1, HG_HITBOX_Y, -38);
        set_hitbox_value(AT_NSPECIAL, 1, HG_PROJECTILE_IS_TRANSCENDENT, false);
        set_hitbox_value(AT_NSPECIAL, 1, HG_IGNORES_PROJECTILES, 0);
        set_window_value(AT_NSPECIAL, 2, AG_WINDOW_SFX, sound_get("sfx_stinky_steam2"));
        set_hitbox_value(AT_NSPECIAL, 1, HG_HIT_SFX, sound_get("sfx_stinky_steam1"));
    }
    
} else {
    // Sweatwhirl
    if (!sweatwhirl_exists || runeO) {
        // Makes it so it only changes if the sweatwhirl isn't active
        sweatwhirl_charged = false;
        // FSPECIAL
        reset_window_value(AT_FSPECIAL, 3, AG_WINDOW_LENGTH);
        reset_hitbox_value(AT_FSPECIAL, 1, HG_PROJECTILE_HSPEED);
        reset_hitbox_value(AT_FSPECIAL, 1, HG_LIFETIME);
        reset_hitbox_value(AT_FSPECIAL, 1, HG_BASE_KNOCKBACK);
        reset_hitbox_value(AT_FSPECIAL, 1, HG_KNOCKBACK_SCALING);
        reset_hitbox_value(AT_FSPECIAL, 1, HG_BASE_HITPAUSE);
        reset_hitbox_value(AT_FSPECIAL, 1, HG_HITPAUSE_SCALING);
        reset_hitbox_value(AT_FSPECIAL, 1, HG_SDI_MULTIPLIER);
        reset_hitbox_value(AT_FSPECIAL, 1, HG_HIT_SFX);
        // NSPECIAL
        reset_window_value(AT_NSPECIAL, 3, AG_WINDOW_LENGTH);
        reset_hitbox_value(AT_NSPECIAL, 1, HG_PROJECTILE_HSPEED);
        reset_hitbox_value(AT_NSPECIAL, 1, HG_LIFETIME);
        reset_hitbox_value(AT_NSPECIAL, 1, HG_BASE_KNOCKBACK);
        reset_hitbox_value(AT_NSPECIAL, 1, HG_KNOCKBACK_SCALING);
        reset_hitbox_value(AT_NSPECIAL, 1, HG_BASE_HITPAUSE);
        reset_hitbox_value(AT_NSPECIAL, 1, HG_HITPAUSE_SCALING);
        reset_hitbox_value(AT_NSPECIAL, 1, HG_SDI_MULTIPLIER);
        reset_hitbox_value(AT_NSPECIAL, 1, HG_HITBOX_X);
        reset_hitbox_value(AT_NSPECIAL, 1, HG_HITBOX_Y);
        reset_hitbox_value(AT_NSPECIAL, 1, HG_PROJECTILE_IS_TRANSCENDENT)
        reset_hitbox_value(AT_NSPECIAL, 1, HG_IGNORES_PROJECTILES)
        reset_window_value(AT_NSPECIAL, 2, AG_WINDOW_SFX);
        reset_hitbox_value(AT_NSPECIAL, 1, HG_HIT_SFX);
    }
}

// Horizontal charge directed
if ((steam - spr_dir > -0.03 && steam - spr_dir < 0.03) || inf_steam) {
    // DATTACK
    dattack_strong = true;
    set_window_value(AT_DATTACK, 1, AG_WINDOW_HSPEED, 8.5);
    set_hitbox_value(AT_DATTACK, 1, HG_KNOCKBACK_SCALING, 0.55);
    set_hitbox_value(AT_DATTACK, 2, HG_KNOCKBACK_SCALING, 0.70);
    set_hitbox_value(AT_DATTACK, 1, HG_HIT_SFX, asset_get("sfx_blow_heavy2"));
    set_hitbox_value(AT_DSPECIAL, 1, HG_HIT_PARTICLE_NUM, 1);
    // FAIR
    fair_strong = true;
    set_attack_value(AT_FAIR, AG_SPRITE, sprite_get("fair_strong"));
    set_attack_value(AT_FAIR, AG_LANDING_LAG, 8);
    set_attack_value(AT_FAIR, AG_HURTBOX_SPRITE, sprite_get("fair_strong_hurt"));
    
    // Startup
    set_window_value(AT_FAIR, 1, AG_WINDOW_LENGTH, 15);
    set_window_value(AT_FAIR, 1, AG_WINDOW_ANIM_FRAMES, 4);
    set_window_value(AT_FAIR, 1, AG_WINDOW_SFX, asset_get("sfx_swipe_heavy2"));
    set_window_value(AT_FAIR, 1, AG_WINDOW_SFX_FRAME, 14);
    
    // Attack
    set_window_value(AT_FAIR, 2, AG_WINDOW_LENGTH, 2);
    set_window_value(AT_FAIR, 2, AG_WINDOW_ANIM_FRAMES, 1);
    set_window_value(AT_FAIR, 2, AG_WINDOW_ANIM_FRAME_START, 4);
    
    // Endlag
    set_window_value(AT_FAIR, 3, AG_WINDOW_LENGTH, 15);
    set_window_value(AT_FAIR, 3, AG_WINDOW_HAS_WHIFFLAG, 1);
    set_window_value(AT_FAIR, 3, AG_WINDOW_ANIM_FRAMES, 2);
    set_window_value(AT_FAIR, 3, AG_WINDOW_ANIM_FRAME_START, 5);
    
    // Fist
    set_hitbox_value(AT_FAIR, 1, HG_ANGLE, 290);
    set_hitbox_value(AT_FAIR, 1, HG_BASE_KNOCKBACK, 6);
    set_hitbox_value(AT_FAIR, 1, HG_KNOCKBACK_SCALING, 0.7);
    set_hitbox_value(AT_FAIR, 1, HG_BASE_HITPAUSE, 8);
    set_hitbox_value(AT_FAIR, 1, HG_HITPAUSE_SCALING, 0.7);
    set_hitbox_value(AT_FAIR, 1, HG_HIT_SFX, asset_get("sfx_blow_heavy2"));
} else {
    // DATTACK
    dattack_strong = false;
    reset_window_value(AT_DATTACK, 1, AG_WINDOW_HSPEED);
    reset_hitbox_value(AT_DATTACK, 1, HG_KNOCKBACK_SCALING);
    reset_hitbox_value(AT_DATTACK, 2, HG_KNOCKBACK_SCALING);
    reset_hitbox_value(AT_DATTACK, 1, HG_HIT_SFX);
    reset_hitbox_value(AT_DSPECIAL, 1, HG_HIT_PARTICLE_NUM);
    // FAIR
    fair_strong = false;
    reset_attack_value(AT_FAIR, AG_SPRITE);
    reset_attack_value(AT_FAIR, AG_LANDING_LAG);
    reset_attack_value(AT_FAIR, AG_HURTBOX_SPRITE);
    
    // Startup
    reset_window_value(AT_FAIR, 1, AG_WINDOW_LENGTH);
    reset_window_value(AT_FAIR, 1, AG_WINDOW_ANIM_FRAMES);
    reset_window_value(AT_FAIR, 1, AG_WINDOW_SFX);
    reset_window_value(AT_FAIR, 1, AG_WINDOW_SFX_FRAME);
    
    // Attack
    reset_window_value(AT_FAIR, 2, AG_WINDOW_LENGTH);
    reset_window_value(AT_FAIR, 2, AG_WINDOW_ANIM_FRAMES);
    reset_window_value(AT_FAIR, 2, AG_WINDOW_ANIM_FRAME_START);

    // Endlag
    reset_window_value(AT_FAIR, 3, AG_WINDOW_LENGTH);
    reset_window_value(AT_FAIR, 3, AG_WINDOW_HAS_WHIFFLAG);
    reset_window_value(AT_FAIR, 3, AG_WINDOW_ANIM_FRAMES);
    reset_window_value(AT_FAIR, 3, AG_WINDOW_ANIM_FRAME_START);
    
    // Fist
    reset_hitbox_value(AT_FAIR, 1, HG_ANGLE);
    reset_hitbox_value(AT_FAIR, 1, HG_BASE_KNOCKBACK);
    reset_hitbox_value(AT_FAIR, 1, HG_KNOCKBACK_SCALING);
    reset_hitbox_value(AT_FAIR, 1, HG_BASE_HITPAUSE);
    reset_hitbox_value(AT_FAIR, 1, HG_HITPAUSE_SCALING,);
    reset_hitbox_value(AT_FAIR, 1, HG_HIT_SFX);
}