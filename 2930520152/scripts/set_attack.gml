///#args attack // this line makes code editors not freak out for some reason

var rof = variable_instance_exists(self, "superTrue");

did_whiff = false;
uspecial_pratless = false;
fstrong_taunted = false;
earrape = false;

// gives him grab
if(special_pressed && attack_pressed /*!free*/ && (rof || has_rune("A"))){
	attack = AT_DSPECIAL_2;
}

if(doing_fspecial){
	set_window_value(AT_USPECIAL, 1, AG_WINDOW_VSPEED_TYPE, 0);
	set_window_value(AT_USPECIAL, 1, AG_WINDOW_HSPEED_TYPE, 0);
	set_window_value(AT_DSPECIAL, 1, AG_WINDOW_HSPEED_TYPE, 0);
	set_window_value(AT_DSPECIAL, 1, AG_WINDOW_VSPEED_TYPE, 0);
	// if(attack == AT_DSPECIAL && false){
	// 	ike_grabbed_id = noone;
	// 	attack = AT_DSPECIAL_2;
	// }
} else {
	reset_window_value(AT_USPECIAL, 1, AG_WINDOW_VSPEED_TYPE);
	reset_window_value(AT_USPECIAL, 1, AG_WINDOW_HSPEED_TYPE);
	reset_window_value(AT_DSPECIAL, 1, AG_WINDOW_HSPEED_TYPE);
	reset_window_value(AT_DSPECIAL, 1, AG_WINDOW_VSPEED_TYPE);
}

// if(attack == AT_DSPECIAL){
// 	attack = AT_DSPECIAL_2;
// }

switch(attack){
    case AT_UAIR:
    {
		reset_attack_value(AT_UAIR, AG_NUM_WINDOWS);
		reset_window_value(AT_UAIR, 2, AG_WINDOW_GOTO);
		reset_window_value(AT_UAIR, 2, AG_WINDOW_LENGTH);
		reset_window_value(AT_UAIR, 2, AG_WINDOW_SFX_FRAME);
		reset_window_value(AT_UAIR, 2, AG_WINDOW_SFX);
    }
    break;
    case AT_NSPECIAL:
    {
    	eruption_fullcharge = false;
    	// if(eruption_stored){
    	// 	eruption_charges = 3;
    	// } else {
    	// 	eruption_charges = 1;
    	// }
    }
    break;
    case AT_FSPECIAL:
    {
    	ike_grabbed_id = noone;
    	reset_attack_value(AT_FSPECIAL, AG_NUM_WINDOWS);
    }
    break;
    case AT_DSPECIAL:
    {
    	ike_grabbed_id = noone;
    }
    break;
    case AT_DSPECIAL_2:
    {
		reset_hitbox_value(AT_DSPECIAL_2, 1, HG_WIDTH);
		reset_hitbox_value(AT_DSPECIAL_2, 1, HG_HEIGHT);
    }
    break;
    case AT_FTHROW:
    {
    	reset_hitbox_value(attack, 2, HG_KNOCKBACK_SCALING);
    	var kb = get_hitbox_value(attack, 2, HG_KNOCKBACK_SCALING);
    	if(free || on_throw_plat){
    		set_hitbox_value(attack, 2, HG_KNOCKBACK_SCALING, kb - .1);
    	}
    }
    break;
    case AT_NTHROW:
    {
    	reset_hitbox_value(attack, 1, HG_KNOCKBACK_SCALING);
    	var kb = get_hitbox_value(attack, 1, HG_KNOCKBACK_SCALING);
    	if(free || on_throw_plat){
    		set_hitbox_value(attack, 1, HG_KNOCKBACK_SCALING, kb - .1);
    	}
    }
    break;
    case AT_UTHROW:
    {
    	reset_hitbox_value(attack, 1, HG_KNOCKBACK_SCALING);
    	var kb = get_hitbox_value(attack, 1, HG_KNOCKBACK_SCALING);
    	if(free || on_throw_plat){
    		set_hitbox_value(attack, 1, HG_KNOCKBACK_SCALING, kb - .1);
    	}	
    }
    break;
}

quick_draw_charge = 0;
eruption_charge_timer = 0;
eruption_charges = 1 + eruption_stored * 2;

if(back_throw_turn_around_turbo_mode_fix && attack != AT_FTILT && attack != AT_DATTACK){
	spr_dir *= -1;
}

if(attack == AT_TAUNT && down_down){
	attack = AT_TAUNT_2;
	if(shield_down || has_rune("G")){
		earrape = true;
		attack = AT_EXTRA_2;
	} else {
		sound_play(sound_get("default_dance"), false, false, 200);
	}
}

if(attack == AT_TAUNT && practice){
	switch(aether_alt_input){
		case 1:
		aether_alt_input = 0;
		break;
		case 0:
		aether_alt_input = 1;
		break;
	}
}

// if(attack == AT_TAUNT){
// 	eruption_stored = true;
// }