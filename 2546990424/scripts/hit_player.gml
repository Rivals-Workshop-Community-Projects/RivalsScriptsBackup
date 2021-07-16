
//Push Windbox
//if (my_hitboxID.attack == AT_FSPECIAL && my_hitboxID.hbox_num == 2){
//	hit_player_obj.hsp += 10*spr_dir;
//	hit_player_obj.vsp -= 8;
//}

//FSpecial - Turbine Punch
if (my_hitboxID.attack == AT_FSPECIAL){
	whirlwind_punch = true;
	hit_player_obj.whirlwind_effect = true;
	//Hitpause on the Gust hitbox
	if (my_hitboxID.hbox_num == 6){
        hitpause = true;
        hitstop = 15;
        hitstop_full = 15;
        old_hsp = hsp;
        old_vsp = vsp;
	}

		whirlwind_player = hit_player_obj;
		whirlwind_punch = false;
		whirlwind_punch_effect = true;
		whirlwind_player.whirlwind_effect = true;
}

//Dspecial - First Whirlwind
if (my_hitboxID.attack == AT_DSPECIAL && my_hitboxID.hbox_num == 1){
	//Saves the player that was hit
	stored_player = hit_player_obj.player;
	whirlwind_hit = true;
	whirlwind.state_timer = -40;
	//If I was hit, change this
	if (hit_player_obj = my_hitboxID.player_id && hit_player_obj.prev_state != PS_HITSTUN){
		whirlwind_myself = true;
	}
}
else {
	whirlwind_hit = false;
}

//Dspecial - Second Whirlwind
if (my_hitboxID.attack == AT_DSPECIAL && my_hitboxID.hbox_num == 10){
	stored_player = hit_player_obj.player;
	whirlwind2_hit = true;
	whirlwind2.state_timer = -40;
	if (hit_player_obj = my_hitboxID.player_id){
		whirlwind_myself = true;
	}
}
else {
	whirlwind2_hit = false;
}

//Resets the Grab Hitbox
cargo_hit_right = false;
cargo_hit_left = false;

//Lauching Maverick with the Whirlwind
if (my_hitboxID.attack == AT_DSPECIAL && hit_player_obj = my_hitboxID.player_id 
&& my_hitboxID.hbox_num != 1 && my_hitboxID.hbox_num != 10){
	whirlwind_myself = false;
	move_cooldown[AT_DSPECIAL] = 999;
} 

//Resets the Whirlwind Effect
if (my_hitboxID.attack == AT_DSPECIAL && my_hitboxID.hbox_num != 1 && my_hitboxID.hbox_num != 10){
	whirlwind_player.whirlwind_effect = false;
	whirlwind_punch_effect = false;
	whirlwind_punch_active = false;
}

//Grabbing opponent
if (my_hitboxID.attack == AT_NSPECIAL && cargo_grab == false){
    if ((state == PS_ATTACK_GROUND || state == PS_ATTACK_AIR)
	  && (hit_player_obj.state == PS_HITSTUN || hit_player_obj.state == PS_HITSTUN_LAND)
    	  && was_parried == false
	  && hit_player_obj.clone == false){
	        
	        //Grabs them on the Right
	        if (my_hitboxID.hbox_num == 1){
	        	cargo_hit_right = true;
	        	window = 4;
	        	window_timer = 1;
	        }
	        else {
	        	cargo_hit_right = false;
	        }
	        //Grabs them on the Left
	        if (my_hitboxID.hbox_num == 2){
	        	cargo_hit_left = true;
	        	window = 4;
	        	window_timer = 1;
	        	spr_dir *= -1;
	        }
	        else {
	        	cargo_hit_left = false;
	        }
	        
	        //Initiates the Cargo Hold (sets the variables)
	        if (my_hitboxID.hbox_num == 3){
	        	//Timer is the opponent percentage + 60
	    		grab_timer = get_player_damage(hit_player_obj.player) + 60;
		        cargo_grab = true;
	            window = 5;
	            window_timer = 1;
		        hit_player_obj.x = x+40*spr_dir;
		        hit_player_obj.y = y;
	        }
	        
	  }
}

//Get out of the grab state when throwing the opponent
if (my_hitboxID.attack == AT_NSPECIAL_2){
	cargo_grab = false;
	djumps = 0;
}