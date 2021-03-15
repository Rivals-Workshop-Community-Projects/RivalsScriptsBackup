// attack_update

//B - Reversals
if (attack == AT_NSPECIAL || attack == AT_FSPECIAL || attack == AT_DSPECIAL || attack == AT_USPECIAL){
    trigger_b_reverse();
}
// no fast fall zone
if (attack == AT_NSPECIAL || attack == AT_USPECIAL || attack == AT_FSPECIAL)
{
    can_fast_fall = false;
}


if (has_rune("I"))
{
	switch(attack)
	{
		case AT_JAB:
		case AT_UTILT:
		case AT_FTILT:
		case AT_DTILT:
			 can_shield = true;
		break;
	}
}


switch (attack)
{
	case AT_BAIR:
		if (window == 2) and (window_timer == 4)
		{
			spawn_hit_fx( x - 82 * spr_dir, y - 34, bair_arrow );
		}
	break;
	case AT_DAIR:
		if (window != 3)
		{
			can_fast_fall = false;
		}
		else
		{
			can_fast_fall = true;
		}
	break;
	case AT_FAIR:
		if (window == 2) and (window_timer == 4)
		{
			spawn_hit_fx( x + 82 * spr_dir, y - 32, fair_arrow );
		}
	break;
	case AT_FTILT:
		if (window == 2) and (window_timer == 4)
		{
			spawn_hit_fx( x + 82 * spr_dir, y - 40, ftilt_arrow );
		}
	break;
	case AT_UAIR:
		var time = get_window_value(AT_UAIR, 3, AG_WINDOW_LENGTH);
		if (window == 3) and (window_timer == 4)
		{
			spawn_hit_fx( x, y - 88, uair_arrow );
		}
	break;
	case AT_DTILT:
		tired_timer = 5;
	break;
	case AT_JAB:
		var time = get_window_value(AT_JAB, 4, AG_WINDOW_LENGTH);
		switch (window)
		{
			case 1:
				last_jab = 1;
			break;
			case 4:
				last_jab = 2;
				if (window_timer == time)
				{
					spr_dir *= -1;
				}
			break;
		}
	break;
	case AT_TAUNT:
	
		switch(window)
		{
			case 1:
				var time = get_window_value(AT_TAUNT, 1, AG_WINDOW_LENGTH);
				if (window_timer == time)
				{
					//sound_play(sound_get("payday"))
					
					var num = 1 + has_rune("F") * 23;
					
					for (var i = 0; i < num; i += 1)
					{
						create_hitbox( AT_TAUNT, 1, x, y - 100 )
						
						var ang_rand = random_func(i % 24,80,true) - 40 + 90;
							
						set_hitbox_value(AT_TAUNT, 1, HG_PROJECTILE_HSPEED, lengthdir_x(5,ang_rand));
						set_hitbox_value(AT_TAUNT, 1, HG_PROJECTILE_VSPEED, lengthdir_y(5,ang_rand))
					}
				}
			break;
			case 2:
				var time = get_window_value(AT_TAUNT, 2, AG_WINDOW_LENGTH);
				if (window_timer == time)
				{
					var num = 0 + has_rune("F") * 23;
				
					for (var i = 0; i < num; i += 1)
					{
						create_hitbox( AT_TAUNT, 1, x, y - 100 )
						
						var ang_rand = random_func(i % 24,80,true) - 40 + 90;
							
						set_hitbox_value(AT_TAUNT, 1, HG_PROJECTILE_HSPEED, lengthdir_x(5,ang_rand));
						set_hitbox_value(AT_TAUNT, 1, HG_PROJECTILE_VSPEED, lengthdir_y(5,ang_rand))
					}
				}
			break;
			case 3:
				var time = get_window_value(AT_TAUNT, 3, AG_WINDOW_LENGTH);
				if (window_timer == time) and (taunt_down)
				{
					window_timer = 0;
					var ang_rand = random_func(7,80,true) - 40 + 90;
					
					set_hitbox_value(AT_TAUNT, 1, HG_PROJECTILE_HSPEED, lengthdir_x(5,ang_rand));
					set_hitbox_value(AT_TAUNT, 1, HG_PROJECTILE_VSPEED, lengthdir_y(5,ang_rand));
					
					
					
					// extra rune F
					var num = 0 + has_rune("F") * 23;
						
						for (var i = 0; i < num; i += 1)
						{
							create_hitbox( AT_TAUNT, 1, x, y - 100 )
							
							var ang_rand = random_func(i % 24,80,true) - 40 + 90;
								
							set_hitbox_value(AT_TAUNT, 1, HG_PROJECTILE_HSPEED, lengthdir_x(5,ang_rand));
							set_hitbox_value(AT_TAUNT, 1, HG_PROJECTILE_VSPEED, lengthdir_y(5,ang_rand))
						}
				}
			break;
		}
	
	
	/*
		var time = get_window_value(AT_TAUNT, 2, AG_WINDOW_LENGTH);
		if (window == 2) and (window_timer == time)
		{
				var num = 0 + has_rune("F") * 23;
				
				for (var i = 0; i < num; i += 1)
				{
					create_hitbox( AT_TAUNT, 1, x, y - 100 )
					
					var ang_rand = random_func(i % 24,80,true) - 40 + 90;
						
					set_hitbox_value(AT_TAUNT, 1, HG_PROJECTILE_HSPEED, lengthdir_x(5,ang_rand));
					set_hitbox_value(AT_TAUNT, 1, HG_PROJECTILE_VSPEED, lengthdir_y(5,ang_rand))
				}
		}
	*/
	/*
		var time = get_window_value(AT_TAUNT, 3, AG_WINDOW_LENGTH);
		if (window == 3) and (window_timer == time) and (taunt_down)
		{
			window_timer = 0;
			var ang_rand = random_func(7,80,true) - 40 + 90;
			
			set_hitbox_value(AT_TAUNT, 1, HG_PROJECTILE_HSPEED, lengthdir_x(5,ang_rand));
			set_hitbox_value(AT_TAUNT, 1, HG_PROJECTILE_VSPEED, lengthdir_y(5,ang_rand));
			
			
			
			// extra rune F
			var num = 0 + has_rune("F") * 23;
				
				for (var i = 0; i < num; i += 1)
				{
					create_hitbox( AT_TAUNT, 1, x, y - 100 )
					
					var ang_rand = random_func(i % 24,80,true) - 40 + 90;
						
					set_hitbox_value(AT_TAUNT, 1, HG_PROJECTILE_HSPEED, lengthdir_x(5,ang_rand));
					set_hitbox_value(AT_TAUNT, 1, HG_PROJECTILE_VSPEED, lengthdir_y(5,ang_rand))
				}
			
			
		}
		*/
		/*
		if (window == 1) 
		{
			var time = get_window_value(AT_TAUNT, 1, AG_WINDOW_LENGTH);
			if (window_timer == time)
			{
				//sound_play(sound_get("payday"))
				
				var num = 1 + has_rune("F") * 23;
				
				for (var i = 0; i < num; i += 1)
				{
					create_hitbox( AT_TAUNT, 1, x, y - 100 )
					
					var ang_rand = random_func(i % 24,80,true) - 40 + 90;
						
					set_hitbox_value(AT_TAUNT, 1, HG_PROJECTILE_HSPEED, lengthdir_x(5,ang_rand));
					set_hitbox_value(AT_TAUNT, 1, HG_PROJECTILE_VSPEED, lengthdir_y(5,ang_rand))
				}
			}
		}
	*/
	break;
	case AT_USTRONG:
		switch(window)
		{
			case 1:
				var has_switched = false;
				if (shield_pressed)
				{
					picture_portrait = !picture_portrait;
					clear_button_buffer(PC_SHIELD_PRESSED);
					var has_switched = true;
				}
				
				if (picture_portrait)
				{
					if (has_switched)
					{
						sound_play(sound_get("cam_switch2"))
						sound_stop(sound_get("cam_switch1"))
					}
					set_hitbox_value(AT_USTRONG, 1, HG_WIDTH, picture_width);
					set_hitbox_value(AT_USTRONG, 1, HG_HEIGHT, picture_height);
				}
				else
				{
					if (has_switched)
					{
						sound_stop(sound_get("cam_switch2"))
						sound_play(sound_get("cam_switch1"))
					}
					set_hitbox_value(AT_USTRONG, 1, HG_WIDTH, picture_height);
					set_hitbox_value(AT_USTRONG, 1, HG_HEIGHT, picture_width);
				}
				
			case 2:
			case 3:
				if (has_rune("C")) and ((window == 3) or (window == 2))
				{
					invincible = true;
		    		invince_time = 12;
				}
				hud_offset = floor(lerp(hud_offset, 230, 0.3))
			break;
			case 4:
			
			break;
		}
        
        if (window == 2) and (window_timer == 2)
        {
        	sound_stop(sound_get("photo_charge"))
        	picture_draw = 4;
        }
        
    break;
    case AT_USPECIAL_2:
        can_jump = true;
        can_attack = true;
        //can_special = true;
        can_shield = true;
    break;
    case AT_USPECIAL:
        switch(window)
        {
            case 1:
                yy_x = x 
                yy_y = y - 100;
                
                var failsafe = 60
                var size = 6
                while (collision_circle(yy_x ,yy_y,size,asset_get("par_block"),false,true))
                {
                    if (failsafe > 0)
                    {
                        failsafe -= 1;
                    }
                    else
                    {
                        size = 0;
                    }
                    
                    yy_x += lengthdir_x(2,find_angle(yy_x, yy_y, x,y))
                    yy_y += lengthdir_y(2,find_angle(yy_x, yy_y, x,y))
                }
                
                if (failsafe == 0)
                {
                    set_state(PS_IDLE_AIR)
                }
                 
                clear_button_buffer(PC_SPECIAL_PRESSED);
                 
                uspecial_air = free;
                
            break;
            case 4:
                if (!free) and (has_hit_player)
                {
                     can_jump = true;
                    can_attack = true;
                    //can_special = true;
                    can_shield = true;
                    can_ustrong = true;
                }
                
                if (free)
                {
                    set_attack_value(AT_USPECIAL, AG_CATEGORY, 1)
                }
                else
                {
                    set_attack_value(AT_USPECIAL, AG_CATEGORY, 2)
                }
            break;
            case 5:
                can_wall_jump = true;
                
                if (free)
                {
                    set_window_value(AT_USPECIAL, 5, AG_WINDOW_TYPE, 7);
                }
                else
                {
                    set_window_value(AT_USPECIAL, 5, AG_WINDOW_TYPE, 0);
                }
                
                if (!free) and (has_hit)
                {
                     can_jump = true;
                    can_attack = true;
                    //can_special = true;
                    can_shield = true;
                    can_ustrong = true;
                }
            break;
        }
        if (window >= 2) and (window <= 3)
        { 
            /*
            if (uspecial_air)
            {
                set_attack_value(AT_USPECIAL, AG_SPRITE, sprite_get("uspecial_air"));
            }
            else
            {
                set_attack_value(AT_USPECIAL, AG_SPRITE, sprite_get("uspecial_ground"));
            }
            */
            /*
            if (!got_uspe_destroyed)
            {
	            with pHitBox {
	                if (player_id != other){
	                	if( collision_circle(other.yy_x,other.yy_y,26,self,false,false)){
	                		
	    	         		other.got_uspe_destroyed = true;
	    	         		
	    	         		player_id.hitpause = true;
	    	         		player_id.hitstop_full =  10 //max(round(hitpause), 0);
							player_id.hitstop = player_id.hitstop_full;
	                        player_id.old_hsp = player_id.hsp;
	                        player_id.old_vsp = player_id.vsp;
	                        
	                        spawn_hit_fx(other.yy_x, other.yy_y, hit_effect);
                            sound_play(sound_effect);
	                        
	                        other.hitpause = true;
	                        other.hitstop_full = 30 //max(round(hitpause), 0);
							other.hitstop = other.hitstop_full;
	                        other.old_hsp = other.hsp;
	                        other.old_vsp = other.vsp;
	                        
	                        with (other)
	                        {
	                        	sound_stop(sound_get("teleportation_forced"))
	                        	sound_play(sound_get("teleportation_forced"))
	                        }
	                	}
		            }
		        }
            }
            */
            if (got_uspe_destroyed)
            {
            	if (hitstop == 0)
            	{
	            	spawn_hit_fx( yy_x,yy_y, yinyang_effect);
	            	special_down = false; // :)
	            	set_num_hitboxes(AT_USPECIAL, 0);
            	}
            }
            
            
            var spd = 4 + has_rune("G") * 3;
            var yy_xacc = (right_down - left_down) *spd;
            
            if (!hitpause)
            {
	            if (yy_xacc != 0)
	            {
	            	var sign_mem = sign(yy_xacc);
		            while (collision_circle(yy_x + yy_xacc ,yy_y,6,asset_get("par_block"),false,true))
		            {
		               yy_xacc -= 1 * sign_mem;
		            }
	            }
	            
	            yy_x += yy_xacc;
	             
	             
	            var yy_yacc = (down_down - up_down) * spd;
	            if (yy_yacc != 0)
	            {
	            	var sign_mem = sign(yy_yacc);
		            while (collision_circle(yy_x ,yy_y + yy_yacc,6,asset_get("par_block"),false,true))
		            {
		               yy_yacc -= 1 * sign_mem;
		            }
	            }
	            
	            yy_y += yy_yacc;
            }
            
            
            if (!special_down)
            {
            	sound_stop(sound_get( "hammer_charge" ));
            	
            	
                sound_play(sound_get("teleportation"))
            	
                window = 4
                window_timer = 0
                
                spawn_hit_fx( x, y - 36, leave_effect );
                x = yy_x;
                y = yy_y + 38;
                
                
                 clear_button_buffer(PC_SPECIAL_PRESSED);
            }
        }
    
    break;
    case AT_EXTRA_1:
        can_jump = true;
        can_attack = true;
        can_special = true;
        can_shield = true;
    break;
    case AT_FSTRONG:
        var time = get_window_value(AT_FSTRONG, 2, AG_WINDOW_LENGTH);
        if (window == 2) and (window_timer == time)
        {
            sound_stop(sound_get( "hammer_charge" ));
            shake_camera( 3 + floor(strong_charge / 10) , 5 )
            
            if (has_rune("C"))
			{
				invincible = true;
		    	invince_time = 14;
			}
        }
        
    break;
    case AT_NSPECIAL:
        
        clear_button_buffer(PC_SPECIAL_PRESSED);
        
        var time = get_window_value(AT_NSPECIAL, 1, AG_WINDOW_LENGTH);
        if (window == 1)
        {
            if (free)
            {
                set_attack_value(AT_NSPECIAL, AG_CATEGORY, 1);
            }
            else
            {
                set_attack_value(AT_NSPECIAL, AG_CATEGORY, 2);
            }
            
            if (window_timer == time)
            {
                spawn_hit_fx( x + 40 * spr_dir, y - 80, counter_star );
            }
            
        }
        
        if (free)
        {
            set_window_value(AT_NSPECIAL, 2, AG_WINDOW_HSPEED_TYPE, 1);
            set_window_value(AT_NSPECIAL, 2, AG_WINDOW_HSPEED, 0); 
            
            set_window_value(AT_NSPECIAL, 3, AG_WINDOW_HAS_CUSTOM_FRICTION, 1);
        }
        else
        {
            set_window_value(AT_NSPECIAL, 2, AG_WINDOW_HSPEED_TYPE, 2);
            set_window_value(AT_NSPECIAL, 2, AG_WINDOW_HSPEED, 3); 
            
            set_window_value(AT_NSPECIAL, 3, AG_WINDOW_HAS_CUSTOM_FRICTION, 0);
        }
    
    var counter_sfx = sound_get("counter");
    if (window == 2)
    {
        if (!counter)
        {
            with (pHitBox)
            {
                if (player_id != other) or (attack == AT_DSPECIAL)
                {
                    if (place_meeting( x,y,other))
                    {
                        other.counter = true;
                        other.counter_wait = other.counter_wait_ref;
                        other.counter_opp = player_id;
                        other.counter_type = type
                        
                        sound_play(counter_sfx)
                    }
                }
            }
        }
    }
    if (counter) 
    {
        if (counter_wait > 0)
        {
            
            hitpause = true;
            hitstop = 2;
            hitstop_full = 2;
            
            
            if (counter_type == 1)
            {
                counter_opp.hitpause = true;
                counter_opp.hitstop_full = 5 //max(round(hitpause), 0);
                counter_opp.hitstop = counter_opp.hitstop_full;
                counter_opp.old_hsp = counter_opp.hsp;
                counter_opp.old_vsp = counter_opp.vsp;
            }
            
            if (counter_wait = counter_wait_ref)
            {
                 sound_stop( sound_get("tanuki_hold" ))
            }
            
            if (counter_wait > 0 )
            {
                counter_wait -= 1;
            }
        }
        else
        {
            hitpause = false;
            hitstop = 0;
            hitstop_full = 0;
            
            sound_play(sound_get("tanuki_explode"))
            
            var fx = spawn_hit_fx( x, y - 36, tanuki_smoke );
            fx.depth = depth - 1;
            
            if (counter_type == 1)
            {
                with(counter_opp)
                {
                    //set_state(PS_HITSTUN);
                }
            }
            
            set_attack(AT_EXTRA_1)
            window = 0;
            window_timer = 0;
            hurtboxID.sprite_index = sprite_get("nothing")
            image_index = 0;
        
            create_hitbox( AT_NSPECIAL, 1, x, y - 36)
        
            counter = false;
            counter_opp = noone;
            
            instance_create(x ,y - 30,"obj_article1")
        }
    }
    
    break;
    case AT_DSPECIAL:
    	var time = get_window_value(AT_DSPECIAL, 1, AG_WINDOW_LENGTH);
    	switch(window)
    	{
    		case 1:
    			switch(window_timer)
    			{
    				case 1:
    					set_attack_value(AT_DSPECIAL, AG_CATEGORY, 1);
    				break;
    				case 11:
    					instance_create(x ,y + 10,"obj_article2")
    					sound_play(sound_get("charge_bomb"))
    				break;
    			}
    		break;
    		case 3:
    			can_special = true;
    			can_shield = true;
    			can_jump = true;
                can_attack = true;
    		
    		break;
    	}
    break;
    case AT_FSPECIAL:
    	switch(window)
    	{
    		case 2:
	    		if (free)
	    		{
	    			set_attack_value(AT_FSPECIAL, AG_CATEGORY, 1);
	    		}
	    		
	    		var x_pos = x + 34 * spr_dir;
	    		var y_pos = y - 36;
	    		var sfx = sound_get("switch");
	    		
	    		var need_fx = false;
	    		
	    		with (pHitBox)
		         {
		            if ((player != other.player) and (!was_parried)) and (type == 2) and (collision_rectangle(x_pos - 40 ,y_pos - 30,x_pos + 40, y_pos + 30,self,false,false))
		            {
		                hsp *= -1;
		                spr_dir *= -1;
		                
		                can_hit_self = true;
						can_hit[other.player] = false;
                        was_parried = true;
                        hitbox_timer = 0;
		                
		                
		                sound_play(sfx);
		              //  player = other.player
		                
		                need_fx = true;
		            }
		         }
		         
		         if (need_fx)
		         {
		        	spawn_hit_fx( x_pos, y_pos, 302 );
		         }
    		break;
    	}
    	if (has_hit) and (!hitpause)
    	{
    		can_jump = true;
    		can_shield = true;
    	}
    break;
    case AT_DSTRONG:
		var time1 = get_window_value(AT_DSTRONG, 1, AG_WINDOW_LENGTH);
    	var time2 = get_window_value(AT_DSTRONG, 2, AG_WINDOW_LENGTH);
	    switch(window)
	    {
	    	case 2:
	    		//if (window_timer != time2)
	    		{
		    		sound_stop(sound_get("lantern_charge"))
		    		invincible = true;
		    		invince_time = 8 + has_rune("C") * 10;
	    		}
	    	break;
	    }
    
    break
    
}


#define find_angle(x, y, x_to,y_to)


xd = argument2 - argument0;
yd = argument3 - argument1;

if (sign(xd) == sign(yd))
{
	if (yd != 0)
	{
		var angle = darctan(xd / yd) - 90 + (yd < 0) * 180;
	}
	else
	{
		var angle = 0;
	}
	
}
else
{
	if (yd != 0)
	{
		
		var angle = darctan(xd / yd) + 270 + 180 * (yd < 0)
	}
	else
	{
		var angle = 180 * (xd < 0);
	}
	
}
return angle;