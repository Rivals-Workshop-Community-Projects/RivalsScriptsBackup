
//B - Reversals
if (attack == AT_NSPECIAL || attack == AT_FSPECIAL || attack == AT_DSPECIAL || attack == AT_USPECIAL){
    trigger_b_reverse();
}

switch(attack){
	case AT_BAIR:
		if (window == 1 and window_timer == 11)
		{
			sound_play(sound_get("glucky_swipe2b"),false,noone,0.35,0.73)
		}
	break;
	case AT_FTILT:
		if (window == 1 and window_timer == 4)
		{
			sound_play(sound_get("glucky_swipe2b"),false,noone,0.4,1)
		}
	break;
	case AT_EXTRA_1:
	parry_cooldown = 10;
		if (window == 1 and window_timer == 1)
		{
			spawn_hit_fx(x,y-(char_height/2),gun_stance_vfx[gun]);
			gun = 0;
			steady_aim = 0;
			reticule_state = 2;
			reticule_frame = 16;
			has_airdodge = has_airdodge_buffer;
		}
	break;
	case AT_USTRONG:
		hud_offset = round( lerp(hud_offset, 130, 0.2) );
	case AT_FSTRONG:
		if (window == 3 and window_timer == 2 and !hitpause){
			gun = 1;
			reticule_frame = 0;
			reticule_state = 0;
			sound_play(sound_get("glucky_gunshot"),false,noone, 0.7)
            sound_play(asset_get("sfx_ell_uspecial_explode"));
            gun_all_cooldown = 40;
            has_airdodge_buffer = has_airdodge;
		}
	break;
	case AT_DSTRONG:
		if (window == 4 and window_timer == 1 and !hitpause){
			gun = 1;
			reticule_frame = 0;
			reticule_state = 0;
			gun_all_cooldown = 40;
			sound_play(sound_get("glucky_gunshot"),false,noone, 0.7)
            sound_play(asset_get("sfx_ell_uspecial_explode"));
            has_airdodge_buffer = has_airdodge;
		}
	break;
	case AT_FAIR:
        switch(window){
            case 1:
            	if (window_timer == 6)
            	{
            		sound_play(sound_get("glucky_gun_rev2"))
            	}
            	break;
        }
	break;
	case AT_DAIR:
        switch(window){
            case 1:
            	if (window_timer == 5)
            	{
            		sound_play(sound_get("glucky_gun_rev1"))
            	}
                if (window_timer == 12 and !hitpause) {
                	sound_play(sound_get("glucky_gunshot"), false,noone,0.6,1.16)
                    sound_play(asset_get("sfx_ell_small_missile_ground"));
                }
        }
    break;
	case AT_NSPECIAL_2:
		switch (window)
		{
			case 1:
			
				if window_timer == 1
				{
					reticule_state = 2;
					reticule_frame = 16;
					gun_all_cooldown = 16;
				}
				
				if window_timer == 10
				{
					reticule_show_steady_aim = true;
					reticule_state = 0;
					reticule_frame = 0;
				}
				
				if (window_timer == 13)
				{
					sound_play(asset_get("sfx_hod_charged_uspecial_hit"),false,noone,1.1);
					sound_play(asset_get("sfx_clairen_dspecial_counter_active"),false,noone,0.8);
				}
				
				if window_timer == 14
				{
					steady_anim = true;
					white_flash_timer = 9;
					var flash = spawn_hit_fx(x+(56*spr_dir),y-58,steadyaimready_vfx)
					flash.depth = depth-3
				}
			break;
			case 2:
                if (shield_pressed) // go back
                {
                    reticule_show_steady_aim = false;
                    steady_anim = false;
                    gun_all_cooldown = 20;
                    window = 6;
                    window_timer = 0;
                }
                
                var spec_pressed = is_special_pressed(DIR_ANY); 
                var gun_pressed = (up_strong_pressed or down_strong_pressed or left_strong_pressed or right_strong_pressed) or spec_pressed;
                
                if (gun_pressed and gun_all_cooldown == 0) // shoot
                {
                    if (ammo > 0)
                    {
                        window = 3;
                        window_timer = 0;
                    }
                    else
                    {
                    	steady_anim = false;
                        set_attack(AT_TAUNT);
                    }
                }
            break;
			case 3:
				// if window_timer == 1
				// {
				// 	sound_play(asset_get("sfx_ori_charged_flame_charge"))
				// }
			
				if (window_timer == 6)
				{
					sound_play(sound_get("glucky_gunshot"))
	            	sound_play(asset_get("sfx_ell_uspecial_explode"));	
	            	sound_play(asset_get("sfx_mol_flare_explode"));
				}
			break;
			case 4:
				if (window_timer == 1)
				{
					//sound_stop(asset_get("sfx_ori_charged_flame_charge"))
					ammo--;
					create_hitbox(AT_NSPECIAL_2, 1, floor(reticule_position[0]),floor(reticule_position[1]));
					gun_all_cooldown = 40;
					follow_cooldown = 30;
					
					var i = spawn_hit_fx(reticule_position[0],reticule_position[1],gun_stance_vfx[2]);
					i.depth = depth - 4
				}
			break;
			case 5:
				if window_timer >= get_window_value(attack,window,AG_WINDOW_LENGTH)-1
				{
					window = 2;
					window_timer = 0;
				}
		}
	break;
    case AT_NSPECIAL:
        switch(window){
            case 1:
                // Equip
                if window_timer == get_window_value(attack, 1, AG_WINDOW_LENGTH){
                	spawn_hit_fx(x,y-(char_height/2),gun_stance_vfx[gun]);
                	gun = 1;
                	has_airdodge_buffer = has_airdodge;
                	reticule_state = 0;
                	gun_all_cooldown = 30;
                }
                break;
        }
    break;
    case AT_FSPECIAL:
    	can_move = (window > 3 and !was_parried);
    	can_fast_fall = false;
    	move_cooldown[AT_FSPECIAL] = 30;
    	
    	if window == 3
    	{
    		if right_down-left_down == -spr_dir
    		{
    			hsp -= 0.6*(spr_dir) - (window_timer/4)
    		}
    	}
    break;
    case AT_DSPECIAL:
    	can_move = false;
    	can_fast_fall = false;
    	switch (window)
    	{
    		case 2:
    			if (window_timer == 1)
    			{
    				scapegoat_obj = instance_create(x+(10*spr_dir),y,"obj_article1");
    				scapegoat_obj.sprite_index = asset_get("empty_sprite");
    				scapegoat_obj.mask_index = sprite_get("scapegoat_mask")
    				scapegoat_obj.spr_dir = spr_dir;
    				scapegoat_obj.is_uspecial_scapegoat = false;
    				spawn_hit_fx(x+(10*spr_dir),y+6,summon_vfx)
    				
    				scapegoat_obj.dspecial_variant = 1 + random_func(2 + ( (x+y) mod floor( (4+player) /3) ),8,true);
    			}    			
    		break;
    	}
    	
    	
    break;
    case AT_USPECIAL:
    can_fast_fall = false;
    	can_move = window > 4
    	can_wall_jump = window > 4
    	switch (window)
    	{
    		case 1:
    			vsp = 0
    			hsp *= 0.9;
    			break;
    		case 3:
    			if (instance_exists(uspecial_proj) and !uspecial_proj.let_go)
		    	{
		    		uspecial_proj.x = lerp(uspecial_proj.x, x+hsp, 0.3);
		    		uspecial_proj.y = lerp(uspecial_proj.y, y+hsp+18, 0.2);
		    	}
    		break;
    		case 4:
    		    if (instance_exists(uspecial_proj) and window_timer < 9 and !uspecial_proj.let_go)
		    	{
		    		uspecial_proj.x = lerp(uspecial_proj.x, x+hsp, 0.2);
		    		uspecial_proj.y = lerp(uspecial_proj.y, y+hsp+20, 0.15);
		    	}
    			if window_timer == 7
    			{
    				sound_play(sound_get("glucky_gunshot"), false, noone, 0.6, 1.1)
                    sound_play(asset_get("sfx_ell_small_missile_ground"));
    				
    				spawn_hit_fx(x,y+30,firework_hfx)
    			}
    	}
    	
    break;
    case AT_TAUNT_2:
    	switch(window){
    		case 1:
    			gun_all_cooldown = 42;
    		break;
    	}
    break;
    case AT_TAUNT:
    can_fast_fall = false;
    	switch(window){
    		case 1:
    			if window_timer == get_window_value(attack, 1, AG_WINDOW_LENGTH){
    				//should_switch_stance = "AWAY";
    				//user_event(1);
    			}
    		break;
    		case 2:
    			gun = 0;
				has_airdodge = has_airdodge_buffer;
				if reticule_state != -1
				{
					reticule_state = 2;
					reticule_frame = 16;
					reticule_show_steady_aim = false;
				}
    			//iasa_script();
                if window_timer == 1{
                    ammo = min(ammo+1, max_ammo)
                    
                    if ammo == max_ammo
                    {
                    	window = 3;
                    	window_timer = 0;
                    }
	            }
    		break;
    	}
    break;
    case AT_EXTRA_2:
    	switch(window){
    		case 1:
    			gun_all_cooldown = 84;
    		break;
    	}
    break;
}

/*if (attack == AT_NSPECIAL){
    if (window == 3){
        if (special_pressed){
            window = 1;
            window_timer = 0;
        }
    }
}

if (attack == AT_FSPECIAL){
    if (window == 2){
        if (special_pressed){
            window = 3;
            window_timer = 0;
            destroy_hitboxes();
        }
    }
    can_fast_fall = false;
}

if (attack == AT_USPECIAL){
    if (window == 1 && window_timer == 1){
        times_through = 0;
    }
    if (window == 2){
        if (window_timer == get_window_value(attack, 2, AG_WINDOW_LENGTH)){
            if (times_through < 10){
                times_through++;
                window_timer = 0;
            }
        }
        if (!joy_pad_idle){
            hsp += lengthdir_x(1, joy_dir);
            vsp += lengthdir_y(1, joy_dir);
        } else {
            hsp *= .6;
            vsp *= .6;
        }
        var fly_dir = point_direction(0,0,hsp,vsp);
        var fly_dist = point_distance(0,0,hsp,vsp);
        var max_speed = 12;
        if (fly_dist > max_speed){
            hsp = lengthdir_x(max_speed, fly_dir);
            vsp = lengthdir_y(max_speed, fly_dir);
        }
        if (special_pressed && times_through > 0){
            window = 4;
            window_timer = 0;
        }
        if (shield_pressed){
            window = 3;
            window_timer = 0;
        }
    }
    if (window > 3 && window < 6 && window_timer == get_window_value(attack, window, AG_WINDOW_LENGTH)){
        window++;
        window_timer = 0;
    }
}

if (attack == AT_DSPECIAL){
    if (window == 2 && !was_parried){
        can_jump = true;
    }
    can_fast_fall = false;
    can_move = false
}
