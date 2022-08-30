//B - Reversals
switch(attack){
	case AT_NSPECIAL:
	case AT_FSPECIAL:
	case AT_DSPECIAL:
	case AT_USPECIAL:
		trigger_b_reverse();
		break;
}

if (ewgf){
	if (window == 1 && window_timer == 1){
		set_attack(AT_NSPECIAL);
	}else
	{
		if (attack != AT_NSPECIAL)
			ewgf = false;
	}
}


// trick detection

var nearest_dist = -1;
var nearest_player = noone;
var free_chaos = has_rune("M");

with (oPlayer){
	if (player != other.player && get_player_team( player ) != get_player_team( other.player )){
		if (trick_marked) || (free_chaos) || other.jc_range
		{
			if (abs(other.x - x) < nearest_dist) || (nearest_dist == -1) {
			nearest_player = id;
			nearest_dist = point_distance(other.x, other.y, x, y);
			
			if (nearest_dist > other.trick_range) && !other.jc_range{
			nearest_player = noone;
			nearest_dist = -1;
			}
			
			}
		}
	}
}

if (nearest_player != noone){
if (nearest_player.trick_marked)
free_chaos = false;
}

if (has_rune("L")){
	if ((attack != AT_USPECIAL && attack != AT_DSPECIAL && attack != AT_NSPECIAL && attack != AT_FSPECIAL) && 
	nearest_dist != -1 && has_hit_player){
	can_special = true;
	trick_cancel = true;
	}
}

//VOICES

//randomizer
var voice_rand = 1 + random_func( 1, 2, true );

if (necoarc)
voice_rand = 1;

switch(attack){
	
	// give your moves some "pop" by spawning dust during them!
	case AT_DATTACK:
	
			if (window == 1 && window_timer == 5){
			
				if vergil
				sound_play(sound_get("vergil_dattack"));
				
				if dante
				sound_play(sound_get("dante_grunt2"));
				
				if necoarc
				sound_play(sound_get("neco_buff_grab"));
			}
		
		
	break;

	case AT_JAB:
	case AT_NAIR:
	
	if (voice_rand = 1){
		if (window == 1 && window_timer == get_window_value(attack, window, AG_WINDOW_LENGTH)){
			
			if dante
			sound_play(sound_get("dante_grunt1"));
			if vergil
			sound_play(sound_get("vergil_grunt1"));
			if necoarc
			sound_play(sound_get("neco_grunt1"));
		}
	}
	
	
	break;


	case AT_FTILT:
	case AT_DTILT:
	case AT_BAIR:
	case AT_DAIR:
	case AT_UTILT:
	
	
	
	
		
	if (voice_rand = 1){
		if (window == 1 && window_timer == get_window_value(attack, window, AG_WINDOW_LENGTH)){
			
			if dante
			sound_play(sound_get("dante_grunt2"));
			if vergil
			sound_play(sound_get("vergil_grunt2"));
			if necoarc
			sound_play(sound_get("neco_grunt2"));
		}
	}
	
	break;
	
	case AT_FAIR:
	
		if (window == 1 && window_timer == get_window_value(attack, window, AG_WINDOW_LENGTH)){
			
			if (get_player_color(player) == 6) || (get_player_color(player) == 7)
			sound_play(sound_get("stinger"));
			
				if (dante)
				sound_play(sound_get("dante_iyf"));
				if (vergil)
				sound_play(sound_get("vergil_die"));
				if necoarc
				sound_play(sound_get("necograb"));
		}
		
	break;

	case AT_USTRONG:
	case AT_DSTRONG:
	case AT_FSTRONG:
	if (voice_rand = 1){
		if (window == 2 && window_timer == get_window_value(attack, window, AG_WINDOW_LENGTH)){
			
			if dante
			sound_play(sound_get("dante_grunt3"));
			if vergil
			sound_play(sound_get("vergil_grunt3"));
			if necoarc
			sound_play(sound_get("neco_grunt3"));
		}
	}
	break;

	case AT_UAIR:
		if (voice_rand = 1){
			if (window == 1 && window_timer == get_window_value(attack, window, AG_WINDOW_LENGTH)){
				
				if dante
				sound_play(sound_get("dante_grunt3"));
				if vergil
				sound_play(sound_get("vergil_grunt3"));
				if necoarc
				sound_play(sound_get("neco_grunt3"));
			}
		}	
	break;
	
	case AT_NAIR:

		//hard coded cancels for parry
		if (window == 3 || window == 6){
			if (attack_pressed && has_hit_player){
				window += 1;
				window_timer = 0;
			}
			else if (window_timer == get_window_value(attack, window, AG_WINDOW_LENGTH)){
				window = 9;
				window_timer = 0;
			}
			
		}
	break;
	
	case AT_NSPECIAL:

		

		if (window == 1 && window_timer == get_window_value(attack, window, AG_WINDOW_LENGTH) && (nearest_dist == -1 || !special_down) && !trick_cancel && !jc_range){
				if (vergil)
				sound_play(sound_get("jc_vo"));
				if (dante)
				sound_play(sound_get("dante_grunt1"));

				if(necoarc)
				sound_play(sound_get("neconspec_1"));
		}
		else if (window == 1 && window_timer == get_window_value(attack, window, AG_WINDOW_LENGTH) && (special_down||trick_cancel||jc_range) && (nearest_dist != -1))
		{
			
			if (sparda){
				if (vergil)
				sound_play(sound_get("jc_vo"));
			}
		}
	break;
	
	
	
	case AT_FSPECIAL:
	move_cooldown[AT_FSPECIAL]= 10;
	if (window == 1)
	{
		
		if (necoarc)
			if (window_timer == 1)
			sound_play(sound_get("necobeam"));

		if (sparda){
			if (window_timer == 1){
				if vergil
			sound_play(sound_get("vergil_carve"));
				if dante
			sound_play(sound_get("dante_haha"));
			}
		}

		
	}
	
		
	break;
	
	
	
	case AT_USPECIAL:

		can_fast_fall = false;
		can_move = false;
		
	if (window == 1 && window_timer == get_window_value(attack, window, AG_WINDOW_LENGTH)){
		
		if (necoarc){
		var tele_variation = 1 + random_func( 0, 3, true );
		sound_play(sound_get("necoteleport_" + string(tele_variation)));
		}
		
		if (sparda) {
			if (vergil)
		sound_play(sound_get("vergil_trick_vo"));
			if (dante)
		sound_play(sound_get("dante_trick_vo"));
		}
		
	}
		
		break;
	
	
	
	case AT_DSPECIAL:
		
		//neco sound
		if (necoarc){
		if (window == 1 && window_timer == 1)
		sound_play(sound_get("necograbstart"));
		}
		
		if (sparda) {
			if (window == 5 && window_timer == 1 && vergil){
			sound_stop(sound_get("vergil_grab"));
			sound_play(sound_get("vergil_die"));
			}
			
			if (window == 5 && window_timer == 1 && dante){
			sound_stop(sound_get("dante_grab"));
			
			if (grabbed_player.trick_marked)
			sound_play(sound_get("dante_jackpot"));
			else
			sound_play(sound_get("dante_grunt2"));
			
			
			}
		}
		
		
		
		break;
	

	
	case AT_TAUNT:
		if (window == 1 && window_timer == 5)
		{
				if (dante)
				sound_play(sound_get("dante_taunt"));
				if (vergil)
				sound_play(sound_get("vergil_taunt"));
				if (necoarc)
				sound_play(sound_get("neco_taunt_1"));
		}
	break
	
	case AT_TAUNT_2:
	
		if (window == 1 && window_timer == 1){
		if vergil_taunt
		motivation = 60*26;

		if necoarc{
		var neco_variation = 1 + random_func( 0, 4, true );
		sound_play(sound_get("neco_taunt_" + string(neco_variation)));
		}
		
		}
		
		if (vergil_taunt){
			
			if (window == 1 && window_timer == get_window_value(attack, window, AG_WINDOW_LENGTH)) && vergil{
			var motivation_variation = 1 + random_func( 0, 2, true );
			sound_play(sound_get("vergil_motivated_" + string(motivation_variation)));
			}
		}

		
	break;
	
	
}




















// per-attack logic
switch(attack){
	



	// give your moves some "pop" by spawning dust during them!
	case AT_DATTACK:

		if (window <= 2){
			
		if has_hit_player && !was_parried{
		can_ustrong = true;
		
		}
		
		}
		
	break;

	case AT_USTRONG:
		
		
		if (instance_exists(grabbed_player)){
			if (grabbed_player.hitstop > 0){
			grabbed_player.x = floor(lerp(grabbed_player.x,x+10,0.5));
			grabbed_player.y = floor(lerp(grabbed_player.y,y-80,0.5));
			}
			else
			grabbed_player = noone;
		}
		
		break;
	
	
	
	case AT_NSPECIAL:

		move_cooldown[AT_NSPECIAL] = 30;
	
		if (window == 1 && window_timer == get_window_value(attack, window, AG_WINDOW_LENGTH) && (nearest_dist == -1 || !special_down) && !trick_cancel && !jc_range){
			window = 3;
			window_timer = 0;
			
			if (get_player_color(player) == 6) || (get_player_color(player) == 7){
			sound_play(sound_get("jc_fast_sfx"));
			}
		}
		else if (window == 1 && window_timer == get_window_value(attack, window, AG_WINDOW_LENGTH) && (special_down||trick_cancel||jc_range) && (nearest_dist != -1) && !ewgf)
		{
			    if (free_chaos){
				take_damage( player, -1, 10 );
			    }
			jc_range = false;
			window = 2;
			window_timer = 0;
			
			if (get_player_color(player) == 6) || (get_player_color(player) == 7){
			sound_play(sound_get("jc_sfx"));
			}
			else if (necoarc)
			sound_play(sound_get("neconspec_2"));	
			else
			sound_play(sound_get("strong3"));
			
			jc_buff = true;
			grabbed_player = nearest_player;
			grabbed_player.trick_timer = 0;
		}
		
		if (window == 2 && !jc_buff)
		{
			window = 3;
			window_timer = 0;
		}

		if (window == 3 && window_timer == 1 && !hitpause){
			
			if (!ewgf){
				if (!jc_buff)
				jc_object = instance_create( x + (75 * spr_dir), y - 40, "obj_article1" );
				
				if (jc_buff){
					if (instance_exists(grabbed_player))
					jc_object =	instance_create( grabbed_player.x, grabbed_player.y - 40, "obj_article1" );
				}
			}
			else
			{
				jc_object = instance_create( x + (75 * spr_dir), y - 40, "obj_article1" );
				sound_play(sound_get("slicef2"));
				jc_object.jc_buff = true;
				jc_object.jc_ewgf = true;
				ewgf = false;
			}
			
		}
		
		if (window <= 2){
			
	
			
		can_fast_fall = false;
		if free
		vsp *= 0.9;
		
		hsp = clamp(hsp,-10, 10);
		}
		
		if (window == 3 && window_timer == 1 && free)
		{
			if !jc_buff
			vsp = -2;
			else
			vsp = 0;
		
		}
		can_move = false;
	break;
	
	
	
	case AT_FSPECIAL:
	can_move = false;
	
	if trick_cancel{
		if (nearest_player != -1){
		grabbed_player = nearest_player;
		grabbed_player.trick_timer = 0;
		}

	}
	
	if (window == 1)
	{
		
		if (window_timer == 1 && special_down && has_rune("I"))
		{
			window_timer = 0;
			fspec_charge++;
		}
		
		if free
		vsp *= 0.8;
		
		hsp = clamp(hsp,-10, 10);
		
		
		
		if (window_timer == 13)
		{
			sound_play(sound_get("slice"));
			sound_play(sound_get("bladehadou"));
		}
		
		if (window_timer == 9)
		{
			
			if position_meeting( x + (60*spr_dir), y - 36, jc_object )
				{
					jc_pointblank = true;
					jc_buff = true;
					
				}
				
			
		}
		
	}
	
	if (window == 2 && window_timer == 1 && free)
	vsp = -3;
	
	if (window == 3 && free)
	{
		if (vsp > 0)
		vsp -= 0.1;
	}
	
		
	break;
	
	
	
	case AT_USPECIAL:

		can_fast_fall = false;
		can_move = false;
		
	if (window == 1 && window_timer == get_window_value(attack, window, AG_WINDOW_LENGTH)){
		
		
			if (special_down && nearest_dist != -1) || (trick_cancel){
			trick_fall = true;
			uspec_buff = true;
			grabbed_player = nearest_player;
			grabbed_player.trick_timer = 0;
			
			}
	}	
		
	if (window == 2){
			
		
			

			
		if (uspec_buff){
			
			dist_range-=12;
			
			if (window_timer == 1){
			sound_play(sound_get("teleport"));
			
			}
			
			
			if (free_chaos && window_timer == 1){
			take_damage( player, -1, 10 );
			}
			
			
			
			if (!has_rune("G")){
				if (grabbed_player.state == PS_RESPAWN)
				grabbed_player = noone;
				
				if (grabbed_player != noone){
				x = grabbed_player.x - (50*spr_dir);
				y = grabbed_player.y;
				}
				
				if (grabbed_player.state_cat == SC_HITSTUN){
					
				if (window_timer == 1 && hitstop == 0){
				grabbed_player.hitstop = 2;
				grabbed_player.hitstun += uspec_trickstun;
				}				
				
				hsp = 0;
				vsp = -3;
				grabbed_player.hsp = 0;
				grabbed_player.vsp = -7;

				
				}
				
				
			} 
			else{
				move_cooldown[attack] = 60;
				grabbed_player.x = floor(lerp(grabbed_player.x, x + (50*spr_dir), 0.25));
				grabbed_player.y = floor(lerp(grabbed_player.y, y, 0.25));
				hsp = 0;
				vsp = -0;
				
				if (grabbed_player.state_cat == SC_HITSTUN){
				grabbed_player.hitpause = true;
				grabbed_player.hitstop = 60;
				}
				
			}
			
			
			
			
		}
		else if (!trick_fall) {
			
			if (window_timer == 1){
			uspec_prev_x = x + lengthdir_x(125, joy_dir);
			uspec_prev_y = y + lengthdir_y(200, joy_dir);
			}
			
			x = floor(lerp(x, uspec_prev_x, 0.25));
			y = floor(lerp(y, uspec_prev_y, 0.25));
			
		}
					
	}
	
		
		if (trick_fall){
			
			if (window == 3 && window_timer == get_window_value(attack, window, AG_WINDOW_LENGTH)){
				set_state(PS_IDLE_AIR);
			}
			
		}else{
		hsp = 0;
		vsp = 0;
		}

		
		break;
	
	
	
	case AT_DSPECIAL:

		if (grabbed_player != noone)
		{
			attack_invince = 2;

		}
		
		if (was_parried)
		was_parried = false;
		
		can_move = false;
		can_fast_fall = false;
		
		
		if (window == 1)
		{
			hsp = 4 * spr_dir;
			vsp = 1;
		}
		
		if (window == 2 && window_timer == 1)
		{
			vsp = -6;
			hsp = 3 * spr_dir;
		}
		
		if (window == 7) 
		{
			if (!has_hit_player){
				window = 8;
				window_timer = 21;
			}
			
			
			if (window_timer == get_window_value(attack, window, AG_WINDOW_LENGTH) && has_hit_player)
			set_state(PS_IDLE_AIR);
			
		}
		
		if ((window == 2 || window == 3) && has_hit_player){
			grabbed_player.x = x + (30*spr_dir);
			grabbed_player.y = y - 30;
			grabbed_player.hsp = 0;
			grabbed_player.vsp = 0;
			grabbed_player.hitstop = 2;
			grabbed_player.hitpause = true;
		}

		if (window == 3 && !has_hit_player && window_timer == get_window_value(attack, window, AG_WINDOW_LENGTH))
		{
			window = 8;
			window_timer = get_window_value(attack, window, AG_WINDOW_LENGTH);
		}
		
		if (window == 3 && has_hit_player && window_timer == get_window_value(attack, window, AG_WINDOW_LENGTH))
		{
			if (grabbed_player.trick_marked || free_chaos){
				jce_loop = 0;
				attack_end();
				set_attack(AT_EXTRA_2);
			}
			else{
				jce_loop = 1;
			}
		}
		
		if (window == 4)
		{
			// grabbed_player.hitstop = 2;
			// grabbed_player.hitpause = true;

			grabbed_player.fall_through = false;

			if (free_chaos && window_timer == 1 && jce_loop < 1){
			take_damage( player, -1, 10 );
		    }
			
			hsp = 0;
			vsp = 0;
			
			//vergin sound
			if (sparda){
				if (window_timer % 3 == 0)
				sound_play(sound_get("jc_sfx"),0,0,0.25,1);
				

			}
			//neco sound
			else if (necoarc){
				if (window_timer == 1 && jce_loop < 1)
				sound_play(sound_get("neco_buff_grab"));
			}
			else{
				if (window_timer % 5 == 0)
				sound_play(sound_get("telefinish"),0,0,0.7,1);
			}
			
			draw_indicator = false;

			//skip
			// if !(grabbed_player.trick_marked || free_chaos) && (window_timer == 15){
			// 	window = 5;
			// 	window_timer = 0;
			// }

			//cutscene
			if (window_timer == get_window_value(attack, window, AG_WINDOW_LENGTH) && jce_loop < 1){
				window_timer = 0;
				attack_end();
				jce_loop ++;
				
			}



		}

		// lock players into place
		if (window > 4 && window < 7)
		{
			
			
			
			grabbed_player.hitstop = 2;
			grabbed_player.hitpause = true;
			hsp = 0;
			vsp = 0;
			x = grabbed_player.x - (20 * spr_dir);
			y = grabbed_player.y + 30;
			
			
			if (window != 6){
			grabbed_player.hsp = 0;
			grabbed_player.vsp = 0;
			}
			
			
		}

		if (window == 5){
			if (attack_down && window_timer == 1){
				fair_no_fall = true;
				grabbed_player.hitpause = true;
				grabbed_player.hitstop = 10;
				y = grabbed_player.y;
				x = grabbed_player.x - 10 * spr_dir;

				attack_end();
				set_attack(AT_FAIR);

			}
		}
	
		
		
		
		break;
	
	case AT_EXTRA_2:

		can_move = false;

		var stage_top = get_stage_data( SD_Y_POS );
   		var stage_mid = ((room_width - get_stage_data( SD_X_POS )) + get_stage_data( SD_X_POS ))/2 ;
   		var new_x;

		if (grabbed_player != noone)
		{
			attack_invince = 2;
			force_depth = true;
			depth = grabbed_player.depth - 1;
		}

		
		if (window == 1){
			hsp = 0;
			vsp = 0;
			

			if (window_timer % 4 == 0){

				var x_offset, y_offset, cut_angle;

				switch(jce_buff_loop){
					case 0:
						x_offset = -30;
						y_offset = 40;
						cut_angle = 10;
					break;
					case 1:
						x_offset = 40;
						y_offset = -20;
						cut_angle = -20;
					break;
					case 2:
						x_offset = 0;
						y_offset = -30;
						cut_angle = 100;
					break;
					case 3:
						x_offset = -30;
						y_offset = -70;
						cut_angle = 40;
					break;
					case 4:
						x_offset = -20;
						y_offset = 20;
						cut_angle = 120;
					break;
				}

				shake_camera( 7, 5 );

				var slash = spawn_hit_fx( grabbed_player.x + x_offset, grabbed_player.y + y_offset, vfx_jce_big );
				slash.draw_angle = cut_angle;
				slash.spr_dir = -1;
				slash.depth = grabbed_player.depth - 3;

				switch(jce_buff_loop){
					case 0:
						x_offset = -200;
						y_offset = 40;
						cut_angle = 10;
					break;
					case 1:
						x_offset = 200;
						y_offset = -20;
						cut_angle = 160;
					break;
					case 2:
						x_offset = 50;
						y_offset = -150;
						cut_angle = 280;
					break;
					case 3:
						x_offset = 200;
						y_offset = -200;
						cut_angle = 200;
					break;
					case 4:
						x_offset = -200;
						y_offset = 150;
						cut_angle = 45;
					break;
				}

				var jce_clone = spawn_hit_fx( grabbed_player.x + x_offset, grabbed_player.y + y_offset, vfx_jce_clone );
				jce_clone.spr_dir = 1;
				jce_clone.draw_angle = cut_angle;
				jce_clone.depth = grabbed_player.depth - 2;

				var jce_circles = spawn_hit_fx( grabbed_player.x + x_offset/2, grabbed_player.y + y_offset/2, vfx_ftilt_destroy );
				jce_circles.depth = grabbed_player.depth - 1;

				sound_play(sound_get("telefinish"),0,0,0.7,1);

				sound_play(sound_get("jc_sfx"),0,0,1,1);

				jce_buff_loop++;
			}

			if (window_timer % 8 == 0){
				if (necoarc){
					jce_sfx_loop += 1;
					if (jce_sfx_loop > 3)
						jce_sfx_loop = 1;
					sound_play(sound_get("necoteleport_" + string(jce_sfx_loop)));
				}
			}

		}

		if (window == 2){

			if (window_timer == 10)
			sound_play(sound_get("telefinish"),0,0,0.7,1);

			new_x = clamp(x, get_stage_data( SD_X_POS ) + 50, (room_width - get_stage_data( SD_X_POS )) - 50)

			dist_range-=6;
			x = lerp(x, new_x, 0.5);
			y = lerp(y, stage_top, 0.5);
		}
		
		if (window == 3){
			if (window_timer == 1){

			new_x = clamp(x, get_stage_data( SD_X_POS ) + 50, (room_width - get_stage_data( SD_X_POS )) - 50)
			x = new_x;
			y = stage_top;

			if (vergil)
			sound_play(sound_get("vergil_rip"));

			}

			if (window_timer == 8){
				sound_play(sound_get("sheathe_slow"));
			}

			if (window_timer > 8)
			grabbed_player.jce_slice_time++;

		}


		if (window == 4){

			if (window_timer == 2){
				create_hitbox( AT_EXTRA_2, 8, grabbed_player.x, grabbed_player.y );

				if (necoarc)
				sound_play(sound_get("necograb"));
				if (dante)
				sound_play(sound_get("dante_jackpot"));

			}
			if (window_timer == 3){
				sound_stop(sound_get("sheathe_slow"));
				sound_play(sound_get("saya"));
				shake_camera( 20, 10 );
				jce_darken = false;
				grabbed_player.trick_timer = 0;
				grabbed_player.jce_circle = 0;
				grabbed_player.jce_alpha = 0.25;
				grabbed_player.jce_slice_time = 0;
			}
		}else
		{
			suppress_stage_music( 0.25, 0.75 );
			jce_darken = true;	
			grabbed_player.hsp = 0;
			grabbed_player.vsp = 0;
			grabbed_player.hitstop = 2;
			grabbed_player.hitpause = true;
			grabbed_player.spr_dir = -spr_dir;
		}
		
		break;
	
	case AT_FAIR:
	
		if (window == 1 )
		{
			if (fair_no_fall){
				fall_through = false;
				window = 2;
				window_timer = 0;
				fair_no_fall = false;
				hsp = 10 * spr_dir;
			}

			if (window_timer == 3)
			sound_play(asset_get("sfx_forsburn_cape_swipe"));
			
			if (down_down)
			fair_angle = -1;
			else if (up_down)
			fair_angle = 1;
			else if (left_down || right_down)
			fair_angle = 0;
			else
			fair_angle = 0;
			
			
			if (window_timer == get_window_value(attack, window, AG_WINDOW_LENGTH)){
				if (fair_angle == -1)
				vsp = 0.5;
				else if (fair_angle == 1)
				vsp = -3;
				else 
				vsp = -2
			}
			
		}
	
		if (window <= 2){
			can_move = false;
		}
		
		move_cooldown[attack] = 10;
		
		if (has_hit_player || window > 2){
		can_fast_fall = true;
		can_move = true;
		}
		

		
		if (!has_hit_player){
			with(pHitBox)
			{
				if (attack == other.attack) && (player == other.player) 
				{
					var stick_wall = instance_position( x + (40 * other.spr_dir), y, asset_get("solid_32_obj"));
					
					if (stick_wall != noone && other.cling_limit != 0)
					{
					other.attack = AT_EXTRA_1;
					other.window = 1;
					other.window_timer = 0;
					other.cling_timer = other.cling_timer_default;
					other.cling_limit--;

					other.x += 90 * spr_dir;
					x += 90 * spr_dir;
					//push back
					while (position_meeting( other.x + (58 * other.spr_dir), y, asset_get("solid_32_obj"))){
						other.x -= other.spr_dir;
						x -= other.spr_dir;


					}

					//push towards
					
					destroyed = true;
					//other.x = get_instance_x( stick_wall ) - (56 * spr_dir);
					
					}				
	
				}
				
							
	
				
				
			}
		}
		
		break;
	
	//sword cling	
	case AT_EXTRA_1:
		hsp = 0;
		vsp = 0;
		can_fast_fall = false;
		can_move = false;
		
		move_cooldown[AT_FAIR] = 10;
		if (window_timer >= 12)
		{
			cling_timer--;
			
			if(window_timer == 14)
			window_timer = 12;
			
			
			if (down_pressed) || (left_pressed && spr_dir == 1) || (right_pressed && spr_dir == -1) || (attack_pressed) || (shield_pressed) || (cling_timer <= 0){
				set_state(PS_IDLE_AIR);
				clear_button_buffer(PC_ATTACK_PRESSED);
				clear_button_buffer(PC_SHIELD_PRESSED);
				vsp = -2;
				hsp = -2 * spr_dir;
				
				if (left_pressed) || right_pressed{
					spr_dir *= -1;
				}
			}
				
			if (jump_pressed) || (up_pressed){
				clear_button_buffer(PC_JUMP_PRESSED);
				set_state(PS_IDLE_AIR);
				vsp = -6.5;
			}
		}
		
		break;
		
	case AT_UAIR:
		if (window == 1 && window_timer == 3)
		{
			sound_play(asset_get("sfx_forsburn_cape_swipe"));
		}
	break;	

	case AT_DAIR:
		if (window == 3 && window_timer == 1)
		sound_play(sound_get("saya"));
		
		break;
	
	case AT_TAUNT_2:
	
		if (window == 1 && window_timer == 1)
		motivation = 60*26;
		
		if (necoarc){
			if window_timer == get_window_value(attack, window, AG_WINDOW_LENGTH) && taunt_down{
				window_timer = 2
			}
		}else if (vergil_taunt){

			
			if (window == 2)
			{
				if (window_timer == get_window_value(attack, window, AG_WINDOW_LENGTH) && taunt_down && motivation > 0) {
					window_timer = 0
				}	
				motivation--;
				motivation = clamp(motivation, 0, motivation+1);
				suppress_stage_music( 0, 0.01 );

			}
			
			if (vergil_taunt && window == 3 && window_timer == 1 && motivation == 0)
			{
			create_hitbox( AT_TAUNT_2, 1, x, y );
			}
			
		}
		else
		{
			if (window == 1 && window_timer == get_window_value(attack, window, AG_WINDOW_LENGTH)){
			sound_play(asset_get("sfx_absa_8b"),1,0,1,1);
			}
			
			
			if (window == 2)
			{
				suppress_stage_music( 0.25, 0.05 );
				if (window_timer == get_window_value(attack, window, AG_WINDOW_LENGTH) && taunt_down) {
					window_timer = 0;
				}
			}
			
			if (window == 3)
			sound_stop(asset_get("sfx_absa_8b"));
		}
		
	break;
	
	
}

//IASA CODE

if (get_window_value(attack, window, AG_WINDOW_IASA) != 0){
	
	if (get_window_value(attack, window, AG_WINDOW_IASA) == 1){ //ground IASA
		if was_parried
		window_timer = get_window_value(attack, window, AG_WINDOW_LENGTH);
		else
		iasa_script();
	}
	else if (get_window_value(attack, window, AG_WINDOW_IASA) == 2){ //crouching IASA
	
		if was_parried
		window_timer = get_window_value(attack, window, AG_WINDOW_LENGTH);
		
		if (left_down ||
		right_down ||
		taunt_pressed ||
		attack_pressed ||
		special_pressed || 
		shield_pressed ||
		left_strong_pressed ||
		up_strong_pressed ||
		right_strong_pressed ||
		down_strong_pressed ||
		left_stick_pressed ||
		up_stick_pressed ||
		right_stick_pressed ||
		jump_pressed ||
		down_stick_pressed) && !was_parried
		iasa_script();
		

		
		if (window_timer == get_window_value(attack, window, AG_WINDOW_LENGTH) && !was_parried){
			set_state(PS_CROUCH);
		}
		
	}
	else if (get_window_value(attack, window, AG_WINDOW_IASA) == -1){ //aerial IASA
		if was_parried
		window_timer = get_window_value(attack, window, AG_WINDOW_LENGTH);
		else{
		iasa_script();
		can_fast_fall = true;
			if (!free)
			set_state(PS_LAND);
			
		}
	}
		
}
	




//gatling code


if has_rune( "O" ) {
	

if (attack == AT_JAB)
{
    move_cooldown[attack] = 10;
    
    if(has_hit)
    {
        can_strong = true;
        can_ustrong = true;
    }

}


if (attack == AT_DTILT)
{
    //cant gatling
    move_cooldown[AT_DTILT] = 1;
    move_cooldown[AT_JAB] = 1;
    
    if has_hit
    {

        can_attack = true;
        can_strong = true;
        
    }
    
}

if (attack == AT_FTILT)
{
    //cant gatling
    move_cooldown[AT_FTILT] = 1;
    move_cooldown[AT_DTILT] = 1;
    move_cooldown[AT_JAB] = 1;
    
    can_move = false;
	
    if has_hit
    {
        can_attack = true;
        can_strong = true;
                
    }
    
}

if (attack == AT_UTILT)
{
    move_cooldown[AT_UTILT] = 1;
    move_cooldown[AT_FTILT] = 1;
    move_cooldown[AT_DTILT] = 1;
    move_cooldown[AT_JAB] = 1;
    
    if has_hit
    {
        can_strong = true;
        can_attack = true;
    }
}





if (attack == AT_FSTRONG)
{
	has_airdash = false;
    move_cooldown[AT_UTILT] = 1;
    move_cooldown[AT_FTILT] = 1;
    move_cooldown[AT_DTILT] = 1;
    move_cooldown[AT_JAB] = 1;
    move_cooldown[AT_FSTRONG] = 1;
    move_cooldown[AT_USTRONG] = 1;
    move_cooldown[AT_DSTRONG] = 1;
    
    can_attack = true;
    
}

if (attack == AT_DSTRONG)
{
    move_cooldown[AT_UTILT] = 1;
    move_cooldown[AT_FTILT] = 1;
    move_cooldown[AT_DTILT] = 1;
    move_cooldown[AT_JAB] = 1;
    move_cooldown[AT_FSTRONG] = 1;
    move_cooldown[AT_USTRONG] = 1;
    move_cooldown[AT_DSTRONG] = 1;
    
    can_attack = true;
    
}

if (attack == AT_USTRONG)
{
    move_cooldown[AT_UTILT] = 1;
    move_cooldown[AT_FTILT] = 1;
    move_cooldown[AT_DTILT] = 1;
    move_cooldown[AT_JAB] = 1;
    move_cooldown[AT_FSTRONG] = 1;
    move_cooldown[AT_USTRONG] = 1;
    move_cooldown[AT_DSTRONG] = 1;
    
    can_attack = true;
    
}



//aerials

if (attack == AT_NAIR)
{
    move_cooldown[AT_NAIR] = 1;
    if has_hit
    {
        can_attack = true;
    }

}


if (attack == AT_DAIR)
{
    move_cooldown[AT_NAIR] = 1;
    move_cooldown[AT_DAIR] = 1;
    
    can_attack = true;
}

if (attack == AT_FAIR)
{
    move_cooldown[AT_NAIR] = 1;
    move_cooldown[AT_DAIR] = 1;
    move_cooldown[AT_FAIR] = 1;
    
    if has_hit
    {
        can_attack = true;
    }
    
}

if (attack == AT_UAIR)
{
    move_cooldown[AT_NAIR] = 1;
    move_cooldown[AT_DAIR] = 1;
    move_cooldown[AT_FAIR] = 1;
    move_cooldown[AT_UAIR] = 1;
    
    if has_hit
    {
        can_attack = true;
    }

}


if (attack == AT_BAIR)
{
    move_cooldown[AT_NAIR] = 1;
    move_cooldown[AT_FAIR] = 1;
    move_cooldown[AT_UAIR] = 1;
    move_cooldown[AT_DAIR] = 1;
    move_cooldown[AT_BAIR] = 1;
    
    can_attack = true;
}



if (attack != AT_NSPECIAL &&
attack != AT_FSPECIAL &&
attack != AT_USPECIAL &&
attack != AT_DSPECIAL &&

attack != AT_DATTACK &&
attack != AT_TAUNT &&
attack != AT_TAUNT_2 &&
attack != 49 &&
!was_parried
)
{
	can_attack = true;
}


}



saya_check_window = window;

tpx_event = 2;
user_event(15);