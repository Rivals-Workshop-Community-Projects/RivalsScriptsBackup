//set_attack

#macro DEFAULT      0
#macro MOON         1
#macro FIRE		    2
#macro EARTH        3
#macro ICE          4
#macro WATER        5
#macro LIGHTNING    6
#macro SHADOW       7

var moon_crit = random_func(0, 4, true) == 0

proj_parried = false

//var force_update_loadout = false
if stored_spirit != DEFAULT { //reset all non-move elements to previous value
    switch attack {
        case AT_NSPECIAL:
        if loadout[0] == DEFAULT {
            loadout_cols[0] = get_spirit_col(stored_spirit)
            loadout[0] = stored_spirit
            stored_spirit = DEFAULT
            update_loadout = true
        }
        break;
        
        case AT_FSPECIAL:
        if loadout[1] == DEFAULT {
            loadout_cols[1] = get_spirit_col(stored_spirit)
            loadout[1] = stored_spirit
            stored_spirit = DEFAULT
            update_loadout = true
        }
        break;
        
        case AT_USPECIAL:
        if loadout[2] == DEFAULT {
            loadout_cols[2] = get_spirit_col(stored_spirit)
            loadout[2] = stored_spirit
            stored_spirit = DEFAULT
            update_loadout = true
        }
        break;
        
        case AT_DSPECIAL:
        if loadout[3] == DEFAULT {
            loadout_cols[3] = get_spirit_col(stored_spirit)
            loadout[3] = stored_spirit
            stored_spirit = DEFAULT
            update_loadout = true
        }
        break;
    }
}

if move_cooldown[attack] == 0 scythe_cancel = false

reset_hitbox_value(AT_FSPECIAL, 2, HG_DAMAGE)
reset_hitbox_value(AT_FSPECIAL, 2, HG_ANGLE);
reset_hitbox_value(AT_FSPECIAL, 2, HG_TECHABLE);
reset_hitbox_value(AT_FSPECIAL, 2, HG_HITSTUN_MULTIPLIER);

if update_loadout {
	if !debug_reset_loadout {
	    loadout_apply_timer = 20
	    sound_play(sound_get("SpiritBlessingGetPlayerEffectSound"))
	}
	debug_reset_loadout = false
	//nspecial
	reset_window_value(AT_NSPECIAL, 1, AG_WINDOW_LENGTH);
	reset_window_value(AT_NSPECIAL, 1, AG_WINDOW_SFX_FRAME);
	reset_window_value(AT_NSPECIAL, 3, AG_WINDOW_LENGTH);
	reset_window_value(AT_NSPECIAL, 2, AG_WINDOW_LENGTH);
	reset_window_value(AT_NSPECIAL, 1, AG_WINDOW_SFX);
	
	
	
	switch loadout[0] {
		case DEFAULT:
		break;
		
		case MOON:
		set_window_value(AT_NSPECIAL, 1, AG_WINDOW_LENGTH, 10);
		set_window_value(AT_NSPECIAL, 1, AG_WINDOW_SFX_FRAME, 8);
		set_window_value(AT_NSPECIAL, 3, AG_WINDOW_LENGTH, 15);
		
		break;
		
		case FIRE:
		set_window_value(AT_NSPECIAL, 1, AG_WINDOW_LENGTH, 12);
		set_window_value(AT_NSPECIAL, 1, AG_WINDOW_SFX_FRAME, 10);
		set_window_value(AT_NSPECIAL, 2, AG_WINDOW_LENGTH, 16);
		set_window_value(AT_NSPECIAL, 3, AG_WINDOW_LENGTH, 12);
		break;
		
		case EARTH:
		set_window_value(AT_NSPECIAL, 1, AG_WINDOW_LENGTH, 10);
		set_window_value(AT_NSPECIAL, 1, AG_WINDOW_SFX_FRAME, 8);
		set_window_value(AT_NSPECIAL, 3, AG_WINDOW_LENGTH, 15);
		break;
		
		case ICE:
		set_window_value(AT_NSPECIAL, 1, AG_WINDOW_LENGTH, 12);
		set_window_value(AT_NSPECIAL, 1, AG_WINDOW_SFX_FRAME, 10);
		set_window_value(AT_NSPECIAL, 1, AG_WINDOW_SFX, asset_get("sfx_swipe_medium2"));
		break;
		
		case WATER:
		set_window_value(AT_NSPECIAL, 1, AG_WINDOW_SFX, asset_get("sfx_swipe_medium1"));
		set_window_value(AT_NSPECIAL, 1, AG_WINDOW_LENGTH, 12);
		set_window_value(AT_NSPECIAL, 1, AG_WINDOW_SFX_FRAME, 10);
		set_window_value(AT_NSPECIAL, 2, AG_WINDOW_LENGTH, 16);
		set_window_value(AT_NSPECIAL, 3, AG_WINDOW_LENGTH, 12);
		break;
		
		case LIGHTNING:
		set_window_value(AT_NSPECIAL, 1, AG_WINDOW_LENGTH, 10);
		set_window_value(AT_NSPECIAL, 1, AG_WINDOW_SFX_FRAME, 8);
		set_window_value(AT_NSPECIAL, 2, AG_WINDOW_LENGTH, 16);
		break;
		
		case SHADOW:
		set_window_value(AT_NSPECIAL, 1, AG_WINDOW_SFX, sound_get("BladesAttackSide1"));
		set_window_value(AT_NSPECIAL, 1, AG_WINDOW_LENGTH, 10);
		set_window_value(AT_NSPECIAL, 1, AG_WINDOW_SFX_FRAME, 8);
		set_window_value(AT_NSPECIAL, 3, AG_WINDOW_LENGTH, 15);
		break;
	}
	
	//fspecial
	reset_hitbox_value(AT_FSPECIAL, 1, HG_EFFECT);
	reset_hitbox_value(AT_FSPECIAL, 2, HG_EFFECT)
	reset_hitbox_value(AT_FSPECIAL, 2, HG_BASE_KNOCKBACK)
	reset_hitbox_value(AT_FSPECIAL, 2, HG_KNOCKBACK_SCALING)
	reset_hitbox_value(AT_FSPECIAL, 2, HG_BASE_HITPAUSE)
	reset_hitbox_value(AT_FSPECIAL, 2, HG_VISUAL_EFFECT)
	
	switch loadout[1] {
		case FIRE:
		set_hitbox_value(AT_FSPECIAL, 1, HG_EFFECT, 1);
		set_hitbox_value(AT_FSPECIAL, 2, HG_EFFECT, 1);
		break;
		
		case SHADOW:
		set_hitbox_value(AT_FSPECIAL, 1, HG_EFFECT, 22);
		set_hitbox_value(AT_FSPECIAL, 2, HG_EFFECT, 22);
		break;
		
		case WATER:
		set_hitbox_value(AT_FSPECIAL, 1, HG_EFFECT, 24);
		set_hitbox_value(AT_FSPECIAL, 2, HG_EFFECT, 24);
		break;
	}
	
	//dspecial
	reset_hitbox_value(AT_DSPECIAL, 1, HG_EFFECT);
	reset_hitbox_value(AT_DSPECIAL, 2, HG_EFFECT);
	reset_hitbox_value(AT_DSPECIAL_2, 1, HG_EFFECT);
	
	switch loadout[3] {
		case FIRE:
		set_hitbox_value(AT_DSPECIAL, 1, HG_EFFECT, 1);
		set_hitbox_value(AT_DSPECIAL, 2, HG_EFFECT, 1);
		set_hitbox_value(AT_DSPECIAL_2, 1, HG_EFFECT, 1);
		break;
		
		case SHADOW:
		set_hitbox_value(AT_DSPECIAL, 1, HG_EFFECT, 22);
		set_hitbox_value(AT_DSPECIAL, 2, HG_EFFECT, 22);
		set_hitbox_value(AT_DSPECIAL_2, 1, HG_EFFECT, 22);
		break;
		
		case WATER:
		set_hitbox_value(AT_DSPECIAL, 1, HG_EFFECT, 24);
		set_hitbox_value(AT_DSPECIAL, 2, HG_EFFECT, 24);
		set_hitbox_value(AT_DSPECIAL_2, 1, HG_EFFECT, 24);
		break;
	}
	update_loadout = false
}

//moon crits
if loadout[0] == MOON {
	if moon_crit {
		set_hitbox_value(AT_NSPECIAL, 2, HG_EFFECT, 20)
		set_hitbox_value(AT_NSPECIAL, 2, HG_BASE_KNOCKBACK, 10)
		set_hitbox_value(AT_NSPECIAL, 2, HG_KNOCKBACK_SCALING, 0.9)
		set_hitbox_value(AT_NSPECIAL, 2, HG_BASE_HITPAUSE, 18)
		set_hitbox_value(AT_NSPECIAL, 2, HG_VISUAL_EFFECT, vfx_moon_crit)
		set_hitbox_value(AT_NSPECIAL, 2, HG_DAMAGE, 12)
	} else {
		reset_hitbox_value(AT_NSPECIAL, 2, HG_EFFECT)
		reset_hitbox_value(AT_NSPECIAL, 2, HG_BASE_KNOCKBACK)
		reset_hitbox_value(AT_NSPECIAL, 2, HG_KNOCKBACK_SCALING)
		reset_hitbox_value(AT_NSPECIAL, 2, HG_BASE_HITPAUSE)
		reset_hitbox_value(AT_NSPECIAL, 2, HG_VISUAL_EFFECT)
		reset_hitbox_value(AT_NSPECIAL, 2, HG_DAMAGE)
	}
}
if loadout[1] == MOON {
	if moon_crit {
		set_hitbox_value(AT_FSPECIAL, 2, HG_EFFECT, 20)
		set_hitbox_value(AT_FSPECIAL, 2, HG_BASE_KNOCKBACK, 9)
		set_hitbox_value(AT_FSPECIAL, 2, HG_KNOCKBACK_SCALING, 1.0)
		set_hitbox_value(AT_FSPECIAL, 2, HG_BASE_HITPAUSE, 16)
		set_hitbox_value(AT_FSPECIAL, 2, HG_VISUAL_EFFECT, vfx_moon_crit)
		set_hitbox_value(AT_FSPECIAL, 2, HG_DAMAGE, 12)
	} else {
		reset_hitbox_value(AT_FSPECIAL, 2, HG_EFFECT)
		reset_hitbox_value(AT_FSPECIAL, 2, HG_BASE_KNOCKBACK)
		reset_hitbox_value(AT_FSPECIAL, 2, HG_KNOCKBACK_SCALING)
		reset_hitbox_value(AT_FSPECIAL, 2, HG_BASE_HITPAUSE)
		reset_hitbox_value(AT_FSPECIAL, 2, HG_VISUAL_EFFECT)
		reset_hitbox_value(AT_FSPECIAL, 2, HG_DAMAGE)
	}
}
if loadout[2] == MOON {
	if moon_crit {
		set_hitbox_value(AT_USPECIAL, 3, HG_EFFECT, 20)
		set_hitbox_value(AT_USPECIAL, 3, HG_BASE_HITPAUSE, 6)
		set_hitbox_value(AT_USPECIAL, 3, HG_VISUAL_EFFECT, vfx_moon_crit)
		set_hitbox_value(AT_USPECIAL, 3, HG_DAMAGE, 4)
		
		set_hitbox_value(AT_USPECIAL, 4, HG_EFFECT, 20)
		set_hitbox_value(AT_USPECIAL, 4, HG_BASE_KNOCKBACK, 9)
		set_hitbox_value(AT_USPECIAL, 4, HG_KNOCKBACK_SCALING, 0.6)
		set_hitbox_value(AT_USPECIAL, 4, HG_BASE_HITPAUSE, 16)
		set_hitbox_value(AT_USPECIAL, 4, HG_VISUAL_EFFECT, vfx_moon_crit)
		set_hitbox_value(AT_USPECIAL, 4, HG_DAMAGE, 10)
	} else {
		reset_hitbox_value(AT_USPECIAL, 3, HG_EFFECT)
		reset_hitbox_value(AT_USPECIAL, 3, HG_BASE_HITPAUSE)
		reset_hitbox_value(AT_USPECIAL, 3, HG_VISUAL_EFFECT)
		reset_hitbox_value(AT_USPECIAL, 3, HG_DAMAGE)
		
		reset_hitbox_value(AT_USPECIAL, 4, HG_EFFECT)
		reset_hitbox_value(AT_USPECIAL, 4, HG_BASE_KNOCKBACK)
		reset_hitbox_value(AT_USPECIAL, 4, HG_KNOCKBACK_SCALING)
		reset_hitbox_value(AT_USPECIAL, 4, HG_BASE_HITPAUSE)
		reset_hitbox_value(AT_USPECIAL, 4, HG_VISUAL_EFFECT)
		reset_hitbox_value(AT_USPECIAL, 4, HG_DAMAGE)
	}
}

if loadout[3] == MOON {
	if moon_crit {
		set_hitbox_value(AT_DSPECIAL, 1, HG_EFFECT, 20)
		set_hitbox_value(AT_DSPECIAL, 1, HG_BASE_KNOCKBACK, 10)
		set_hitbox_value(AT_DSPECIAL, 1, HG_KNOCKBACK_SCALING, 1.0)
		set_hitbox_value(AT_DSPECIAL, 1, HG_BASE_HITPAUSE, 20)
		set_hitbox_value(AT_DSPECIAL, 1, HG_VISUAL_EFFECT, vfx_moon_crit)
		set_hitbox_value(AT_DSPECIAL, 1, HG_DAMAGE, 16)
		
		set_hitbox_value(AT_DSPECIAL_2, 1, HG_EFFECT, 20)
		set_hitbox_value(AT_DSPECIAL_2, 1, HG_BASE_KNOCKBACK, 9)
		set_hitbox_value(AT_DSPECIAL_2, 1, HG_KNOCKBACK_SCALING, 0.6)
		set_hitbox_value(AT_DSPECIAL_2, 1, HG_BASE_HITPAUSE, 16)
		set_hitbox_value(AT_DSPECIAL_2, 1, HG_VISUAL_EFFECT, vfx_moon_crit)
		set_hitbox_value(AT_DSPECIAL_2, 1, HG_DAMAGE, 14)
	} else {
		reset_hitbox_value(AT_DSPECIAL, 1, HG_EFFECT)
		reset_hitbox_value(AT_DSPECIAL, 1, HG_BASE_KNOCKBACK)
		reset_hitbox_value(AT_DSPECIAL, 1, HG_KNOCKBACK_SCALING)
		reset_hitbox_value(AT_DSPECIAL, 1, HG_BASE_HITPAUSE)
		reset_hitbox_value(AT_DSPECIAL, 1, HG_VISUAL_EFFECT)
		reset_hitbox_value(AT_DSPECIAL, 1, HG_DAMAGE)
		
		reset_hitbox_value(AT_DSPECIAL_2, 1, HG_EFFECT)
		reset_hitbox_value(AT_DSPECIAL_2, 1, HG_BASE_KNOCKBACK)
		reset_hitbox_value(AT_DSPECIAL_2, 1, HG_KNOCKBACK_SCALING)
		reset_hitbox_value(AT_DSPECIAL_2, 1, HG_BASE_HITPAUSE)
		reset_hitbox_value(AT_DSPECIAL_2, 1, HG_VISUAL_EFFECT)
		reset_hitbox_value(AT_DSPECIAL_2, 1, HG_DAMAGE)
	}
}


switched_stances = false
reset_window_value(AT_USPECIAL, 2, AG_WINDOW_LENGTH);
if attack == AT_USPECIAL {
	scythe_cancel = false
    switch loadout[2] {
        case DEFAULT:
        var slot1 = 0
        var slot2 = 5
        var col_slot = get_player_color(player)
        var col_1_r = get_color_profile_slot_r(col_slot, slot1)
        var col_1_g = get_color_profile_slot_g(col_slot, slot1)
        var col_1_b = get_color_profile_slot_b(col_slot, slot1)
        holo_col_1 = make_color_rgb(col_1_r, col_1_g, col_1_b)
        
        var col_2_r = get_color_profile_slot_r(col_slot, slot2)
        var col_2_g = get_color_profile_slot_g(col_slot, slot2)
        var col_2_b = get_color_profile_slot_b(col_slot, slot2)
        holo_col_2 = make_color_rgb(col_2_r, col_2_g, col_2_b)
        break;
        
        case SHADOW:
        holo_col_1 = $96045f
        holo_col_2 = $e20ab5
        break;
        
        case LIGHTNING:
        //holo_col_1 = $1cffff
        //holo_col_2 = $e9ffff
        break;
        
        case MOON:
        holo_col_1 = $ff00ff
        holo_col_2 = $ffc8ff
        break;
        
        case EARTH:
        holo_col_1 = $00ae28
        holo_col_2 = $00ffc2
        break;
        
        case FIRE:
        holo_col_1 = $0025a8
        holo_col_2 = $62d8ff
        break;
        
        case ICE:
        holo_col_1 = $a8a000
        holo_col_2 = $f8ffe4
        break;
        
        case WATER:
        holo_col_1 = $a72424
        holo_col_2 = $fbeabb
        break;
    }
    
}

if attack == AT_FSPECIAL && move_cooldown[AT_FSPECIAL] == 0 {
	scythe_cancel = false
    fspec_has_hit = false
    fspec_hit_player = noone
    fspec_goto_rush = false
    fspec_wall_rush = false
    fspec_scythe_rush = false
    with oPlayer if id != other.id && ("omen_fspec_owner" in self) && omen_fspec_owner == other.id {
        omen_fspec_owner = noone
    }
}

//loadout = [random_func(timer, 7, true),0,0,0]

if attack == AT_TAUNT {
    //print('a')
}

if attack == AT_DSPECIAL {
    if dspec_stance == 1 {
        attack = AT_DSPECIAL_2
    }
}

#define get_spirit_col(s)
var col = DEFAULT
switch s {
	case DEFAULT: col = c_white break;
	case MOON: col = $ff00ff break;
	case FIRE: col = $0000ff break;
	case EARTH: col = $00ff00 break;
	case ICE: col = $ffff00 break;
	case WATER: col = $ff0000 break;
	case LIGHTNING: col = $00ffff break;
	case SHADOW: col = $ff0099 break;
}
return col;