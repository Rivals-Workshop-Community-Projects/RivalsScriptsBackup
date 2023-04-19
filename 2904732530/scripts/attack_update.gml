//B - Reversals
if (attack == AT_NSPECIAL || attack == AT_FSPECIAL || attack == AT_DSPECIAL || attack == AT_USPECIAL){
    trigger_b_reverse();
}


//Fspecial Hit Follow Through
if (attack == AT_FSPECIAL && window == 2 && has_hit){
	destroy_hitboxes();
	window = 3;
	window_timer = 1;
}

if (attack == AT_FSPECIAL && window == 3 && window_timer == 1){
	if (spr_dir == 1){
		old_vsp = -9;
		old_hsp = 9;
	}
}

if (attack == AT_FSPECIAL && window == 3 && window_timer == 1){
	if (spr_dir == -1){
		old_vsp = -9;
		old_hsp = -9;
	}
}


//Fspecial Whiff Pratfall
if (!has_rune("D") && attack == AT_FSPECIAL && window == 2 && window_timer > 14){
	if (!has_hit){
		set_attack_value(AT_FSPECIAL, AG_NUM_WINDOWS, 4);

		set_window_value(AT_FSPECIAL, 3, AG_WINDOW_TYPE, 1);
		set_window_value(AT_FSPECIAL, 3, AG_WINDOW_LENGTH, 5);
		set_window_value(AT_FSPECIAL, 3, AG_WINDOW_ANIM_FRAMES, 1);
		set_window_value(AT_FSPECIAL, 3, AG_WINDOW_ANIM_FRAME_START, 1);
		set_window_value(AT_FSPECIAL, 3, AG_WINDOW_HAS_CUSTOM_FRICTION, 1);
		set_window_value(AT_FSPECIAL, 3, AG_WINDOW_CUSTOM_AIR_FRICTION, .9);
		set_window_value(AT_FSPECIAL, 3, AG_WINDOW_CUSTOM_GROUND_FRICTION, .8);
		set_window_value(AT_FSPECIAL, 3, AG_WINDOW_HAS_SFX, 0);
		
		set_window_value(AT_FSPECIAL, 4, AG_WINDOW_TYPE, 7);
		set_window_value(AT_FSPECIAL, 4, AG_WINDOW_LENGTH, 5);
		set_window_value(AT_FSPECIAL, 4, AG_WINDOW_ANIM_FRAMES, 1);
		set_window_value(AT_FSPECIAL, 4, AG_WINDOW_ANIM_FRAME_START, 0);
	}
}

if (has_rune("D") && attack == AT_FSPECIAL && window == 2 && window_timer > 24){
	if (!has_hit){
		set_attack_value(AT_FSPECIAL, AG_NUM_WINDOWS, 4);

		set_window_value(AT_FSPECIAL, 3, AG_WINDOW_TYPE, 1);
		set_window_value(AT_FSPECIAL, 3, AG_WINDOW_LENGTH, 5);
		set_window_value(AT_FSPECIAL, 3, AG_WINDOW_ANIM_FRAMES, 1);
		set_window_value(AT_FSPECIAL, 3, AG_WINDOW_ANIM_FRAME_START, 1);
		set_window_value(AT_FSPECIAL, 3, AG_WINDOW_HAS_CUSTOM_FRICTION, 1);
		set_window_value(AT_FSPECIAL, 3, AG_WINDOW_CUSTOM_AIR_FRICTION, .9);
		set_window_value(AT_FSPECIAL, 3, AG_WINDOW_CUSTOM_GROUND_FRICTION, .8);
		set_window_value(AT_FSPECIAL, 3, AG_WINDOW_HAS_SFX, 0);
		
		set_window_value(AT_FSPECIAL, 4, AG_WINDOW_TYPE, 7);
		set_window_value(AT_FSPECIAL, 4, AG_WINDOW_LENGTH, 5);
		set_window_value(AT_FSPECIAL, 4, AG_WINDOW_ANIM_FRAMES, 1);
		set_window_value(AT_FSPECIAL, 4, AG_WINDOW_ANIM_FRAME_START, 0);
	}
}

if (attack == AT_FSPECIAL && window == 1){
	set_attack_value(AT_FSPECIAL, AG_NUM_WINDOWS, 3);

	set_window_value(AT_FSPECIAL, 3, AG_WINDOW_TYPE, 1);
	set_window_value(AT_FSPECIAL, 3, AG_WINDOW_LENGTH, 20);
	set_window_value(AT_FSPECIAL, 3, AG_WINDOW_ANIM_FRAMES, 5);
	set_window_value(AT_FSPECIAL, 3, AG_WINDOW_ANIM_FRAME_START, 3);
	set_window_value(AT_FSPECIAL, 3, AG_WINDOW_HAS_CUSTOM_FRICTION, 1);
	set_window_value(AT_FSPECIAL, 3, AG_WINDOW_CUSTOM_AIR_FRICTION, .3);
	set_window_value(AT_FSPECIAL, 3, AG_WINDOW_CUSTOM_GROUND_FRICTION, .4);
	set_window_value(AT_FSPECIAL, 3, AG_WINDOW_HAS_SFX, 1);
	set_window_value(AT_FSPECIAL, 3, AG_WINDOW_SFX, asset_get("sfx_swipe_heavy2"));
}


//Fpecial One Time Air Use
if (attack == AT_FSPECIAL && free){
	move_cooldown[AT_FSPECIAL] = 99999;
}


//Rune I Prevent Infinite Uspecial
if (has_rune("I") && attack == AT_USPECIAL && free){
	move_cooldown[AT_USPECIAL] = 99999;
}

//Fspecial Wall Jump
if (attack == AT_FSPECIAL && has_walljump){
	can_wall_jump = true;
}



//Dair Height Correction
if (attack == AT_DAIR && has_hit){
	old_vsp = -1.5;
}



//Fair 2 Height Correction
if (old_vsp > 0 && attack == AT_FSPECIAL_2 && has_hit){
	old_vsp = 0;
}


//Jab 1 Cancel Fix
if (attack == AT_JAB && window == 2 && window_timer < 7){
	if (!attack_pressed){
		set_attack_value(AT_JAB, AG_NUM_WINDOWS, 2);
	}
}

if (attack == AT_JAB && window == 2 && window_timer > 6){
	if (attack_pressed){
		set_attack_value(AT_JAB, AG_NUM_WINDOWS, 5);
	}
}


//Jab 2 Loop
if (attack == AT_DSTRONG_2 && window == 5){
	if (attack_down){
		window = 1;
		window_timer = 3;
	}
}


//Uspecial Parachute
if (attack == AT_USPECIAL && window == 4 && !left_down && !right_down){
	window = 4;
	window_timer = 0;
}

if (attack == AT_USPECIAL && window == 4 && left_down && spr_dir == 1){
	window = 4;
	window_timer = 10;
}

if (attack == AT_USPECIAL && window == 4 && right_down && spr_dir == 1){
	window = 4;
	window_timer = 30;
}

if (attack == AT_USPECIAL && window == 4 && left_down && spr_dir == -1){
	window = 4;
	window_timer = 30;
}

if (attack == AT_USPECIAL && window == 4 && right_down && spr_dir == -1){
	window = 4;
	window_timer = 10;
}

if (attack == AT_USPECIAL && window == 4){
	if (attack_pressed || special_pressed || jump_pressed || shield_pressed || down_hard_pressed){
		window = 5;
		window_timer = 0;
		vsp = -1;
	}
}

if (attack == AT_USPECIAL && window == 4 && !free){
	window = 5;
}

if (attack == AT_USPECIAL && has_walljump){
	can_wall_jump = true;
}



//Sword Switching
if (attack == AT_DSPECIAL || attack == AT_DSPECIAL_2 || attack == AT_DSPECIAL_AIR){
	if (window == 1 && window_timer == 1){
		SWORD += 1;
	}
}

if (SWORD > 3){
	SWORD = 1;
}


//Dspecial Cooldown
if (attack == AT_DSPECIAL || attack == AT_DSPECIAL_2 || attack == AT_DSPECIAL_AIR){
	move_cooldown[AT_DSPECIAL] = 10;
	move_cooldown[AT_DSPECIAL_2] = 10;
	move_cooldown[AT_DSPECIAL_AIR] = 10;
}



//Nspecial Item Rotation
if (attack == AT_NSPECIAL || attack == AT_EXTRA_1 || attack == AT_EXTRA_2 || attack == AT_EXTRA_3 || attack == AT_TAUNT_2 || attack == AT_NSPECIAL_2){
	if (window == 2 && window_timer == 1){
		ITEM += 1;
	}
}

if (attack == AT_NSPECIAL || attack == AT_EXTRA_1 || attack == AT_EXTRA_2 || attack == AT_EXTRA_3 || attack == AT_TAUNT_2 || attack == AT_NSPECIAL_2 || attack == AT_NSPECIAL_AIR){
	move_cooldown[AT_NSPECIAL] = 15;
	move_cooldown[AT_EXTRA_1] = 15;
	move_cooldown[AT_EXTRA_2] = 15;
	move_cooldown[AT_EXTRA_3] = 15;
	move_cooldown[AT_TAUNT_2] = 15;
	move_cooldown[AT_NSPECIAL_2] = 15;
	move_cooldown[AT_NSPECIAL_AIR] = 15;
}






