// ===== MACH MODE =====
if nspec_mach_timer > 0 {
	nspec_mach_timer -= 1;
	move_cooldown[AT_NSPECIAL] = 2;
	
	// physics
	max_jump_hsp = nspec_mach_jump_hsp;
	if !free { frict = ground_friction * nspec_mach_frict_mult; }
	
	// sound effects
	if nspec_mach_sound == noone { // loop
		nspec_mach_sound = sound_play(sfx_mach_loop, true, 0);
	}
	else if nspec_mach_timer < 30 {
		sound_volume(nspec_mach_sound, nspec_mach_timer / 30, 0);
	}
	if nspec_mach_timer == 0 { // end
		//sound_play(sfx_mach_end);
	}
}
else {
	// physics
	max_jump_hsp = normal_max_jump_hsp;
	
	// sound effects
	if nspec_mach_sound != noone {
		sound_stop(nspec_mach_sound);
		nspec_mach_sound = noone;
	}
}

// store afterimage info
var f = nspec_ai_freq
if get_gameplay_time() % f == 0 {
	if nspec_mach_timer > 0 {
		nspec_ai_cur = min(nspec_ai_cur + 1, nspec_ai_tot, ceil(nspec_mach_timer/f));
	}
	else {
		nspec_ai_cur = max(nspec_ai_cur - 1, 0);
	}
	
	nspec_ai_ind = (nspec_ai_ind + 1) % nspec_ai_tot;
	nspec_afterimages[nspec_ai_ind] = {
		sprite: sprite_index,
		subimg: image_index,
		x: x,
		y: y,
		xscale: (1 + small_sprites) * spr_dir,
		yscale: 1 + small_sprites,
		rot: spr_angle,
		col: (get_gameplay_time() % (f*2) < f ? $5555FF : $77FF77),
		alpha: image_alpha
	}
}

// ===== LATE ATTACK UPDATE =====
if state == clamp(state, 5, 6) switch attack {
    case AT_UAIR:
        if window >= 2 && image_index < 4 { hud_offset = 30; }
        break;
    case AT_UTILT:
        if window >= 2 && image_index < 8 { hud_offset = 70; }
        break;
    case AT_USTRONG:
    	if window >= 3 && image_index < 10 { hud_offset = 80; }
    	break;
	case AT_USPECIAL:
		if window >= 2 && image_index < 13 { hud_offset = 70; }
		break;
	case AT_NSPECIAL:
		if window == 5 && window_timer == 0 && !hitpause {
			super_armor = false;
			sound_play(sfx_mach_dash);
		}
		break;
    case AT_FTHROW:
        if window == 3 && window_timer == 0 && !hitpause {
            sound_play(sfx_fthrow1, false, noone, 0.6, 0.7);
            sound_play(sfx_fthrow2, false, noone, 0.6, 0.8);
        }
        break;
    case AT_DSTRONG:
        if window == 8 && window_timer == 0 {
            var cheese_hsp, cheese_vsp;
            var cheese_add = strong_charge / 40;
            
            if up_down {
            	cheese_hsp = 2;
            	cheese_vsp = -8;
            }
            else if down_down {
            	cheese_hsp = 6;
            	cheese_vsp = -4;
            }
            else {
            	cheese_hsp = 3;
            	cheese_vsp = -6;
            }
            
            var cheese = create_hitbox(attack, 4, x + 60*spr_dir, y - 38);
			cheese.hsp = (cheese_hsp + cheese_add) * spr_dir;
			cheese.vsp = cheese_vsp - cheese_add;
        }
        break;
    case AT_TAUNT:
    	if window == 3 && window_timer == 0 {
    		var snd = taunt_sfx_array[random_func(0, 3, true)];
    		taunt_sound = sound_play(snd, false, noone, 1.2);
    	}
    	break;
}
else { // jab parry stuff
	jab_parried = false;
}

// ===== STORAGE =====
was_free = free;
