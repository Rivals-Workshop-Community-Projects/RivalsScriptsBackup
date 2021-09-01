//B - Reversals
if (attack == AT_NSPECIAL || attack == AT_FSPECIAL || attack == AT_DSPECIAL || attack == AT_USPECIAL){
    trigger_b_reverse();
}

if (attack == AT_JAB && was_parried = true) {
    was_parried = false;
}

if (attack == AT_FSPECIAL_AIR) {
	can_fast_fall = window >= 2;
}

if attack == AT_FSPECIAL_AIR && window == 1 && venom_timer > 0 {
	attack_down = special_down;
	if (venom_stack == 3) {
		if lasercharged {
			attack = AT_FSPECIAL_2;
			lasercharged = false;
		}
	}
	else {
		if (lasercharged) {	
			window = 3;
			window_timer = 0;
			lasercharged = false;
		}
	}
} else {
	special_down = special_down;
}

if (attack == AT_FSPECIAL_AIR && window == 1 && ((venom_stack = 3 && strong_charge > 30) || (venom_stack < 3 && strong_charge > 10)) && shield_pressed && has_airdodge) {
set_state( PS_PARRY );
lasercharged = true;
            sound_play(sound_get("lasercharge"));
}

if (attack == AT_FSPECIAL_AIR && window == 1) {
	if ((strong_charge > 20 && !special_down) || (strong_charge > 40 && venom_stack != 3)) {
		window = 3;
		window_timer = 0;
	} else if venom_stack = 3 && strong_charge > 59 {
	    attack = AT_FSPECIAL_2;
	    window = 1;
	    window_timer = 0;
	}
}

if (attack == AT_NSPECIAL && window ==  1 && window_timer == 1 && short != 1){
	if (venom_current = 3){
		window = 3;
		window_timer = 0;
		set_attack_value(AT_NSPECIAL, AG_NUM_WINDOWS, 4);
		set_window_value(AT_NSPECIAL, 3, AG_WINDOW_LENGTH, 9);
		set_hitbox_value(AT_NSPECIAL, 1, HG_BASE_KNOCKBACK, 5);
		set_window_value(AT_NSPECIAL, 3, AG_WINDOW_SFX_FRAME, 8);

	} else if (venom_current = 2){
		window = 3;
		window_timer = 0;
		set_attack_value(AT_NSPECIAL, AG_NUM_WINDOWS, 4);
	} else if (venom_current = 1 && venom_stack > 2){
		window = 5;
		window_timer = 0;
		set_attack_value(AT_NSPECIAL, AG_NUM_WINDOWS, 6);
	}
	else {
		window = 3;
		window_timer = 0;
		set_attack_value(AT_NSPECIAL, AG_NUM_WINDOWS, 4);
	}
} else if (state != PS_ATTACK_AIR && state != PS_ATTACK_GROUND) {
		reset_attack_value(AT_NSPECIAL, AG_NUM_WINDOWS);
		reset_window_value(AT_NSPECIAL, 3, AG_WINDOW_LENGTH);
		reset_hitbox_value(AT_NSPECIAL, 1, HG_BASE_KNOCKBACK);
		reset_window_value(AT_NSPECIAL, 3, AG_WINDOW_SFX_FRAME);
} 

if (short == 1 && attack == AT_NSPECIAL && window == 6 && window_timer == 23) || state == PS_HITSTUN {
		reset_attack_value(AT_NSPECIAL, AG_NUM_WINDOWS);
		reset_window_value(AT_NSPECIAL, 3, AG_WINDOW_LENGTH);
		reset_hitbox_value(AT_NSPECIAL, 1, HG_BASE_KNOCKBACK);
		reset_window_value(AT_NSPECIAL, 3, AG_WINDOW_SFX_FRAME);
}

if (attack == AT_NSPECIAL && window == 4 && has_hit = true && venom_stack = 2) {
	can_jump = true;
}

if attack == AT_NSPECIAL && window == 5 && window_timer == 10 {
	venom_timer = 0;
	short = 1;
	venom_stack = 0;
	venom_recharge_active = true;
}

if (attack == AT_USPECIAL)
{
	can_wall_jump = true;
	can_fast_fall = false;
	if (window == 1)
	{
		ztc_uspecial_angle = 90;
	}
	else if (window == 2)
	{
		if (window_timer % 6 == 0)
		{
			spawn_hit_fx(x, y, footcharge_vfx);
		}
		//angling
		if (!joy_pad_idle && joy_dir != ztc_uspecial_angle)
		{
			var angling_rate = ztc_uspecial_angling;
			
			//makes math easier for diff by using negative angles
			var temp_joy_dir = (joy_dir < ztc_uspecial_angle + 180) ? joy_dir 
			                                                        : joy_dir - 360;
			
			var diff = (temp_joy_dir - ztc_uspecial_angle);
			if (abs(diff) < angling_rate)
			{
				ztc_uspecial_angle = joy_dir;
			}
			else
			{
				ztc_uspecial_angle += sign(diff) * angling_rate;
			}
		}
		
		//sets to window data
		set_window_value(AT_USPECIAL, 3, AG_WINDOW_HSPEED, 
		     lengthdir_x(spr_dir * ztc_uspecial_speed, ztc_uspecial_angle));
		set_window_value(AT_USPECIAL, 3, AG_WINDOW_VSPEED,
		     lengthdir_y(ztc_uspecial_speed, ztc_uspecial_angle));
	}
}


if (attack == AT_USPECIAL && window > 2 && !free){
    hsp = hsp / 2;
    if (!has_hit){
		uspecialtimer = 0;
        set_state(PS_PRATLAND);
    }
    else{
        set_state(PS_LAND);
    }
}


if attack == AT_USPECIAL && has_hit = true && window == 3  {
	uspecialtimer ++;
	if (uspecialtimer < ztc_uspecial_hits_max) {
		window = 5;
		window_timer = 0;
	}
}



if (attack == AT_DSPECIAL && window == 2 && window_timer == 1 && venom > 0 && short = 0)
{
	lasercharged = false;
	//apply venom (from old update)
	venom_current = venom; //activate venom
	venom_timer = 100;
	venom--; //remove charge
	venom_stack += 1;
}


if (attack == AT_DSTRONG){
    if window == 2 && window_timer == (2) {
            sound_play(asset_get("sfx_absa_uair"));
    }
}

if (attack == AT_FSTRONG){
    if ((window == 2 && window_timer == 6)  || (window == 3 && window_timer == 8)) && !has_hit {
            sound_play(asset_get("sfx_absa_new_whip1"));
    }
}

if attack == AT_DAIR {
	can_wall_jump = true;
	can_fast_fall = true;
	if (window == 1) {
		hsp = 0;
		vsp = -1;
		
		if (window_timer == get_window_value(attack, window, AG_WINDOW_LENGTH)) {
			vsp = 20;
			fall_through = 1;
			dairtimer = 0;
		}
	}
	if (window == 2) {
		if (!hitpause)
			vsp = 20;
		if has_hit {
			window = 4;
			window_timer = 0;
			dairtimer = 0;
		}
		else if (!free)  {
			window = 3;
			window_timer = 0;
			destroy_hitboxes()
		}
		if (dairtimer && window == 2) {
            can_jump = true;
            can_shield = true;
            can_special = true;
		}
		
		if (window_timer == get_window_value(attack, window, AG_WINDOW_LENGTH)) {
			dairtimer ++;
		}
	}
	if (window == 4) {
		if (window_timer == 1) 
			vsp = -6;
	}
} else {
	dairtimer = 0;
}
	

if (attack == AT_DAIR){
    if window == 3 && window_timer == (0) && !has_hit {
            sound_play(asset_get("sfx_blow_heavy1"));
        
    }
}

if attack == AT_TAUNT && window == 2 && window_timer == 9 && taunt_down {
	window = 3;
	window_timer = 0;
}

if attack == AT_TAUNT && window == 3 && window_timer > 20 {
    	suppress_stage_music(0, 0.02);
if  window_timer == 49 && taunt_down {
	window_timer = 42;
}}

if attack == AT_FSPECIAL_2 && window == 2 && window_timer == 6 {
	shake_camera( 6, 25 )
}

if attack == AT_FSPECIAL_2 && window == 2 && window_timer == 20 {
	venom_timer = 0;
	short = 1;
	venom_recharge_active = true;
	venom_stack = 0;
}
