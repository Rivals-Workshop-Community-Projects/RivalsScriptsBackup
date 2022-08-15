//B - Reversals
if (attack == AT_NSPECIAL || attack == AT_NSPECIAL_AIR || attack == AT_FSPECIAL || attack == AT_DSPECIAL || attack == AT_USPECIAL || attack == AT_DAIR){
    trigger_b_reverse();
}
//if (attack == AT_DAIR && window = 2 && window_timer = 1) {
//    trigger_b_reverse();
//}

//Phantom code starts here

if (attack == AT_NSPECIAL_2){
    print_debug("NSPECIAL_2: this move shouldn't be called");
}

if (attack == AT_USPECIAL){
	
	// Stall in air
	if (has_usp1_stall) {
		hsp = 0;
		vsp = 0;
	}
	
	// Call phantom to Youmu
	if (window == 2 && !was_parried && window_timer = 5) {
        phantom.state = 3;
        phantom.state_timer = 0;
	}
	
	// Keyboard mode input handling
	if (keyboard_mode)  {
		
		if (window == 1 && window_timer = 1) {
			kb_angle = 0;
			kb_facing = spr_dir;
			phantom.throw_dir = 90 - (90*kb_facing);
		}
	        
	    if (window == 2 && window_timer <= 20 && !was_parried) {
	    	
	    	if (up_down && kb_angle < 90) kb_angle += 9;
	    	if (down_down && kb_angle > -90) kb_angle -= 9;
	    	if (left_pressed) kb_facing = -1;
	    	if (right_pressed) kb_facing = 1;
	    	
	    	// REFERENCE: 90 - (90*spr_dir) gives 180 for left and 0 for right
	    	phantom.throw_dir = (kb_angle*kb_facing) + 90 - (90*kb_facing);
	    	
	    }
	
	// Controller mode input handling
	} else {
		
	    if (window == 1 && window_timer = 1) phantom.throw_dir = 90;
	        
	    if (window <= 2 && window_timer <= 20 && !joy_pad_idle && !was_parried) phantom.throw_dir = joy_dir;

	}
	
	// Throw phantom
	if (window <= 2 && window_timer == 20 && !was_parried){
        phantom.state = 5;
        phantom.state_timer = 0;
    }
    
    // Macro to USpec 2
    if (window == 4 && window_timer == 4 && special_down && move_cooldown[AT_USPECIAL_2] == 0) {
    		has_hit_player = false;
    		attack_end();
            set_attack(AT_USPECIAL_2);
        	CorrectHurtboxes();
    }
    
    /*
    if (window == 4 && window_timer > 4 && move_cooldown[AT_USPECIAL_2] == 0) {
        can_jump = true;
    }
    */
    
    can_fast_fall = false;
    can_move = false;
    
    // Disable stall
    if (window == 4 && window_timer == get_window_value(AT_USPECIAL, 4, AG_WINDOW_LENGTH)) has_usp1_stall = false;
    
}




if (attack == AT_USPECIAL_2){
    if (phantom.state == 1 || phantom.state = 2 || phantom.state = 6 || phantom.state = 10 || phantom.state = 7 || phantom.state = 8)  {
        phantom.state = 7;
        phantom.state_timer = 0;
    }
    
    has_fly = false;
    has_usp1_stall = false;
    
    phantom.used_for_fly = true;
    
    if (window == 1) {
        check_if_stopped = false;
    }
    
    if (window == 2) {
        
        fly_angle = point_direction(x, y, phantom.x, phantom.y);
        
        if (point_distance(x, y, phantom.x, phantom.y) < 10) {
            window = 3;
            window_timer = 1;
        } else {
            hsp = lengthdir_x(10, fly_angle);
            vsp = lengthdir_y(10, fly_angle);
        }
        
        if (check_if_stopped && point_distance(x, y, last_x, last_y) < 5) {
            set_state(PS_IDLE_AIR);
        }
        
        last_x = x;
        last_y = y;
        check_if_stopped = true;
	        
        if (shield_pressed) set_state(PS_PRATFALL);
        
    }
    
    if (window == 3) {
        
        fly_angle = point_direction(x, y, x+hsp, y+vsp);
        fly_speed = point_distance(x, y, x+hsp, y+vsp);
        
        if (fly_speed > 2) {
            fly_speed -= 2;
            hsp = lengthdir_x(fly_speed, fly_angle);
            vsp = lengthdir_y(fly_speed, fly_angle);
        }
        
    }
    
    can_fast_fall = false;
    can_move = false;
}

//Phantom code ends here

if (attack == AT_JAB){
	if (window == 12 && has_hit && (window_timer == 1 || window_timer == 2 || window_timer == 3 || window_timer == 4 || window_timer == 5 || window_timer == 6) && (special_pressed || up_strong_pressed || right_strong_pressed || left_strong_pressed || down_strong_pressed)) {
    	attack_end();
    	set_attack(AT_FSTRONG_2);
    	CorrectHurtboxes();
    }
    if (window >= 11){
            iasa_script();
    }
    if (window >= 9 && window_timer >= 4 && is_special_pressed(DIR_UP) && has_hit){
        has_hit_player = false;
        attack_end();
        set_attack(AT_USPECIAL);
        window = 2;
        window_timer = 4;
        sound_play( sound_get( "myonstart" ) );
    }
    if (window == 10 && window_timer == 1 && was_parried) {
        window = 15;
        window_timer = 6;
    }
}

if (attack == AT_FTILT){
	if (window == 6 && has_hit && (window_timer == 3 || window_timer == 4 || window_timer == 5 || window_timer == 6 || window_timer == 7 || window_timer == 8 || window_timer == 9 || window_timer == 10 || window_timer == 11) && (special_pressed || up_strong_pressed || right_strong_pressed || left_strong_pressed || down_strong_pressed)) {
    	attack_end();
    	set_attack(AT_FSTRONG_2);
    	CorrectHurtboxes();
    }
    if (window >= 4){
            iasa_script();
    }
    if (window >= 2 && window_timer >= 3 && is_special_pressed(DIR_UP) && has_hit){
        has_hit_player = false;
        attack_end();
        set_attack(AT_USPECIAL);
        window = 2;
        window_timer = 4;
        sound_play( sound_get( "myonstart" ) );
    }
    if (window == 3 && window_timer == 12 && was_parried) {
        window = 7;
        window_timer = 6;
    }
}

if (attack == AT_FSPECIAL){
	if (window == 1 && window_timer == 1) {
        reset_window_value(AT_FSPECIAL, 5, AG_WINDOW_LENGTH);
        reset_window_value(AT_FSPECIAL, 11, AG_WINDOW_LENGTH);
    }
	if (window == 9 && has_hit && (window_timer == 1 || window_timer == 2 || window_timer == 3 || window_timer == 4 || window_timer == 5 || window_timer == 6 || window_timer == 7 || window_timer == 8 || window_timer == 9) && (special_pressed || up_strong_pressed || right_strong_pressed || left_strong_pressed || down_strong_pressed)) {
    	attack_end();
    	set_attack(AT_FSTRONG_2);
    	CorrectHurtboxes();
    }
    if (window == 5 && window_timer == 3 && was_parried) {
        window = 15;
    }
    if (window == 1 && window_timer == 16) {
    	if (spr_dir == 1) {
		var hit_effect = spawn_hit_fx(x-10, y-20, TJCflash);
		hit_effect.depth = depth - 6;
		}
		else {
		var hit_effect2 = spawn_hit_fx(x+10, y-20, TJCflash);
		hit_effect2.depth = depth - 6;
		}
    }
    if (window == 5 && window_timer == 1 && free && has_hit) {
    		window = 11;
        	window_timer = 1;
        	move_cooldown[AT_FSPECIAL_AIR]=0;
    		attack_end();
    }
    if (window == 5 && window_timer == 1 && free) {
    		window = 11;
        	window_timer = 1;
    		move_cooldown[AT_FSPECIAL_AIR]=9999999;
    		attack_end();
    }
    if (window == 6 || window == 7 || window == 8 || window == 9 || window == 10) {
    	iasa_script();
    }
}

if (attack == AT_FSPECIAL_AIR){
	if (window == 1 && window_timer == 1) {
        reset_window_value(AT_FSPECIAL_AIR, 5, AG_WINDOW_LENGTH);
    }
    if (window == 2 && window_timer == 1) {
        reset_window_value(AT_FSPECIAL_AIR, 1, AG_WINDOW_LENGTH);
        reset_window_value(AT_FSPECIAL_AIR, 1, AG_WINDOW_SFX_FRAME);
    }
	if (window == 9 && has_hit && (window_timer == 1 || window_timer == 2 || window_timer == 3 || window_timer == 4 || window_timer == 5 || window_timer == 6) && (special_pressed || up_strong_pressed || right_strong_pressed || left_strong_pressed || down_strong_pressed)) {
    	attack_end();
    	set_attack(AT_FSTRONG_2);
    	CorrectHurtboxes();
    }
	if (window == 5 && window_timer == 3 && was_parried) {
        window = 15;
    }
    if (window == 1 && window_timer == 13) {
    	if (spr_dir == 1) {
		var hit_effect = spawn_hit_fx(x-10, y-20, TJCflash);
		hit_effect.depth = depth - 6;
		}
		else {
		var hit_effect2 = spawn_hit_fx(x+10, y-20, TJCflash);
		hit_effect2.depth = depth - 6;
		}
    }
    if (window == 6){
    	if (free && !has_hit)
    	{
    		set_state( PS_PRATFALL );
    	}
    }
    if (window == 5 && window_timer == 4 && free && has_hit) {
    		window = 11;
        	window_timer = 1;
        	move_cooldown[AT_FSPECIAL_AIR]=0;
    		attack_end();
    }
    if (window == 6 || window == 7 || window == 8 || window == 9 || window == 10) {
    	iasa_script();
    }
}

if (attack == AT_DSTRONG){
    if (window == 7 && has_hit && (window_timer == 1 || window_timer == 2 || window_timer == 3 || window_timer == 4 || window_timer == 5 || window_timer == 6 || window_timer == 7 || window_timer == 8 || window_timer == 9) && (special_pressed || right_strong_pressed || left_strong_pressed || up_strong_pressed || down_strong_pressed)) {
    	attack_end();
    	set_attack(AT_FSTRONG_2);
    	CorrectHurtboxes();
    }
    if ((window == 4 && window_timer == get_window_value(AT_DSTRONG, 4, AG_WINDOW_LENGTH) && has_hit) || (window == 4 && window_timer == 22 && !has_hit) || (window >= 5)){
            iasa_script();
    }
    if (window == 4 && window_timer == 6 && was_parried) {
        window = 12;
        window_timer = 6;
    }
}

if (attack == AT_DTILT){
    if (window >= 3 && up_down && is_special_pressed(DIR_UP) && has_hit){
        has_hit_player = false;
        attack_end();
        set_attack(AT_USPECIAL);
        window = 2;
        window_timer = 4;
        sound_play( sound_get( "myonstart" ) );
    }
}

if (attack == AT_FAIR){
    if (window == 2 && window_timer == 1){
        sound_play( sound_get( "fair" ) );
    }
}

if (attack == AT_FAIR){
    if (window >= 2 && window_timer >= 6 && has_hit && !was_parried && (attack_pressed || right_strong_pressed || right_stick_pressed || left_strong_pressed || left_stick_pressed )){
        has_hit_player = false;
        destroy_hitboxes();
        attack_end();
        clear_button_buffer(PC_ATTACK_PRESSED);
        set_attack(AT_EXTRA_2);
        window = 1;
        window_timer = 3;
    }
}

if (attack == AT_EXTRA_2){
    if (window == 2 && window_timer == 1){
        sound_play( sound_get( "fair2" ) );
    }
}

if (attack == AT_NAIR && hitpause == false){
    if (window == 3 && (window_timer == 1 || window_timer == 8)){
        sound_play( sound_get( "weee" ) );
    }
    //stall in the air on hit, restored on double jump/walljump/grounded
    if (has_nair_stall && window == 3 && has_hit && window_timer <= 10) {
    	vsp = -2;
    }
    if (window == 3 && window_timer == get_window_value(AT_NAIR, 3, AG_WINDOW_LENGTH)) has_nair_stall = false;
}
//funny nair spin
/*
if (attack == AT_NAIR) {
    if (window == 3 && window_timer == 8 && attack_down && has_hit) {
    	attack_end();
        window = 3;
        window_timer = 0;
    }
}
*/
if (attack == AT_UTILT){
	if (window == 5 && has_hit && (window_timer == 1 || window_timer == 2 || window_timer == 3 || window_timer == 4 || window_timer == 5 || window_timer == 6 || window_timer == 7 || window_timer == 8 || window_timer == 9) && ( special_pressed || up_strong_pressed || right_strong_pressed || left_strong_pressed || down_strong_pressed)) {
    	attack_end();
    	set_attack(AT_FSTRONG_2);
    	CorrectHurtboxes();
    }
    if (window >= 4){
            iasa_script();
    }
    if (window >= 2 && window_timer >= 3 && is_special_pressed(DIR_UP) && has_hit && !was_parried){
        has_hit_player = false;
        attack_end();
        set_attack(AT_USPECIAL);
        window = 2;
        window_timer = 4;
        sound_play( sound_get( "myonstart" ) );
    }
    if (window == 3 && window_timer == 5 && was_parried) {
        window = 8;
        window_timer = 12;
    }
}

if (attack == AT_DAIR){
    can_fast_fall = false;
    can_wall_jump = true;
    if (window == 1) {
        if (joy_dir >= 180) {
            trigger_b_reverse();
        }
        if (joy_dir <= 0) {
            trigger_b_reverse();
        }
    }
    //JANK CODE TO REDUCE LANDING LAG SLIDE
    if (window >= 2 && hitpause == false){
        ground_friction = 3.11;
    }
    if (window = 2 && window_timer = 1 && hitpause == false) {
        sound_play( sound_get( "dair" ) );
    }
    
    if (window >= 2 && has_hit && hitpause == true && !was_parried && (attack_pressed || down_stick_pressed || left_strong_pressed || right_strong_pressed || up_strong_pressed || down_strong_pressed )) {
        has_hit_player = false;
        destroy_hitboxes();
        attack_end();
        clear_button_buffer(PC_ATTACK_PRESSED);
        set_attack(AT_EXTRA_1);
        window = 1;
        window_timer = 1;
    }
}

if (attack == AT_EXTRA_1) {
	if (window == 1 && window_timer == 1) {
		set_window_value(AT_FSPECIAL_AIR, 1, AG_WINDOW_LENGTH, 13);
		set_window_value(AT_FSPECIAL_AIR, 1, AG_WINDOW_SFX_FRAME, 12);
		set_hitbox_value(AT_DSPECIAL_AIR, 1, HG_WIDTH, 83);
		set_hitbox_value(AT_DSPECIAL_AIR, 1, HG_HEIGHT, 85);
		set_hitbox_value(AT_DSPECIAL_AIR, 1, HG_HITBOX_Y, -41);
	}
	if (window == 2 && window_timer == 1) {
		reset_window_value(AT_FSPECIAL_AIR, 1, AG_WINDOW_LENGTH);
		reset_window_value(AT_FSPECIAL_AIR, 1, AG_WINDOW_SFX_FRAME);
		reset_hitbox_value(AT_DSPECIAL_AIR, 1, HG_WIDTH);
		reset_hitbox_value(AT_DSPECIAL_AIR, 1, HG_HEIGHT);
		reset_hitbox_value(AT_DSPECIAL_AIR, 1, HG_HITBOX_Y);
	}
    if ((window == 1) && hitpause == false) {
        can_move = true;
        can_jump = true;
        can_strong = true;
        can_special = true;
        can_shield = true;
    }
    if (window == 1) {
        move_cooldown[AT_DAIR] = 6;
    }
}

if (attack == AT_USTRONG){
	if (window == 8 && has_hit && (window_timer == 1 || window_timer == 2 || window_timer == 3 || window_timer == 4 || window_timer == 5 || window_timer == 6 || window_timer == 7 || window_timer == 8 || window_timer == 9) && (special_pressed || right_strong_pressed || left_strong_pressed || up_strong_pressed || down_strong_pressed)) {
    	attack_end();
    	set_attack(AT_FSTRONG_2);
    	CorrectHurtboxes();
    }
    /*if (window == 3 && window_timer <= 24 && hitpause == false && !was_parried)
    {
        if (attack_pressed || up_stick_pressed || up_strong_pressed || right_strong_pressed || left_strong_pressed || down_strong_pressed) {
            window = 3;
            window_timer = 24;
        }
    }
    */
    if (window == 3 && was_parried) {
        window = 9;
        window_timer = 26;
    }
    if (window == 5 && window_timer == 16 && was_parried) {
        window = 9;
        window_timer = 26;
    }
    if (window == 6 || window == 7 || window == 8 || window == 9){
            iasa_script();
    }
    
    if (window == 3 && !has_hit) {
    window = 10;
    window_timer = 0;
    }
    
    if (window >= 11) {
    	iasa_script();
    }
    
    if (window == 10 && window_timer == 24) {
    window = 11;
    window_timer = 0;
    }
    if (window == 11 && window_timer == 5) {
    window = 12;
    window_timer = 0;
    }
    if (window == 12 && window_timer == 9) {
    window = 13;
    window_timer = 0;
    }
}

if (attack == AT_DATTACK){
	if (window == 1 && window_timer == 1) {
        reset_window_value(AT_DATTACK, 7, AG_WINDOW_LENGTH);
    }
	if (window == 9 && has_hit && (window_timer == 5 || window_timer == 6 || window_timer == 7 || window_timer == 8 || window_timer == 9 || window_timer == 10 || window_timer == 11 || window_timer == 12 || window_timer == 13) && (special_pressed || right_strong_pressed || left_strong_pressed || up_strong_pressed || down_strong_pressed)) {
    	attack_end();
    	set_attack(AT_FSTRONG_2);
    	CorrectHurtboxes();
    }
    can_fast_fall = false;
    if (has_hit) {
    	//can_jump = true;
    }
    if (window >= 7 && free ) {
    	attack_end();
    	set_state(PS_IDLE_AIR);
    }
    if (window >= 8){
            iasa_script();
    }
    if (window == 7 && window_timer == 1 && was_parried) {
        window = 15;
    }
}

if (attack == AT_NSPECIAL && window == 2 && window_timer == 1) {
        move_cooldown[AT_NSPECIAL] = 75;
        move_cooldown[AT_NSPECIAL_AIR] = 75;
    }
if (attack == AT_NSPECIAL_AIR && window == 4 && window_timer == 1) {
        move_cooldown[AT_NSPECIAL_AIR] = 75;
        move_cooldown[AT_NSPECIAL] = 75;
    }


if (attack == AT_FSTRONG){
	if (window == 1 && window_timer == 1) {
        reset_window_value(AT_FSTRONG, 3, AG_WINDOW_LENGTH);
    }
    if (window == 2 && window_timer == 5 && hitpause == false && !was_parried)
    {
        if (down_down && spr_dir == 1) {
            create_hitbox(AT_FSTRONG, 3, x + 150, y - 40)
            set_window_value(AT_FSTRONG, 3, AG_WINDOW_LENGTH, 8);
        }
        else if (down_down && spr_dir == -1) {
            create_hitbox(AT_FSTRONG, 3, x - 150, y - 40)
            set_window_value(AT_FSTRONG, 3, AG_WINDOW_LENGTH, 8);
        }
        else if (up_down && spr_dir == 1) {
            create_hitbox(AT_FSTRONG, 3, x + 230, y - 40)
            set_window_value(AT_FSTRONG, 3, AG_WINDOW_LENGTH, 8);
        }
        else if (up_down && spr_dir == -1) {
            create_hitbox(AT_FSTRONG, 3, x - 230, y - 40)
            set_window_value(AT_FSTRONG, 3, AG_WINDOW_LENGTH, 8);
        }
        else if (spr_dir == 1) {
            create_hitbox(AT_FSTRONG, 1, x + 70, y - 40)
        }
        else if (spr_dir == -1) {
            create_hitbox(AT_FSTRONG, 1, x - 70, y - 40)
        }
    }
}


if (attack == AT_FSTRONG_2){
	if (window == 1 && window_timer == 3 && hitpause == false) {
		sound_play(sound_get("tjc"));
	}
	if (window == 1 && window_timer == 4 && !was_parried) {
		if (spr_dir == 1) {
		var hit_effect = spawn_hit_fx(x-10, y-20, TJCflash);
		hit_effect.depth = depth - 6;
		}
		else {
		var hit_effect2 = spawn_hit_fx(x+10, y-20, TJCflash);
		hit_effect2.depth = depth - 6;
		}
		//var hit_effect3 = spawn_hit_fx(x, y-60, TJCswirl);
		//hit_effect3.depth = depth - 3;
		var hit_effect4 = spawn_hit_fx(x, y-60, TJCswirl2);
		hit_effect4.depth = depth - 5;
	}
	if (window == 1 && window_timer == 4 && hitpause == false && !was_parried && hit_player_obj.state_cat == SC_HITSTUN)
    {
        create_hitbox(AT_FSTRONG_2, 1, hit_player_obj.x, hit_player_obj.y - 40);
    }
    else if (window == 1 && window_timer == 4 && hitpause == false && !was_parried && hit_player_obj.state_cat != SC_HITSTUN && (hit_player_obj.state != PS_SPAWN || hit_player_obj.state != PS_RESPAWN || hit_player_obj.state != PS_DEAD)) {
    	create_hitbox(AT_FSTRONG_2, 3, hit_player_obj.x, hit_player_obj.y - 40);
    }
    else if (window == 1 && window_timer == 4 && hitpause == false && !was_parried && (hit_player_obj.state == PS_SPAWN || hit_player_obj.state == PS_RESPAWN || hit_player_obj.state == PS_DEAD)) {
    }
}

if (attack == AT_DAIR){
	if (window == 2 && window_timer == 1) {
		afterImageTimer = 5;
	}
}

if (attack == AT_EXTRA_1){
	if (window == 2 && window_timer == 1) {
		afterImageTimer = 15;
	}
}

if (attack == AT_FSTRONG_2){
	if (window == 1 && window_timer == 1) {
		afterImageTimer = 15;
	}
}




//hey if it works, it works...
if (attack == AT_FSPECIAL || attack == AT_FSPECIAL_AIR){
	if (window == 2 && window_timer == 1) {
		afterImageTimer = 8;
	}
	
	if (window == 4 && window_timer == 1 && spr_dir == 1) {
    	var hit_effect = spawn_hit_fx(x - 160, y + 30, rslash1);
    	hit_effect.depth = depth - 0.4;
    	shake_camera( 4, 8 );
    }
    if (window == 4 && window_timer == 4 && spr_dir == 1) {
    	var hit_effect = spawn_hit_fx(x - 40, y - 40, rslash2);
    	hit_effect.depth = depth - 0.4;
    }
    if (window == 4 && window_timer == 4 && spr_dir == 1) {
    	var hit_effect = spawn_hit_fx(x - 140, y - 40, rslash4);
    	hit_effect.depth = depth - 0.4;
    }
    if (window == 4 && window_timer == 5 && spr_dir == 1) {
    	var hit_effect = spawn_hit_fx(x - 150, y + 20, spark);
    	hit_effect.depth = depth - 0.4;
    }
    if (window == 4 && window_timer == 7 && spr_dir == 1) {
    	var hit_effect = spawn_hit_fx(x - 110, y, spark);
    	hit_effect.depth = depth - 0.4;
    }
    if (window == 4 && window_timer == 7 && spr_dir == 1) {
    	var hit_effect = spawn_hit_fx(x - 60, y - 20, rslash3);
    	hit_effect.depth = depth - 0.4;
    }
    else if (window == 4 && window_timer == 1 && spr_dir == -1) {
    	var hit_effect = spawn_hit_fx(x + 160, y + 30, rslash1);
    	hit_effect.depth = depth - 0.4;
    	shake_camera( 4, 8 );
    }
    if (window == 4 && window_timer == 4 && spr_dir == -1) {
    	var hit_effect = spawn_hit_fx(x + 40, y - 40, rslash2);
    	hit_effect.depth = depth - 0.4;
    }
    if (window == 4 && window_timer == 4 && spr_dir == -1) {
    	var hit_effect = spawn_hit_fx(x + 140, y - 40, rslash4);
    	hit_effect.depth = depth - 0.4;
    }
    if (window == 4 && window_timer == 5 && spr_dir == -1) {
    	var hit_effect = spawn_hit_fx(x + 150, y + 20, spark);
    	hit_effect.depth = depth - 0.4;
    }
    if (window == 4 && window_timer == 7 && spr_dir == -1) {
    	var hit_effect = spawn_hit_fx(x + 110, y, spark);
    	hit_effect.depth = depth - 0.4;
    }
    if (window == 4 && window_timer == 7 && spr_dir == -1) {
    	var hit_effect = spawn_hit_fx(x + 60, y - 20, rslash3);
    	hit_effect.depth = depth - 0.4;
    }
    can_fast_fall = false;
    can_wall_jump = true;
    if (window == 1 && free) {
    	move_cooldown[AT_FSPECIAL]=9999999;
    }
    if (window == 1 && free) {
    	move_cooldown[AT_FSPECIAL_AIR]=9999999;
    }
}

if (attack == AT_TAUNT && has_hit) {
	can_jump = true;
}

if (attack == AT_EXTRA_3){
	if (window == 1 && window_timer == 2 && !was_parried && (phantom.state = 1 || phantom.state = 4 || phantom.state = 3 || phantom.state = 7 || phantom.state = 9 || phantom.state = 6)) {
    	phantom.state = 9;
        phantom.state_timer = 0;
    }
    if (window == 3 && !was_parried){
        if (spr_dir == 1) {
            phantom.throw_dir = 1;
        }
        else {
        phantom.throw_dir = 180;
        }
        if (window_timer == 1 && (phantom.state = 1 || phantom.state = 4 || phantom.state = 3 || phantom.state = 7 || phantom.state = 9 || phantom.state = 6)) {
            phantom.state = 5;
            phantom.state_timer = 0;
            sound_play( sound_get( "myonthrow" ) );
        }
            else if (window_timer == 3 && (phantom.state = 2 || phantom.state = 8 || phantom.state = 10) && phantom.state != 1)  {
                phantom.state = 4;
                phantom.state_timer = 0;
                player_id.move_cooldown[AT_EXTRA_3]=16; // just so you cant do a wack combo
        }
    }
    can_fast_fall = false;
    can_move = false;
    move_cooldown[AT_DSPECIAL_AIR]=4;
    if (has_hit_player) {
    has_fly = true;
    }
    if (window == 3 && window_timer == 20 && joy_pad_idle == false) {
    	if (spr_dir == 1 && left_down) {
    		spr_dir = -1;
    	}
        if (spr_dir == -1 && right_down) {
            spr_dir = 1;
        }
    }
}

if (attack == AT_FTHROW){
    if (window == 3 && !was_parried){
        if (spr_dir == 1) {
            phantom.throw_dir = 1;
        }
        else {
        phantom.throw_dir = 180;
        }
        if (window_timer == 1 && (phantom.state = 1 || phantom.state = 3 || phantom.state = 7 || phantom.state = 9 || phantom.state = 6)) {
            phantom.state = 11;
            phantom.state_timer = 0;
            sound_play( sound_get( "myonthrow" ) );
        }
            else if (window_timer == 2 && (phantom.state = 2 || phantom.state = 8 || phantom.state = 10)) {
                phantom.state = 4;
                phantom.state_timer = 0;
        }
    }
}

if (attack == AT_FTHROW) {
    if (window == 1 && window_timer == 1 && (phantom.state == 7 || phantom.state == 1)) {
        phantom.state = 9;
        phantom.state_timer = 0;
    }
}

//if (attack == AT_DSPECIAL_AIR) {
//    if (window == 1 && window_timer == 2 && (phantom.state == 7 || phantom.state == 1)) {
//        phantom.state = 6;
//phantom.state_timer = 0;
//    }
//}
	if (attack == AT_DSPECIAL_AIR) {
		if (window == 3 && window_timer == 1) {
			reset_hitbox_value(AT_DSPECIAL_AIR, 1, HG_WIDTH);
			reset_hitbox_value(AT_DSPECIAL_AIR, 1, HG_HEIGHT);
		}
	}
	
	if (attack == AT_EXTRA_3) {
		if (window == 1 && window_timer == 1) {
			reset_hitbox_value(AT_DSPECIAL_AIR, 1, HG_WIDTH);
			reset_hitbox_value(AT_DSPECIAL_AIR, 1, HG_HEIGHT);
		}
	}

if (attack == AT_DSPECIAL) {
	//reset 'grabbed_player' variables on the first frame when performing a grab.
    if (window == 1 && window_timer == 1) { 
    	grabbed_player_obj = noone; 
    	grabbed_player_relative_x = 0;
    	grabbed_player_relative_y = 0;
    }
    was_parried = false;
}

if (attack == AT_DSPECIAL_2 && instance_exists(grabbed_player_obj)) {
	
	//first, drop the grabbed player if this is the last window of the attack, or if they somehow escaped hitstun.
	if (window >= get_attack_value(attack, AG_NUM_WINDOWS)) { grabbed_player_obj = noone; }

	else {
		//keep the grabbed player in hitstop until the grab is complete.
		grabbed_player_obj.hitstop = 1;
		grabbed_player_obj.hitpause = true;
		
		if (window == 1 && window_timer >= 1) {
			if (spr_dir == 1) {
				if (right_pressed) {
					attack_end();
					set_attack(AT_FTHROW);
					CorrectHurtboxes();
				}
				else if (left_pressed) {
					window = 2;
					window_timer = 0;
				}
			}
			else if (spr_dir == -1)
				if (left_pressed) {
					attack_end();
					set_attack(AT_FTHROW);
					CorrectHurtboxes();
				}
				else if (right_pressed) {
					window = 2;
					window_timer = 0;
				}
		}
		
		//if this is the first frame of a window, store the grabbed player's relative position.
		if (window_timer <= 1) {
			grabbed_player_relative_x = grabbed_player_obj.x - x;
			grabbed_player_relative_y = grabbed_player_obj.y - y;
		}
		 
		//on the first window, pull the opponent into the grab.
		if (window == 1 || (window == 2 && window_timer <= 14)) { 
			//change as necessary. by default, this grab will pull the opponent to (30, 0) in front of the player.
			var pull_to_x = 30 * spr_dir;
			var pull_to_y = 0;
			
			//using an easing function, smoothly pull the opponent into the grab over the duration of this window.
			var window_length = get_window_value(attack, window, AG_WINDOW_LENGTH);
			grabbed_player_obj.x = x + ease_circOut( grabbed_player_relative_x, pull_to_x, window_timer, window_length);
			grabbed_player_obj.y = y + ease_circOut( grabbed_player_relative_y, pull_to_y, window_timer, window_length);
		}
		
		if (window == 2 && window_timer == 16) { 
			//change as necessary. by default, this grab will pull the opponent to (30, 0) in front of the player.
			var pull_to_x = 20 * spr_dir;
			var pull_to_y = -20;
			
			//using an easing function, smoothly pull the opponent into the grab over the duration of this window.
			var window_length = get_window_value(attack, window, AG_WINDOW_LENGTH);
			grabbed_player_obj.x = x + ease_circOut( grabbed_player_relative_x, pull_to_x, window_timer, window_length);
			grabbed_player_obj.y = y + ease_circOut( grabbed_player_relative_y, pull_to_y, window_timer, window_length);
		}
				if (window == 2 && window_timer == 20) { 
			//change as necessary. by default, this grab will pull the opponent to (30, 0) in front of the player.
			var pull_to_x = -35 * spr_dir;
			var pull_to_y = -33;
			
			//using an easing function, smoothly pull the opponent into the grab over the duration of this window.
			var window_length = get_window_value(attack, window, AG_WINDOW_LENGTH);
			grabbed_player_obj.x = x + ease_circOut( grabbed_player_relative_x, pull_to_x, window_timer, window_length);
			grabbed_player_obj.y = y + ease_circOut( grabbed_player_relative_y, pull_to_y, window_timer, window_length);
		}
				if (window == 3) { 
			//change as necessary. by default, this grab will pull the opponent to (30, 0) in front of the player.
			var pull_to_x = -35 * spr_dir;
			var pull_to_y = 0;
			
			//using an easing function, smoothly pull the opponent into the grab over the duration of this window.
			var window_length = get_window_value(attack, window, AG_WINDOW_LENGTH);
			grabbed_player_obj.x = x + ease_linear( grabbed_player_relative_x, pull_to_x, window_timer, window_length);
			grabbed_player_obj.y = y + ease_linear( grabbed_player_relative_y, pull_to_y, window_timer, window_length);
		}

		//the above block can be copied for as many windows as necessary.
		//e.g. for an attack like Clairen's back throw, you might have an additional window where the grabbed player is pulled behind.
	}
}

if (attack == AT_DSPECIAL_2 && window == 5 && window_timer == 6) {
    if (spr_dir == -1) {
        spr_dir = 1;
    }
    else {
        spr_dir = -1;
    }
}

if (attack == AT_DSPECIAL_2 && window == 5 && window_timer == 6) {
    move_cooldown[AT_DSPECIAL] = 2;
}

if (attack == AT_DSPECIAL_AIR && (window == 1 || window == 2 || window == 3 || window == 4)) {
	if (!free) {
		window = 5;
		window_timer = 0;
	}
	//reset 'grabbed_player' variables on the first frame when performing a grab.
    if (window == 1 && window_timer == 1) { 
    	grabbed_player_obj = noone; 
    	grabbed_player_relative_x = 0;
    	grabbed_player_relative_y = 0;
    }
    was_parried = false;
    can_fast_fall = false;
}

if (attack == AT_NSPECIAL_AIR && (window == 1 || window == 2 || window == 3)) {
	if (!free) {
		window = 5;
		window_timer = 0;
	}
}

if (attack == AT_NSPECIAL_AIR && window == 4 && !free) {
		window = 5;
		window_timer = 0;
}

if ((attack == AT_NSPECIAL_AIR || attack == AT_NSPECIAL) && window == 1) {
	start_sprdir = spr_dir;
}


if (attack == AT_EXTRA_3 && instance_exists(grabbed_player_obj)) {
	
	//first, drop the grabbed player if this is the last window of the attack, or if they somehow escaped hitstun.
	if (window >= get_attack_value(attack, AG_NUM_WINDOWS)) { grabbed_player_obj = noone; }

	else {
		//keep the grabbed player in hitstop until the grab is complete.
		grabbed_player_obj.hitstop = 2;
		grabbed_player_obj.hitpause = true;
		
		//if this is the first frame of a window, store the grabbed player's relative position.
		if (window_timer <= 1) {
			grabbed_player_relative_x = grabbed_player_obj.x - x;
			grabbed_player_relative_y = grabbed_player_obj.y - y;
		}
		 
		//on the first window, pull the opponent into the grab.
		if (window == 1) { 
			//change as necessary. by default, this grab will pull the opponent to (30, 0) in front of the player.
			var pull_to_x = 30 * spr_dir;
			var pull_to_y = 0;
			
			//using an easing function, smoothly pull the opponent into the grab over the duration of this window.
			var window_length = get_window_value(attack, window, AG_WINDOW_LENGTH);
			grabbed_player_obj.x = x + ease_circOut( grabbed_player_relative_x, pull_to_x, window_timer, window_length);
			grabbed_player_obj.y = y + ease_circOut( grabbed_player_relative_y, pull_to_y, window_timer, window_length);
		}
		
		if (window == 2) { 
			//change as necessary. by default, this grab will pull the opponent to (30, 0) in front of the player.
			var pull_to_x = 30 * spr_dir;
			var pull_to_y = -15;
			
			//using an easing function, smoothly pull the opponent into the grab over the duration of this window.
			var window_length = get_window_value(attack, window, AG_WINDOW_LENGTH);
			grabbed_player_obj.x = x + ease_circOut( grabbed_player_relative_x, pull_to_x, window_timer, window_length);
			grabbed_player_obj.y = y + ease_circOut( grabbed_player_relative_y, pull_to_y, window_timer, window_length);
		}
		//the above block can be copied for as many windows as necessary.
		//e.g. for an attack like Clairen's back throw, you might have an additional window where the grabbed player is pulled behind.
	}
}

if (attack == AT_FTHROW && instance_exists(grabbed_player_obj)) {
	
	//first, drop the grabbed player if this is the last window of the attack, or if they somehow escaped hitstun.
	if (window >= get_attack_value(attack, 2)) { grabbed_player_obj = noone; }
	else if (grabbed_player_obj.state != PS_HITSTUN && grabbed_player_obj.state != PS_HITSTUN_LAND) { grabbed_player_obj = noone; }

	else {
		//keep the grabbed player in hitstop until the grab is complete.
		
		//if this is the first frame of a window, store the grabbed player's relative position.
		if (window_timer <= 1) {
			grabbed_player_relative_x = grabbed_player_obj.x - x;
			grabbed_player_relative_y = grabbed_player_obj.y - y;
		}
		 
		//on the first window, pull the opponent into the grab.
		if (window == 1) { 
			//change as necessary. by default, this grab will pull the opponent to (30, 0) in front of the player.
			var pull_to_x = 30 * spr_dir;
			var pull_to_y = 0;
			
			
			//using an easing function, smoothly pull the opponent into the grab over the duration of this window.
			var window_length = get_window_value(attack, window, AG_WINDOW_LENGTH);
			grabbed_player_obj.x = x + ease_circOut( grabbed_player_relative_x, pull_to_x, window_timer, window_length);
			grabbed_player_obj.y = y + ease_circOut( grabbed_player_relative_y, pull_to_y, window_timer, window_length);
		}
		//the above block can be copied for as many windows as necessary.
		//e.g. for an attack like Clairen's back throw, you might have an additional window where the grabbed player is pulled behind.
	}
}

//Change animations to spin variants on hit
if (attack == AT_JAB) 
{
	if (window = 1 && window_timer = 1)
	{
		reset_attack_value(AT_JAB, AG_SPRITE);
	}
	if (has_hit) 
	{
		set_attack_value(AT_JAB, AG_SPRITE, sprite_get("jabspin"));
	}
}

if (attack == AT_UTILT) 
{
	if (window = 1 && window_timer = 1)
	{
		reset_attack_value(AT_UTILT, AG_SPRITE);
	}
	if (has_hit) 
	{
		set_attack_value(AT_UTILT, AG_SPRITE, sprite_get("utiltspin"));
	}
}

if (attack == AT_FTILT) 
{
	if (window = 1 && window_timer = 1)
	{
		reset_attack_value(AT_FTILT, AG_SPRITE);
	}
	if (has_hit) 
	{
		set_attack_value(AT_FTILT, AG_SPRITE, sprite_get("ftiltspin"));
	}
}

if (attack == AT_USTRONG) 
{
	if (window = 1 && window_timer = 1)
	{
		reset_attack_value(AT_USTRONG, AG_SPRITE);
	}
	if (has_hit) 
	{
		set_attack_value(AT_USTRONG, AG_SPRITE, sprite_get("ustrongspin"));
	}
}

if (attack == AT_DSTRONG) 
{
	if (window = 1 && window_timer = 1)
	{
		reset_attack_value(AT_DSTRONG, AG_SPRITE);
	}
	if (has_hit) 
	{
		set_attack_value(AT_DSTRONG, AG_SPRITE, sprite_get("dstrongspin"));
	}
}

if (attack == AT_DATTACK) 
{
	if (window = 1 && window_timer = 1)
	{
		reset_attack_value(AT_DATTACK, AG_SPRITE);
	}
	if (has_hit) 
	{
		set_attack_value(AT_DATTACK, AG_SPRITE, sprite_get("dattackspin"));
	}
}

if (attack == AT_FSPECIAL) 
{
	if (window = 1 && window_timer = 1)
	{
		reset_attack_value(AT_FSPECIAL, AG_SPRITE);
	}
	if (has_hit) 
	{
		set_attack_value(AT_FSPECIAL, AG_SPRITE, sprite_get("fspecialspin"));
	}
}

if (attack == AT_FSPECIAL_AIR) 
{
	if (window = 1 && window_timer = 1)
	{
		reset_attack_value(AT_FSPECIAL_AIR, AG_SPRITE);
	}
	if (has_hit) 
	{
		set_attack_value(AT_FSPECIAL_AIR, AG_SPRITE, sprite_get("fspecialspin"));
	}
}

//voice stuff
if (voice_mode) {
	if (attack == AT_USPECIAL && window = 2 && window_timer = 15) {
		voice_rng = random_func(0, 6, true);
		if (voice_rng == 0)
			sound_play(sound_get("v_myon1"));
		else if (voice_rng = 1)
			sound_play(sound_get("v_myon2"));
		else if (voice_rng = 2)
			sound_play(sound_get("v_myon3"));
		else if (voice_rng = 3)
			sound_play(sound_get("v_myon4"));
		else if (voice_rng = 4)
			sound_play(sound_get("v_myon5"));
	}
	if ((attack == AT_NSPECIAL_AIR) && window = 2 && window_timer = 1 && hitpause == false) {
		voice_rng = random_func(0, 3, true);
		if (voice_rng == 0)
			sound_play(sound_get("v_b1"));
		else if (voice_rng = 1)
			sound_play(sound_get("v_b2"));
		else if (voice_rng = 2)
			sound_play(sound_get("v_myon4"));
	}
	
	if ((attack == AT_NSPECIAL) && window = 1 && window_timer = 8 && hitpause == false) {
		voice_rng = random_func(0, 3, true);
		if (voice_rng == 0)
			sound_play(sound_get("v_b1"));
		else if (voice_rng = 1)
			sound_play(sound_get("v_b2"));
		else if (voice_rng = 2)
			sound_play(sound_get("v_myon4"));
	}
	
	if ((attack == AT_FSPECIAL || attack == AT_FSPECIAL_AIR) && (window = 1 && window_timer = 10)) {
		voice_rng = random_func(0, 4, true);
		if (voice_rng == 0)
			sound_play(sound_get("v_grab2"));
		else if (voice_rng = 1)
			sound_play(sound_get("v_slash7"));
		else if (voice_rng = 2)
			sound_play(sound_get("v_slash4"));
		else if (voice_rng = 3)
			sound_play(sound_get("v_slash5"));
	}
	
	if ((attack == AT_FSTRONG_2) && (window = 1 && window_timer = 1)) {
		voice_rng = random_func(0, 6, true);
		if (voice_rng == 0)
			sound_play(sound_get("v_grab2"));
		else if (voice_rng = 1)
			sound_play(sound_get("v_slash7"));
		else if (voice_rng = 2)
			sound_play(sound_get("v_slash4"));
		else if (voice_rng = 3)
			sound_play(sound_get("v_slash5"));
		else if (voice_rng = 4)
			sound_play(sound_get("v_slash8"));
		else if (voice_rng = 5)
			sound_play(sound_get("v_parry1"));
	}
	
	if (attack == AT_FSTRONG && window = 2 && window_timer = 1) {
		voice_rng = random_func(0, 3, true);
		if (voice_rng == 0)
			sound_play(sound_get("v_b1"));
		else if (voice_rng = 1)
			sound_play(sound_get("v_b2"));
		else if (voice_rng = 2)
			sound_play(sound_get("v_myon4"));
	}
	
	if (attack == AT_BAIR && window = 2 && window_timer = 3) {
		voice_rng = random_func(0, 5, true);
		if (voice_rng == 0)
			sound_play(sound_get("v_attack1"));
		else if (voice_rng = 1)
			sound_play(sound_get("v_attack2"));
		else if (voice_rng = 2)
			sound_play(sound_get("v_attack4"));
		else if (voice_rng = 3)
			sound_play(sound_get("v_attack8"));
	}
	
	if (attack == AT_DAIR && window = 1 && window_timer = 10) {
		voice_rng = random_func(0, 5, true);
		if (voice_rng == 0)
			sound_play(sound_get("v_attack1"));
		else if (voice_rng = 1)
			sound_play(sound_get("v_attack2"));
		else if (voice_rng = 2)
			sound_play(sound_get("v_attack4"));
		else if (voice_rng = 3)
			sound_play(sound_get("v_attack8"));
	}
	
	if (attack == AT_DATTACK && window = 3 && window_timer = 2) {
		voice_rng = random_func(0, 5, true);
		if (voice_rng == 0)
			sound_play(sound_get("v_attack1"));
		else if (voice_rng = 1)
			sound_play(sound_get("v_attack2"));
		else if (voice_rng = 2)
			sound_play(sound_get("v_attack4"));
		else if (voice_rng = 3)
			sound_play(sound_get("v_attack8"));
	}
	
	if (attack == AT_DSTRONG && window = 2 && window_timer = 3) {
		voice_rng = random_func(0, 3, true);
		if (voice_rng == 0)
			sound_play(sound_get("v_attack5"));
		else if (voice_rng = 1)
			sound_play(sound_get("v_attack6"));
		else if (voice_rng = 2)
			sound_play(sound_get("v_attack4"));
	}
	
	if (attack == AT_USTRONG && window = 2 && window_timer = 1) {
		voice_rng = random_func(0, 3, true);
		if (voice_rng == 0)
			sound_play(sound_get("v_attack5"));
		else if (voice_rng = 1)
			sound_play(sound_get("v_attack6"));
		else if (voice_rng = 2)
			sound_play(sound_get("v_attack4"));
	}
	
	if (attack == AT_USTRONG && window = 4 && window_timer = 1 && has_hit) {
		sound_play(sound_get("v_attackheavy"));
	}
	
	/*if ((attack == AT_FTILT || attack == AT_DTILT || attack == AT_UTILT || attack == AT_UAIR || attack == AT_FAIR || attack == AT_NAIR) && window = 2 && window_timer = 1) {
		voice_rng = random_func(0, 12, true);
		if (voice_rng == 0)
			sound_play(sound_get("v_b1"));
		else if (voice_rng = 1)
			sound_play(sound_get("v_myon1"));
		else if (voice_rng = 2)
			sound_play(sound_get("v_attack4"));
		else if (voice_rng = 4)
			sound_play(sound_get("v_slash2"));
		else if (voice_rng = 5)
			sound_play(sound_get("v_slash4"));
		else if (voice_rng = 6)
			sound_play(sound_get("v_attack8"));
	}*/
}

#define CorrectHurtboxes()
{
    hurtboxID.sprite_index = get_attack_value(attack, (free && get_attack_value(attack, AG_HURTBOX_AIR_SPRITE) != 0) ? AG_HURTBOX_AIR_SPRITE : AG_HURTBOX_SPRITE);
}