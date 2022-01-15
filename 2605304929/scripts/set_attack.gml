grabbed_player_obj_spr_angle=0;
grabbed_player_obj_draw_x = 0;
grabbed_player_obj_draw_y = 0;

if (attack == AT_DSPECIAL && free) {
	reset_attack_value(AT_DSPECIAL_AIR,AG_NUM_WINDOWS);
    attack = AT_DSPECIAL_AIR;
}

if (attack == AT_NSPECIAL && free) {
	if(fs_charge >= 200){attack = AT_NSPECIAL}
    else attack = AT_NSPECIAL_AIR;
}

if(attack == AT_USTRONG){
	reset_window_value(AT_USTRONG,get_attack_value(AT_USTRONG,AG_NUM_WINDOWS),AG_WINDOW_TYPE);
	reset_window_value(AT_USTRONG,get_attack_value(AT_USTRONG,AG_NUM_WINDOWS),AG_WINDOW_CANCEL_TYPE);
	reset_window_value(AT_USTRONG,get_attack_value(AT_USTRONG,AG_NUM_WINDOWS),AG_WINDOW_CANCEL_FRAME);
	reset_attack_value(AT_USTRONG,AG_NUM_WINDOWS);
}

// Gannoncide Platform Code

if(attack == AT_FSPECIAL || attack == AT_USPECIAL || attack == AT_DSPECIAL){
	var non_boosted_grab;
	var boosted_grab;
	
	switch(attack){ // Map the start up move to the grab move
		case AT_FSPECIAL:
		non_boosted_grab = AT_FTHROW;
		boosted_grab = AT_FSPECIAL_2;
		break;
		
		case AT_USPECIAL:
		non_boosted_grab = AT_UTHROW;
		boosted_grab = AT_USPECIAL_2;
		break;
		
		case AT_DSPECIAL:
		non_boosted_grab = AT_DTHROW;
		boosted_grab = AT_DSPECIAL_2;
		break;
		
		default:
		break;
	}
	// Non Boosted Grab
	reset_hitbox_value(non_boosted_grab,get_num_hitboxes(non_boosted_grab),HG_KNOCKBACK_SCALING);
	reset_hitbox_value(non_boosted_grab,get_num_hitboxes(non_boosted_grab),HG_BASE_KNOCKBACK);
	reset_hitbox_value(non_boosted_grab,get_num_hitboxes(non_boosted_grab),HG_ANGLE);
	
	// Boosted Grab
	reset_hitbox_value(boosted_grab,get_num_hitboxes(boosted_grab),HG_KNOCKBACK_SCALING);
	reset_hitbox_value(boosted_grab,get_num_hitboxes(boosted_grab),HG_BASE_KNOCKBACK);
	reset_hitbox_value(boosted_grab,get_num_hitboxes(boosted_grab),HG_ANGLE);
}
/*
if(free){ // Air Version
	set_attack(AT_NSPECIAL);
	hurtboxID.sprite_index = get_attack_value(AT_EXTRA_2, AG_HURTBOX_SPRITE); // Set proper hurtbox, thanks Shampoo
	move_cooldown[AT_EXTRA_2] = 50;
	window = 1;
	window_timer = 1;
}
*/
/* Depreciated for the two attack method
// Section for reseting hitboxes based on status build up
var temp_attack = attack;

if(attack == AT_FSPECIAL){temp_attack = AT_FTHROW;}
if(attack == AT_DSPECIAL || attack == AT_DSPECIAL_AIR){temp_attack = AT_DTHROW;}
if(attack == AT_USPECIAL){temp_attack = AT_UTHROW;}
	
var final_hitbox_number = get_num_hitboxes(temp_attack);
reset_hitbox_value(temp_attack,final_hitbox_number,HG_DAMAGE);
reset_hitbox_value(temp_attack,final_hitbox_number,HG_BASE_KNOCKBACK);
reset_hitbox_value(temp_attack,final_hitbox_number,HG_KNOCKBACK_SCALING);
reset_hitbox_value(temp_attack,final_hitbox_number,HG_BASE_HITPAUSE);
reset_hitbox_value(temp_attack,final_hitbox_number,HG_HITPAUSE_SCALING);
*/


/*
// Dspecial grab code interaction - paired with code from attack update, resets values. 
if(attack == AT_FSPECIAL || attack == AT_DSTRONG || attack == AT_USPECIAL){

	var throw_attack = 0;
	if(attack == AT_FSPECIAL){throw_attack = AT_FTHROW;}
	if(attack == AT_DSTRONG){throw_attack = AT_DTHROW;}
	if(attack == AT_USPECIAL){throw_attack = AT_UTHROW;}
	for(var hitbox_number_in_shock_window = 1;hitbox_number_in_shock_window < 6; hitbox_number_in_shock_window++){
	    reset_hitbox_value(throw_attack,hitbox_number_in_shock_window, HG_DAMAGE);
		reset_hitbox_value(throw_attack,hitbox_number_in_shock_window, HG_BASE_HITPAUSE);
		reset_hitbox_value(throw_attack,hitbox_number_in_shock_window, HG_HITPAUSE_SCALING);
		reset_hitbox_value(throw_attack,hitbox_number_in_shock_window, HG_VISUAL_EFFECT);
		reset_hitbox_value(throw_attack,hitbox_number_in_shock_window, HG_EXTRA_HITPAUSE);
		reset_hitbox_value(throw_attack,hitbox_number_in_shock_window, HG_BASE_KNOCKBACK);
    	reset_hitbox_value(throw_attack,hitbox_number_in_shock_window, HG_KNOCKBACK_SCALING);
    	reset_hitbox_value(throw_attack,hitbox_number_in_shock_window, HG_EXTRA_CAMERA_SHAKE);
	}
}
*/
/*
if(attack == AT_DSPECIAL && free){
	attack = AT_DSPECIAL_AIR;
}
*/