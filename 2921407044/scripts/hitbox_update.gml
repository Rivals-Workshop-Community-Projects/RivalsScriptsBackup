// Shell Bouncing Code -------------------------------------------------

if((attack == AT_FSPECIAL || attack == AT_FSPECIAL_AIR && hbox_num == 2)
|| (attack == AT_TAUNT && hbox_num == 1)){
	var current_shell_1_falling_state = abs(vsp) / vsp; // 1 if falling, -1 if rising
	proj_angle = spr_dir * 25 * (get_gameplay_time() % 360);
//	print_debug( "current_shell_1_falling_state: " + string(current_shell_1_falling_state));
//	print_debug( "old_shell_1_falling_state: " + string(old_shell_1_falling_state));

	//If statement, using and logic to determine if shell is bouncing 
	if(old_shell_1_falling_state == 1 && current_shell_1_falling_state == -1){
		vsp = vsp + 2 + random_func(4, 2, false);
		if(abs(vsp) >= 5){sound_play(sound_get("shell_landing"));} //check for enough vertical speed to play sound
	}

	old_shell_1_falling_state = current_shell_1_falling_state;
}

if((attack == AT_FSPECIAL || attack == AT_FSPECIAL_AIR && hbox_num == 3)
|| (attack == AT_TAUNT && hbox_num == 2)){
	var current_shell_2_falling_state = abs(vsp) / vsp; // 1 if falling, -1 if rising
	proj_angle = spr_dir * 25 * (get_gameplay_time() % 360);
//	print_debug( "current_shell_1_falling_state: " + string(current_shell_1_falling_state));
//	print_debug( "old_shell_1_falling_state: " + string(old_shell_1_falling_state));

	//If statement, using and logic to determine if shell is bouncing 
	if(old_shell_2_falling_state == 1 && current_shell_2_falling_state == -1){
		vsp = vsp + 2 + random_func(5, 2, false);
		if(abs(vsp) >= 5){sound_play(sound_get("shell_landing"));} //check for enough vertical speed to play sound
	}

	old_shell_2_falling_state = current_shell_2_falling_state;
}

// Nspecial damage Fall Off Code ---------------------------------------

if(attack == AT_NSPECIAL || attack == AT_NSPECIAL_2){
	// These determine the amount of change to the final value
	var damage_modifier = 8; // Goes from 12 to 4
	var knockback_modifer = 3; //Goes from 8 to 5
	var knockback_scaling_modifer = .6; // goes from .9 to .3
	var hitpause_modifier = 2;
	var hitpause_scaling_modifier = .5;
	var hitstun_modifier = .5 // goes from 1 to .5
	
    damage = initial_pellet_damage - (damage_modifier * (hitbox_timer/length));
    kb_value = initial_pellet_knockback - (knockback_modifer * (hitbox_timer/length)); // bkb
    kb_scale = initial_pellet_knockback_scaling - (knockback_scaling_modifer * (hitbox_timer/length)); // kb_scaling
	hitpause = initial_pellet_hitpause - (hitpause_modifier * (hitbox_timer/length)); //base hitpause
	hitpause_growth = initial_pellet_hitpause_scaling - (hitpause_scaling_modifier * (hitbox_timer/length)); // hitpause scaling
	hitstun_factor = initial_pellet_hitstun - (hitstun_modifier * (hitbox_timer/length)); // hitpause scaling
	if(!free){
		destroy_fx = player_id.hfx_shotgun; // (14  - smoke small) or (137 - molten metal break) Reset hit effect to smoke on landing on floor.
		destroyed = true;}
   
	/*
	print_debug("Time: " + string(hitbox_timer));
	print_debug("dam: " + string(damage) + ", bkb: " + string(kb_value) + ", kbs: " + string(kb_scale));
	print_debug("bhp: " + string(hitpause) + ", hps: " + string(hitpause_growth) + ", stn x: " + string(hitstun_factor));
	*/
}

// New Uspecial Code ----------------------------------------------------
if(attack == AT_USPECIAL && hbox_num == 4){
	current_distance_traveled += vsp;
	//print(current_distance_traveled)
	if(current_distance_traveled < max_distance_to_travel){ // negative so sign is flipped
		vsp = 0;
		hsp = 0;
	}
}