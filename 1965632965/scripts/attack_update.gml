//B - Reversals
if (attack == AT_NSPECIAL || attack == AT_FSPECIAL || attack == AT_DSPECIAL || attack == AT_USPECIAL){
    trigger_b_reverse();
}

if(attack == AT_DTILT){
	if(window == 2 and window_timer == 8 and puddletimeout == 0 and not has_hit_player){
		
		create_hitbox(AT_DTILT, 2, x+40*spr_dir, y);
		puddletimeout = 120;
		if runeC{
			puddletimeout = 30;
		}
		
	}
	if(window == 2 and window_timer == 6){
		//sound_play(sound_get("plaguepuddle"));
	}
	
}


if (attack == AT_NSPECIAL){

	//Puts the move on cooldown when you run out of shots in the clip.
	if(window == 1 and window_timer == 1){
			timer = 0;
		}
	
	if(pistolshots <= 0){
		pistolcooldown = 120;
		
		move_cooldown[AT_NSPECIAL] = 120;
	}
	if runeL{
		pistolcooldown = 0;
		pistolshots = 4;
		move_cooldown[AT_NSPECIAL] = 0;
	}
	
	//Stuff for the firing animations on the guns.
	if window == 1 and window_timer == 1{
		magnum_ind = 0;
	}else if(window == 2 and window_timer == 9){
		magnum_ind = 1;
	}else if(window == 2 and window_timer == 12){
		magnum_ind = 2;
	}else if(window == 3 and window_timer == 2){
		magnum_ind = 0;
	}
	
    	can_move = false;
    	can_shield = true;
    	can_jump = true;
    	
    	//Re-sets the aiming angle at the beginning of the move.
    	if window == 1 and window_timer == 1{
    		if spr_dir{
    			bash_angle = 0;
    		}else{
    			bash_angle = 180;
    		}
    	}
    	
    	//Sets the aiming angle to be the direction of the joystick.
    	if(!joy_pad_idle){
    		bash_angle = joy_dir;
    	}
		
	//Turns you around as you aim.	
	if (bash_angle > 90) and (270 > bash_angle) {
				spr_dir = -1;
			}
			else {
				spr_dir = 1;
			}
			
		//Sets the direction and initial position of the projectile based on angle.
		if window == 2 and window_timer == 8 {
			if spr_dir {
				set_hitbox_value(AT_NSPECIAL, 1, HG_HITBOX_X, -30 + lengthdir_x(70,bash_angle));
				set_hitbox_value(AT_NSPECIAL, 1, HG_HITBOX_Y, -50 + lengthdir_y(-40,bash_angle)*-1);
				set_hitbox_value(AT_NSPECIAL,1,HG_PROJECTILE_HSPEED,lengthdir_x(9,bash_angle))
				set_hitbox_value(AT_NSPECIAL,1,HG_PROJECTILE_VSPEED,lengthdir_y(9,bash_angle))
			}
			else {
				set_hitbox_value(AT_NSPECIAL, 1, HG_HITBOX_X, -30 + lengthdir_x(70,180-bash_angle));
				set_hitbox_value(AT_NSPECIAL, 1, HG_HITBOX_Y, -50 + lengthdir_y(-30,180-bash_angle)*-1);
				set_hitbox_value(AT_NSPECIAL,1,HG_PROJECTILE_HSPEED,lengthdir_x(9,180-bash_angle))
				set_hitbox_value(AT_NSPECIAL,1,HG_PROJECTILE_VSPEED,lengthdir_y(9,180-bash_angle))
			}
			}
		if window == 2 and window_timer == 8 and runeJ{
			if spr_dir{
				set_hitbox_value(AT_NSPECIAL,1,HG_PROJECTILE_HSPEED,lengthdir_x(4,bash_angle))
				set_hitbox_value(AT_NSPECIAL,1,HG_PROJECTILE_VSPEED,lengthdir_y(4,bash_angle))
			}else{
				set_hitbox_value(AT_NSPECIAL,1,HG_PROJECTILE_HSPEED,lengthdir_x(4,180-bash_angle))
				set_hitbox_value(AT_NSPECIAL,1,HG_PROJECTILE_VSPEED,lengthdir_y(4,180-bash_angle))
			}
			
		}	
			
		//Deducts from your clip.	
		if(window == 2 and window_timer == 9){
			pistolshots--;
		}	
		
	//Allows you to keep firing by holding the button.	
	if(window == 3 and window_timer == 9 and special_down and pistolshots > 0){
		window = 1;
		window_timer = 1;
	}	
}

if (attack == AT_NSPECIAL_SHELL){
	
	if(window == 1 and window_timer == 1){
			timer = 0;
		}
		
			if(shellshots <= 0){
				shellcooldown = 120;
				move_cooldown[AT_NSPECIAL_SHELL] = 120;
			}
			if runeL{
				shellcooldown = 0;
				move_cooldown[AT_NSPECIAL_SHELL] = 0;
			}
			
		// if(window > 1){
		// 	move_cooldown[AT_NSPECIAL_SHELL] = 120;
		// }	

    	can_move = false;
    	can_shield = true;
    	can_jump = true;
    	
    	if window == 1 and window_timer == 1{
    		brickbreak_ind = 0;
    		
    		if spr_dir{
    			bash_angle = 0;
    		}else{
    			bash_angle = 180;
    		}
    	}
    	
    	if(!joy_pad_idle){
    		bash_angle = joy_dir;
    	}
    	
    	//Firing animation stuff.
    	if window == 2 and window_timer == 14{
    		brickbreak_ind = 1;
    	}
    	if window == 3 and window_timer == 4{
    		brickbreak_ind = 2;
    	}
    	if window == 3 and window_timer == 8{
    		brickbreak_ind = 3;
    	}
    	if window == 3 and window_timer == 12{
    		brickbreak_ind = 0;
    	}
    	
    	
		
		
		
			if (bash_angle > 90) and (270 > bash_angle) {
				spr_dir = -1;
			}
			else {
				spr_dir = 1;
			}
		
		if window == 2 and window_timer == 13 {
			if spr_dir {
				set_hitbox_value(AT_NSPECIAL_SHELL, 1, HG_HITBOX_X, -30 + lengthdir_x(90,bash_angle));
				set_hitbox_value(AT_NSPECIAL_SHELL, 1, HG_HITBOX_Y, -25 + lengthdir_y(-40,bash_angle)*-1);
				set_hitbox_value(AT_NSPECIAL_SHELL,1,HG_PROJECTILE_HSPEED,1+lengthdir_x(3,bash_angle))
				set_hitbox_value(AT_NSPECIAL_SHELL,1,HG_PROJECTILE_VSPEED,lengthdir_y(12,bash_angle))
			}
			else {
				set_hitbox_value(AT_NSPECIAL_SHELL, 1, HG_HITBOX_X, -30 + lengthdir_x(90,180-bash_angle));
				set_hitbox_value(AT_NSPECIAL_SHELL, 1, HG_HITBOX_Y, -25 + lengthdir_y(-40,180-bash_angle)*-1);
				set_hitbox_value(AT_NSPECIAL_SHELL,1,HG_PROJECTILE_HSPEED,1+lengthdir_x(3,180-bash_angle))
				set_hitbox_value(AT_NSPECIAL_SHELL,1,HG_PROJECTILE_VSPEED,lengthdir_y(12,180-bash_angle))
			}
			}
			
		if window == 2 and window_timer == 13 and runeJ{
			if spr_dir{
				set_hitbox_value(AT_NSPECIAL_SHELL,1,HG_PROJECTILE_HSPEED,lengthdir_x(3,bash_angle))
				set_hitbox_value(AT_NSPECIAL_SHELL,1,HG_PROJECTILE_VSPEED,lengthdir_y(10,bash_angle))
			}else{
				set_hitbox_value(AT_NSPECIAL_SHELL,1,HG_PROJECTILE_HSPEED,lengthdir_x(3,180-bash_angle))
				set_hitbox_value(AT_NSPECIAL_SHELL,1,HG_PROJECTILE_VSPEED,lengthdir_y(10,180-bash_angle))
			}
			
		}	
		
		if window == 2 and window_timer == 13 and runeO{
			if spr_dir{
				set_hitbox_value(AT_NSPECIAL_SHELL,1,HG_PROJECTILE_HSPEED,lengthdir_x(6,bash_angle))
				set_hitbox_value(AT_NSPECIAL_SHELL,1,HG_PROJECTILE_VSPEED,lengthdir_y(6,bash_angle))
			}else{
				set_hitbox_value(AT_NSPECIAL_SHELL,1,HG_PROJECTILE_HSPEED,lengthdir_x(6,180-bash_angle))
				set_hitbox_value(AT_NSPECIAL_SHELL,1,HG_PROJECTILE_VSPEED,lengthdir_y(6,180-bash_angle))
			}
			
		}
		
		if window == 2 and window_timer == 13 and runeO and runeJ{
			if spr_dir{
				set_hitbox_value(AT_NSPECIAL_SHELL,1,HG_PROJECTILE_HSPEED,lengthdir_x(3,bash_angle))
				set_hitbox_value(AT_NSPECIAL_SHELL,1,HG_PROJECTILE_VSPEED,lengthdir_y(3,bash_angle))
			}else{
				set_hitbox_value(AT_NSPECIAL_SHELL,1,HG_PROJECTILE_HSPEED,lengthdir_x(3,180-bash_angle))
				set_hitbox_value(AT_NSPECIAL_SHELL,1,HG_PROJECTILE_VSPEED,lengthdir_y(3,180-bash_angle))
			}
			
		}
			
				if(window == 2 and window_timer == 14){
			shellshots--;
		}	
		
		
		
	if(window == 3 and window_timer == 14 and special_down and shellshots > 0){
		window = 1;
		window_timer = 3;
	}	
}

if (attack == AT_NSPECIAL_SHOT){
    	can_move = false;
    	can_shield = true;
    	can_jump = true;
    	
    	if window == 1 and window_timer == 1{
    		shot_ind = 0;
    	}else if(window == 2 and window_timer == 9){
    		shot_ind = 1;
    	}else if(window == 3 and window_timer == 2){
    		shot_ind = 2;
    	}else if(window == 3 and window_timer == 10){
    		shot_ind = 3;
    	}else if(window == 3 and window_timer == 14){
    		shot_ind = 0;
    	}
    	
    	if window == 1 and window_timer == 1{
    		if spr_dir{
    			bash_angle = 0;
    		}else{
    			bash_angle = 180;
    		}
    	}
    	
    	if (bash_angle > 90) and (270 > bash_angle) {
				spr_dir = -1;
			}
			else {
				spr_dir = 1;
			}
			
		if(window == 1 and window_timer == 1){
			timer = 0;
		}	
    	
    	if(window > 1){
    		shotcooldown = 120;
			move_cooldown[AT_NSPECIAL_SHOT] = 120;
		}	
		
		if runeL{
			shotcooldown = 0;
			move_cooldown[AT_NSPECIAL_SHOT] = 0;
		}
    	
    	if(!joy_pad_idle){
    		bash_angle = joy_dir;
    	}
		
		
		
		if window == 2 and window_timer == 8 {
			if spr_dir {
				set_hitbox_value(AT_NSPECIAL_SHOT, 1, HG_HITBOX_X, -30 + lengthdir_x(80,bash_angle));
				set_hitbox_value(AT_NSPECIAL_SHOT, 1, HG_HITBOX_Y, -20 + lengthdir_y(-40,bash_angle)*-1);
				set_hitbox_value(AT_NSPECIAL_SHOT, 2, HG_HITBOX_X, -30 + lengthdir_x(80,bash_angle));
				set_hitbox_value(AT_NSPECIAL_SHOT, 2, HG_HITBOX_Y, -20 + lengthdir_y(-40,bash_angle)*-1);
				set_hitbox_value(AT_NSPECIAL_SHOT, 3, HG_HITBOX_X, -30 + lengthdir_x(80,bash_angle));
				set_hitbox_value(AT_NSPECIAL_SHOT, 3, HG_HITBOX_Y, -20 + lengthdir_y(-40,bash_angle)*-1);
				set_hitbox_value(AT_NSPECIAL_SHOT, 4, HG_HITBOX_X, -30 + lengthdir_x(80,bash_angle));
				set_hitbox_value(AT_NSPECIAL_SHOT, 4, HG_HITBOX_Y, -20 + lengthdir_y(-40,bash_angle)*-1);
				set_hitbox_value(AT_NSPECIAL_SHOT, 5, HG_HITBOX_X, -30 + lengthdir_x(80,bash_angle));
				set_hitbox_value(AT_NSPECIAL_SHOT, 5, HG_HITBOX_Y, -20 + lengthdir_y(-40,bash_angle)*-1);
				
				set_hitbox_value(AT_NSPECIAL_SHOT,1,HG_PROJECTILE_HSPEED,lengthdir_x(4,bash_angle))
				set_hitbox_value(AT_NSPECIAL_SHOT,1,HG_PROJECTILE_VSPEED,lengthdir_y(4,bash_angle))
				set_hitbox_value(AT_NSPECIAL_SHOT,2,HG_PROJECTILE_HSPEED,lengthdir_x(4,bash_angle+15))
				set_hitbox_value(AT_NSPECIAL_SHOT,2,HG_PROJECTILE_VSPEED,lengthdir_y(4,bash_angle+15))
				set_hitbox_value(AT_NSPECIAL_SHOT,3,HG_PROJECTILE_HSPEED,lengthdir_x(4,bash_angle+30))
				set_hitbox_value(AT_NSPECIAL_SHOT,3,HG_PROJECTILE_VSPEED,lengthdir_y(4,bash_angle+30))
				set_hitbox_value(AT_NSPECIAL_SHOT,4,HG_PROJECTILE_HSPEED,lengthdir_x(4,bash_angle-15))
				set_hitbox_value(AT_NSPECIAL_SHOT,4,HG_PROJECTILE_VSPEED,lengthdir_y(4,bash_angle-15))
				set_hitbox_value(AT_NSPECIAL_SHOT,5,HG_PROJECTILE_HSPEED,lengthdir_x(4,bash_angle-30))
				set_hitbox_value(AT_NSPECIAL_SHOT,5,HG_PROJECTILE_VSPEED,lengthdir_y(4,bash_angle-30))
			}
			else {
				set_hitbox_value(AT_NSPECIAL_SHOT, 1, HG_HITBOX_X, -30 + lengthdir_x(80,180-bash_angle));
				set_hitbox_value(AT_NSPECIAL_SHOT, 1, HG_HITBOX_Y, -20 + lengthdir_y(-40,180-bash_angle)*-1);
				set_hitbox_value(AT_NSPECIAL_SHOT, 2, HG_HITBOX_X, -30 + lengthdir_x(80,180-bash_angle));
				set_hitbox_value(AT_NSPECIAL_SHOT, 2, HG_HITBOX_Y, -20 + lengthdir_y(-40,180-bash_angle)*-1);
				set_hitbox_value(AT_NSPECIAL_SHOT, 3, HG_HITBOX_X, -30 + lengthdir_x(80,180-bash_angle));
				set_hitbox_value(AT_NSPECIAL_SHOT, 3, HG_HITBOX_Y, -20 + lengthdir_y(-40,180-bash_angle)*-1);
				set_hitbox_value(AT_NSPECIAL_SHOT, 4, HG_HITBOX_X, -30 + lengthdir_x(80,180-bash_angle));
				set_hitbox_value(AT_NSPECIAL_SHOT, 4, HG_HITBOX_Y, -20 + lengthdir_y(-40,180-bash_angle)*-1);
				set_hitbox_value(AT_NSPECIAL_SHOT, 5, HG_HITBOX_X, -30 + lengthdir_x(80,180-bash_angle));
				set_hitbox_value(AT_NSPECIAL_SHOT, 5, HG_HITBOX_Y, -20 + lengthdir_y(-40,180-bash_angle)*-1);
				
				set_hitbox_value(AT_NSPECIAL_SHOT,1,HG_PROJECTILE_HSPEED,lengthdir_x(4,180-bash_angle))
				set_hitbox_value(AT_NSPECIAL_SHOT,1,HG_PROJECTILE_VSPEED,lengthdir_y(4,180-bash_angle))
				set_hitbox_value(AT_NSPECIAL_SHOT,2,HG_PROJECTILE_HSPEED,lengthdir_x(4,180-bash_angle+15))
				set_hitbox_value(AT_NSPECIAL_SHOT,2,HG_PROJECTILE_VSPEED,lengthdir_y(4,180-bash_angle+15))
				set_hitbox_value(AT_NSPECIAL_SHOT,3,HG_PROJECTILE_HSPEED,lengthdir_x(4,180-bash_angle+30))
				set_hitbox_value(AT_NSPECIAL_SHOT,3,HG_PROJECTILE_VSPEED,lengthdir_y(4,180-bash_angle+30))
				set_hitbox_value(AT_NSPECIAL_SHOT,4,HG_PROJECTILE_HSPEED,lengthdir_x(4,180-bash_angle-15))
				set_hitbox_value(AT_NSPECIAL_SHOT,4,HG_PROJECTILE_VSPEED,lengthdir_y(4,180-bash_angle-15))
				set_hitbox_value(AT_NSPECIAL_SHOT,5,HG_PROJECTILE_HSPEED,lengthdir_x(4,180-bash_angle-30))
				set_hitbox_value(AT_NSPECIAL_SHOT,5,HG_PROJECTILE_VSPEED,lengthdir_y(4,180-bash_angle-30))
			}
			}
			
		if window == 2 and window_timer == 8 and runeO {
			if spr_dir {

				set_hitbox_value(AT_NSPECIAL_SHOT,1,HG_PROJECTILE_HSPEED,lengthdir_x(8,bash_angle))
				set_hitbox_value(AT_NSPECIAL_SHOT,1,HG_PROJECTILE_VSPEED,lengthdir_y(8,bash_angle))
				set_hitbox_value(AT_NSPECIAL_SHOT,2,HG_PROJECTILE_HSPEED,lengthdir_x(8,bash_angle+15))
				set_hitbox_value(AT_NSPECIAL_SHOT,2,HG_PROJECTILE_VSPEED,lengthdir_y(8,bash_angle+15))
				set_hitbox_value(AT_NSPECIAL_SHOT,3,HG_PROJECTILE_HSPEED,lengthdir_x(8,bash_angle+30))
				set_hitbox_value(AT_NSPECIAL_SHOT,3,HG_PROJECTILE_VSPEED,lengthdir_y(8,bash_angle+30))
				set_hitbox_value(AT_NSPECIAL_SHOT,4,HG_PROJECTILE_HSPEED,lengthdir_x(8,bash_angle-15))
				set_hitbox_value(AT_NSPECIAL_SHOT,4,HG_PROJECTILE_VSPEED,lengthdir_y(8,bash_angle-15))
				set_hitbox_value(AT_NSPECIAL_SHOT,5,HG_PROJECTILE_HSPEED,lengthdir_x(8,bash_angle-30))
				set_hitbox_value(AT_NSPECIAL_SHOT,5,HG_PROJECTILE_VSPEED,lengthdir_y(8,bash_angle-30))
			}
			else {
				
				set_hitbox_value(AT_NSPECIAL_SHOT,1,HG_PROJECTILE_HSPEED,lengthdir_x(8,180-bash_angle))
				set_hitbox_value(AT_NSPECIAL_SHOT,1,HG_PROJECTILE_VSPEED,lengthdir_y(8,180-bash_angle))
				set_hitbox_value(AT_NSPECIAL_SHOT,2,HG_PROJECTILE_HSPEED,lengthdir_x(8,180-bash_angle+15))
				set_hitbox_value(AT_NSPECIAL_SHOT,2,HG_PROJECTILE_VSPEED,lengthdir_y(8,180-bash_angle+15))
				set_hitbox_value(AT_NSPECIAL_SHOT,3,HG_PROJECTILE_HSPEED,lengthdir_x(8,180-bash_angle+30))
				set_hitbox_value(AT_NSPECIAL_SHOT,3,HG_PROJECTILE_VSPEED,lengthdir_y(8,180-bash_angle+30))
				set_hitbox_value(AT_NSPECIAL_SHOT,4,HG_PROJECTILE_HSPEED,lengthdir_x(8,180-bash_angle-15))
				set_hitbox_value(AT_NSPECIAL_SHOT,4,HG_PROJECTILE_VSPEED,lengthdir_y(8,180-bash_angle-15))
				set_hitbox_value(AT_NSPECIAL_SHOT,5,HG_PROJECTILE_HSPEED,lengthdir_x(8,180-bash_angle-30))
				set_hitbox_value(AT_NSPECIAL_SHOT,5,HG_PROJECTILE_VSPEED,lengthdir_y(8,180-bash_angle-30))
			}
			}	
		
		if window == 2 and window_timer == 8 and runeJ {
			if spr_dir {

				set_hitbox_value(AT_NSPECIAL_SHOT,1,HG_PROJECTILE_HSPEED,lengthdir_x(2,bash_angle))
				set_hitbox_value(AT_NSPECIAL_SHOT,1,HG_PROJECTILE_VSPEED,lengthdir_y(2,bash_angle))
				set_hitbox_value(AT_NSPECIAL_SHOT,2,HG_PROJECTILE_HSPEED,lengthdir_x(2,bash_angle+15))
				set_hitbox_value(AT_NSPECIAL_SHOT,2,HG_PROJECTILE_VSPEED,lengthdir_y(2,bash_angle+15))
				set_hitbox_value(AT_NSPECIAL_SHOT,3,HG_PROJECTILE_HSPEED,lengthdir_x(2,bash_angle+30))
				set_hitbox_value(AT_NSPECIAL_SHOT,3,HG_PROJECTILE_VSPEED,lengthdir_y(2,bash_angle+30))
				set_hitbox_value(AT_NSPECIAL_SHOT,4,HG_PROJECTILE_HSPEED,lengthdir_x(2,bash_angle-15))
				set_hitbox_value(AT_NSPECIAL_SHOT,4,HG_PROJECTILE_VSPEED,lengthdir_y(2,bash_angle-15))
				set_hitbox_value(AT_NSPECIAL_SHOT,5,HG_PROJECTILE_HSPEED,lengthdir_x(2,bash_angle-30))
				set_hitbox_value(AT_NSPECIAL_SHOT,5,HG_PROJECTILE_VSPEED,lengthdir_y(2,bash_angle-30))
			}
			else {
				
				set_hitbox_value(AT_NSPECIAL_SHOT,1,HG_PROJECTILE_HSPEED,lengthdir_x(2,180-bash_angle))
				set_hitbox_value(AT_NSPECIAL_SHOT,1,HG_PROJECTILE_VSPEED,lengthdir_y(2,180-bash_angle))
				set_hitbox_value(AT_NSPECIAL_SHOT,2,HG_PROJECTILE_HSPEED,lengthdir_x(2,180-bash_angle+15))
				set_hitbox_value(AT_NSPECIAL_SHOT,2,HG_PROJECTILE_VSPEED,lengthdir_y(2,180-bash_angle+15))
				set_hitbox_value(AT_NSPECIAL_SHOT,3,HG_PROJECTILE_HSPEED,lengthdir_x(2,180-bash_angle+30))
				set_hitbox_value(AT_NSPECIAL_SHOT,3,HG_PROJECTILE_VSPEED,lengthdir_y(2,180-bash_angle+30))
				set_hitbox_value(AT_NSPECIAL_SHOT,4,HG_PROJECTILE_HSPEED,lengthdir_x(2,180-bash_angle-15))
				set_hitbox_value(AT_NSPECIAL_SHOT,4,HG_PROJECTILE_VSPEED,lengthdir_y(2,180-bash_angle-15))
				set_hitbox_value(AT_NSPECIAL_SHOT,5,HG_PROJECTILE_HSPEED,lengthdir_x(2,180-bash_angle-30))
				set_hitbox_value(AT_NSPECIAL_SHOT,5,HG_PROJECTILE_VSPEED,lengthdir_y(2,180-bash_angle-30))
			}
			}
			
			
			

}

if (attack == AT_NSPECIAL_SNIPE){
		
		if(window == 1 and window_timer == 1){
			snipe_ind = 0;
		}else if(window == 2 and window_timer == 9){
			snipe_ind = 1;
		}else if(window == 3 and window_timer == 2){
			snipe_ind = 2;
		}else if(window == 3 and window_timer == 4){
			snipe_ind = 3;
		}else if(window == 3 and window_timer == 6){
			snipe_ind = 0;
		}
	
		if(window == 1 and window_timer == 1){
			timer = 0;
		}
	
		if(window > 1){
			snipecooldown = 120;
			move_cooldown[AT_NSPECIAL_SNIPE] = 120;
		}
		
		if runeL{
			snipecooldown = 0;
			move_cooldown[AT_NSPECIAL_SNIPE] = 0;
		}
		
	
	
    	can_move = false;
    	can_shield = true;
    	can_jump = true;
    	
    	if window == 1 and window_timer == 1{
    		if spr_dir{
    			bash_angle = 0;
    		}else{
    			bash_angle = 180;
    		}
    	}
    	
    	if(!joy_pad_idle and window < 3){
    		bash_angle = joy_dir;
    	}
		
		
	if (bash_angle > 90) and (270 > bash_angle) {
				spr_dir = -1;
			}
			else {
				spr_dir = 1;
			}
			
			
		if window == 2 and window_timer == 8 {
			if spr_dir {
				set_hitbox_value(AT_NSPECIAL_SNIPE, 1, HG_HITBOX_X, 10 + lengthdir_x(70,bash_angle));
				set_hitbox_value(AT_NSPECIAL_SNIPE, 1, HG_HITBOX_Y, -35 + lengthdir_y(-60,bash_angle)*-1);
				set_hitbox_value(AT_NSPECIAL_SNIPE,1,HG_PROJECTILE_HSPEED,lengthdir_x(15,bash_angle))
				set_hitbox_value(AT_NSPECIAL_SNIPE,1,HG_PROJECTILE_VSPEED,lengthdir_y(15,bash_angle))
			}
			else {
				set_hitbox_value(AT_NSPECIAL_SNIPE, 1, HG_HITBOX_X, 10 + lengthdir_x(70,180-bash_angle));
				set_hitbox_value(AT_NSPECIAL_SNIPE, 1, HG_HITBOX_Y, -35 + lengthdir_y(-60,180-bash_angle)*-1);
				set_hitbox_value(AT_NSPECIAL_SNIPE,1,HG_PROJECTILE_HSPEED,lengthdir_x(15,180-bash_angle))
				set_hitbox_value(AT_NSPECIAL_SNIPE,1,HG_PROJECTILE_VSPEED,lengthdir_y(15,180-bash_angle))
			}
			}
			
		if window == 2 and window_timer == 8 and runeJ {
			set_hitbox_value(AT_NSPECIAL_SNIPE,1,HG_LIFETIME,300)
			if spr_dir {
				set_hitbox_value(AT_NSPECIAL_SNIPE,1,HG_PROJECTILE_HSPEED,lengthdir_x(5,bash_angle))
				set_hitbox_value(AT_NSPECIAL_SNIPE,1,HG_PROJECTILE_VSPEED,lengthdir_y(5,bash_angle))
			}
			else {
				set_hitbox_value(AT_NSPECIAL_SNIPE,1,HG_PROJECTILE_HSPEED,lengthdir_x(5,180-bash_angle))
				set_hitbox_value(AT_NSPECIAL_SNIPE,1,HG_PROJECTILE_VSPEED,lengthdir_y(5,180-bash_angle))
			}
			}	
			
		if window == 2 and window_timer == 8 and runeO {
			set_hitbox_value(AT_NSPECIAL_SNIPE,1,HG_LIFETIME,600)
			if spr_dir {
				
				set_hitbox_value(AT_NSPECIAL_SNIPE,1,HG_PROJECTILE_HSPEED,lengthdir_x(2,bash_angle))
				set_hitbox_value(AT_NSPECIAL_SNIPE,1,HG_PROJECTILE_VSPEED,lengthdir_y(2,bash_angle))
			}
			else {
				set_hitbox_value(AT_NSPECIAL_SNIPE,1,HG_PROJECTILE_HSPEED,lengthdir_x(2,180-bash_angle))
				set_hitbox_value(AT_NSPECIAL_SNIPE,1,HG_PROJECTILE_VSPEED,lengthdir_y(2,180-bash_angle))
			}
			}
		
		if window == 2 and window_timer == 8 and runeJ and runeO{
			set_hitbox_value(AT_NSPECIAL_SNIPE,1,HG_LIFETIME,900)
			if spr_dir {
				set_hitbox_value(AT_NSPECIAL_SNIPE,1,HG_PROJECTILE_HSPEED,lengthdir_x(1,bash_angle))
				set_hitbox_value(AT_NSPECIAL_SNIPE,1,HG_PROJECTILE_VSPEED,lengthdir_y(1,bash_angle))
			}
			else {
				set_hitbox_value(AT_NSPECIAL_SNIPE,1,HG_PROJECTILE_HSPEED,lengthdir_x(1,180-bash_angle))
				set_hitbox_value(AT_NSPECIAL_SNIPE,1,HG_PROJECTILE_VSPEED,lengthdir_y(1,180-bash_angle))
			}
			}	
			
}

if (attack == AT_NSPECIAL_WIND){

	if(window == 1 and window_timer == 1){
		wind_ind = 0;
	}else if(window == 2 and window_timer == 4){
		wind_ind = 1;
	}else if(window == 3 and window_timer == 1){
		wind_ind = 2;
	}else if(window == 3 and window_timer == 2){
		wind_ind = 0;
	}
	
	if(window == 1 and window_timer == 1){
			timer = 0;
		}
	
	 if(windshots <= 0){
	 	windcooldown = 120;
	 	move_cooldown[AT_NSPECIAL_WIND] = 120;
	 }
	 
	 if runeL{
	 	windcooldown = 0;
	 	move_cooldown[AT_NSPECIAL_WIND] = 0;
	 	windshots = 15;
	 }
	
    	can_move = false;
    	can_shield = true;
    	can_jump = true;
    	
    	if window == 1 and window_timer == 1{
    		if spr_dir{
    			bash_angle = 0;
    		}else{
    			bash_angle = 180;
    		}
    	}
    	
    	if(!joy_pad_idle){
    		bash_angle = joy_dir;
    	}
		
		
	if (bash_angle > 90) and (270 > bash_angle) {
				spr_dir = -1;
			}
			else {
				spr_dir = 1;
			}
			
			
		if window == 2 and window_timer == 3 {
			if spr_dir {
				set_hitbox_value(AT_NSPECIAL_WIND, 1, HG_HITBOX_X, -25 + lengthdir_x(85,bash_angle));
				set_hitbox_value(AT_NSPECIAL_WIND, 1, HG_HITBOX_Y, -20 + lengthdir_y(-80,bash_angle)*-1);
				set_hitbox_value(AT_NSPECIAL_WIND,1,HG_PROJECTILE_HSPEED,lengthdir_x(11,bash_angle))
				set_hitbox_value(AT_NSPECIAL_WIND,1,HG_PROJECTILE_VSPEED,lengthdir_y(11,bash_angle))
			}
			else {
				set_hitbox_value(AT_NSPECIAL_WIND, 1, HG_HITBOX_X, -25 + lengthdir_x(85,180-bash_angle));
				set_hitbox_value(AT_NSPECIAL_WIND, 1, HG_HITBOX_Y, -20 + lengthdir_y(-80,180-bash_angle)*-1);
				set_hitbox_value(AT_NSPECIAL_WIND,1,HG_PROJECTILE_HSPEED,lengthdir_x(11,180-bash_angle))
				set_hitbox_value(AT_NSPECIAL_WIND,1,HG_PROJECTILE_VSPEED,lengthdir_y(11,180-bash_angle))
			}
			}
			
		if window == 2 and window_timer == 3 and runeJ{
			if spr_dir {
				set_hitbox_value(AT_NSPECIAL_WIND,1,HG_PROJECTILE_HSPEED,lengthdir_x(6,bash_angle))
				set_hitbox_value(AT_NSPECIAL_WIND,1,HG_PROJECTILE_VSPEED,lengthdir_y(6,bash_angle))
			}
			else {
				set_hitbox_value(AT_NSPECIAL_WIND,1,HG_PROJECTILE_HSPEED,lengthdir_x(6,180-bash_angle))
				set_hitbox_value(AT_NSPECIAL_WIND,1,HG_PROJECTILE_VSPEED,lengthdir_y(6,180-bash_angle))
			}
			}	
			
		 if(window == 2 and window_timer == 3){
		 	windshots--;
		 }	
		
		
	if(window == 3 and window_timer == 3 and special_down and windshots > 0){
		window = 1;
		window_timer = 3;
	}	
}

if (attack == AT_NSPECIAL_GRENADE){
		if(window == 1 and window_timer == 1){
			timer = 0;
		}
		
		if(window > 1){
			grenadecooldown = 120;
			move_cooldown[AT_NSPECIAL_GRENADE] = 120;
		}
		
		if runeL{
			grenadecooldown = 0;
			move_cooldown[AT_NSPECIAL_GRENADE] = 0;
		}
		
		if(window == 1 and window_timer == 1){
			grenade_ind = 0;
		}else if(window == 2 and window_timer == 9){
			grenade_ind = 1;
		}else if(window == 3 and window_timer == 2){
			grenade_ind = 2;
		}else if(window == 3 and window_timer == 6){
			grenade_ind = 3;
		}else if(window == 3 and window_timer == 10){
			grenade_ind = 0;
		}
		
	
	
    	can_move = false;
    	can_shield = true;
    	can_jump = true;
    	
    	if window == 1 and window_timer == 1{
    		if spr_dir{
    			bash_angle = 0;
    		}else{
    			bash_angle = 180;
    		}
    	}
    	
    	if(!joy_pad_idle){
    		bash_angle = joy_dir;
    	}
		
		
	if (bash_angle > 90) and (270 > bash_angle) {
				spr_dir = -1;
			}
			else {
				spr_dir = 1;
			}
			
			
		if window == 2 and window_timer == 8 {
			if spr_dir {
				set_hitbox_value(AT_NSPECIAL_GRENADE, 1, HG_HITBOX_X, -20 + lengthdir_x(60,bash_angle));
				set_hitbox_value(AT_NSPECIAL_GRENADE, 1, HG_HITBOX_Y, -40 + lengthdir_y(-40,bash_angle)*-1);
				set_hitbox_value(AT_NSPECIAL_GRENADE,1,HG_PROJECTILE_HSPEED,lengthdir_x(8,bash_angle))
				set_hitbox_value(AT_NSPECIAL_GRENADE,1,HG_PROJECTILE_VSPEED,lengthdir_y(10,bash_angle))
			}
			else {
				set_hitbox_value(AT_NSPECIAL_GRENADE, 1, HG_HITBOX_X, -20 + lengthdir_x(60,180-bash_angle));
				set_hitbox_value(AT_NSPECIAL_GRENADE, 1, HG_HITBOX_Y, -40 + lengthdir_y(-30,180-bash_angle)*-1);
				set_hitbox_value(AT_NSPECIAL_GRENADE,1,HG_PROJECTILE_HSPEED,lengthdir_x(8,180-bash_angle))
				set_hitbox_value(AT_NSPECIAL_GRENADE,1,HG_PROJECTILE_VSPEED,lengthdir_y(10,180-bash_angle))
			}
			}
			
		if window == 2 and window_timer == 8 and runeO{
			set_hitbox_value(AT_NSPECIAL_GRENADE, 1, HG_HITBOX_X, -20 + lengthdir_x(60,bash_angle));
			set_hitbox_value(AT_NSPECIAL_GRENADE, 1, HG_HITBOX_Y, -900);
				

				
		}	
			
	
}

if(attack == AT_NAIR){
	can_fast_fall = false;
	
	if(window == 1 and window_timer == 1){
		throneloop = 0;
	}
	
	
	//Lets you move up and down with NAir.
    if(window == 2 and up_down and throneattacked == 0){
        vsp = -2;
    }
    else if(window == 2 and down_down and throneattacked == 0){
        vsp = 2;
    }else if(window == 2 and throneattacked == 0){
        vsp = 0;
    }
    
    if runeE{
    	 if(window == 3 and throneloop < 3){
    	throneloop += 1;
    	window = 2;
    	window_timer = 1;
    	}
    }
   
    
    
    if(window == 3){
        throneattacked = 1;
    }
    
    
}


if (attack == AT_FSPECIAL){
	
	
	//Spawns the table.
    if (table == noone){
        if(window == 2 and window_timer == 8){
        	hittable = 0;
    		table = instance_create(x+70*spr_dir, y, "obj_article_solid");
    		table.player = player;
			table.vsp = 0;
			table.spr_dir = spr_dir;
			table.health = tablehealth;
			tablecount += 1;
			if runeM{
				table.health = 200;
			}
			
			table.invinc = 40;
        }
        if runeK{
        	table.tabletech = 1;
        }
        
    }else{
    	if(runeN and tablecount < 3){
    		if window == 2 and window_timer == 8{
    			var newtable = instance_create(x+70*spr_dir, y, "obj_article_solid");
    		newtable.player = player;
			newtable.vsp = 0;
			newtable.spr_dir = spr_dir;
			newtable.health = tablehealth;
			if runeM{
				newtable.health = 200;
			}
			tablecount += 1;
    		}
    		
    		
    	}
    }
    can_fast_fall = false;
}

if(attack == AT_FSPECIAL_AIR){
	if(hittable == 1 and window < 4){
		window = 4;
		hittable = 0;
		window_timer = 1;
	}
}

if(attack == AT_BAIR){
	can_fast_fall = false;
	
	//Accelerates when you do the move.
	if(window == 3 or window == 4){
		hsp += 0.2*spr_dir;
	}
	
}

if (attack == AT_USPECIAL){
      can_fast_fall = false;
      can_wall_jump = true;
      	move_cooldown[AT_USPECIAL] = 600;
      
      
      if runeF{
      	set_window_value(AT_USPECIAL, 4, AG_WINDOW_HSPEED_TYPE, 0);
		set_window_value(AT_USPECIAL, 4, AG_WINDOW_VSPEED_TYPE, 0);
      }
    
    if (window == 2 && window_timer == 1 && hitpause == false)  {
        //Sets the angle to be straight up by default.
        fire_ang = 90;
        
        //Sets the angle to be in the direction of the joystick.
        if (joy_pad_idle == false) {
            fire_ang = joy_dir;
        }
        
        set_window_value(AT_USPECIAL, 3, AG_WINDOW_HSPEED, (13 * cos(degtorad(fire_ang)) ) * spr_dir);
        set_window_value(AT_USPECIAL, 3, AG_WINDOW_VSPEED, (-13 * sin(degtorad(fire_ang)) ));
        
        //Angles the sprite.
        spr_angle = fire_ang - 90;
    }
    
    if(window == 3){
        sprite_change_offset("uspecial", 42, 45);
    }else{
        sprite_change_offset("uspecial", 42, 86);
    }
    
    
    
    if(window == 3 and has_hit_player and (abs(hsp) > abs(vsp))){
        //move_cooldown[AT_USPECIAL] = 30;
        set_window_value(AT_USPECIAL, 5, AG_WINDOW_HSPEED, -2);
        set_window_value(AT_USPECIAL, 5, AG_WINDOW_VSPEED, -6);
        spr_angle = 0;
        window = 5;
        window_timer = 1;
    }
    if(window == 4){
        spr_angle = 0;
    }
    if(window == 5 and window_timer == 2){
        hsp *= -0.2;
        vsp = -6;
    }
    
}

if(attack == AT_UAIR){
	if(window == 2 and window_timer == 1){
		sound_play(sound_get("facemelter"));
	}
	if(window == 5 or not free){
		sound_stop(sound_get("facemelter"));
	}
	
}




if(attack == AT_DSPECIAL){
	if(window == 1 and window_timer == 1){
			if(gun >= 5){
		gun = 0;
	}else{
		gun++;
	}
	}
	

	
}

if(attack == AT_TAUNT){
	
if(window == 2 and window_timer < 44){
	char_height = 90;
}else{
	char_height = 60;
}

	
}else{
	char_height = 60;
}
