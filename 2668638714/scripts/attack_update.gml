if attack == AT_DSPECIAL or attack == AT_USPECIAL or attack == AT_FSPECIAL or attack == AT_NSPECIAL or attack == AT_NSPECIAL_2
{
	trigger_b_reverse();
}

switch (attack)
{
    case AT_DSPECIAL:
    can_jump = true;
    	if window == 1 and window_timer == 1
    	{
	    	dspecial_used = true;
    	}
        can_move = false;
		// var hdir, vdir;
  //  	hdir = (left_down ? -1 : right_down)
  //  	vdir = (up_down ? -1 : down_down)
    
  //  	hsp = lerp(hsp, 4*hdir + hsp, .014); 
  //  	vsp = lerp(vsp, 4*vdir + vsp, .014); 
  //  	hsp = clamp(hsp + (3*hdir/8), -6, 6);
  //  	vsp = clamp(vsp + (3*vdir/8), -6, 6);
	if window == 1
	{
		hsp = lerp(hsp,0,0.1)
		vsp = lerp(vsp,0,0.1) 
	}
	
	if window == 2 and window_timer < 4
	{
        if (instance_exists(voltorb_obj) and voltorb_obj.state != PS_DEAD and voltorb_obj != PS_ATTACK_GROUND)
        {
            var dir = point_direction(voltorb_obj.x,voltorb_obj.y,x,y-(char_height/2))
            var dist = distance_to_object(voltorb_obj)/165;
            
            var maxsp = 10;
            var closeboost = (4*(window_timer < 2));
            voltorb_obj.hsp = clamp(voltorb_obj.hsp + lengthdir_x(window_timer*dist + closeboost,dir), -maxsp, maxsp);
            voltorb_obj.vsp = clamp(voltorb_obj.vsp + lengthdir_y(window_timer*dist + closeboost,dir), -maxsp, maxsp);
            
            hsp = clamp(hsp + lengthdir_x(window_timer*dist + closeboost,dir+180), -maxsp, maxsp);
            vsp = clamp(vsp + lengthdir_y(window_timer*dist + closeboost,dir+180), -maxsp, maxsp);
        }
        else
        {
        	hsp *= 0.8;
			vsp *= 0.8;
        }
	}
        
    break;
    case AT_DSTRONG:
    can_move = false;
    
    if window < 3 and abs(right_down - left_down)
    {
        x+=(right_down-left_down)
    }
        switch window
        {
            case 1:
                if (window_timer == get_window_value(attack,window, AG_WINDOW_LENGTH)-1)
                {
                    vsp = -8
                }
            break;
            case 2:
                vsp *= 0.86
                hsp *= 0.95;
            break;
            case 3:
            
                if (window_timer == get_window_value(attack,window, AG_WINDOW_LENGTH)-1)
                {
                    vsp = 10;
                }
                if window_timer == 3 and !hitpause
                {
                	sound_play(asset_get("sfx_ori_stomp_spin"));
                }
            break;
            case 4:
                if !free
                {
                    window = 5;
                    window_timer = 0;
                }
                
                dstrong_forgiveness++;
                
                if dstrong_forgiveness >= dstrong_forgiveness_threshold and free
                {
                	can_jump = true;
                	can_wall_jump = true;
                }
                
                if (window_timer >= get_window_value(attack,window, AG_WINDOW_LENGTH)-1)
                {
                    window_timer = 0;
                }
            break;
            case 5:
                if window_timer == 1 and !hitpause
                {
                	if strong_powered_up sound_play(sound_get("boom"));
                	sound_play(asset_get("sfx_abyss_explosion_big"),false,noone,0.8,1.1);
                }
            break;
        }
    break;
    case AT_FSTRONG:
        if window == 2
        {
            if window_timer == 1 sound_play(asset_get("sfx_absa_cloud_crackle"));
        }
    break;
    case AT_USTRONG:
        if window == 2 and window_timer == 3
        {
            sound_play(asset_get("sfx_clairen_dspecial_counter_active"));
        }
        if window == 2 and window_timer == 12
        {
            sound_play(asset_get("sfx_absa_uair"),false,noone,.8);
        }
    
        if ((window != 1 and !strong_powered_up) or strong_powered_up)
        {
            hud_offset = round(lerp(hud_offset,strong_powered_up ? 1400 : 500, 0.1))
        }
    break;
        case AT_UTILT:
    can_move = false;
    if (window < 4) hud_offset = round(lerp(hud_offset, 280, 0.1))
        switch window
        {
            case 1:
                utilt_rekka = false;
            break;
            case 2:
            case 3:
                if (attack_pressed and (up_stick_down or up_down) and !was_parried) utilt_rekka = true; 
                
                if (window == 3)
                {
                    if utilt_rekka and window_timer > 2
                    {
                        set_attack_value(AT_UTILT, AG_NUM_WINDOWS, 6);
                        window = 4;
                        window_timer = 0;
                    }
                    
                    if window_timer >= (get_window_value(attack,window,AG_WINDOW_LENGTH)*(1 + (0.5*!has_hit)))-1
                    {
                        set_state(was_parried ? PS_PRATLAND : PS_IDLE);
                    }
                }
            break;
            case 4:
                if window_timer == 2
                {
                    sound_play(asset_get("sfx_absa_whip"));
                }
            break;
        }
    break;
    case AT_NSPECIAL_2:
        can_jump = has_hit;
        
        if window == 1 and window_timer == 1 {
		    if !(voltorb_obj.state == PS_ATTACK_GROUND or voltorb_obj.state == PS_DASH or voltorb_obj.state == PS_PRATFALL or voltorb_obj.state == PS_DEAD) and (voltorb_obj.inactive_timer == 0)
		    {
		        voltorb_obj.state = PS_DASH;
		        voltorb_obj.state_timer = 0;
		        voltorb_obj.lock_state = true;
		    }        	
        }
    break;
    case AT_DAIR:
        if window == 3
        {
            if window_timer == 1 and !instance_exists(dair_hitbox) dair_hitbox = create_hitbox(attack, 2,x,y)
            
            if !((down_strong_pressed && strong_down) or attack_down)
            {
                window = 4;
                window_timer = 0;
                destroy_hitboxes();
                instance_destroy(dair_hitbox);
            }
            
            if window_timer >= get_window_value(attack, window, AG_WINDOW_LENGTH) -1 and ((down_strong_pressed && strong_down) or attack_down)
            {
                window_timer = 0;
            }
        }
        
        if window == 4 and window_timer >= (get_window_value(attack, window, AG_WINDOW_LENGTH))*(1 + (.5*!has_hit) ) - 1
        {
            set_state(PS_IDLE_AIR);
        }
        
        if !free and window < 5
        {
            if window < 2
            {
                set_state(PS_LANDING_LAG);
            }
            else
            {
                destroy_hitboxes();
                instance_destroy(dair_hitbox);
                window = 5
                window_timer = 0;
            }
        }
        
        if window == 4 && window_timer == 1{
           sound_play(asset_get("sfx_ori_dspecial_bash_miss"),false,noone,.6) 
            
        } 
    break;
    case AT_UAIR:
        if (window == 2)
        {
            hud_offset = round(lerp(hud_offset,160,0.2))
            if window_timer == 4 and !hitpause sound_play(asset_get("sfx_ori_uptilt_single"))
            if window_timer == 7 and !hitpause 
            {
            	vsp -= 3
            	sound_play(asset_get("sfx_ori_spirit_flame_1"))
            }
        }
    break;
    case AT_USPECIAL:
        can_move = false;
        can_wall_jump = true;
        if window == 1 and window_timer == 12
        {
            sound_play(asset_get("sfx_absa_new_whip2"));
            sound_play(asset_get("sfx_ori_ustrong_launch"));
        }
        if window == 4 and window_timer == 3
        {
            sound_play(asset_get("sfx_clairen_dspecial_counter_active"));
        }
    break;
    case AT_FSPECIAL:
        
        can_move = false;
        can_wall_jump = true;
    
    break;
    
    case AT_DATTACK:
        if window == 1 and window_timer == 4
        {
            sound_play(asset_get("sfx_shovel_swing_med2"));
        }
    break;
    case AT_FTILT:
        switch (window)
        {
            case 2:
                if (window_timer == 1)
                {
                    sound_play(asset_get("sfx_ori_uptilt_single"));
                }
                if (window_timer == 3)
                {
                    sound_play(asset_get("sfx_ori_uptilt_single"));
                }
                if (window_timer == 5)
                {
                    sound_play(asset_get("sfx_ori_uptilt_single"));
                }
            break;
        }
    break;
    
    case AT_DTILT:
        switch (window)
        {
            case 1:
                if (window_timer == 2)
                {
                    sound_play(asset_get("sfx_kragg_spike"));
                }
            break;
        }
    break;
    case AT_NSPECIAL:
        switch (window)
        {
            case 1:
                if (window_timer == 9)
                {
                    sound_play(asset_get("sfx_absa_new_whip1"));
                }
            break;
            case 2:
            if (window_timer == 1 and !hitpause)
            {
                voltorb_obj = instance_create(x+(20*spr_dir),y-26,"obj_article1");
                voltorb_obj.hsp = (8*spr_dir)+hsp;
            }
            break;
        }
    break;
    
    case AT_FAIR:
        switch (window)
        {
            case 1:
                if (window_timer == 8)
                {
                    sound_play(asset_get("sfx_absa_new_whip2"));
                }
            break;
        }
    break;
    case AT_BAIR:
    var correct_window;
    correct_window = window == 2 and window_timer mod 3 == 0 and window_timer != 0;
    
    if (correct_window and !hitpause)
    {
        var hitbox;
        hitbox = 2 + (window_timer > 6);
        
        create_hitbox(attack, hitbox, x, y)
    }
    break;
    case AT_TAUNT:
        if window == 1 and window_timer == 3
        {
            sound_play(sound_get("cry"),false,noone,.7) 
        }
        if window == 3 and window_timer == 14
        {
            sound_play(asset_get("sfx_gus_jump"));
        }
        if window == 6 and window_timer == 2
        {
            sound_play(asset_get("sfx_swipe_weak2"));
        }
    break;
    case AT_TAUNT_2:
    
        if window == 3 and window_timer == 1
        {
            sound_play(asset_get("sfx_forsburn_reappear_hit"),false,noone,.5);
            sound_play(asset_get("sfx_bird_sidespecial_start"),false,noone,.5);
        }
    break;
}