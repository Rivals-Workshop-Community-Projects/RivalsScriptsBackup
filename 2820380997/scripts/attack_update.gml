//B - Reversals
if (attack == AT_NSPECIAL || attack == AT_FSPECIAL || attack == AT_DSPECIAL || attack == AT_USPECIAL){
    trigger_b_reverse();
}

// Ledge snapping for Fspec / Fspec 2
if(attack == AT_FSPECIAL || attack == AT_FSPECIAL_2 || attack == AT_FSPECIAL_AIR){
	// Guadua Ledge Snap Code MOVE UP AT LEDGE Code
	if (moved_up == false)
	{
    	if (free && place_meeting(x+hsp,y,asset_get("par_block"))){
        	for (var i = 0; i < 50; i++){
        		//print("i: " + string(i) + "y: " + string(place_meeting(x+hsp,y-(i+1),asset_get("par_block"))));
        		if (!place_meeting(x+hsp,y-(i+1),asset_get("par_block"))){
            		y -= i;
        			moved_up = true;
            	    break;
            	}
        	}
    	}
	}
}

//Small Gameplay Effects
switch(attack){
	/*
    case AT_NAIR: // Hover
        if(has_hit == true && down_down != true){
            vsp = vsp * .8;
        }
        break;
    */
    /*
    case AT_DATTACK:
        if(has_hit == true){
            can_ustrong = true;
        }
        break;
        */
    case AT_FSPECIAL:
    case AT_USPECIAL:
    	if(window > 2 && !special_pressed && special_down){
    		set_attack(AT_EXTRA_1);
    		hurtboxID.sprite_index = get_attack_value(AT_EXTRA_1, AG_HURTBOX_SPRITE);
    		window = 1;
    		window_timer = 1;
    	}
    	
    	if(window == 1 and window_timer < 6 && shield_down){
			destroy_hitboxes();
    		attack_end();
    		if(attack == AT_FSPECIAL){
    			set_attack(AT_FSPECIAL_AIR);
    			hurtboxID.sprite_index = get_attack_value(AT_FSPECIAL_AIR, AG_HURTBOX_SPRITE);
    			}
    		if(attack == AT_USPECIAL){
    			set_attack(AT_USPECIAL_GROUND);
    			hurtboxID.sprite_index = get_attack_value(AT_FSPECIAL_AIR, AG_HURTBOX_SPRITE)
    		}
    		window = 1;
    		window_timer = 0;
    	}
    	
    	break;
    case AT_FSPECIAL_2: 
    case AT_USPECIAL_2:
    	// can act if she's thrown, but will preserve momentum if holding into the throw
    	if((window == 1 || window == 2) && (
    	(spr_dir == 1 && !right_down) || (spr_dir == -1 && !left_down) || // Determine if holding in direction of the throw
    	attack_down || jump_down || shield_down || // Any button but special is pressed
    	up_strong_down || down_strong_down || left_strong_down || right_strong_down)){ // Strongs pressed
    		iasa_script();
    	}
    	// Iasa on window 3 and above
    	if(window > 2){
    		iasa_script();
    	}
    	break;
    	
    case AT_FSPECIAL_AIR: // add can wall jump to emergency recovery options and add cooldown to Fspecial emergency recovery
    	if(window == 1 && window_timer == 2){spawn_base_dust(x,y,"dash_start",spr_dir);} // Spawn Dust
    	can_wall_jump = true;
		if(emergency_fspec_given_back_flag == false){
			emergency_fspec_given_back_flag = true;
			move_cooldown[AT_FSPECIAL_AIR] = 999;
		}
    case AT_USPECIAL_GROUND:
    	can_wall_jump = true;
    	break;
    	
    case AT_DSPECIAL:
    	if(up_down == true && window == 1){
    		set_attack(AT_EXTRA_2);
    		hurtboxID.sprite_index = get_attack_value(AT_EXTRA_2, AG_HURTBOX_SPRITE); // Set proper hurtbox, thanks Shampoo!
    	}
    	break;
    	
    case AT_NSPECIAL: 
    	// Shine hit
    	if(window >= 2 && window_timer >= 2 && was_parried == false){
    		can_jump = true;
    	}
    	// Set into control if the button is held
    	if(window == 3 && (window_timer == get_window_value(attack,window,AG_WINDOW_LENGTH) - 1) && special_down){ // 
    		attack = AT_EXTRA_1;
    		hurtboxID.sprite_index = get_attack_value(AT_EXTRA_1, AG_HURTBOX_SPRITE); // Set proper hurtbox, thanks Shampoo!
    		window = 1;
    		window_timer = 1;
    	}
    	break;
    	
    case AT_DTHROW:
		//Dspecial Jump Reset
		if(djump_given_back_flag == false){
			djumps = 0;
			djump_given_back_flag = true;
		}
		
		// Cooldown 
		move_cooldown[AT_DSPECIAL] = 30;
		
		// Grab is Armored through 2nd window, so it can't win trades but will be secure after grab.
		if (window > 1 && window < 5){soft_armor = 99;}
		else soft_armor = 0;
		
    	break;
    	
	// EX version of the grab
    case AT_EXTRA_3:
		// Grab is Armored through 2nd window, so it can't win trades but will be secure after grab.
		if (window < 6){soft_armor = 99;}
		else soft_armor = 0;
    	break;
    	
    case AT_TAUNT:
		switch(taunt_down){
			case 0: // Not held
			set_window_value(AT_TAUNT,2,AG_WINDOW_TYPE,0);
				break;
			case 1: // held
			set_window_value(AT_TAUNT,2,AG_WINDOW_TYPE,9);
				break;
			default:
				break;
		}
    	break;
    	
    default:
        break;
}

//SFX
if(!hitpause){
	switch(attack){
		case AT_JAB:
			Add_SFX_To_Attack(5,0,asset_get("sfx_swipe_weak2"),1,1.2);
			Add_SFX_To_Attack(5,0,asset_get("sfx_ori_spirit_flame_1"),1,1.2);
			Add_SFX_To_Attack(5,6,asset_get("sfx_swipe_weak1"),1,1.2);
			Add_SFX_To_Attack(5,6,asset_get("sfx_ori_spirit_flame_1"),1,1.2);
			Add_SFX_To_Attack(7,get_window_value(attack,7,AG_WINDOW_LENGTH) - 1,asset_get("sfx_ori_spirit_flame_2"),1,.75);
			break;
		case AT_FTILT:
			Add_SFX_To_Attack(1,3,asset_get("sfx_ori_spirit_flame_2"),.8,1.25);
			break;
		case AT_DTILT:
			Add_SFX_To_Attack(1,get_window_value(attack,1,AG_WINDOW_LENGTH) - 1,asset_get("sfx_ori_spirit_flame_2"),1,.75);
			break;
		case AT_UTILT:
			Add_SFX_To_Attack(1,get_window_value(attack,1,AG_WINDOW_LENGTH) - 1,asset_get("sfx_ori_spirit_flame_2"),1,.75);
			break;
		case AT_DATTACK:
			Add_SFX_To_Attack(1,get_window_value(attack,1,AG_WINDOW_LENGTH) - 1,asset_get("sfx_ori_spirit_flame_2"),.9,.79);
			break;
		case AT_FSTRONG:
			Add_SFX_To_Attack(3,1,asset_get("sfx_ori_spirit_flame_2"),.8,.59);
			break;
		case AT_USTRONG:
			Add_SFX_To_Attack(3,1,asset_get("sfx_zetter_fireball_fire"),.7,.8);
			break;
		case AT_DSTRONG:
			Add_SFX_To_Attack(3,1,asset_get("sfx_ori_spirit_flame_2"),.7,.72);
			break;
		case AT_NAIR:
			Add_SFX_To_Attack(2,1,asset_get("sfx_ori_spirit_flame_1"),.5,1.2);
			Add_SFX_To_Attack(3,1,asset_get("sfx_ori_spirit_flame_2"),.5,1.2);
			Add_SFX_To_Attack(5,1,asset_get("sfx_ori_spirit_flame_1"),.5,.75);
			break;
		case AT_FAIR:
			Add_SFX_To_Attack(1,get_window_value(attack,1,AG_WINDOW_LENGTH) - 1,asset_get("sfx_ori_spirit_flame_2"),.7,.77);
			break;
		case AT_BAIR:
			Add_SFX_To_Attack(1,get_window_value(attack,1,AG_WINDOW_LENGTH) - 1,asset_get("sfx_zetter_fireball_fire"),.6,1.25);
			break;
		case AT_UAIR:
			Add_SFX_To_Attack(1,get_window_value(attack,1,AG_WINDOW_LENGTH) - 1,asset_get("sfx_ori_spirit_flame_2"),.7,1.11);
			break;
		case AT_DAIR:
			Add_SFX_To_Attack(1,get_window_value(attack,1,AG_WINDOW_LENGTH) - 1,asset_get("sfx_waveland_zet"),.7,1.5);
			Add_SFX_To_Attack(2,3,asset_get("sfx_waveland_zet"),.9,1.5);
			Add_SFX_To_Attack(2,7,asset_get("sfx_waveland_zet"),.9,1.5);
			break;
		case AT_NSPECIAL:
			Add_SFX_To_Attack(1,1,asset_get("sfx_ori_spirit_flame_2"),.7,1.5);
			break;
		case AT_FSPECIAL_AIR:
			//Add_SFX_To_Attack(1,1,asset_get("sfx_ori_glide_start"),.75,.75);
			break;
		case AT_DSPECIAL:
			Add_SFX_To_Attack(1,get_window_value(attack,1,AG_WINDOW_LENGTH) - 1,asset_get("sfx_ori_spirit_flame_2"),.5,.8);
			break;
		default:
			break;
	}
}
//Smoke VFX
switch(attack){
	case AT_USPECIAL:
	case AT_FSPECIAL:
		if(window == 1 && window_timer == 1 && hitpause != true){
			vfx_smoke_object = spawn_hit_fx(x + (15 * spr_dir),y-30,vfx_smoke);
		}
		/*
		else{
			var depth_player = depth;
			var player_spr_dir = spr_dir;
			var player_x = x;
			var player_y = y;
			with(vfx_smoke_object){
				depth = depth_player - 1;
				x = player_x + (15 * player_spr_dir);
				y = player_y - 30;
			}
		}
		*/
		break;
	default:
		break;
}

//Dash Fire VFX
switch(attack){
	case AT_FSPECIAL_AIR:
		if(window == 2 && window_timer == 2 && hitpause != true){
			vfx_dash_fire_object = spawn_hit_fx(x + (15 * spr_dir),y-30,vfx_fire_dash);
		}
		break;
		
	case AT_USPECIAL_GROUND:
		if(window == 2 && window_timer == 2 && hitpause != true){
			vfx_dash_fire_object = spawn_hit_fx(x,y,vfx_fire_dash_upwards);
		}
		break;
		
	default:
		break;
}

//#region Non Clone Dspecial Grab Section 
// Nspecial Grab For Actual Roekoko
if (attack == AT_DTHROW && window == 5 && window_timer == 1) {
	spr_dir = spr_dir * -1;
}

if (attack == AT_DTHROW && clone_dspecial_hit = false && instance_exists(grabbed_player_obj)) {
	can_move = false;
	can_fast_fall = false;
	move_cooldown[AT_DSPECIAL] = 30;
	hurtboxID.sprite_index = get_attack_value(AT_DTHROW, AG_HURTBOX_SPRITE); // Set proper hurtbox, thanks Shampoo!
	
	//first, drop the grabbed player if this is the last window of the attack, or if they somehow escaped hitstun.
	if (window >= get_attack_value(attack, AG_NUM_WINDOWS)) { grabbed_player_obj = noone; } //Minus 1 window for last window release
	else if (grabbed_player_obj.state != PS_HITSTUN && grabbed_player_obj.state != PS_HITSTUN_LAND) { grabbed_player_obj = noone; }

	else {
		//keep the grabbed player in hitstop until the grab is complete.
		grabbed_player_obj.hitstop = 2;
		grabbed_player_obj.hitpause = true;
		grabbed_player_obj.can_shield = false;
		grabbed_player_obj.can_tech = false;
		grabbed_player_obj.can_wall_tech = false;
		
		//if this is the first frame of a window, store the grabbed player's relative position.
		if (window == 1) {
			if (window_timer == 0) { // Set properties on very first frame of the move
				grabbed_player_relative_x = grabbed_player_obj.x - x;
				grabbed_player_relative_y = grabbed_player_obj.y - y;
				pull_to_x = grabbed_player_relative_x;
				pull_to_y = grabbed_player_relative_y; // - floor(grabbed_player_obj.char_height/2);
				player_location_start_of_grab_x = x;
				player_location_start_of_grab_y = y;
			}
			//if(free){ // 
			var window_length = get_window_value(attack, window, AG_WINDOW_LENGTH);
			x = player_location_start_of_grab_x + ease_linear(0, pull_to_x, window_timer, window_length); //x + ease_linear(0, pull_to_x, state_timer, 15) - 
			y = player_location_start_of_grab_y + ease_linear(0, pull_to_y, window_timer, window_length); //y + ease_linear(0, pull_to_y, state_timer, 15) - 
		}
		if (window >= 2) {
		/*	x = grabbed_player_obj.x
			y = grabbed_player_obj.y */
			grabbed_player_obj.x = x;
			grabbed_player_obj.y = y;
		}
	}
}
//#endregion

//#region Dspecial Double Grab / Extra_3
// Nspecial Grab For Actual Roekoko

if (attack == AT_EXTRA_3 && clone_dspecial_hit = false && instance_exists(grabbed_player_obj)) {
	move_cooldown[AT_DSPECIAL] = 30;
	hurtboxID.sprite_index = get_attack_value(AT_EXTRA_3, AG_HURTBOX_SPRITE); // Set proper hurtbox, thanks Shampoo!
	
	//first, drop the grabbed player if this is the last window of the attack, or if they somehow escaped hitstun.
	if (window >= get_attack_value(attack, AG_NUM_WINDOWS)) { grabbed_player_obj = noone; } //Minus 1 window for last window release
	else if (grabbed_player_obj.state != PS_HITSTUN && grabbed_player_obj.state != PS_HITSTUN_LAND) { grabbed_player_obj = noone; }

	else {
		//keep the grabbed player in hitstop until the grab is complete.
		grabbed_player_obj.hitstop = 2;
		grabbed_player_obj.hitpause = true;
		grabbed_player_obj.can_shield = false;
		grabbed_player_obj.can_tech = false;
		grabbed_player_obj.can_wall_tech = false;
		
		var opponent_hurtbox_width;
		
		with(grabbed_player_obj.hurtboxID){
			opponent_hurtbox_width = bbox_right - bbox_left; //hurtboxID variable. then, you can access the hurtbox's bbox_left and bbox_right
		}
		
		//if this is the first frame of a window, store the grabbed player's relative position.
		if (window_timer <= 1) {
			grabbed_player_relative_x = grabbed_player_obj.x - x;
			grabbed_player_relative_y = grabbed_player_obj.y - y;
		}

		if (window = 1) {
			pull_to_x = 25 * spr_dir;
			pull_to_y = 0;
			if(spr_dir = -1){grabbed_player_obj_spr_angle=45; grabbed_player_obj.spr_dir = 1;Resolve_Draw_Offsets(grabbed_player_obj,grabbed_player_obj.spr_dir,grabbed_player_obj_spr_angle);} // Draws in other_pre_draw.gml
    		if(spr_dir = 1){grabbed_player_obj_spr_angle=315;grabbed_player_obj.spr_dir = -1;Resolve_Draw_Offsets(grabbed_player_obj,grabbed_player_obj.spr_dir,grabbed_player_obj_spr_angle);}
			
			//using an easing function, smoothly pull the opponent into the grab over the duration of this window.
			var window_length = get_window_value(attack, window, AG_WINDOW_LENGTH);
			grabbed_player_obj.x = x + ease_circOut( grabbed_player_relative_x, pull_to_x, window_timer, window_length);
			grabbed_player_obj.y = y + ease_circOut( grabbed_player_relative_y, pull_to_y, window_timer, window_length);

		}
		if (window >= 2) {
		/*	x = grabbed_player_obj.x
			y = grabbed_player_obj.y */
			pull_to_x = 5 * spr_dir;
			pull_to_y = -1 * floor(opponent_hurtbox_width * .50);
		    if(spr_dir = -1){grabbed_player_obj_spr_angle=90;Resolve_Draw_Offsets(grabbed_player_obj,spr_dir,grabbed_player_obj_spr_angle);} // Draws in other_pre_draw.gml
		    if(spr_dir = 1){grabbed_player_obj_spr_angle=270;Resolve_Draw_Offsets(grabbed_player_obj,spr_dir,grabbed_player_obj_spr_angle);}
			/*
			grabbed_player_obj.x = x;
			grabbed_player_obj.y = y;
			*/
			//using an easing function, smoothly pull the opponent into the grab over the duration of this window.
			var window_length = get_window_value(attack, window, AG_WINDOW_LENGTH);
			grabbed_player_obj.x = x + ease_circOut( grabbed_player_relative_x, pull_to_x, window_timer, window_length);
			grabbed_player_obj.y = y + ease_circOut( grabbed_player_relative_y, pull_to_y, window_timer, window_length);
		}
		if(instance_exists(clone_object_ID.current_hitbox)){
			var temp_x = clone_object_ID.x;
			var temp_y = clone_object_ID.y;
			with(clone_object_ID.current_hitbox){
				x = temp_x;
				y = temp_y;
			}
		}
	}
}
//#endregion

//#region Final Strong
// Nspecial Grab For Actual Roekoko

if (attack == AT_FINAL_STRONG_THROW && instance_exists(grabbed_player_obj)) {
	move_cooldown[AT_DSPECIAL] = 30;
	hurtboxID.sprite_index = get_attack_value(AT_FINAL_STRONG_THROW, AG_HURTBOX_SPRITE); // Set proper hurtbox, thanks Shampoo!
	
	//first, drop the grabbed player if this is the last window of the attack, or if they somehow escaped hitstun.
	if (window >= get_attack_value(attack, AG_NUM_WINDOWS)) { grabbed_player_obj = noone; } //Minus 1 window for last window release
	else if (grabbed_player_obj.state != PS_HITSTUN && grabbed_player_obj.state != PS_HITSTUN_LAND) { grabbed_player_obj = noone; }

	else {
		//keep the grabbed player in hitstop until the grab is complete.
		grabbed_player_obj.hitstop = 2;
		grabbed_player_obj.hitpause = true;
		grabbed_player_obj.can_shield = false;
		grabbed_player_obj.can_tech = false;
		grabbed_player_obj.can_wall_tech = false;
		
		var opponent_hurtbox_width;
		
		with(grabbed_player_obj.hurtboxID){
			opponent_hurtbox_width = bbox_right - bbox_left; //hurtboxID variable. then, you can access the hurtbox's bbox_left and bbox_right
		}
		
		//if this is the first frame of a window, store the grabbed player's relative position.
		if (window_timer <= 1) {
			grabbed_player_relative_x = grabbed_player_obj.x - x;
			grabbed_player_relative_y = grabbed_player_obj.y - y;
		}

		if (window = 1) {
			pull_to_x = 10 * spr_dir;
			pull_to_y = 0;
			if(spr_dir = -1){grabbed_player_obj_spr_angle=45; grabbed_player_obj.spr_dir = 1;Resolve_Draw_Offsets(grabbed_player_obj,grabbed_player_obj.spr_dir,grabbed_player_obj_spr_angle);} // Draws in other_pre_draw.gml
    		if(spr_dir = 1){grabbed_player_obj_spr_angle=315;grabbed_player_obj.spr_dir = -1;Resolve_Draw_Offsets(grabbed_player_obj,grabbed_player_obj.spr_dir,grabbed_player_obj_spr_angle);}
			
			//using an easing function, smoothly pull the opponent into the grab over the duration of this window.
			var window_length = get_window_value(attack, window, AG_WINDOW_LENGTH);
			grabbed_player_obj.x = x + ease_circOut( grabbed_player_relative_x, pull_to_x, window_timer, window_length);
			grabbed_player_obj.y = y + ease_circOut( grabbed_player_relative_y, pull_to_y, window_timer, window_length);

		}
		if (window >= 2) {
		/*	x = grabbed_player_obj.x
			y = grabbed_player_obj.y */
			pull_to_x = 0;
			pull_to_y = -1 * floor(opponent_hurtbox_width * .50);
		    if(spr_dir = -1){grabbed_player_obj_spr_angle=90;Resolve_Draw_Offsets(grabbed_player_obj,spr_dir,grabbed_player_obj_spr_angle);} // Draws in other_pre_draw.gml
		    if(spr_dir = 1){grabbed_player_obj_spr_angle=270;Resolve_Draw_Offsets(grabbed_player_obj,spr_dir,grabbed_player_obj_spr_angle);}
			/*
			grabbed_player_obj.x = x;
			grabbed_player_obj.y = y;
			*/
			//using an easing function, smoothly pull the opponent into the grab over the duration of this window.
			var window_length = get_window_value(attack, window, AG_WINDOW_LENGTH);
			grabbed_player_obj.x = x + ease_circOut( grabbed_player_relative_x, pull_to_x, window_timer, window_length);
			grabbed_player_obj.y = y + ease_circOut( grabbed_player_relative_y, pull_to_y, window_timer, window_length);
		}
		if(window == 3){
			if(window_timer == get_window_value(AT_FINAL_STRONG_THROW,3,AG_WINDOW_LENGTH)){final_strong_window_loops--;}
			if(final_strong_window_loops <= 0){window = 4; window_timer = 1;final_strong_window_loops = 3;}
		}
	}
}

//#endregion

// Clone Throw Section
// Uspecial
switch(attack){
    
    case AT_USPECIAL: // 
        if(window == 2 && window_timer == get_window_value(AT_USPECIAL,2,AG_WINDOW_LENGTH) && special_down){ // Getting Thrown
            attack_end();
        	set_attack(AT_USPECIAL_2);
        	window = 1;
        	window_timer = 0;
        	destroy_hitboxes();
        	hurtboxID.sprite_index = get_attack_value(attack, AG_HURTBOX_SPRITE); // Set proper hurtbox, thanks Shampoo!
        	clone_uspecial_player_throwing_clone = false;
			clone_uspecial_clone_throwing_player = true;
        }
        else if(window == 2 && window_timer == get_window_value(AT_USPECIAL,2,AG_WINDOW_LENGTH) && !special_down) { // Throwing Clone
        	clone_uspecial_player_throwing_clone = true;
			clone_uspecial_clone_throwing_player = false;
        }
        break;
        
    case AT_FSPECIAL: // Auto cancel right now
        if(window == 2 && window_timer == get_window_value(AT_FSPECIAL,2,AG_WINDOW_LENGTH) && special_down){ // Getting Thrown
            attack_end();
        	set_attack(AT_FSPECIAL_2);
        	window = 1;
        	window_timer = 0;
        	destroy_hitboxes();
        	hurtboxID.sprite_index = get_attack_value(attack, AG_HURTBOX_SPRITE); // Set proper hurtbox, thanks Shampoo!
        	clone_fspecial_player_throwing_clone = false;
			clone_fspecial_clone_throwing_player = true;
        }
        else if(window == 2 && window_timer == get_window_value(AT_FSPECIAL,2,AG_WINDOW_LENGTH) && !special_down) { // Throwing Clone
        	clone_fspecial_player_throwing_clone = true;
			clone_fspecial_clone_throwing_player = false;
        }
        break;
    /*
    // Dspecial cancel
    case AT_USPECIAL_2:
    case AT_FSPECIAL_2:
        if((window == 3 || window == 4) && special_pressed == true){
            attack_end();
            //set_window_value(AT_NSPECIAL,get_attack_value(AT_NSPECIAL,AG_NUM_WINDOWS),AG_WINDOW_TYPE,7) // Set to pratfall
        	set_attack(AT_NSPECIAL);
        	window = 1;
        	window_timer = 4;
        	destroy_hitboxes();
        	hurtboxID.sprite_index = get_attack_value(attack, AG_HURTBOX_SPRITE); // Set proper hurtbox
        }
        break;
       */
    default:
        break;
}
/*
// Clone canceling.
if(has_hit_player == true && instance_exists(clone_object_ID) == false && special_down){
	if(up_down){
		set_attack(AT_USPECIAL);
		hurtboxID.sprite_index = get_attack_value(AT_USPECIAL, AG_HURTBOX_SPRITE); // Set proper hurtbox
		}
	if(left_down || right_down){
		set_attack(AT_FSPECIAL);
		hurtboxID.sprite_index = get_attack_value(AT_USPECIAL, AG_HURTBOX_SPRITE); // Set proper hurtbox
		}
}
*/

// Clone Interaction Section
switch(attack){
	case AT_NSPECIAL:
	if(window == 2 && window_timer == 1 && !hitpause){
		clone_object_ID = instance_create((spr_dir * 30) + x,y,"obj_article1");
		clone_object_ID.spr_dir = -1 * spr_dir;
		vfx_smoke_object = spawn_hit_fx(clone_object_ID.x + (0 * spr_dir),clone_object_ID.y-30,vfx_smoke);
		// Ensure these are false to ensure it doesn't happen during Nspec spawn
		clone_object_ID.clone_uspecial_player_throwing_clone = false;
		clone_object_ID.clone_uspecial_clone_throwing_player = false;
		clone_object_ID.clone_fspecial_player_throwing_clone = false;
		clone_object_ID.clone_fspecial_clone_throwing_player = false;
		}
		break;
	
	// Set into extra 1 for controlling the clone	
	case AT_NSPECIAL_2:
	//if(window == 1 && window_timer == 1){clear_button_buffer(PC_SPECIAL_PRESSED)}
	if(window == 1 && window_timer == get_window_value(AT_NSPECIAL_2,window,AG_WINDOW_LENGTH) && special_down){ // Set into beckon mod if held down
		set_attack(AT_EXTRA_1);
		hurtboxID.sprite_index = get_attack_value(AT_EXTRA_1, AG_HURTBOX_SPRITE); // Set proper hurtbox
		window = 2;
		window_timer = 0;
	}
		break;
	
	// Comtrolling Clone
	case AT_EXTRA_1:
		can_fast_fall = false;
		// Normal Version with held
		if(tap_nspec_enabled == false){
			if(special_down == true){
				set_window_value(AT_EXTRA_1,2,AG_WINDOW_TYPE,9) // 9 = Looping window
			}
			else reset_window_value(AT_EXTRA_1,2,AG_WINDOW_TYPE);
		}
		
		// Alt control version where you tap
		if(window == 2){
			if(tap_nspec_enabled == true){
				//print("Window:" + string(window) + "Window_timer" + string(window_timer) + "Special Pressed:" + string(special_pressed));
				if(special_pressed == true){
					reset_window_value(AT_EXTRA_1,2,AG_WINDOW_TYPE);
					window_timer = 1;
					window = 3;
				}
				else set_window_value(AT_EXTRA_1,2,AG_WINDOW_TYPE,9);
			}
		}
		
		// Clone control in window 2
		if(window == 2 && right_down){ clone_walk_direction = 1;}
		else if(window == 2 && left_down){ clone_walk_direction = -1;}
		else clone_walk_direction = 0;
		
		// Clear special button press
		if(window == 3){clear_button_buffer(PC_SPECIAL_PRESSED);}
		break;
		
	case AT_FSPECIAL:
	case AT_USPECIAL:
		if(instance_exists(clone_object_ID) == false && instance_exists(wisp_object_ID) == false && window == 1 && window_timer == 8){
			clone_object_ID = instance_create((spr_dir * 30) + x,y,"obj_article1");
			// Added to try to prevent from the clone from spawning into the throw animation on accident sometimes.
			if(clone_fspecial_player_throwing_clone == true){clone_fspecial_player_throwing_clone = false;}
			if(clone_fspecial_clone_throwing_player == true){clone_fspecial_clone_throwing_player = false;}
			if(clone_uspecial_player_throwing_clone == true){clone_uspecial_player_throwing_clone = false;}
			if(clone_uspecial_clone_throwing_player == true){clone_uspecial_clone_throwing_player = false;}
		}
		break;
		
	default:
		break;
}

#define Resolve_Draw_Offsets(object_ID,spr_dir,grabbed_player_obj_spr_angle)
{
	var middle_y = (object_ID.hurtboxID.bbox_bottom - object_ID.hurtboxID.bbox_top)/2; //MIDDLE OF HEIGHT
	grabbed_player_obj_draw_x = floor((middle_y)*dsin(grabbed_player_obj_spr_angle)) * spr_dir //+ hsp if necessary
    grabbed_player_obj_draw_y =  - floor(((middle_y) - (middle_y)*dcos(grabbed_player_obj_spr_angle)))//+ vsp if necessary
}

#define Add_SFX_To_Attack(window_temp,window_timer_temp,sound_temp,volume_temp,pitch_temp)
{
	if(window == window_temp){
		if(window_timer == window_timer_temp){
	        sound_play(sound_temp,false,noone,volume_temp,pitch_temp ); // soundID,looping,panning,volume,pitch /
		}
	}
}

#define spawn_base_dust
/// spawn_base_dust(x, y, name, dir = 0)
///spawn_base_dust(x, y, name, ?dir)
//This function spawns base cast dusts. Names can be found below.
var dlen; //dust_length value
var dfx; //dust_fx value
var dfg; //fg_sprite value
var dfa = 0; //draw_angle value
var dust_color = 0;
var x = argument[0], y = argument[1], name = argument[2];
var dir = argument_count > 3 ? argument[3] : 0;

switch (name) {
    default: 
    case "dash_start":dlen = 21; dfx = 3; dfg = 2626; break;
    case "dash": dlen = 16; dfx = 4; dfg = 2656; break;
    case "jump": dlen = 12; dfx = 11; dfg = 2646; break;
    case "doublejump": 
    case "djump": dlen = 21; dfx = 2; dfg = 2624; break;
    case "walk": dlen = 12; dfx = 5; dfg = 2628; break;
    case "land": dlen = 24; dfx = 0; dfg = 2620; break;
    case "walljump": dlen = 24; dfx = 0; dfg = 2629; dfa = dir != 0 ? -90*dir : -90*spr_dir; break;
    case "n_wavedash": dlen = 24; dfx = 0; dfg = 2620; dust_color = 1; break;
    case "wavedash": dlen = 16; dfx = 4; dfg = 2656; dust_color = 1; break;
}
var newdust = spawn_dust_fx(x,y,asset_get("empty_sprite"),dlen);
newdust.dust_fx = dfx; //set the fx id
if dfg != -1 newdust.fg_sprite = dfg; //set the foreground sprite
newdust.dust_color = dust_color; //set the dust color
if dir != 0 newdust.spr_dir = dir; //set the spr_dir
newdust.draw_angle = dfa;
return newdust;