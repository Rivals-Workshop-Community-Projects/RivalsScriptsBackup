//B - Reversals
if (attack == AT_NSPECIAL || attack == AT_FSPECIAL || attack == AT_DSPECIAL || attack == AT_USPECIAL){
    trigger_b_reverse();
}
if (attack == AT_JAB)
{
        if (my_hitboxID.attack == AT_JAB && my_hitboxID.hbox_num <= 3)
        {
            can_special = true;
            move_cooldown[AT_DSPECIAL] = 19;
        }
}

if (attack == AT_DATTACK) 
{
	can_fast_fall = false;
}

if (attack == AT_DSTRONG)
{
		if (window == 3)
	{
	    if (window_timer == 5)
	    {
	        sound_play(asset_get("sfx_blow_heavy2"));
	    }
	}
}

if (attack == AT_DAIR)
{
		if (window == 4 && window_timer == 0) 
    {
    		destroy_hitboxes(); 
	}	
}

if (attack == AT_NSPECIAL_2) //rock smash
{
    if (window == 2 && window_timer == 1)
    {
        rock = false;
        rockarmor += 1;
    }
    if (window == 2 && window_timer == 1)
    {
        spawn_hit_fx( x + (40 * spr_dir), y - 40, 193);
    }	
		if (window < 3) 
	{
		soft_armor = 7;
	}
}

if (attack == AT_USPECIAL_2) //Rising Comet
{
    if (window == 2 && window_timer > 0)
    {
        create_hitbox(AT_USPECIAL_2, 1, x + (1 * spr_dir), y - 10);
    }
    
    if (window == 3 && window_timer < 10)
    {
        create_hitbox(AT_USPECIAL_2, 1, x + (1 * spr_dir), y - 10);
    }
}

if (attack == AT_DSPECIAL_2) //Seismic smash
{
		if (window == 1 && window_timer == 10) 
	{
        var pillar = instance_create(x + (39 * spr_dir), y, "obj_article2");
        pillar.hsp = spr_dir * 0;
        pillar.spr_dir = spr_dir;
	}
	if (window == 2)
	{
		if (jump_pressed)
	    {
	        charge = 0;
	    }
	    if (shield_pressed)
	    {
	        charge = 0;
	    }
	    if (state == PS_HITSTUN)
	    {
	        charge = 0;
	    }
	    can_jump = true;
	    can_shield = true;
		if (window_timer == get_window_value(attack, 2, AG_WINDOW_LENGTH) and special_down)
		{
		    window_timer = 0;
		}
	}
	if (window == 2 && !special_down)
	{ 
			window = 3;
			window_timer = 0;
	} 	
}

if (attack == AT_FSPECIAL) //Mountain splitter
{
	can_wall_jump = true;
	if (window == 2)
	{
	    	              if (spr_dir == 1) && (left_pressed) {
                spr_dir = -1;
            }
            if (spr_dir == -1) && (right_pressed) {
                spr_dir = 1;
            }
	    if (jump_pressed)
	    {
	        charge = 0;
	    }
	    if (shield_pressed)
	    {
	        charge = 0;
	    }
	    if (state == PS_HITSTUN)
	    {
	        charge = 0;
	    }
	    can_jump = true;
	    can_shield = true;
	}
	if (window == 2)
	{
		charge++;
		var dam = (charge / 10) + 5;
		var speed = (charge) + 10;
		var kb = (charge / 15) + 6;
		var hitstun = (charge / 10) + 10;
		
		if (speed > 60)
		{
		    speed = 60;
		}
		
		if (window_timer == get_window_value(attack, 2, AG_WINDOW_LENGTH) and special_down)
		{
		    window_timer = 0;
		}
		
	}
	if (window == 2 && !special_down or charge == 200)
	{ 
	        set_window_value(AT_FSPECIAL, 4, AG_WINDOW_HSPEED, speed);
	        set_hitbox_value(AT_FSPECIAL, 2, HG_DAMAGE, dam);
	        set_hitbox_value(AT_FSPECIAL, 2, HG_BASE_KNOCKBACK, kb);
	        set_hitbox_value(AT_FSPECIAL, 2, HG_BASE_HITPAUSE, hitstun);
			window = 3;
			window_timer = 0;
			charge = 0;
	
	}    
    if (my_hitboxID.attack == AT_FSPECIAL && my_hitboxID.hbox_num == 1) 
    {
            destroy_hitboxes();        
        	window = 5;
			window_timer = 0;
			set_window_value(AT_FSPECIAL, 5, AG_WINDOW_HSPEED_TYPE, 1);
            set_window_value(AT_FSPECIAL, 5, AG_WINDOW_HSPEED, 0);
	}
	    if (window == 1 && window_timer == 1) 
    {
            set_window_value(AT_FSPECIAL, 5, AG_WINDOW_HSPEED_TYPE, 2);
            set_window_value(AT_FSPECIAL, 5, AG_WINDOW_HSPEED, 4);
            set_hitbox_value(AT_FSPECIAL, 2, HG_DAMAGE, 5);
            set_window_value(AT_FSPECIAL, 4, AG_WINDOW_HSPEED, 30);
	}
		if (window == 3 && window_timer == 1) 
    {
        charge = 0;
	}
}

if (attack == AT_FSPECIAL_2) //Jackhammer
{
		can_wall_jump = true;
    if (window == 2 && window_timer == get_window_value(AT_FSPECIAL_2, 2, AG_WINDOW_LENGTH) && has_hit_player == false) 
    {
        window = 3;
        window_timer = 0;
        
    }
    if (window == 3)
    {
        if (window_timer == get_window_value(AT_FSPECIAL_2, 3, AG_WINDOW_LENGTH))
        {
           set_state(PS_IDLE); 
        }
    }	
	//looping code
    if (window == 5)
    {
        if (window_timer == get_window_value(attack, 5, AG_WINDOW_LENGTH)){
            if (times_through < 3){
                times_through += 1;
                window = 5;
                window_timer = 0;
            }
            if (times_through >= 3){
                window = 6;
                window_timer = 0;
            }
        }
}

if (window == 1 && window_timer == get_window_value(AT_FSPECIAL_2, 1, AG_WINDOW_LENGTH))
{
	times_through = 0;
}
    if (my_hitboxID.attack == AT_FSPECIAL_2 && my_hitboxID.hbox_num == 1) 
    {
            destroy_hitboxes();        
        	window = 4;
			window_timer = 0;
			set_window_value(AT_FSPECIAL_2, 4, AG_WINDOW_HSPEED_TYPE, 1);
            set_window_value(AT_FSPECIAL_2, 4, AG_WINDOW_HSPEED, 0);
	}
	    if (window == 1 && window_timer == 1) 
    {
			set_window_value(AT_FSPECIAL_2, 4, AG_WINDOW_HSPEED_TYPE, 1);
            set_window_value(AT_FSPECIAL_2, 4, AG_WINDOW_HSPEED, 0);
	}	
}

if (attack == AT_USPECIAL) //Desert Typhoon
{
	//looping code
    if (window == 3)
    {
        if (window_timer == get_window_value(attack, 3, AG_WINDOW_LENGTH)){
            if (times_through < 3){
                times_through += 1;
                window = 2;
                window_timer = 0;
            }
            if (times_through >= 3){
                window = 4;
                window_timer = 0;
            }
        }
}

if (window == 1 && window_timer == get_window_value(AT_USPECIAL, 1, AG_WINDOW_LENGTH))
{
	times_through = 0;
}
}

if (attack == AT_DSPECIAL) //Stone Choke
{
	can_fast_fall = false;
    if (window == 2 && window_timer == get_window_value(AT_DSPECIAL, 2, AG_WINDOW_LENGTH) && has_hit_player == false) 
    {
        window = 3;
        window_timer = 0;
        
    }
    if (window == 3)
    {
        if (window_timer == get_window_value(AT_DSPECIAL, 3, AG_WINDOW_LENGTH))
        {
           set_state(PS_IDLE); 
           move_cooldown[AT_DSPECIAL] = 10;
        }
    }
    if (window == 2 && has_hit_player == true && hitpause == false) 
    {
        	window = 4;
			window_timer = 0;
			hit_player_obj.wrap_time = 80;
			hit_player_obj.state = PS_WRAPPED;
			hitplayer = hit_player_obj;
	} 
	
	    if (window == 6 && has_hit_player == true && hitpause == false) 
    {
			hit_player_obj.wrap_time = 50;
			hit_player_obj.state = PS_WRAPPED;
			hitplayer = hit_player_obj;
	} 
	if (window == 4)
	{
	    if (window_timer == 11)
	    {
	        //sound_play(asset_get("sfx_swipe_medium1"));
	    }
	}
	
		if (window == 4)
	{
	    if (window_timer <= 6)
	    {
	    	hit_player_obj.x = x + 20 * spr_dir ;
		    hit_player_obj.y = y;
	    }
	    
			if (window_timer == 15)
	    {
	    	hit_player_obj.x = x + 4 * spr_dir ;
		    hit_player_obj.y = y - 6;
	    }
	    	if (window_timer == 20)
	    {
	    	hit_player_obj.x = x + 5 * spr_dir ;
		    hit_player_obj.y = y - 10;
	    }
	    	if (window_timer == 25)
	    {
	    	hit_player_obj.x = x + 5 * spr_dir ;
		    hit_player_obj.y = y - 14;
	    }
	    	if (window_timer == 30)
	    {
	    	hit_player_obj.x = x + 5 * spr_dir ;
		    hit_player_obj.y = y - 24;
	    }
	}
if (window == 7)
{
		    if (window_timer <= 6)
	    {
	    	hit_player_obj.x = x + 20 * spr_dir ;
		    hit_player_obj.y = y - 24;
	    }
	    
	    if (window_timer == 7)
	    {
	    	hit_player_obj.x = x + 30 * spr_dir ;
		    hit_player_obj.y = y - 18;
	    }
	    
		if (window_timer == 9)
	    {
	    	hit_player_obj.x = x + 40 * spr_dir ;
		    hit_player_obj.y = y;
	    }
}
	
}
