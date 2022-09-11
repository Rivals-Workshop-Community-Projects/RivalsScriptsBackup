//B - Reversals
switch(attack){
	case AT_NSPECIAL:
	case AT_DSPECIAL:
	case AT_USPECIAL:
		trigger_b_reverse();
		break;
}




// per-attack logic

if (window == 1){
		trigger_all_hit = true;
}


switch(attack){
	


	// give your moves some "pop" by spawning dust during them!
	
	//CROUCHDASH
	case AT_EXTRA_1:
	
	


		if (window == 1 && window_timer == 1){
			invince_time = 2;
			invincible = true;
			tapf = 0;
			
		}

		

	
		if tapf==2 && window ==2{
			dp = 0;
			dp_timer = 0;
			window_timer = -1;
			attack_end();
			set_state(PS_DASH_START);
			clear_button_buffer( PC_ATTACK_PRESSED );
			clear_button_buffer( PC_DOWN_STICK_PRESSED );
	        clear_button_buffer( PC_DOWN_STRONG_PRESSED );
			clear_button_buffer( PC_STRONG_PRESSED );
		}
		
		if window==2 && window_timer==11{
			attack_end();
			set_state(PS_CROUCH);
		}
		
			if strong_pressed && (!down_strong_down && !up_strong_down && !left_strong_down && !right_strong_down)
				set_attack(AT_USTRONG_2);
			
			if attack_pressed
				set_attack(AT_FSTRONG_2);
			
			if special_pressed
				set_attack(AT_DSTRONG_2);

		
		break;
	
	case AT_UTILT:
		if (window == 3 && window_timer > 6){
			if ((attack_pressed && up_down) || up_stick_pressed){
				attack_end();
				window = 1;
				window_timer = 0;
			}
		}

		break;
	
	
	case AT_DSPECIAL:

		if (concentration > 0 && concentration_state < 2){

			if (!instance_exists(crosshair)){
				crosshair = instance_create(x,y,"obj_article1");
			}

				var nearest_target, nearest_dist = -1;


				with (oPlayer){
					if (player != other.player && get_player_team( player ) != get_player_team( other.player )){


							if ((abs(other.x - x) < nearest_dist)) || (nearest_dist == -1) {

							if sign(other.x - x) == sign(-other.spr_dir)
							nearest_target = id;
							else
							nearest_target = noone;

							nearest_dist = point_distance(other.x, other.y, x, y);
							}
						
					}
				}

				if (nearest_target != noone)
				crosshair.target = nearest_target;
				else
				crosshair.no_target = true;
			


				if (special_pressed && (window == 2 || window == 3)){
					clear_button_buffer(PC_SPECIAL_PRESSED);
					window = 4;
					window_timer = 0;
				}

		if (window == 2 && window_timer == 5) && (instance_exists(crosshair)) {
				window_timer = 4;
				if (attack_pressed && bullets > 0){
					
					window = 3;
					window_timer = 0;
					create_hitbox(attack, 1, round(crosshair.x), round(crosshair.y));
					concentration -= 8;
					bullets--;
				}
			}
			concentration_state = 1;
			concentration -= 0.4;
		}
		else if (window != 4){
			window = 4;
			window_timer = 0;
		}

		if (window == 3 && window_timer == 19){
			window = 2;
			window_timer = 1;
			// if (!bullet_hit){
			// 	strikes++;
			// }
			// if (bullet_hit){
			// 	bullet_hit = false;
			// }
		}
		
		
	break;
	
	case 49: //reload
	if (window == 2 && bullets < 6){

		if (window_timer == 3){
			bullets++;
		}

		if (window_timer == 9 && special_down){
			window_timer = 0;
		}

	}
	break;
	
	case AT_FSPECIAL:
		can_move = false;
		can_fast_fall = false;
		
		if (free){
		
		move_cooldown[AT_FSPECIAL] = 999;
			
		if (window == 1 && window_timer == 1){
		vsp = -2;
		hsp = hsp/2;
		}
		
		if (special_down && window == 1 && window_timer == get_window_value(AT_FSPECIAL, 1, AG_WINDOW_LENGTH)){
			spr_dir = -spr_dir;
		}
		
		}
		break;
	
	
	
	case AT_USPECIAL:
	can_wall_jump = true;
		

		break;
	
	case AT_FSPECIAL_2:
		can_move = false;
		can_fast_fall = false;

		if (window == 3){

			if (has_hit_player && !hitpause){
				spawn_hit_fx( x, y - 20, totstugeki_fly );
			}
			else if (window_timer == 7){
				spawn_hit_fx( x, y - 20, totstugeki_whiff );
			}
		}
		

	break;
	
	case AT_NSPECIAL:

		if (right_down){
			hsp = 2;
		}
		if (left_down){
			hsp = -2;
		}

		if (window_timer == 10){
			var sound_rand = 1 + random_func( 0, 4, true );
			sound_play(sound_get("dig_" + string(sound_rand)));

			if (mining_loops == 1){
			instance_create( x + 20*spr_dir, y - 10, "obj_article2" );
			}

			mining_loops = (mining_loops < 1) ? mining_loops+1 : 0;
		}
		
		if (special_down && window_timer == 12 && !free){
			window_timer = 0;
		}
		
		break;
	
	case AT_DSTRONG:
	if (window == 3) && (window_timer == 1)
	shake_camera( 2, 3 );
	break;
	
		
	// WGF/EWGF
	
	case AT_FSTRONG_2:
		
		if (window == 5 || window == 4) && window_timer == get_window_value( attack, window, AG_WINDOW_LENGTH )
		{
			ewgf = false;
			ewgf_real = false;
		}
		
		if ewgf{

			if (window == 1 && window_timer == 1){
				invincible = true;
				invince_time = get_window_value( attack, window, AG_WINDOW_LENGTH );
			}

			if window==1 && window_timer == get_window_value( attack, window, AG_WINDOW_LENGTH ){
				window = 3;
				window_timer = 0;
			}
			
			if window == 3 && window_timer == get_window_value( attack, window, AG_WINDOW_LENGTH ){
				window = 5;
				window_timer = 0;
			}
		}
		else if window==2{
			dp = 0;
			otgf = 0;
			if window_timer == get_window_value( attack, window, AG_WINDOW_LENGTH ){
				window = 4;
				window_timer = 0;
			}
		}

		else if window==4{
			dp = 0;
			otgf = 0;
			if window_timer == get_window_value( attack, window, AG_WINDOW_LENGTH ){
				window = 5;
				window_timer = get_window_value( attack, window, AG_WINDOW_LENGTH );
			}
		}
		
		if (ewgf_parry){
			with hit_player_obj {
				if (state != PS_HITSTUN){
				set_state(PS_HITSTUN);
				free = true;
				y -= 3;
				hsp = other.spr_dir * 6;
				vsp = -2;
				hitstun = 20;
				hitstop = 0;
				hitpause = false;
				}
			}

			hitstop = 5;
			hitpause = true;

			ewgf_parry = false;
		}
		
		if (ewgf && ewgf_real) was_parried = false;
		


		break;
		
		//Hellsweep
	case AT_DSTRONG_2:
		if (!was_parried){

		if (window == 1){
			invince_time = 2;
			invincible = true;
		}

		if (window==1 && window_timer==1) clear_button_buffer(PC_SPECIAL_PRESSED);
		
		if (special_pressed){
			hellsweep2 = true;
		}
		
		if strong_pressed {
			hellsweepdgf = true;
			omen = false;
		}

		if window==2 && !hellsweep2{
			if window_timer == get_window_value( attack, window, AG_WINDOW_LENGTH ){
				window = 5;
				window_timer = -1;
			}
		}else attack_end();

		if (window == 5 && window_timer == get_window_value( attack, window, AG_WINDOW_LENGTH )){
						set_state(PS_CROUCH);
		}

		if window==4{
			hellsweep2 = false;
		}
		//into Dragon Upper
		
		if hellsweepdgf && !hellsweep2 {
			if (window == 3 || window == 5){
			set_attack(AT_USTRONG_2);
			}
		}
		
		}else if (was_parried && window < 4){
			window = 4;
		}
		
		break;
		
	// DU/OTGF
	
	case AT_USTRONG_2:
		
		if (window == 4 && window_timer == get_window_value( attack, window, AG_WINDOW_LENGTH ) )
		{
			omen = false;
		}

		if (window==1){

			if (window_timer == 1){
				if (omen){
				invince_time = 14;
				invincible = true;
				}
			}

			if (window_timer == 12){
				if (!omen){
				invincible = true;
				invince_time = 2;
				}
			}
		}		
		

		if omen{ 
			if window==1 && window_timer == get_window_value( attack, window, AG_WINDOW_LENGTH ){
				window = 3;
				window_timer = 0;
			}
			
		}
		else if window==2{
			otgf = 0;
			if window_timer == get_window_value( attack, window, AG_WINDOW_LENGTH ){
				window = 3;
				window_timer = get_window_value( attack, window, AG_WINDOW_LENGTH );
			}
		}
		
		if (window==3) and window_timer == 1{
			invincible = true;
		}
		
		if hellsweepdgf{
			invincible = false;
			otgf = false;
		}

		break;
		
		
		case AT_TAUNT:
		if (window_timer == 15){
		sound_play(asset_get("sfx_blow_heavy2"));
		shake_camera( 4, 6 );
		}
		
		
		if (ohax == 2 && window_timer < 20){
			shimmy = true;
		}
		
		if (shimmy && window_timer == get_window_value( attack, window, AG_WINDOW_LENGTH ) - 1){
			window = 1;
			window_timer = -1;
			set_attack(AT_EXTRA_2);
		}
		
		
		break;
		
		case AT_EXTRA_2:
		
		
		if (up_down || jump_down){
			
			if (spr_dir == 1 && right_down) || (spr_dir == -1 && left_down)
			{
				if (attack_pressed)
				{
					clear_button_buffer( PC_JUMP_PRESSED );
					omen_axle = true;
					vsp = -6;
					hsp = 7 * spr_dir;
				}
			}
			
		}
		
		break;
		
		case AT_EXTRA_3:

		if (right_down){
			hsp = 2;
		}
		if (left_down){
			hsp = -2;
		}
		if (jump_pressed && !free){
			vsp = -5.25;
		}



			if (window_timer == 1 && dirt_inv > 0){
				

				var dirt = instance_create( x, y, "obj_article_solid" );
				var maxloop = 0;
				var go_mining = false;
					with (dirt){


						while (x%32 != 0)
						{
							x--;
						}

						while (place_meeting(x,y,other) && maxloop < 64){
							 y += 40;
							maxloop++;
						} 

						while (y%32 != 0)
						{
							y--;
						}


						if (other.dirt_offset)
						y -= 16;


						if (instance_place( x, y, asset_get("par_block")) || instance_place( x, y, asset_get("obj_article_solid")) || position_meeting( x, y, asset_get("oPlayer")))
						{

							instance_destroy(id);
							other.place_block = false;
						}else
						{
							other.dirt_inv--;
							sound_play(sound_get("dirt"));
							other.place_block = true;
						}
					}
			}


			if (!free && !stand_dirt){
				stand_ground = false;
				set_attack(AT_NSPECIAL);
			}

			if (window_timer == 14 && special_down && dirt_inv > 0){
				window_timer = 0;
			}

		break;

		case 48:
			tsp_state = true;
		break;

		case 42:
		spr_dir = 1;

		if (!is_nana && window_timer == 12)
        sound_play(sound_get("meme"));

		suppress_stage_music( 0, 0.01 );
		break;

		//throw item
		case 46:
			if (window == 2 && window_timer == 1){
				if (evidence[evidence_slot] != undefined && evidence[evidence_slot][1] != 1){
					create_hitbox(attack, 1, x + 20 * spr_dir, y - 30);
				}
				else if ((evidence[evidence_slot] != undefined && evidence[evidence_slot][1] == 1)){
					sound_play(asset_get("sfx_bite"));
					take_damage( player, -1, -5 );

					var type = evidence[evidence_slot][1];
					var index = evidence[evidence_slot, 3];

					evidence_list[type][index][@1] = 0;

					evidence[evidence_slot, 0] = undefined;
                    evidence[evidence_slot, 1] = undefined;
                    evidence[evidence_slot, 2] = undefined;
                    evidence[evidence_slot, 3] = undefined;


				}
			}
		break;

}

//switch end



//omenaxle
if (omen_axle){
	
	if (free && attack != AT_FAIR)
	{
		set_attack(AT_FAIR);
	}
	
	
}



// elec drains
if (window == 1 && window_timer == 1){
	switch(attack)
	{
	    case AT_FTILT:
	    case AT_DTILT:
	    case AT_NAIR:
	    case AT_DAIR:
	
	    case AT_FSTRONG:
	    case AT_DSTRONG:
	    case AT_USTRONG:
	    case AT_FAIR:
	         if (elec_active)
	            elec_charge -= elec_drain;
	            
	            // if (instance_exists( field_obj )){
	            // 	if (!field_obj.player_touching)
	            // 	electrified = false;
	            // }else
	            // electrified = false;
	    break;
	    
	    
	}
}

//strikes
if (!is_nana){

for (i = array_length(safe_attacks); i > 0; i--){
if attack == safe_attacks[i - 1]
	is_safe = true;
}

	if (!is_safe){

		if (window == get_attack_value(attack, AG_NUM_WINDOWS) && window_timer == 1 && !hitpause && !has_hit_player){
			strikes++;
			striked = true;
			if (strikes > 2){
				strikes = 0;
				outs++;
			}
		}
	}



}

// //tekken mode hitfall [too jank]
// if tekken_mode {
	

	
// 	if (has_hit_player && hitfall_window < 4 && free)
// 	{
// 		if (down_pressed && can_fast_fall){
			
// 			if vsp < 0
// 			vsp = 0;
			
// 			do_a_fast_fall = true;
// 			hitfall_window = 4;
// 		}
// 		hitfall_window ++;
// 	}
	
// 		if (hitfall_window > 3 || (window == 1 && window_timer == 1))
// 		hitfall_window = 0;
		
// }



// if phone_cheats[CHEAT_INSTANT]{
	
	
// 	switch (attack){
// 		case AT_FSTRONG:
// 		case AT_DSTRONG:
// 		case AT_USTRONG:
// 			if (window == 1){
				
// 			clear_button_buffer( PC_ATTACK_PRESSED );
// 			clear_button_buffer( PC_SPECIAL_PRESSED );
// 			clear_button_buffer( PC_STRONG_PRESSED );
			
			
// 			window = 2;
// 			sound_play(get_window_value(attack, window, AG_WINDOW_SFX));
// 			window_timer = get_window_value( attack, window, AG_WINDOW_LENGTH );	
// 			} 
// 		break;
		
// 		default:
// 			if (window == 1){
				
// 			clear_button_buffer( PC_ATTACK_PRESSED );
// 			clear_button_buffer( PC_SPECIAL_PRESSED );
// 			clear_button_buffer( PC_STRONG_PRESSED );
			
// 			sound_play(get_window_value(attack, window, AG_WINDOW_SFX));
// 			window_timer = get_window_value( attack, window, AG_WINDOW_LENGTH );	
// 			} 
// 		break;
		
// 	}
// } 


