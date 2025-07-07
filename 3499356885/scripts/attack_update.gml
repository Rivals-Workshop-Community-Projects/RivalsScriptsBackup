//B - Reversals
if (attack == AT_NSPECIAL || attack == AT_FSPECIAL || attack == AT_DSPECIAL){
    trigger_b_reverse();
}


//Neutral Special - Egg Lay

if (attack == AT_NSPECIAL) {
	//reset 'grabbed_player' variables on the first frame when performing a grab.
    if (window == 1 && window_timer == 1) { 
    	grabbed_player_obj = noone; 
    }
    
    //Set Tongue Length
    if (window == 2){
    	
    	var window_length_cur = (get_window_value(attack, window, AG_WINDOW_LENGTH));
    	
    	//Spawn Tongue Hitbox
    	if (tongue_hitbox == noone
    	|| !instance_exists(tongue_hitbox))
    	&& window_timer <= window_length_cur/2 {
    		tongue_hitbox = create_hitbox(AT_NSPECIAL, 1, 0, 0);	
    	}
    	
    	//Go out in first half, in on second
    	
    	if window_timer < (window_length_cur/2){
    		tongue_length = ease_sineOut(2, max_tongue_length, window_timer, window_length_cur/2);
    	}
    	else{
    		tongue_length = ease_sineIn(max_tongue_length, 0, window_timer-window_length_cur/2, window_length_cur/2);
    	}
    	
    	//Store tongue's position
    	old_tongue_length = tongue_length;
    	
    	//Change Tongue Hitbox Position
    	if tongue_hitbox != noone
    	&& instance_exists(tongue_hitbox){
    		tongue_hitbox.x_pos = (20+tongue_length)*spr_dir;
    		tongue_hitbox.y_pos = -18;
    	}
    	
    }
    
    old_jump = false;
    
}

if (attack == AT_NSPECIAL_2 && instance_exists(grabbed_player_obj)) {
	
	//Pull Tongue In
	var window_length_cur = (get_window_value(attack, window, AG_WINDOW_LENGTH));
	tongue_length = ease_expoIn(round(old_tongue_length), 0, window_timer, window_length_cur);
	
	//first, drop the grabbed player if this is the last window of the attack, or if they somehow escaped hitstun.
	if (window >= get_attack_value(attack, AG_NUM_WINDOWS)) {
		
		//APPLY EGG STATUS
		
		//Set Launch Variables
		grabbed_player_obj.x = x-(spr_dir*24);
		grabbed_player_obj.y = y-16;
		grabbed_player_obj.old_hsp = -spr_dir*5;
		grabbed_player_obj.old_vsp = -(20*grabbed_player_obj.gravity_speed);
		sound_play(sound_get("SFX_Egg_Pop"));
		take_damage(grabbed_player_obj.player, player, 4);
		
		//Set Yoshi Egg Values
		var eggtime = round(base_eggtime + eggtime_scaling*(get_player_damage(grabbed_player_obj.player)));
		
		grabbed_player_obj.is_yoshi_egged = true;
		grabbed_player_obj.which_yoshi_egged = self;
		grabbed_player_obj.yoshi_egged_timer_max = eggtime;
		grabbed_player_obj.yoshi_egged_timer = 0;
		grabbed_player_obj.yoshi_egg_destroy = false;
		grabbed_player_obj.state = PS_PRATFALL;
		
		//Reset Yoshi variables
		grabbed_player_obj.visible = true;
		grabbed_player_obj = noone;
	}
	else if (grabbed_player_obj.state != PS_HITSTUN && grabbed_player_obj.state != PS_HITSTUN_LAND) {
		grabbed_player_obj.visible = true;
		grabbed_player_obj = noone;
	}

	else {
	    //keep the grabbed player in hitstop until the grab is complete.
		grabbed_player_obj.hitstop = 2;
		grabbed_player_obj.hitpause = true;
		
		//Set grabbed player's position at tongue
		if window == 1{
			grabbed_player_obj.x = x+(20+tongue_length)*spr_dir;
		}
		else{
			grabbed_player_obj.x = x;
		}
		grabbed_player_obj.y = y;
		
		if window >= 2 grabbed_player_obj.visible = false;
		else grabbed_player_obj.visible = true;
		
	}
}

// Another Grab Failsafe test

if (attack != AT_NSPECIAL && attack != AT_NSPECIAL_2) && grabbed_player_obj != noone{
	grabbed_player_obj.visible = true;
	grabbed_player_obj = noone;
}

//Forward Special - Egg Roll

if (attack == AT_FSPECIAL){
	
	move_cooldown[AT_FSPECIAL] = 18;
	old_jump = false;
	can_fast_fall = false;
	
	if window == 1 && window_timer == 1{
		egg_roll_jump = false;
	}
	
	if window == 1 || window == 2{
		var fspecial_move_spd = 5;
		hsp = clamp(hsp, -fspecial_move_spd, fspecial_move_spd);
		if free == false{
			window = 3;
			window_timer = 0;
			sound_play(sound_get("SFX_FSpecial_Roll"));
		}
	}
	
	if window == 3{
		set_attack_value(AT_FSPECIAL, AG_OFF_LEDGE, 1);
		if hitpause == false{hsp = spr_dir*12;}
		egg_roll_timer = egg_roll_timer-1;
		
		if free == true{
			window = 4;
			window_timer = 0;
		}
		
		if ((spr_dir == 1 && left_down == true) || (spr_dir == -1 && right_down == true)){
			window = 5;
			window_timer = 0;
			spr_dir = spr_dir*-1;
			destroy_hitboxes();
			sound_play(sound_get("SFX_FSpecial_Turn"));
		}
	}
	
	if window == 4{
		egg_roll_timer = egg_roll_timer-1;
		if hitpause == false{hsp = 7*spr_dir;}
		if free == false{
			sound_play(sound_get("SFX_FSpecial_Roll"));
			window = 3;
			window_timer = 0;
			if (spr_dir == 1 && left_down == true) || (spr_dir == -1 && right_down == true){
				spr_dir = spr_dir*-1;
			}
		}
	}
	
	if window == 5{
		hsp = hsp + (spr_dir*0.7);
		egg_roll_timer = egg_roll_timer-1;
		
		if hsp*spr_dir <= 0{
			set_attack_value(AT_FSPECIAL, AG_OFF_LEDGE, 0);
		}
		if hsp*spr_dir > 0{
			set_attack_value(AT_FSPECIAL, AG_OFF_LEDGE, 1);
		}
		
		if free == true{
			window = 4;
			window_timer = 0;
			spr_dir = spr_dir*sign(hsp);
		}
		
		if hsp*spr_dir >= 12{
			window = 3;
			window_timer = 0;
			attack_end();
			sound_play(sound_get("SFX_FSpecial_Roll"));
		}
	}
	
	if window == 7 && window_timer == 4{
		spawn_hit_fx(x+(hsp), y-32, yoshi_egg_break_big_fx);
	}
	
	if (was_parried == true && window <= 5) || (hitpause == false && window > 1 && window <= 5) && (special_pressed == true || egg_roll_timer <= 0 || place_meeting(x+sign(hsp), y, asset_get("par_block"))){
		window = 6;
		window_timer = 0;
		destroy_hitboxes();
	}
	
}

if (attack == AT_USPECIAL){
	
	old_jump = false;
	
	var stick_h;
	var stick_v;
	
	var egg_angle_min = 40;
	var egg_angle_max = 100;
	var egg_angle_mid = (egg_angle_min + egg_angle_max)/2;
	
	var egg_hsp;
	var egg_vsp;

	var egg_pl_hsp;
	var egg_pl_vsp;
	var egg_mi_hsp;
	var egg_mi_vsp;
	
	move_cooldown[AT_USPECIAL] = 6;
	
	//Egg Angle Code
	
	if window == 2{
		
		//Stick Direction
		
		stick_h = (right_down - left_down)*spr_dir;
		stick_v = (down_down - up_down);
		
		//New Egg Throw Angle Code
		if stick_v != 0{
			
			if stick_h == 1 egg_angle = (egg_angle_min+egg_angle_mid)/2;
			
			if stick_h == -1 egg_angle = (egg_angle_max+egg_angle_mid)/2;
			
			if stick_h == 0 egg_angle = egg_angle_mid;
			
		}
		else{
			
			if stick_h == 1 egg_angle = egg_angle_min;
			
			if stick_h == -1 egg_angle = egg_angle_max;
			
			if stick_h == 0 egg_angle = egg_angle_mid;
			
		}
		
		//Throw Strength
		
		if special_down throw_power += 1;
		
		egg_speed = clamp((throw_power*(8/(get_window_value(AT_USPECIAL, 2, AG_WINDOW_LENGTH)))) + 6, 6, 14);
		
		//Calculate Egg Speed
		
		egg_hsp = cos( degtorad(egg_angle) ) * egg_speed;
		egg_vsp = -sin( degtorad(egg_angle) ) * egg_speed;
		
		set_hitbox_value(AT_USPECIAL, 1, HG_PROJECTILE_HSPEED, egg_hsp);
		set_hitbox_value(AT_USPECIAL, 1, HG_PROJECTILE_VSPEED, egg_vsp);
	}
	
	//Wall Jump
	if window >= 4{
		can_wall_jump = true;
	}
	
	//Extra Eggs Rune
		
	if has_rune("I"){
		
		if window == 3 && window_timer == 1{
			
			var egg_pl = create_hitbox(AT_USPECIAL, 1, x+(16*spr_dir), y-48);
			var egg_mi = create_hitbox(AT_USPECIAL, 1, x+(16*spr_dir), y-48);
			
			egg_pl_hsp = cos( degtorad(egg_angle+10) ) * egg_speed;
			egg_pl_vsp = -sin( degtorad(egg_angle+10) ) * egg_speed;
			egg_mi_hsp = cos( degtorad(egg_angle-10) ) * egg_speed;
			egg_mi_vsp = -sin( degtorad(egg_angle-10) ) * egg_speed;
			
			egg_pl.hsp = egg_pl_hsp*spr_dir;
			egg_pl.vsp = egg_pl_vsp;
			
			egg_mi.hsp = egg_mi_hsp*spr_dir;
			egg_mi.vsp = egg_mi_vsp;
			
		}
	}
	
}


//DSpecial -- Yoshi Bomb

if (attack == AT_DSPECIAL){
    can_fast_fall = false;
    can_move = false
    
    if down_down && window == 4 fall_through = true;
    
    if window == 5 destroy_hitboxes();
    
    if window == 5 && window_timer == 4{
    	
    	var star_fwd;
    	var star_bck;
    	
    	var star_x = 24;
    	var star_y = -16;
    	var star_spd = 3;
    	
    	star_fwd = create_hitbox(AT_DSPECIAL, 3, x+star_x, y+star_y);
    	star_bck = create_hitbox(AT_DSPECIAL, 3, x-star_x, y+star_y);
    	
    	star_fwd.hsp = star_spd;
    	star_bck.hsp = -star_spd;
    	
    	//More stars
    	if has_rune("J"){
    		
    		for (var i = 0; i < 4; i += 1){
    			
				//Forward Stars
				var star_fwd_cur = create_hitbox(AT_DSPECIAL, 3, x+star_x, y+star_y);
				star_fwd_cur.hsp = star_spd*(i+2);
				
				//Backward Stars
				var star_bck_cur = create_hitbox(AT_DSPECIAL, 3, x-star_x, y+star_y);
				star_bck_cur.hsp = -star_spd*(i+2);
				
    		}
    		
    	}
    	
    }
}


//Runes!!

	//Egg Roll Jump Cancel
if has_rune("B"){
	if attack == AT_FSPECIAL{
		can_jump = true;
		can_wall_jump = true;
	}
}

	//Yoshi Bomb Jump Cancel
if has_rune("C"){
	if attack == AT_DSPECIAL can_jump = true;
}