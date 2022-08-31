//B - Reversals
if (attack == AT_NSPECIAL || attack == AT_FSPECIAL || attack == AT_DSPECIAL || attack == AT_USPECIAL) trigger_b_reverse();

switch (attack)
{
	case AT_UAIR:
	case AT_EXTRA_2:
		if(window == 1 and window_timer == 1){
			sound_play(sound_get("dattack"), false, noone, .55, 1.3);
		}
		if (window == 2 && (window_timer == 5 || window_timer == 7) && !hitpause)
		{
			sound_play(asset_get("sfx_swipe_medium1"))	
		}
		if (has_hit)
		{
			set_hitbox_value(AT_UAIR, 4, HG_WIDTH, 106);
			set_hitbox_value(AT_UAIR, 4, HG_HEIGHT, 96);
			set_hitbox_value(AT_EXTRA_2, 4, HG_WIDTH, 106);
			set_hitbox_value(AT_EXTRA_2, 4, HG_HEIGHT, 96);
		}
		else
		{
			reset_hitbox_value(AT_UAIR, 4, HG_WIDTH);
			reset_hitbox_value(AT_UAIR, 4, HG_HEIGHT);
			reset_hitbox_value(AT_EXTRA_2, 4, HG_WIDTH);
			reset_hitbox_value(AT_EXTRA_2, 4, HG_HEIGHT);
		}
		break;
	case AT_FAIR:
		hurtboxID.sprite_index = sprite_get(instance_exists(hat_object)?"fair_hatless_hurt":"fair_hurt");
		if (window == 3 && (attack_down || spr_dir == 1 && right_stick_down || spr_dir == -1 && left_stick_down))
		{
			attack_end();
			set_attack(AT_EXTRA_1);
		}
		break;
	case AT_EXTRA_1: //setting hurtbox cause if you use set_attack it doesn't update the hurtbox for some reason
		hurtboxID.sprite_index = sprite_get(instance_exists(hat_object)?"fair2_hatless_hurt":"fair2_hurt");
		break;
	case AT_FSPECIAL:
		can_move = false;
		if (fspecial_air_count < 1) {
			vsp = sign(vsp) == -1 ? vsp : floor(lerp(vsp, 0, 0.1));
		}
		if (window <= 2) hsp *= 0.98;
		if (window == 2 && window_timer == 1)
		{
			var start_angle = initial_hat_angle + ((180-(initial_hat_angle*2))*(spr_dir == -1));
			var dir_ang = !joy_pad_idle and (clamp(joy_dir, -20, 20) != joy_dir and clamp(joy_dir, 160, 200) != joy_dir) ? (2*floor(joy_dir / 180))-1 : 0;
			var angle_to_add = -dir_ang*35 * spr_dir;
			//print(start_angle+angle_to_add)
			
			var throw_hsp, throw_vsp;
			throw_hsp = lengthdir_x(initial_hat_speed,start_angle+angle_to_add);
			throw_vsp = lengthdir_y(initial_hat_speed,start_angle+angle_to_add);
			
			var hat = instance_create(x+(spr_dir*36),y-36,"obj_article2");
			hat.hsp = throw_hsp;
			hat.vsp = throw_vsp;
		}
		break;
	//hatless fspecial return
	case AT_FSPECIAL_2:
		can_move = false;
		if (fspecial_air_count < 1) {
			vsp = sign(vsp) == -1 ? vsp : floor(lerp(vsp, 0, 0.1));
		}
		if (window <= 2) hsp *= 0.98;
		break;
	case AT_DSPECIAL:
		move_coooldown[AT_DSPECIAL] = 20;
		can_fast_fall = false;
		if(window == 1){
			counter = false;
			countered = noone;
			phys_counter = false;
		}
		
		if(window < 3){
			can_move = false;
		}
		if(window == 2){
			invincible = true;
			invince_time = 4;
			with(pHitBox){
				if(place_meeting(x,y, other)){
    				if (player_id != other){
    					other.counter = true;
    					if(type == 1)
    						other.phys_counter = true;
    					other.countered = player_id;
    				}
				}
			}
			if(counter){
				window = 4;
				window_timer = 0;
				if(countered.x < x){
					spr_dir = -1;
				} else {
					spr_dir = 1;
				}
				if(phys_counter){
					countered.hitpause = true;
					countered.hitstop = 30;
				}
			} 
			if(window == 4){
				invincible = true;
			}
			
			
		}

		//if (window == 2 && window_timer = 1) user_event(1);
		break;
	case AT_DSPECIAL_2:
        	vsp = clamp(vsp, -4, 4);
        	can_move = false;
        	can_fast_fall = false;
        	move_cooldown[AT_DSPECIAL] = 45;
        	move_cooldown[AT_DSPECIAL_2] = 45;
        	if(window_timer == 4 and instance_exists(hat_object) and hat_object.hitstun <= 0 and hat_object.state < 5){
				if (hat_object.health >= hat_grab_start_health) { //DinoBros' grab - 100
					hat_object.state = 7;
				} else {
					hat_object.state = 3;
				}
        		hat_object.state_timer = 0;
        		hat_object.lock_state = true;
        	}
        	break;
	case AT_TAUNT:
		switch (window)
		{
			case 1: 
				plush = random_func(3+player, 22, true);
				//plush = 14;
				taunt_timer = 0;
				break;
			case 3:
				if (taunt_down)
				{
					if (taunt_timer <= 360)
					{
						++taunt_timer;
						window_timer = min(38, window_timer);
					}
					else
					{
						++window;
						window_timer = 0;
					}
				}
				break;
		}
		break;
	case AT_TAUNT_2:
		if (window_timer == 4)
		{	
			/*
			for (var i = 0; i < 3; ++i)
			{
			    var seed = (1+player+i) % 10;
			    var itemtoplace = random_func(seed, max_num_items,true);
			    while (array_find_index(items, itemtoplace) != -1)
			    {
			        seed = (seed + 1) % 10;
			        itemtoplace = random_func(seed, max_num_items,true);
			    }
			    items[i] = itemtoplace;
			}
			*/
		}
		break;
	
	//  // strongs code

	case AT_FSTRONG:
		if (window == 2 && window_timer == 1)
		{
			sound_play(asset_get("sfx_zetter_fireball_fire"),false,0,0.2,(random_func(4,5,true)/10)+1);
			sound_play(asset_get("sfx_ori_energyhit_weak"),false,0,0.9,(random_func(4,5,true)/10)+.7);
			sound_play(sound_get("dattack"), false, 0, 1, .85);
		}
		if (window == 3 && window_timer == 17)
		{
			sound_play(asset_get("sfx_blow_weak2"), false, 0, 0.35, 1.65);
			sound_play(asset_get("sfx_birdclap"), false, 0, .5, 1.2);
			sound_stop(sound_get("clyde_1"));
		}
		if (window == 2 and window_timer == 5)
		{
			var forwardspd = 6 // change this number
			hsp = forwardspd*spr_dir;
		} 
		break;
	case AT_USTRONG:
		if (window == 1 && window_timer == get_window_value(AT_USTRONG,1,AG_WINDOW_LENGTH)-2) sound_play(sound_get("herald_1"));
		if (window == 2)
		{
			if (window_timer == 1) sound_play(sound_get("dattack"), false, noone, 1, .7);
			if (window_timer % 4 == 0) sound_play(asset_get("sfx_zetter_fireball_fire"),false,0,0.45,(random_func(4,4,true)/10)+0.6);
			if (window_timer % 6 == 0) sound_play(asset_get("sfx_may_root"),false,0,0.35,(random_func(4,3,true)/10)+0.55);
			if (window_timer == get_window_value(AT_USTRONG,1,AG_WINDOW_LENGTH)-1) sound_play(sound_get("herald_2"));
		}
		
		if(window == 2 and window_timer == 8){
			//spawn_hit_fx(x-spr_dir*90, y-140, hfx_ustrong);
		}
		if (window == 4 && window_timer == 4)
		{
			sound_play(asset_get("sfx_forsburn_spew2"),false,0,0.5,0.95);
			sound_play(asset_get("sfx_forsburn_breath"),false,0,0.3,1.75);
		}
		break;
	case AT_DSTRONG:

	
		if (window == 1 && window_timer == 4)
		{
			sound_play(asset_get("sfx_swipe_weak2"),false,0,0.5,0.95);
			sound_play(sound_get("herald_1"));
		}
		if (window == 2 && window_timer == get_window_value(AT_DSTRONG,2,AG_WINDOW_LENGTH))
		{
			sound_play(asset_get("sfx_forsburn_combust"),false,0,0.85,1.25)
			sound_play(asset_get("sfx_ell_utilt_fire"), false, 0, .7, .75);
			sound_play(asset_get("sfx_swipe_medium2"),false,0,0.5,0.95);
			shake_camera(3, 8);
			//sound_play(asset_get("sfx_kragg_rock_pillar"),false,0,0.65,0.85)
		}
		break;
	
	// // idk this part is someone else's
	
	// lmao theres like a dozen programmers in here

	case AT_DTILT:
		if (window == 1 && window_timer == 1)
		{
			dtilt_jump = false;
			sound_play(sound_get("dattack"), false, noone, 1, 1.2);
		}
		
		var action = has_hit_player && !was_parried;
		if (action && jump_down) dtilt_jump = true;
		if (!hitpause)
		{
			//iasa_script();
			if (dtilt_jump)
			{
				set_state(PS_JUMPSQUAT);
				break;
			}
		}
		break;
	case AT_FTILT:
		if (window == 1 && window_timer == 4) sound_play(asset_get("sfx_swipe_medium2"), false, noone, 1, .95);
		break;
	case AT_UTILT:
		if (window == 1 && window_timer == 2) sound_play(sound_get("dattack"), false, noone, 1, 1.1);
		break;
	case AT_DAIR:
		if (window == 4 && window_timer == 3) vsp -= 4;
		
		if (has_hit)
		{
			set_hitbox_value(AT_DAIR, 2, HG_WIDTH, 70);
			set_hitbox_value(AT_DAIR, 3, HG_WIDTH, 70);
			set_hitbox_value(AT_DAIR, 4, HG_WIDTH, 70);
			set_hitbox_value(AT_DAIR, 5, HG_WIDTH, 70);
		}
		else
		{
			reset_hitbox_value(AT_DAIR, 2, HG_WIDTH);
			reset_hitbox_value(AT_DAIR, 3, HG_WIDTH);
			reset_hitbox_value(AT_DAIR, 4, HG_WIDTH);
			reset_hitbox_value(AT_DAIR, 5, HG_WIDTH);
		}
		
		
		break;
	case AT_NAIR:
		if (window == 1 && window_timer == 1) sound_play(sound_get("dattack"), false, noone, 1, 1.1);
		break;
	case AT_BAIR:
		if (window == 1 and window_timer == 2) sound_play(sound_get("dattack"), false, noone, 1, .9);
		//if (window == 2 && window_timer == 1 && !hitpause)
		//{
		//	var size = ["bot","mid","top"];
		//	var xx = [-44,-44,-44];
		//	var yy = [-30,-40,-50];
		//	var h = [-3,-5,-3];
		//	var v = [1.5, 0, -1.5];
		//	for (var i = 0; i < 3; ++i)
		//	{
		//	    var particle = create_hitbox(AT_BAIR, 4, x+(xx[i]*spr_dir), y+yy[i]);
		//	    particle.sprite_index = sprite_get("bairparticle_"+string(size[i]));
		//	    particle.hsp = (h[i]*spr_dir) + hsp;
		//	    particle.vsp = v[i];
		//	}
		//}
		break;
	case AT_JAB:
		switch (window)
		{
			case 1:
				if (window_timer == 1)
				{
					hit_jab3 = false;
					sound_play(sound_get("dattack"), false, noone, 1, 1.3);
				}
				break;
			case 4:
				if (window_timer == 1)
				{
					//sound_stop(sound_get("dattack"))
					clear_button_buffer(PC_ATTACK_PRESSED);
					sound_play(sound_get("dattack"), false, noone, 1, 1.15);
				}
				break;
			case 7:
				if (window_timer == 1)
				{
					clear_button_buffer(PC_ATTACK_PRESSED);
					sound_stop(sound_get("dattack"));
					sound_play(sound_get("dattack"), false, noone, 1, 1);
				}
				break;
			case 9:
				if (window_timer >= 4 && !hit_jab3)
				{
					window = 11;
					window_timer = 0;
				}
				else if (window_timer == 4) sound_play(sound_get("party_horn"), false, noone, 1, 1);
				break;
		}
		break;
	case AT_USPECIAL:
		hurtboxID.image_angle = spr_angle;
		can_fast_fall = false;
		//can_move = false;
		switch (window)
		{
			case 1:
				if (window_timer == 1)
				{
					vsp *= 0.6;
					hsp *= 0.6;
				}
				break;
			case 3:
				if (window_timer == 3) vsp = -10;
				break;
			case 4:
				can_fast_fall = true;
				if (window_timer == 1)
				{
					if (uspec_spin_count == 0)
					{
						sprite_change_offset("uspecial", 67, 61);
						x += 3*spr_dir;
						y -= 33;
					}
					sound_play(asset_get("sfx_spin"),0,-4,0.8,1+uspec_spin_count*0.1);
				}
				if (window_timer == get_window_value(attack, window, AG_WINDOW_LENGTH)) uspec_spin_count++;
				if (shield_pressed && !hitpause)
				{
					set_state(PS_PRATFALL);
					sound_play(asset_get("sfx_forsburn_reappear"));
					spawn_hit_fx(x, y, 13);
					vsp = -8;
				}
				else if (uspec_spin_count == 3 || !special_down)
				{
				    window = 5;
				    window_timer = 0;
				}
				break;
			case 5:
				uspec_spin_dir = joy_dir-90;
				
				if (window_timer < 5 && !joy_pad_idle)
				{
					uspec_spin_set = round(uspec_spin_dir/45);
					uspec_spin_point = uspec_spin_set*45;
				}

				//does new direction = old direction?
				if (uspec_spin_set_old != uspec_spin_set) uspec_spin_change = true;
				if (uspec_spin_change)
				{
				    state_timer -= 10;
				    uspec_spin_change = false;
				    uspec_spin_timer = 0;
				    uspec_spin_dif = angle_difference(uspec_spin_point, uspec_spin_point_old)
				}
				
				if (uspec_spin_timer < 10) uspec_spin_point_move += round(uspec_spin_dif/10);
				spr_angle = uspec_spin_point_move;
				uspec_spin_set_old = uspec_spin_set; //old direction
				uspec_spin_point_old = uspec_spin_point
				uspec_spin_timer++;

				if (window_timer == get_window_value(attack,window,AG_WINDOW_LENGTH)) sprite_change_offset("uspecial", 64, 94);
				break;

			case 6:
				//fall_through = true;
				if (!hitpause)
				{
					if (window_timer == 1)
					{
						hsp = lengthdir_x(8+uspec_spin_count*1.4, spr_angle+90); //MODIFY THESE TO CHANGE DISTANCE! MX IS "*[]", B IS "*+USPEC..."
						vsp = lengthdir_y(8+uspec_spin_count*1.4, spr_angle+90);
						spr_dir = (hsp > 0)?1:-1;
						set_hitbox_value(AT_USPECIAL, 1, HG_HITBOX_X, abs(lengthdir_x(70, spr_angle+90)));
						set_hitbox_value(AT_USPECIAL, 1, HG_HITBOX_Y, lengthdir_y(70, spr_angle+90));
						set_hitbox_value(AT_USPECIAL, 1, HG_KNOCKBACK_SCALING, 0.8+uspec_spin_count*0.1);
						set_hitbox_value(AT_USPECIAL, 1, HG_DAMAGE, 8+uspec_spin_count*2);
						hasMovedUp = false;
					}
					else if (!free)
					{
						state = PS_PRATLAND;
						set_state(PS_PRATLAND);
					}
					LedgeSnap();
					hsp = lerp(hsp, 0, .01);
					vsp = lerp(vsp, 0, .01);
				}
				break;

			case 7:
				spr_angle = 0;
				//if (window_timer == 1) uspec_reset = angle_difference(spr_angle, 0);
				//else spr_angle -= round(uspec_reset/(get_window_value(attack,window,AG_WINDOW_LENGTH)-1));
				if (!free)
				{
					state = PS_PRATLAND;
					set_state(PS_PRATLAND);
				}
				break;
		}
		break;
	case AT_NSPECIAL:
	case AT_NSPECIAL_2:
		//Reveal hatted player to be launched
		if (window == 6 && hatted_id != undefined)
		{
			hatted_id.visible = true;
			hatted_id.invincible = false;
			hatted_id.x = x + (50 * spr_dir);
			hatted_id = undefined;
		}

		if (window == 5 && window_timer == 1 && (left_down ^^ right_down)) spr_dir = -left_down + right_down;
		if (window == 5 && window_timer == 1 && (up_down)) {
			attack_end();
			attack = AT_NSPECIAL_2;
		}			
		

		//Whiff Animation
		if (window == 3 && window_timer == (get_window_value(AT_NSPECIAL, 3, AG_WINDOW_LENGTH)) && !has_hit_player)
		{
			window = 8;
			window_timer = 0;
		}
		else if (window == 8 && window_timer == (get_window_value(AT_NSPECIAL, 8, AG_WINDOW_LENGTH)))
		{
			window = 9;
			window_timer = 0;
		}
		break;
}

#define LedgeSnap()
{
    if (!hasMovedUp && free && place_meeting(x+hsp,y,asset_get("par_block"))) for (var i = 0; i < 20; ++i) if (!place_meeting(x+hsp,y-(i+1),asset_get("par_block")))
    {
        y -= i;
        hasMovedUp = true;
        break;
    }
}