
//B - Reversals
if (attack == AT_NSPECIAL || attack == AT_FSPECIAL || attack == AT_USPECIAL && attack != AT_USPECIAL_GROUND)
{
    trigger_b_reverse();
}

if (attack == AT_USTRONG)
{
	if window <= 2 || (window == 3 && window_timer <= 15)
	{
		hud_offset = 20;
	}
	
	if window == 2
	{
		if window_timer >= 25 && (strong_down && strong_charge <= 59)
		{
			window_timer = 15;
		}
		else 
		{
			if strong_charge == 60
			{
				window++;
				window_timer = -1;
			}
		}
		if strong_charge <= 59 && strong_down
		{
			strong_flashing = (floor(get_gameplay_time()/8) % 2) == 0;
			strong_charge++;
		}
		
	}
	
	if (window == 3 && window_timer <= 10) || window == 2
	{
		can_move = true;
		if left_down && !right_down
		{
			if window == 2
			{
				hsp = -0.6;
			}
			else
			{
				hsp = -0.3
			}
			
			if window == 2 && window_timer == 1
			{
				spr_dir = -1;
			}
		}
		
		if !left_down && right_down
		{
			if window == 2
			{
				hsp = 0.6;
			}
			else
			{
				hsp = 0.3
			}
			
			if window == 2 && window_timer <= 1
			{
				spr_dir =	1;
			}
		}
	}
	else
	{
		can_move = false;
	}
	
	if window == 4
	{
		move_cooldown[AT_USTRONG] = 36;
	}
}

//dstrong offset
if (attack == AT_DSTRONG)
{
	if (window <= 4) && window >= 3 || (window == 5 && window_timer <= 5)
	hud_offset = 72;
	
	if window == 2 && window_timer == 3 && !hitpause
	{
		sound_play(sound_get("stronghammer"));
	}
	
	if window <= 2 && window_timer <= 16
	{
		if pressButton <= 4
		{
			pressButton+=0.5;	
		}
	}
	
	if window >= 2 && window <= 5
	{
		if pressButton <= 11
		{
			pressButton+=0.5;	
		}
	}
	
	if window == 2 && window_timer >= 16
	{
		if (down_strong_pressed)
		{
			dstrong_pressed = true;
		}
		
		if window_timer >= 26 && dstrong_pressed == true
		{
			window_timer = 0;
			window = 3;
			spawn_hit_fx( x, y+16, great);
			sound_play(sound_get("successfulhit"));
		}
		else
			if window_timer >= 28
		{
			window = 5;
			window_timer = 7;
		}
	}

	if window == 3 && window_timer >= 23
	{
		window_timer = 0;
		window = 4;
	}
	
	if window == 4 && window_timer >= 11
	{
		window = 5;
		window_timer = 0;
	}
	
	if window == 5 && window_timer >= 13
	{
		window = 6;
		window_timer = 0;	
	}
}

if (attack == AT_TAUNT) 
{
	switch (window)
	{
		case 1:
		{
			hud_offset += 15;
		}break;
		case 2:
		{
			if (window_timer <= 18)
			{
			hud_offset = 55;
			}
			if (window_timer == 18)
			{
			hud_offset = 50;
			}
		}break;
	}
	if ( !was_parried && window >= 4 && !hitpause && (taunt_pressed || up_down || down_down || left_down || right_down || jump_down || jump_pressed || attack_down || up_strong_down || shield_down || down_strong_down || left_strong_down || right_strong_down || down_strong_down))
		{ 
			set_state(PS_IDLE);
    	}
}

//ftilt sound and offset
if (attack == AT_FTILT)
{
    hud_offset = 40;
    if (window == 1 && !hitpause && !hitpause && window_timer == 8)
    sound_play(sound_get("hammer"));
    if (window == 1) 
    {
        confettiBurst = true;    
    }
    if ( window == 1 && window_timer == 8 && confettiBurst == true ) 
    {
        for(var i=0; i<5; i++)
        {
            var c = instance_create(x+28*spr_dir, y, "obj_article3");
            c.sprite_index = sprite_get("confetti");
            var rand = (x+y+(i*50)) mod 200;
            var picked = random_func_2((rand+i)%200,array_length_1d(confettiColors),true);
            c.image_index = random_func_2(floor(rand/2),c.image_number-1,true);
            c.image_angle = random_func(i+14, 360, false);
            c.myColor = confettiColors[picked];
            c.spr_dir = spr_dir;
            c.confettiTimer = 50 + random_func(i+18, 20, true);
            c.vsp = -7 + random_func(i+20, 6, false)*-1;
            c.hsp = 5*spr_dir + random_func(i, 4, false)-2;
            c.gravity_speed = 0.5;
            c.PMO_articleType = 1;
            confettiBurst = false;
        }
    }
}

//bair sound
if (attack == AT_BAIR)
{
    hud_offset = 32;
}

if (attack == AT_FAIR)
{
	switch (window)
	{
		case 1:
		{
			hud_offset += 10;
			switch (window_timer)
			{
				case 1:
				{
				if !hitpause 
				{
					sound_play(sound_get("oliviamoving"));
				}
				}break;
				case 3:
				{
					if !hitpause
					{
						sound_play(sound_get("oliviasing"))
					}
				}
			}
		}break;
		case 2:
		{
			
			if (window_timer <= 18)
			{
			hud_offset = 25;
			}
			if (window_timer == 18)
			{
			hud_offset = 20;
			}
			
			if fairStall {
				reset_window_value(AT_FAIR, 2, AG_WINDOW_CUSTOM_GRAVITY);
			}
			else if !fairStall {
				set_window_value(AT_FAIR, 2, AG_WINDOW_CUSTOM_GRAVITY, .50);
			}
		}break;
	}
}

//jab
if (attack == AT_JAB)
{ 
	if (window == 1) 
	{
	    confettiBurst = true;    
	}
	
	if ((window == 5 && window_timer >= 14) || (window == 6 && window_timer <= 2))
	{ 
		if (attack_pressed && (!up_pressed || !down_pressed || !left_pressed || !right_pressed || !up_down || !down_down || !left_down || !right_down))
		{ 
			window = 7;
    		window_timer = 0;
    	}
	}
	
	if (window == 7 && window_timer == 10 && !hitpause)
	{ 
		hsp = 6*spr_dir
	}
	
	if (window == 4 && window_timer >= 3) 
	{
	  can_jump = true;
	}
	
	if (window == 7 && window_timer <= 11) 
	{
	has_hit = false;
	}
	
  if ( window == 7 && window_timer == 12 && has_hit && confettiBurst == true ) {
        for(var i=0; i<5; i++)
        {
            var c = instance_create(x+28*spr_dir, y, "obj_article3");
            c.sprite_index = sprite_get("confetti");
            var rand = (x+y+(i*50)) mod 200;
            var picked = random_func_2((rand+i)%200,array_length_1d(confettiColors),true);
            c.image_index = random_func_2(floor(rand/2),c.image_number-1,true);
            c.image_angle = random_func(i+14, 360, false);
            c.myColor = confettiColors[picked];
            c.spr_dir = spr_dir;
            c.confettiTimer = 50 + random_func(i+18, 20, true);
            c.vsp = -7 + random_func(i+20, 6, false)*-1;
            c.hsp = 5*spr_dir + random_func(i, 4, false)-2;
            c.gravity_speed = 0.5;
            c.PMO_articleType = 1;
            confettiBurst = false;
        }
    }
}

//dair successful
if (attack == AT_DAIR && has_hit &&(window == 4 || window == 3))
{ 
	window = 5;
	window_timer = 0;
	super_armor = true;
	destroy_hitboxes();
	hsp = 0;
	sound_play(sound_get("successfulhit"));
	
	var coin1 = instance_create(x, y, "obj_article2");
	coin1.sprite_index = sprite_get("coin");
	coin1.state = 2;
	coin1.player = player;
	coin1.hsp = 4*spr_dir + random_func( 0, 3, false )
	coin1.coinvsp = -6 + random_func( -4, 1, false )
	coin1.cointimer = 26 + random_func( 0, 4, true )
	
	var coin2 = instance_create(x, y, "obj_article2");
	coin2.sprite_index = sprite_get("coin");
	coin2.state = 2;
	coin2.spr_dir = spr_dir*-1;
	coin2.player = player;
	coin2.hsp = -4*spr_dir + random_func( 0, 1, false )
	coin2.coinvsp = -6 + random_func( -4, 1, false )
	coin2.cointimer = 30 + random_func( 0, 4, true )
	
	var coin3 = instance_create(x, y, "obj_article2");
	coin3.sprite_index = sprite_get("coin");
	coin3.state = 2;
	coin3.player = player;
	coin3.hsp = random_func( 1, 6, false ) - random_func( 1, 6, false );
	coin3.coinvsp = -6 + random_func( 0, 1, false )
	coin3.cointimer = 33 + random_func( 0, 4, true )
}

//dair successful aftermath
if (attack == AT_DAIR) 
{ 
	if window == 5 && window_timer >= 4
	{
		super_armor = false;
	}
	
	if (window == 5 && window_timer == 5)
 {window_timer = 0;
  window = 6;}
  if (window == 6 && window_timer == 10)
 {window_timer = 0;
  window = 7;}
  if (window == 6 || window == 7)
  {if (up_down || down_down || left_down || right_down || jump_down || jump_pressed || attack_down || up_strong_down || shield_down || down_strong_down || left_strong_down || right_strong_down || down_strong_down){
        window = 6;
        window_timer = 24;}}
}

//fstrong
if (attack == AT_FSTRONG && window_timer >= 18 && window == 4) {
	move_cooldown[AT_FSTRONG] = 14;
	if !was_parried && (up_down || attack_down || attack_pressed || down_down || left_down || right_down || jump_down || jump_pressed || up_strong_down || shield_down || down_strong_down || left_strong_down || right_strong_down || down_strong_down){
		set_state(PS_IDLE);
	}
}

//nair slam
if (attack == AT_NAIR && (state == PS_ATTACK_AIR || state == PS_ATTACK_GROUND) && !hitpause)
{ 
    switch ( window )
{
	case 1: {
		
		if pressButton <= 4
		{
			pressButton+=0.4;	
		}
		
        confettiBurst = true;
        
        if window_timer >= 10
    	{
    		if left_down && spr_dir = 1
    	    {
    	    	spr_dir = -1;
	        }
	        
	        if right_down && spr_dir = -1
	        {
	        	spr_dir = 1;
	        }
    	}
        
	}break;
    case 2:{
    	
    	if window_timer >= 5
    	{
    		if pressButton <= 11
			{
				pressButton+=1;	
			}
    	}
    	
    if (!free && window_timer >= 5 && (attack_down || attack_pressed))
    {
    	window = 5;
    	window_timer = 0;
    	sound_play(sound_get("successfulhit"));
    	destroy_hitboxes();
    	NAir_Land = true;
    }
    else if (!free && (!attack_down || !attack_pressed)) 
    {
    	window = 8;
    	window_timer = 0;}
    }break;
    case 3:{
    if pressButton <= 11
			{
				pressButton+=1;	
			}
    	
    if (!free && (attack_down || attack_pressed))
    {
    	window = 5;
    	window_timer = 0;
    	sound_play(sound_get("successfulhit"));
    	NAir_Land = true;
    }
    else if (!free) {
    window = 8;
    window_timer = 0;}
    can_jump = true;
    }break;
    case 4:{ if (!free){
    window = 8;
    window_timer = 0;}
    can_jump = true;
    }break;
    case 5:{ 
    if (window_timer >= 6)
    {
    	window = 6;
    	window_timer = 0;
    }
    }break;
    case 6:{
    if (window_timer == 11)
    {
    window = 7;
    window_timer = 0;
    }
    
    
    
    if (window_timer >= 1)
    {
    	if (confettiBurst == true ) 
    	{
        for(var i=0; i<5; i++)
        	{
            var c = instance_create(x+32*spr_dir, y, "obj_article3");
            c.sprite_index = sprite_get("confetti");
            var rand = (x+y+(i*50)) mod 200;
            var picked = random_func_2((rand+i)%200,array_length_1d(confettiColors),true);
            c.image_index = random_func_2(floor(rand/2),c.image_number-1,true);
            c.image_angle = random_func(i+14, 360, false);
            c.myColor = confettiColors[picked];
            c.spr_dir = spr_dir;
            c.confettiTimer = 50 + random_func(i+18, 20, true);
            c.vsp = -7 + random_func(i+20, 6, false)*-1;
            c.hsp = 4*spr_dir + random_func(i, 4, false)-2;
            c.gravity_speed = 0.5;
            c.PMO_articleType = 1;
            confettiBurst = false;
        	}
    	}
    
    	
    	if (hammercoins == true)
            {
            if shouldSpawnGreat
            {
            	spawn_hit_fx( x-64*spr_dir, y-46, great);
            	shouldSpawnGreat = false;
            }
            else
            {
            	spawn_hit_fx( x-64*spr_dir, y-46, good);
            }
            	
            	var coin4 = instance_create(x+40*spr_dir, y-16, "obj_article2");
			coin4.sprite_index = sprite_get("coin");
			coin4.state = 2;
			coin4.player = player;
			coin4.hsp = 1*spr_dir;
			coin4.coinvsp = -7 + random_func( 0, 2, false )
			coin4.cointimer = 26 + random_func( 0, 4, true )
					
			var coin5 = instance_create(x+40*spr_dir, y-16, "obj_article2");
			coin5.sprite_index = sprite_get("coin");
			coin5.state = 2;
			coin5.spr_dir = spr_dir*-1;
			coin5.player = player;
			coin5.hsp = 2*spr_dir;
			coin5.coinvsp = -6 + random_func( 0, 2, false )
			coin5.cointimer = 30 + random_func( 0, 4, true )
		
			var coin6 = instance_create(x+40*spr_dir, y-16, "obj_article2");
			coin6.sprite_index = sprite_get("coin");
			coin6.state = 2;
			coin6.player = player;
			coin6.hsp = 3*spr_dir;
			coin6.coinvsp = -5.5 + random_func( 0, 2, false )
			coin6.cointimer = 25 + random_func( 0, 4, true )
			
			var coin7 = instance_create(x+40*spr_dir, y-16, "obj_article2");
			coin7.sprite_index = sprite_get("coin");
			coin7.state = 2;
			coin7.player = player;
			coin7.hsp = 4*spr_dir;
			coin7.coinvsp = -5 + random_func( 0, 2, false )
			coin7.cointimer = 33 + random_func( 0, 4, true )
			
			hammercoins = false;
		}
    }
    
    }break;
    case 7:{ if (window_timer == 11){
    window = 8;
    window_timer = 0;}
    }break;
    case 8:{ if (window_timer == 8){
    window = 9;
    window_timer = 0;}
    destroy_hitboxes();
    }break;
}}

if (attack == AT_UAIR) {
	hud_offset = 40;
}



//dash attack
if (attack == AT_DATTACK)
{
	if hitpause
    {
    	vsp -= 0.5;
    }
	
	if window <= 1
	{
		if pressButton <= 4
		{
			pressButton+=0.5;	
		}
	}
	
	if window >= 2 && window <= 3
	{
		if pressButton <= 10
		{
			pressButton+=1;	
		}
	}
	
    can_move = false
    can_fast_fall = false
	switch ( window )
	{
	
	case 1:{
	if (window_timer == 5) 
	{
    	
    }
	}break;
    case 2:{ 
    if (!free && window_timer >= 1) 
    {
    	window = 3;
    	window_timer = 0;
    }
    if ((special_pressed || special_down) && window_timer <= 14) 
    {
    	if hit_player_obj != noone
    	{
    		if (hit_player_obj.super_armor || hit_player_obj.invincible || hit_player_obj.state == PS_PARRY || hit_player_obj.state == PS_AIR_DODGE || hit_player_obj.state == PS_ROLL_FORWARD
		|| hit_player_obj.state == PS_ROLL_BACKWARD || hit_player_obj.state == PS_TECH_GROUND || hit_player_obj.state == PS_TECH_FORWARD || hit_player_obj.shield_pressed
		|| hit_player_obj.state == PS_TECH_BACKWARD || hit_player_obj.state == PS_WALL_TECH || hit_player_obj.state == PS_TECH_GROUND || hit_player_obj.shield_down)
		{
			hit_player_obj = noone;
			has_hit_player = false;
		}
    	}
    	
    	if (spr_dir == -1 && (left_pressed || left_down)) 
    	{
    		set_hitbox_value(AT_FSPECIAL_AIR, 1, HG_WIDTH, 30);
			set_hitbox_value(AT_FSPECIAL_AIR, 1, HG_HEIGHT, 40);
    		set_attack(AT_FSPECIAL_AIR);
    		window = 2;
    		dash_fspec = true;
    		window_timer = 0;
    		sound_play(sound_get("softsound"));
    	}
    	if (spr_dir == 1 && (right_pressed || right_down)) 
    	{
    		set_hitbox_value(AT_FSPECIAL_AIR, 1, HG_WIDTH, 30);
			set_hitbox_value(AT_FSPECIAL_AIR, 1, HG_HEIGHT, 40);
    		set_attack(AT_FSPECIAL_AIR);
    		window = 2;
    		window_timer = 0;
    		dash_fspec = true;
    		sound_play(sound_get("softsound"));
    	}
    }
    
    }break;
    case 3:{ 
    if (window_timer == 29){
    window = 4;
    window_timer = 0;}
    }break;
    case 4:{ 
    if (window_timer == 7){
    window = 5;
    window_timer = 0;}
    if (up_down || attack_down || attack_pressed || down_down || left_down || right_down || jump_down || jump_pressed || up_strong_down || shield_down || down_strong_down || left_strong_down || right_strong_down || down_strong_down){
    window = 9;
    window_timer = 20;}
    }break;
    case 5:{ 
    if (window_timer == 7){
    window = 6;
    window_timer = 0;}
    if !was_parried && (up_down || attack_down || attack_pressed || down_down || left_down || right_down || jump_down || jump_pressed || up_strong_down || shield_down || down_strong_down || left_strong_down || right_strong_down || down_strong_down){
        set_state(PS_IDLE);
    }
    }break;
    case 6:{ 
    if (window_timer == 7){
    window = 7;
    window_timer = 0;}
    if !was_parried && (up_down || attack_down || attack_pressed || down_down || left_down || right_down || jump_down || jump_pressed || up_strong_down || shield_down || down_strong_down || left_strong_down || right_strong_down || down_strong_down){
        set_state(PS_IDLE);
    }
    }break;}
}



//dattack sfx
if (attack == AT_DATTACK){ 
    if (window == 3 && window_timer == 19){
    move_cooldown[AT_DATTACK] = 10;}
    if (window == 1 && window_timer == 1 && !hitpause){
        sound_play(sound_get("jump"));
    }
    
}


//FSPECIAL_AIR
if (attack == AT_FSPECIAL_AIR && !hitpause) {
    
    switch ( window )
    {
    	case 1:
    	{
    		reset_hitbox_value(AT_FSPECIAL_AIR, 1, HG_WIDTH);
			reset_hitbox_value(AT_FSPECIAL_AIR, 1, HG_HEIGHT);
    	}break;
    	
        case 2: { if (window_timer == 7 && !has_hit_player) 
        	{
            	window = 8;
            	window_timer = 0;
        	}
            else if (!free && !has_hit_player) 
            {
            	sound_play(sound_get("falldown"));
            	window = 9;
            	window_timer = 0;
            }
            
            if (window_timer == 7 && has_hit_player) 
            {
            	window = 3;
            	window_timer = 0;
            	
            }
        }break;
        
        case 3: { if (window_timer == 15) {
            window = 4;
            window_timer = 0;}
            
            if window == 3
                    {
                        if ((left_down && spr_dir == 1) || (right_down && spr_dir == -1)) && !down_down && !up_down
                    {
                        set_hitbox_value(AT_FSPECIAL_AIR, 2, HG_ANGLE, 130);
                        pullangle = 0;
                        powerpull = true;
                        set_hitbox_value(AT_FSPECIAL_AIR, 2, HG_BASE_KNOCKBACK, 4);
						set_hitbox_value(AT_FSPECIAL_AIR, 2, HG_KNOCKBACK_SCALING, 1);
                    }
                    else
                    if (down_down) && !up_down
                    {
                        set_hitbox_value(AT_FSPECIAL_AIR, 2, HG_ANGLE, 135);
                        if has_hit_player
                        {
                        	pullangle = 350;
                        }
                        else
                        {
                        	pullangle = 330;
                        }
                        powerpull = false;
                    }
                    else
                    if (up_down) && !left_down && !right_down
                    {
                        set_hitbox_value(AT_FSPECIAL_AIR, 2, HG_ANGLE, 105);
                        pullangle = 50;
                        powerpull = false;
                    }
                    else
                    if (up_down && ((left_down && spr_dir == 1) || (right_down && spr_dir == -1)))
                    {
                        set_hitbox_value(AT_FSPECIAL_AIR, 2, HG_ANGLE, 115);
                        pullangle = 35;
                        powerpull = false;
                    }
                    else
                    {
                        set_hitbox_value(AT_FSPECIAL_AIR, 2, HG_ANGLE, 125);
                        pullangle = 0;
                        powerpull = false;
                    }
                    }
            
            can_fast_fall = false;
        }break;
        case 4:{ 
        
        if dash_fspec == true && window_timer == 1 && !hitpause
        {
        	spawn_hit_fx( x, y+16, great);
        	sound_play(sound_get("successfulhit"));
        }
        	
        if (window_timer == 7) {
        window = 5;
        window_timer = 0;}
        can_fast_fall = false;
        }break;
        case 5:{ if (!free) {
        window = 6;
        window_timer = 0; }
        }break;
        case 6:{ if (window_timer == 11) {
        window = 7;
        window_timer = 0; }
        if (window_timer >= 6 && (up_down || attack_down || attack_pressed || down_down || left_down || right_down || jump_down || jump_pressed || up_strong_down || shield_down || down_strong_down || left_strong_down || right_strong_down || down_strong_down)){
            window = 7;
            window_timer = 10;}
        }break;
        case 7:{
        if (up_down || attack_down || attack_pressed || down_down || left_down || right_down || jump_down || jump_pressed || up_strong_down || shield_down || down_strong_down || left_strong_down || right_strong_down || down_strong_down){
            window = 7;
            window_timer = 10;}
        }break;
        case 8: {if (!free) {
        	sound_play(sound_get("falldown"));
            window = 9;
            window_timer = 0;
        	}
        	if (dash_fspec)
        	{
        		set_window_value(AT_FSPECIAL_AIR, 9, AG_WINDOW_LENGTH, 30);
        	}
        	else
        	{
        		reset_window_value(AT_FSPECIAL_AIR, 9, AG_WINDOW_LENGTH);
        	}
        	
        	destroy_hitboxes();
        }break;
        case 9: {
        	if (window_timer == 15 && dash_fspec == false) 
        	{
            	window = 10;
            	window_timer = 0;
        	}
        	
        	if (dash_fspec)
        	{
        		if (window_timer == 29) 
        		{
            		window = 10;
            		window_timer = 0;
            		dash_fspec = false;
        		}
        	}
            destroy_hitboxes();
        }break;
        case 10: {if (window_timer == 15) {
            window = 11;
            window_timer = 0;}
            if (window_timer >= 13 && (up_down || attack_down || attack_pressed || down_down || left_down || right_down || jump_down || jump_pressed || up_strong_down || shield_down || down_strong_down || left_strong_down || right_strong_down || down_strong_down)){
            window = 13;
            window_timer = 8;}
        }break;
        case 11: {if (window_timer == 7) {
            window = 12;
            window_timer = 0;}
            if (up_down || attack_down || attack_pressed || down_down || left_down || right_down || jump_down || jump_pressed || up_strong_down || shield_down || down_strong_down || left_strong_down || right_strong_down || down_strong_down){
            window = 13;
            window_timer = 8;}
        }break;
        case 12: {if (window_timer == 7) {
            window = 13;
            window_timer = 0;}
            if (up_down || attack_down || attack_pressed || down_down || left_down || right_down || jump_down || jump_pressed || up_strong_down || shield_down || down_strong_down || left_strong_down || right_strong_down || down_strong_down){
            window = 13;
            window_timer = 8;}
        }break;
    }
    
    if ((window == 2 || window == 3 || (window == 4 && window_timer <= 2)) && has_hit_player) 
    {
        destroy_hitboxes();
        hsp = 0;
        vsp = 0;
        if( hit_player_obj != noone) 
        {
			with(hit_player_obj) 
			{
				if (!super_armor && !invincible && state != PS_PARRY && state != PS_AIR_DODGE && state != PS_ROLL_FORWARD
				&& state != PS_ROLL_BACKWARD && state != PS_TECH_GROUND && state != PS_TECH_FORWARD
				&& state != PS_TECH_BACKWARD && state != PS_WALL_TECH && state != PS_TECH_GROUND)
				{
					x = other.x+(40*other.spr_dir) + other.hsp;
					y = other.y+(-18) + other.vsp;
					can_move = 0;
					can_attack = 0;
					can_tech = false;
					invincible = false;
					if(free) 
					{
						set_state(PS_HITSTUN);
					}
					else 
					{
					set_state(PS_HITSTUN_LAND);
					}
				}
			}
        }
	}
      if ((window == 2 || window == 3 || (window == 4 && window_timer <= 2)) && pullingpanel == true) 
      {
        destroy_hitboxes();
        hsp = 0;
        vsp = 0;
      }
    }

//FSPECIAL
if (attack == AT_FSPECIAL && !hitpause) {
    
    switch ( window )
    {
        case 2:
        {	
        	if (window_timer >= 7 && !has_hit_player) 
        		{
            	window = 7;
            	window_timer = 0;
        		}
            if (window_timer == 7 && has_hit_player) 
            {
            	window = 3;
            	window_timer = 0;
            }
			if (window_timer <= 1) {
            hsp = 4*spr_dir;
            }
        }break;
        case 3: { if (window_timer == 15) {
            window = 4;
            window_timer = 0;}
            
             if window == 3
                    {
                        if ((left_down && spr_dir == 1) || (right_down && spr_dir == -1)) && !down_down && !up_down
                    {
                        set_hitbox_value(AT_FSPECIAL, 2, HG_ANGLE, 140);
                        set_hitbox_value(AT_FSPECIAL, 2, HG_BASE_KNOCKBACK, 5);
						set_hitbox_value(AT_FSPECIAL, 2, HG_KNOCKBACK_SCALING, 1);
                        pullangle = 0;
                        powerpull = true;
                    }
                    else
                    if (down_down) && !up_down
                    {
                        set_hitbox_value(AT_FSPECIAL, 2, HG_ANGLE, 145);
                        pullangle = 330;
                        powerpull = false;
                    }
                    else
                    if (up_down) && !left_down && !right_down
                    {
                        set_hitbox_value(AT_FSPECIAL, 2, HG_ANGLE, 115);
                        pullangle = 45;
                        powerpull = false;
                    }
                    else
                    if (up_down && ((left_down && spr_dir == 1) || (right_down && spr_dir == -1)))
                    {
                        set_hitbox_value(AT_FSPECIAL, 2, HG_ANGLE, 125);
                        pullangle = 20;
                        powerpull = false;
                    }
                    else
                    {
                        set_hitbox_value(AT_FSPECIAL, 2, HG_ANGLE, 135);
                        pullangle = 0;
                        powerpull = false;
                    }
                    }
            
        hsp = 0;
        }break;
        case 4:{ if (window_timer == 10) {
        window = 5;
        window_timer = 0;}
        hsp = -1.2*spr_dir;
        }break;
        case 5:{ if (window_timer == 14) {
        window = 6;
        window_timer = 0; }
        if (window_timer >= 8 && (up_down || attack_down || attack_pressed || down_down || left_down || right_down || jump_down || jump_pressed || up_strong_down || shield_down || down_strong_down || left_strong_down || right_strong_down || down_strong_down)){
            window = 6;
            window_timer = 8;}
        }break;
        case 6:{ if (up_down || attack_down || attack_pressed || down_down || left_down || right_down || jump_down || jump_pressed || up_strong_down || shield_down || down_strong_down || left_strong_down || right_strong_down || down_strong_down){
            window = 6;
            window_timer = 8;}
        }break;
        case 7:{ if (window_timer == 4) {
        window = 8;
        window_timer = 0;}
        destroy_hitboxes();
        }break;
        case 8:{ if (window_timer == 12) {
        window = 9;
        window_timer = 0;}
        }break;
        case 9: {if (window_timer == 16) {
            window = 10;
            window_timer = 0;}
            if (window_timer >= 13 && (up_down || attack_down || attack_pressed || down_down || left_down || right_down || jump_down || jump_pressed || up_strong_down || shield_down || down_strong_down || left_strong_down || right_strong_down || down_strong_down)){
            window = 12;
            window_timer = 8;}
        }break;
        case 10: {if (window_timer == 8) {
            window = 11;
            window_timer = 0;}
            if (up_down || attack_down || attack_pressed || down_down || left_down || right_down || jump_down || jump_pressed || up_strong_down || shield_down || down_strong_down || left_strong_down || right_strong_down || down_strong_down){
            window = 12;
            window_timer = 8;}
        }break;
        case 11: {if (window_timer == 8) {
            window = 12;
            window_timer = 0;}
            if (up_down || attack_down || attack_pressed || down_down || left_down || right_down || jump_down || jump_pressed || up_strong_down || shield_down || down_strong_down || left_strong_down || right_strong_down || down_strong_down){
            window = 12;
            window_timer = 8;}
        }break;
        case 12: {
            if (up_down || attack_down || attack_pressed || down_down || left_down || right_down || jump_down || jump_pressed || up_strong_down || shield_down || down_strong_down || left_strong_down || right_strong_down || down_strong_down){
            window = 12;
            window_timer = 8;}
        }break;
    }
    
    if ((window == 2 || window == 3 || (window == 4 && window_timer <= 2)) && pullingpanel == true) 
    	{
        	destroy_hitboxes();
        	hsp = 0;
        	vsp = 0;
    	}
    
    if ((window == 2 || window == 3 || (window == 4 && window_timer <= 2)) && has_hit_player) 
    {
        destroy_hitboxes();
        if( hit_player_obj != noone) 
        {
			with(hit_player_obj) 
			{
				if (!super_armor && !invincible && state != PS_PARRY && state != PS_AIR_DODGE && state != PS_ROLL_FORWARD
				&& state != PS_ROLL_BACKWARD && state != PS_TECH_GROUND && state != PS_TECH_FORWARD
				&& state != PS_TECH_BACKWARD && state != PS_WALL_TECH && state != PS_TECH_GROUND)
				{
					x = other.x+(40*other.spr_dir) + other.hsp;
					y = other.y+(-18) + other.vsp;
					can_move = 0;
					can_attack = 0;
					can_tech = false;
					invincible = false;
					if(free) 
					{
						set_state(PS_HITSTUN);
					}
					else 
					{
					set_state(PS_HITSTUN_LAND);
					}
				}
			}
        }
	}
}

//confetti
if (attack == AT_BAIR) {
    if (window == 1) {
        confettiBurst = true;    
    }
    if ( window == 2 && has_hit && confettiBurst == true ) {
        for(var i=0; i<5; i++)
        {
            var c = instance_create(x-28*spr_dir, y, "obj_article3");
            c.sprite_index = sprite_get("confetti");
            var rand = (x+y+(i*50)) mod 200;
            var picked = random_func_2((rand+i)%200,array_length_1d(confettiColors),true);
            c.image_index = random_func_2(floor(rand/2),c.image_number-1,true);
            c.image_angle = random_func(i+14, 360, false);
            c.myColor = confettiColors[picked];
            c.spr_dir = spr_dir;
            c.confettiTimer = 50 + random_func(i+18, 20, true);
            c.vsp = -7 + random_func(i+20, 6, false)*-1;
            c.hsp = -5*spr_dir + random_func(i, 4, false)-2;
            c.gravity_speed = 0.5;
            c.PMO_articleType = 1;
            confettiBurst = false;
        }
    }
}

//USpec
if (attack == AT_USPECIAL)
{
	if super_armor = true
	{
		white_flash_timer_set(5	)
	}
    //Spawn Bowser
    if window == 1
    {
    	dontfoldarms = true;
        if window_timer == 1 && !spawnedBowser
        {
        	spawnedBowser = true;
            bowserjr = instance_create(x,y+bowserSpawnHeight,"obj_article1");
            bowserjr.spr_dir = spr_dir;
            bowserjr.image_alpha = 0;
            bowserjr.state = 0;
            bowserjr.sprite_index = sprite_get("bowserjr_flying");
            
            if (vsp >=0) {
            vsp += -5;
            }
            super_armor = true;
        }
        
        if instance_exists(bowserjr) && y >= bowserjr.y
        {
            window = 2;
            window_timer = 0;
        }
    }
    
    //Stall in air
    if window == 2
    {
        vsp = 0;
        hsp = 0;
    }
    if window == 3 {
    	can_wall_jump = true;
    	can_fast_fall = false;
    	if window_timer == 23 {
    	super_armor = false;
    	vsp += 4;
    	window = 4;
    	window_timer = 0;
    	move_cooldown[AT_USPECIAL] = 60;
    	}
    }
    if window == 4 {
    	can_wall_jump = true;
    	can_fast_fall = false;
    	if !free && window_timer >= 4{
    		set_attack(AT_FSPECIAL);
    		window = 8;
    		hsp = 0;
    	}
    }
}

//uspec gorund
if (attack == AT_USPECIAL_GROUND)
{
	dontfoldarms = true;
	if window == 1 && window_timer == 1
    {
    	spawnedBowser = true;
		bowserjr2 = instance_create(x-20*spr_dir,y-30,"obj_article1");
        bowserjr2.spr_dir = spr_dir;
        bowserjr2.image_alpha = 0;
        bowserjr2.state = 3;
        bowserjr2.sprite_index = sprite_get("bowserjr_flying");
        bowserjr2.fadetimer = 12;
    }
}


//dspecial stuff
if (attack == AT_DSPECIAL_AIR)
{
	dspec_air = true;
	if window == 1 && window_timer == 1
	{
		vsp += -2;
	}
	
	if window == 2 && window_timer == 1
	{
		hsp += 1.8*spr_dir;
		vsp += 2;
	}
	
	if window == 5 && window_timer == 1
	{
		vsp += -3;
	}

	if collision_point(x, y+45, asset_get("par_block"), false, true) && (window == 3 || (window == 4 && window_timer <= 6))
	{
		free = false;
		set_attack(AT_DSPECIAL);
		window = 2;
		window_timer = 14;
		vsp += 50;
	}


	if !free 
	{
		if (window == 1)
		{
		set_attack(AT_DSPECIAL);
		window = 1;
		window_timer = 0;
		}
		
		if (window == 2 || window == 3 || (window == 4 && window_timer <= 6))
		{
			set_attack(AT_DSPECIAL);
			window = 2;
			window_timer = 14;
		}
	}
}

if (attack == AT_DSPECIAL)
{
	if window == 2
	{
		if window_timer == 14 && !hitpause
		{
			sound_play(asset_get("mfx_coin"));
		}
	}
	
	if (window == 3 && window_timer == 1)
	{

		set_hitbox_value(AT_DSPECIAL, 1, HG_PROJECTILE_HSPEED, 2.5 + random_func( -4, 2, false ));
		set_hitbox_value(AT_DSPECIAL, 1, HG_PROJECTILE_VSPEED, -12.5 + random_func( -6, 2, false ));
		move_cooldown[AT_DSPECIAL] = 62;
		move_cooldown[AT_DSPECIAL_AIR] = 62;
	}
}

//nspec stuff

if (attack == AT_NSPECIAL)
{
	if paneltimercountdown == false && !hitpause
	{
		if window_timer == 1 && window == 1
		{
			var chest = instance_create(x+40*spr_dir, y-2, "obj_article1");
			chest.notbowser = true;
			chest.state = 5;
			chest.spr_dir = spr_dir;
			chest.sprite_index = sprite_get("treasure_chest");
		}
		
		if window_timer == 1 && window == 2
		{
			var panel1 = instance_create(x+20*spr_dir, y-80, "obj_article2");
			panel1.state = panel1type;
			panel1.player = player;
			panel1.hsp = panel1hsp;
			panel1.vsp = panel1vsp;
			panel1.article_gravity = .8 + random_func( -1, 1, false )-0.5;
	
			var panel2 = instance_create(x+20*spr_dir, y-80, "obj_article2");
			panel2.state = panel2type;
			panel2.player = player;
			panel2.hsp = panel2hsp;
			panel2.vsp = panel2vsp;
			panel2.article_gravity = .7 + random_func( -1, 1, false )-0.5;
	
			var panel3 = instance_create(x+20*spr_dir, y-80, "obj_article2");
			panel3.state = panel3type;
			panel3.player = player;
			panel3.hsp = panel3hsp;
			panel3.vsp = panel3vsp;
			panel3.article_gravity = .8 + random_func( -1, 1, false )-0.5;
			
			var panel4 = instance_create(x+20*spr_dir, y-80, "obj_article2");
			panel4.state = panel4type;
			panel4.player = player;
			panel4.hsp = panel4hsp;
			panel4.vsp = panel4vsp;
			panel4.article_gravity = 1.6 + random_func( 1, 2, false )-0.5;
		}
	}
	
	if window_timer == 1 && window == 1 && paneltimercountdown == true && !hitpause
	{
		window = 2;
		window_timer = 0;
	
		if totalcoins >= 10
		{
			totalcoins -= 10;
			paneltimer += 1;
			paneltimerbump = 4;
		}
	}
}

if (attack == AT_FSTRONG_2)
{
	if (window == 1 && window_timer == 1 && !hitpause)
	{
		hsp = 0;
		
		sound_play(sound_get("oliviaappear"));
		sound_play(sound_get("magiccircle"));
		
		var pnluse = spawn_hit_fx( x, y+2, paneluse);
		pnluse.depth = -6;
		
		var firevell = instance_create(x+52*spr_dir, y-48, "obj_article1");
			firevell.notbowser = true;
			firevell.state = 6;
			firevell.spr_dir = spr_dir;
			firevell.sprite_index = sprite_get("firevellumental");
			firevell.image_index = 1;
	}
}

if (attack == AT_USTRONG_2)
{
	if (window == 1 && window_timer == 1 && !hitpause)
	{
		hsp = 0;
		
		sound_play(sound_get("oliviaappear"));
		sound_play(sound_get("magiccircle"));
		
		var pnluse = spawn_hit_fx( x, y+2, paneluse);
		pnluse.depth = -6;
		
		var watervell = instance_create(x+24*spr_dir, y, "obj_article1");
			watervell.notbowser = true;
			watervell.state = 7;
			watervell.spr_dir = spr_dir;
			watervell.sprite_index = sprite_get("watervellumental");
			watervell.image_index = 1;
			watervell.image_xscale = 2;
			watervell.image_yscale = 2;
	}
}

if (attack == AT_DSTRONG_2)
{
	if (window == 1 && window_timer == 1 && !hitpause)
	{
		hsp = 0;
		
		sound_play(sound_get("oliviaappear"));
		sound_play(sound_get("magiccircle"));
		
		var pnluse = spawn_hit_fx( x, y+2, paneluse);
		pnluse.depth = -6;
		
		var icevell = instance_create(x+52*spr_dir, y+2, "obj_article1");
			icevell.notbowser = true;
			icevell.state = 9;
			icevell.player = player;
			icevell.spr_dir = spr_dir;
			icevell.sprite_index = sprite_get("icevellumental");
			icevell.image_index = 1;
			icevell.image_xscale = 2;
			icevell.image_yscale = 2;
	}
}


if (attack == AT_DSPECIAL_2)
{
	if (window == 1 && window_timer == 1 && !hitpause)
	{
		hsp = 0;
		
		sound_play(sound_get("oliviaappear"));
		sound_play(sound_get("magiccircle"));
		
		var pnluse = spawn_hit_fx( x, y+2, paneluse);
		pnluse.depth = -6;
		
		var icevell = instance_create(x+52*spr_dir, y, "obj_article1");
			icevell.notbowser = true;
			icevell.state = 11;
			icevell.player = player;
			icevell.spr_dir = spr_dir;
			icevell.sprite_index = sprite_get("earthvellumental");
			icevell.image_index = 0;
			icevell.image_xscale = 2;
			icevell.image_yscale = 2;
	}
}

if attack == AT_FSPECIAL_2
{
	anchor_point_y = y + round(sin(float_timer * float_frequency) * float_height);
	float_timer-= 0.05;
	
	if window <= 3
	{
		if olivia_alpha <= 1
		{
			olivia_alpha +=0.1;
		}
		olivia_image_index+=0.1;
	}
	
	if window == 8 || window == 9
	{
		if olivia_alpha >= 0
		{
			olivia_alpha -=0.1;
		}
	}
	
	if window == 1
	{
		if thousandfold_intro >= 1
		{
			thousandfold_intro-=0.5;
		}
		
		if !hitpause
		{
			if window_timer == 8
			{
				sound_play(sound_get("magiccircle"));
				var pnluse = spawn_hit_fx( x, y+2, paneluse);
				pnluse.depth = -6;
			}
			
			if window_timer%8 == 0
			{
				sound_play(sound_get("oliviafolding"));
			}
		}
	}
	
	if (window == 2)
	{
		super_armor = true;
		if thousandfold_window_timer >= 1
		{
			thousandfold_window_timer--;
			
			if thousandfold_window_timer%20 == 0 && !hitpause
			{
				var pnluse = spawn_hit_fx( x, y+2, paneluse);
				pnluse.depth = -6;
			}
			
			if thousandfold_window_timer%35 == 0 && !hitpause
			{
				sound_play(sound_get("magiccircle"));
			}
			
			if thousandfold_x <= 10
			{
				window_timer = 5;
				set_hitbox_value(AT_FSPECIAL_2, 2, HG_BASE_KNOCKBACK, 5);
				white_flash_timer_set(2);
				set_hitbox_value(AT_FSPECIAL_2, 10, HG_BASE_KNOCKBACK, 5);
			}
			else if thousandfold_x <= 20 && thousandfold_x >= 10
			{
				window_timer = 15;
				set_hitbox_value(AT_FSPECIAL_2, 2, HG_BASE_KNOCKBACK, 5);
				white_flash_timer_set(4);
				set_hitbox_value(AT_FSPECIAL_2, 10, HG_BASE_KNOCKBACK, 5);
			}
			else if thousandfold_x <= 30 && thousandfold_x >= 20
			{
				window_timer = 25;
				set_hitbox_value(AT_FSPECIAL_2, 2, HG_BASE_KNOCKBACK, 6);
				white_flash_timer_set(6);
				set_hitbox_value(AT_FSPECIAL_2, 10, HG_BASE_KNOCKBACK, 6);
			}
			else if thousandfold_x <= 40 && thousandfold_x >= 30
			{
				window_timer = 35;
				set_hitbox_value(AT_FSPECIAL_2, 2, HG_BASE_KNOCKBACK, 6);
				white_flash_timer_set(6);
				set_hitbox_value(AT_FSPECIAL_2, 10, HG_BASE_KNOCKBACK, 6);
			}
			else if thousandfold_x <= 50 && thousandfold_x >= 40
			{
				window_timer = 45;
				set_hitbox_value(AT_FSPECIAL_2, 2, HG_BASE_KNOCKBACK, 7);
				white_flash_timer_set(8);
				set_hitbox_value(AT_FSPECIAL_2, 10, HG_BASE_KNOCKBACK, 7);
			}
			else if thousandfold_x <= 60 && thousandfold_x >= 50
			{
				window_timer = 55;
				set_hitbox_value(AT_FSPECIAL_2, 2, HG_BASE_KNOCKBACK, 7);
				white_flash_timer_set(10);
				set_hitbox_value(AT_FSPECIAL_2, 10, HG_BASE_KNOCKBACK, 7);
			}
			else if thousandfold_x <= 70 && thousandfold_x >= 60
			{
				window_timer = 65;
				set_hitbox_value(AT_FSPECIAL_2, 2, HG_BASE_KNOCKBACK, 8);
				white_flash_timer_set(12);
				set_hitbox_value(AT_FSPECIAL_2, 10, HG_BASE_KNOCKBACK, 8);
			}
			else if thousandfold_x <= 80 && thousandfold_x >= 70
			{
				window_timer = 75;
				set_hitbox_value(AT_FSPECIAL_2, 2, HG_BASE_KNOCKBACK, 9);
				white_flash_timer_set(14)
				set_hitbox_value(AT_FSPECIAL_2, 10, HG_BASE_KNOCKBACK, 9);
			}
			else if thousandfold_x <= 90 && thousandfold_x >= 80
			{
				window_timer = 85;
				set_hitbox_value(AT_FSPECIAL_2, 2, HG_BASE_KNOCKBACK, 10);
				white_flash_timer_set(16)
				set_hitbox_value(AT_FSPECIAL_2, 10, HG_BASE_KNOCKBACK, 10);
			}
			
			thousandfold_x = clamp(thousandfold_x, 0, 88)
			
			
			
			if spr_dir == 1
			{
				if left_down && !right_down
				{
					thousandfold_x-=2;
				}
				
				if right_down && !left_down
				{
					thousandfold_x+=2;
				}
			}
			else if spr_dir == -1
			{
				if left_down && !right_down
				{
					thousandfold_x+=2;
				}
					
				if right_down && !left_down
				{
					thousandfold_x-=2;
				}
			}
			
			if !collision_circle(x+56*spr_dir+thousandfold_x*spr_dir, y-16, 24, oPlayer, true, true)
			{
					can_grab_visual = false;
			}
			else if collision_circle(x+56*spr_dir+thousandfold_x*spr_dir, y-16, 24, oPlayer, true, true)
			{
				can_grab_visual = true;
			}
			
			if special_pressed
			{
				player_to_grab = collision_circle(x+56*spr_dir+thousandfold_x*spr_dir, y-16, 24, oPlayer, true, true)
				
				if player_to_grab != noone
				{
					with player_to_grab
					{
						if !super_armor && state != PS_PARRY && state != PS_AIR_DODGE && state != PS_ROLL_FORWARD
						&& state != PS_ROLL_BACKWARD && state != PS_TECH_GROUND && state != PS_TECH_FORWARD && !invincible
						&& state != PS_TECH_BACKWARD && state != PS_WALL_TECH
						{
							thousand_grab = true;
						}
					}
				}
				window = 3;
				window_timer = 0;
			}
		}
		else
		{
			window = 3;
			window_timer = 0;
		}
	}
	else
	{
		super_armor = false;
	}
	
	if window == 3
	{
		if player_to_grab != noone
		{
			if player_to_grab.thousand_grab == true
			{
				if !hitpause && window_timer == 1
				{
					create_hitbox(AT_FSPECIAL_2, 1, player_to_grab.x, player_to_grab.y);
					sound_play(sound_get("successfulhit"))
				}
				thousand_grabber(x+72*spr_dir,y-16)
			
				if window_timer >= 9
				{
					if left_down && !right_down && spr_dir = 1
					{
						spr_dir = -1;
					}
					else if !left_down && right_down && spr_dir = -1
					{
						spr_dir = 1;
					}
					
					window=10;
					window_timer = 0;
				}
			}
		}
		
		if window_timer >= 9 && (player_to_grab != noone && player_to_grab.thousand_grab == false || player_to_grab == noone)
		{
			window=4;
			window_timer = 0;
		}
	}
	
	if window == 4 || window == 5 || window == 6
	{
		if window_timer == 8 && !hitpause
		{
			sound_play(asset_get("sfx_swipe_heavy2"));
		}
		
		if window_timer == 15 && !hitpause
		{
			spawn_hit_fx( x+108*spr_dir, y, impact);
		}
		
		if window_timer >= 24
		{
			window+=1;
			window_timer = 0;
		}
	}
	
	if window == 7
	{
		if window_timer == 16 && !hitpause
		{
			sound_play(asset_get("sfx_swipe_heavy2"));
		}
		
		if window_timer == 24 && !hitpause
		{
			spawn_hit_fx( x+108*spr_dir, y, impact);
			spawn_hit_fx( x+108*spr_dir, y-22, bootssuccessful);
		}
		
		if window_timer >= 44
		{
			window=8;
			window_timer = 0;
		}
	}
	
	if window == 8
	{
		if window_timer >= 24
		{
			window=9;
			window_timer = 0;
		}
	}
	
	if window == 7 || window == 8
	{
		switch (image_index)
		{
			case 37:{hud_offset = 10;}break;
			case 38:{hud_offset = 14;}break;
			case 39:{hud_offset = 16;}break;
			case 40:{hud_offset = 18;}break;
			case 41:{hud_offset = 18;}break;
			case 42:{hud_offset = 18;}break;
			case 43:{hud_offset = 18;}break;
		}
	}
	
	if window == 10
	{
		if window_timer >= 40
		{
			window=8;
			window_timer = 0;
		}
		
		if window_timer == 2 && !hitpause
		{
			sound_play(sound_get("swing"));
		}
		
		switch (image_index)
		{
			case 12:
			{
				thousand_grabber(x+32*spr_dir,y-16)
			}break;
			
			case 13:
			{
				thousand_grabber(x+8*spr_dir,y-16)
			}break;
			
			case 14:
			{
				hud_offset = 30;
				thousand_grabber(x-52*spr_dir,y-32)
			}break;
			
			case 15:
			{
				hud_offset = 31;
				thousand_grabber(x-50*spr_dir,y-44)
			}break;
			
			case 15:
			{
				hud_offset = 32;
				thousand_grabber(x-50*spr_dir,y-56)
			}break;
			
			case 16:
			{
				hud_offset = 31;
				thousand_grabber(x+110*spr_dir,y-86)
			}break;
			
			case 17:
			{
				hud_offset = 30;
			}break;
			
			case 18:
			{
				hud_offset = 29;
			}break;
			
			case 19:
			{
				hud_offset = 28;
			}break;
		}
	}
}

#define white_flash_timer_set(timer)
{
	if white_flash_timer <= 1
	{
		white_flash_timer = timer;
	}
}

#define thousand_grabber(x1,y1)
{
	with player_to_grab
	{
		if thousand_grab == true
		{
			set_state(PS_HITSTUN)
			can_move = 0;
			can_attack = 0;
			can_tech = false;
			invincible = false;
			x = x1;
			y = y1;
		}
	}
}