if has_rock && my_grab_id{
	attack = AT_DSPECIAL_2;
	
	var dir = "none";
	if up_stick_down || up_strong_down dir = "up";
	if down_stick_down || down_strong_down dir = "down";
	if left_stick_down || right_stick_down || left_strong_down || right_strong_down dir = "side";
	
	if dir == "none" && up_down || dir == "up" {
		dspec_throw_angle = 90;
		dspec_throw_strength = 10;
	}
	else if dir == "none" && down_down || dir == "down" {
		dspec_throw_angle = 270;
		dspec_throw_strength = 8;
	}
	else {
		dspec_throw_angle = 30;
		dspec_throw_strength = 9;
	}
	
	// if(my_grab_id != dspec_rock){
	// 	var hfx = spawn_hit_fx(x, y, 303);
	// 	hfx.spr_dir = 1;
	// 	hfx.dspec_throw_angle = dspec_throw_angle;
	// 	switch(dspec_throw_angle){
	// 		case 30:
	// 		hfx.x = x + 35 * spr_dir;
	// 		hfx.y = y - 50;
	// 		hfx.hit_angle = 90 - 45 * spr_dir;
	// 		break;
	// 		case 90:
	// 		hfx.y = y - 100;
	// 		hfx.hit_angle = 90;
	// 		break;
	// 		case 270:
	// 		hfx.x = x + 20 * spr_dir;
	// 		hfx.hit_angle = 270;
	// 		break;
	// 	}
	// }
	
	// if special_pressed dspec_throw_strength *= 1;
	// else if attack_pressed dspec_throw_strength *= 0.8;
	// else dspec_throw_strength *= 1.25;
	window = 1;
	TCG_Kirby_Copy = 4;
	exit;
}

if move_cooldown[attack] exit;

switch attack{
	case AT_UTILT:
		set_attack_value(attack, AG_CATEGORY, 2);
	case AT_JAB: case AT_DTILT:
		accurate_megaman_alt = 0;
		TCG_Kirby_Copy = 4;
	break;
	case AT_FTILT:
		accurate_megaman_alt = 13;
		TCG_Kirby_Copy = 4;
	break;
	case AT_DATTACK:
		accurate_megaman_alt = 7;
		TCG_Kirby_Copy = 9;
	break;
	case AT_FSTRONG:
		sound_play(sound_get("jump"), false, noone, 0.5);
		fstrong_sfx = sound_play(sound_get("fstrong"));
		accurate_megaman_alt = 16;
		TCG_Kirby_Copy = 3;
	break;
	case AT_DSTRONG:
		accurate_megaman_alt = 8;
		TCG_Kirby_Copy = 4;
	break;
	case AT_USTRONG:
		accurate_megaman_alt = 15;
		TCG_Kirby_Copy = 15;
	break;
	case AT_NAIR:
		accurate_megaman_alt = 21;
		TCG_Kirby_Copy = 15;
	break;
	case AT_FAIR:
		accurate_megaman_alt = 6;
		TCG_Kirby_Copy = 1;
	break;
	case AT_BAIR:
		sound_play(asset_get("sfx_ice_back_air"));
		accurate_megaman_alt = 5;
		TCG_Kirby_Copy = 5;
	break;
	case AT_DAIR:
		accurate_megaman_alt = 17;
		TCG_Kirby_Copy = 9;
	break;
	case AT_UAIR:
		accurate_megaman_alt = 28;
		TCG_Kirby_Copy = 9;
	break;
	case AT_NSPECIAL_2:
		has_rock = false;
	case AT_NSPECIAL:
		// nspec_charge = 0;
		nspec_active = true;
		nspec_lockout = 7;
		has_rock = true;
		nspec_lemon_timer = 1;
		nspec_lemon_buffer_timer = nspec_lemon_buffer_interval;
		clear_button_buffer(PC_SPECIAL_PRESSED)
		accurate_megaman_alt = 0;
		TCG_Kirby_Copy = 3;
	break;
	case AT_FSPECIAL:
		fspec_grounded = !free;
		fspec_charge = 0;
		fspec_grab = [];
		fspec_loops = 0;
		fspec_wall_timer = 0;
		fspec_sfx_timer = 0;
		fspec_jump_flip = false;
		fspec_damage_reduction = 0;
		accurate_megaman_alt = 3;
		TCG_Kirby_Copy = 14;
	break;
	case AT_DSPECIAL:
		reset_window_value(AT_DSPECIAL, 1, AG_WINDOW_LENGTH);
		dspec_started_grounded = !instance_exists(dspec_rock) && !free;
		set_window_value(AT_DSPECIAL, 1, AG_WINDOW_LENGTH, get_window_value(AT_DSPECIAL, 1, AG_WINDOW_LENGTH) + 5 * dspec_started_grounded);
		set_window_value(AT_DSPECIAL, 1, AG_WINDOW_SFX_FRAME, get_window_value(AT_DSPECIAL, 1, AG_WINDOW_LENGTH) - 7);
		accurate_megaman_alt = 14;
		TCG_Kirby_Copy = 4;
	break;
	case AT_USPECIAL:
		if !move_cooldown[AT_USPECIAL] && !standingonrush spawn_hit_fx(x, y - 16, HFX_ORI_ORANGE_SMALL);
		uspec_started_grounded = !free;
		accurate_megaman_alt = 1;
		TCG_Kirby_Copy = 3;
	break;
	default:
		accurate_megaman_alt = 0;
		TCG_Kirby_Copy = 3;
	break;
}

if accurate_megaman_alt != accurate_megaman_alt_prev{
    accurate_megaman_timer = accurate_megaman_flashlength;
    accurate_megaman_alt_prev = accurate_megaman_alt;
}