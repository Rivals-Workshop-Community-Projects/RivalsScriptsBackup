//B - Reversals
if (attack == AT_NSPECIAL || attack == AT_FSPECIAL || attack == AT_DSPECIAL || attack == AT_USPECIAL){
    trigger_b_reverse();
}

if (attack == AT_NSPECIAL)
{
	
    if (window == 2 && window_timer == 3 && cards < 8)
    {
    	var card = random_func(0, 12, true);

    	if (card == 0)
    	{
    		cur_card = 1;
    	}
    	
    	if (card == 1)
    	{
    		cur_card = 2;
    	}
    	
    	if (card == 2)
    	{
    		cur_card = 3;
    	}
    	
    	if (card == 3)
    	{
    		cur_card = 4;
    	}

    	if (card == 4)
    	{
    		cur_card = 5;
    	}

    	if (card == 5)
    	{
    		cur_card = 6;
    	}

    	if (card == 6)
    	{
    		cur_card = 7;
    	}

    	if (card == 7)
    	{
    		cur_card = 8;
    	}

    	if (card == 8)
    	{
    		cur_card = 9;
    	}

    	if (card == 9)
    	{
    		cur_card = 10;
    	}

    	if (card == 10)
    	{
    		cur_card = 11;
    	}

    	if (card == 11)
    	{
    		cur_card = 12;
    	}
    	    	    	    	    	    	    	    	
		if (cards < 9) 
	{
		cards += 1;
		}
    }
if (window == 2 && window_timer == 3 && cur_card == 7)
{
	invin_timer = 120;
	sound_play (sound_get("Cypher 1"));
	
}

if (window == 4 && window_timer == 3 && cur_card == 7)
{
	cur_card = 15;
}
    
}

if (attack == AT_NSPECIAL_2)
{
	if (window == 1 && window_timer == 1)
	{
		cur_card = 15;
	}
	
	    if (my_hitboxID.attack == AT_NSPECIAL_2 && my_hitboxID.hbox_num == 1 && cards > 0) 
	    {
			cards -= 1;
		}	
	
}

if (attack == AT_USPECIAL_2)
{
	if (window == 1 && window_timer == 1)
	{
		cur_card = 15;
	}
}

if (attack == AT_DSTRONG_2)
{
	if (window == 1 && window_timer == 1)
	{
		cur_card = 15;
	}
}

if (attack == AT_USTRONG_2)
{
	if (window == 1 && window_timer == 1)
	{
		cur_card = 15;
	}
}

if (attack == AT_FSPECIAL_2)
{
    if (window == 2 && window_timer == 1) {
        var mist = instance_create(x + (1 * spr_dir), y - 30, "obj_article1");
        mist.hsp = spr_dir * 0;
        mist.spr_dir = spr_dir;
        cur_card = 15;
    }
}

if (attack == AT_DSPECIAL_2)
{
    if (window == 2 && window_timer == 4) {
        var bottle = instance_create(x + (1 * spr_dir), y - 3, "obj_article3");
        bottle.hsp = spr_dir * 0;
        bottle.spr_dir = spr_dir;
        cur_card = 15;
    }
}

if (attack == AT_FSTRONG_2)
{
	if (window == 1) 
{
    if (spr_dir == 1) && (left_pressed) 
    {
         window = 14;
         window_timer = 0;
         set_window_value(AT_FSTRONG_2, 14, AG_WINDOW_HSPEED, -9);
    }
    
    if (spr_dir == 1) && (right_pressed) 
    {
         window = 14;
         window_timer = 0;
         set_window_value(AT_FSTRONG_2, 14, AG_WINDOW_HSPEED, 9);
    }
    
    if (spr_dir == -1) && (right_pressed) 
    {
         window = 14;
         window_timer = 0;
         set_window_value(AT_FSTRONG_2, 14, AG_WINDOW_HSPEED, -9);
    }

    if (spr_dir == -1) && (left_pressed) 
    {
         window = 14;
         window_timer = 0;
         set_window_value(AT_FSTRONG_2, 14, AG_WINDOW_HSPEED, 9);
    }    
    
}    
    
    if (window == 1 && window_timer > 13){
        if (special_down){
            window = 1;
            window_timer = 0;
        }
        
    }

//MID
if (window == 1 && !special_down)
{
    window = 2;
    window_timer = 0;
}

//cancel the bone slicer
if (window == 1 && down_pressed)
{
    //clear_button_buffer(PC_ATTACK_PRESSED)
    destroy_hitboxes();  
	attack_end();
	set_state(PS_IDLE);
}

//LOW    
if (window == 1 && shield_pressed)
{
    clear_button_buffer(PC_SHIELD_PRESSED)
    window = 10;
    window_timer = 0;
}

//HIGH
if (window == 1 && jump_pressed)
{
    clear_button_buffer(PC_JUMP_PRESSED)
    window = 6;
    window_timer = 0;
}

//Rapid slash after bone slicers
if (window == 3 && window_timer == 1)
{
        var slash = instance_create(x + (80 * spr_dir), y - 35, "obj_article2");
		slash.hsp = spr_dir * 0;
        slash.spr_dir = spr_dir;
        cur_card = 15;
}

if (window == 7 && window_timer == 1)
{
        var slash = instance_create(x + (76 * spr_dir), y - 68, "obj_article2");
		slash.hsp = spr_dir * 0;
        slash.spr_dir = spr_dir;
        cur_card = 15;
}

if (window == 11 && window_timer == 1)
{
        var slash = instance_create(x + (80 * spr_dir), y - 6, "obj_article2");
		slash.hsp = spr_dir * 0;
        slash.spr_dir = spr_dir;
        cur_card = 15;
}
   
    //end the attack after each type of bone slicer
    if (window == 5 && window_timer == get_window_value(AT_FSTRONG_2, 5, AG_WINDOW_LENGTH)) 
    {
    	destroy_hitboxes();  
		attack_end();
		set_state(PS_IDLE);
    }

	if (window == 9 && window_timer == get_window_value(AT_FSTRONG_2, 9, AG_WINDOW_LENGTH)) 
    {
    	destroy_hitboxes();  
		attack_end();
		set_state(PS_IDLE);
    }
    
    if (window == 13 && window_timer == get_window_value(AT_FSTRONG_2, 13, AG_WINDOW_LENGTH)) 
    {
    	destroy_hitboxes();  
		attack_end();
		set_state(PS_IDLE);
    }
    
    if (window == 14 && window_timer == get_window_value(AT_FSTRONG_2, 14, AG_WINDOW_LENGTH)) 
    {
    	window = 1;
        window_timer = 0;
    }	
}

if (attack == AT_FSPECIAL){

if (window == 1) 
{
    if (spr_dir == 1) && (left_pressed) 
    {
         window = 14;
         window_timer = 0;
         set_window_value(AT_FSPECIAL, 14, AG_WINDOW_HSPEED, -9);
    }
    
    if (spr_dir == 1) && (right_pressed) 
    {
         window = 14;
         window_timer = 0;
         set_window_value(AT_FSPECIAL, 14, AG_WINDOW_HSPEED, 9);
    }
    
    if (spr_dir == -1) && (right_pressed) 
    {
         window = 14;
         window_timer = 0;
         set_window_value(AT_FSPECIAL, 14, AG_WINDOW_HSPEED, -9);
    }

    if (spr_dir == -1) && (left_pressed) 
    {
         window = 14;
         window_timer = 0;
         set_window_value(AT_FSPECIAL, 14, AG_WINDOW_HSPEED, 9);
    }    
    
}    
    
    if (window == 1 && window_timer > 13){
        if (special_down){
            window = 1;
            window_timer = 0;
        }
        
    }

//MID
if (window == 1 && !special_down)
{
    window = 2;
    window_timer = 0;
}

//cancel the bone slicer
if (window == 1 && down_pressed)
{
    //clear_button_buffer(PC_ATTACK_PRESSED)
    destroy_hitboxes();  
	attack_end();
	set_state(PS_IDLE);
}

//LOW    
if (window == 1 && shield_pressed)
{
    clear_button_buffer(PC_SHIELD_PRESSED)
    window = 10;
    window_timer = 0;
}

//HIGH
if (window == 1 && jump_pressed)
{
    clear_button_buffer(PC_JUMP_PRESSED)
    window = 6;
    window_timer = 0;
}

   
    //end the attack after each type of bone slicer
    if (window == 5 && window_timer == get_window_value(AT_FSPECIAL, 5, AG_WINDOW_LENGTH)) 
    {
    	destroy_hitboxes();  
		attack_end();
		set_state(PS_IDLE);
    }

	if (window == 9 && window_timer == get_window_value(AT_FSPECIAL, 9, AG_WINDOW_LENGTH)) 
    {
    	destroy_hitboxes();  
		attack_end();
		set_state(PS_IDLE);
    }
    
    if (window == 13 && window_timer == get_window_value(AT_FSPECIAL, 13, AG_WINDOW_LENGTH)) 
    {
    	destroy_hitboxes();  
		attack_end();
		set_state(PS_IDLE);
    }
    
    if (window == 14 && window_timer == get_window_value(AT_FSPECIAL, 14, AG_WINDOW_LENGTH)) 
    {
    	window = 1;
        window_timer = 0;
    }

}


if (attack == AT_DSPECIAL){
	
	can_fast_fall = false;
	
	if (window == 1)
	{
		soft_armor = 100;
	}	
	if (window == 2) 
	{
        super_armor = true;
		if (hitpause) 
		{
			sound_play (sound_get("DEFLECT"));
			window = 5;
			window_timer = 0;
		}
	}
	if (window == 3 && window_timer == 1) {
        super_armor = false;
		}
		
	if (window == 4 && get_window_value(AT_DSPECIAL, 4, AG_WINDOW_LENGTH))
	{
		destroy_hitboxes();  
		attack_end();
		set_state(PS_IDLE);
		move_cooldown[AT_DSPECIAL] = 25;
	}
	    if (my_hitboxID.attack == AT_DSPECIAL && my_hitboxID.hbox_num == 1) 
	    {
			hit_player_obj.wrap_time = 20;
			hit_player_obj.state = PS_WRAPPED;
			hitplayer = hit_player_obj;
		}

}

if (attack == AT_EXTRA_1){

if (window == 1) 
{
    if (spr_dir == 1) && (left_pressed) 
    {
         window = 14;
         window_timer = 0;
         set_window_value(AT_EXTRA_1, 14, AG_WINDOW_HSPEED, -9);
    }
    
    if (spr_dir == 1) && (right_pressed) 
    {
         window = 14;
         window_timer = 0;
         set_window_value(AT_EXTRA_1, 14, AG_WINDOW_HSPEED, 9);
    }
    
    if (spr_dir == -1) && (right_pressed) 
    {
         window = 14;
         window_timer = 0;
         set_window_value(AT_EXTRA_1, 14, AG_WINDOW_HSPEED, -9);
    }

    if (spr_dir == -1) && (left_pressed) 
    {
         window = 14;
         window_timer = 0;
         set_window_value(AT_EXTRA_1, 14, AG_WINDOW_HSPEED, 9);
    }    
    
}    
    
    if (window == 1 && window_timer > 13){
        if (special_down){
            window = 1;
            window_timer = 0;
        }
        
    }

//MID
if (window == 1 && !special_down)
{
    window = 2;
    window_timer = 0;
}

//cancel the bone slicer
if (window == 1 && down_pressed)
{
    //clear_button_buffer(PC_ATTACK_PRESSED)
    destroy_hitboxes();  
	attack_end();
	set_state(PS_IDLE);
}

//LOW    
if (window == 1 && shield_pressed)
{
    clear_button_buffer(PC_SHIELD_PRESSED)
    window = 10;
    window_timer = 0;
}

//HIGH
if (window == 1 && jump_pressed)
{
    clear_button_buffer(PC_JUMP_PRESSED)
    window = 6;
    window_timer = 0;
}
   
    //end the attack after each type of bone slicer
    if (window == 5 && window_timer == get_window_value(AT_EXTRA_1, 5, AG_WINDOW_LENGTH)) 
    {
    	destroy_hitboxes();  
		attack_end();
		set_state(PS_IDLE);
		cur_card = 15;
    }

	if (window == 9 && window_timer == get_window_value(AT_EXTRA_1, 9, AG_WINDOW_LENGTH)) 
    {
    	destroy_hitboxes();  
		attack_end();
		set_state(PS_IDLE);
		cur_card = 15;
    }
    
    if (window == 13 && window_timer == get_window_value(AT_EXTRA_1, 13, AG_WINDOW_LENGTH)) 
    {
    	destroy_hitboxes();  
		attack_end();
		set_state(PS_IDLE);
		cur_card = 15;
    }
    
    if (window == 14 && window_timer == get_window_value(AT_EXTRA_1, 14, AG_WINDOW_LENGTH)) 
    {
    	window = 1;
        window_timer = 0;
    }
    if (window == 2 && window_timer == 3) 
    {
		sound_play (asset_get("sfx_zetter_fireball_fire"));
    }    

    if (window == 6 && window_timer == 3) 
    {
		sound_play (asset_get("sfx_zetter_fireball_fire"));
    } 

    if (window == 10 && window_timer == 3) 
    {
		sound_play (asset_get("sfx_zetter_fireball_fire"));
    } 
    
}

if (attack == AT_FTHROW){

if (window == 1) 
{
    if (spr_dir == 1) && (left_pressed) 
    {
         window = 14;
         window_timer = 0;
         set_window_value(AT_FTHROW, 14, AG_WINDOW_HSPEED, -9);
    }
    
    if (spr_dir == 1) && (right_pressed) 
    {
         window = 14;
         window_timer = 0;
         set_window_value(AT_FTHROW, 14, AG_WINDOW_HSPEED, 9);
    }
    
    if (spr_dir == -1) && (right_pressed) 
    {
         window = 14;
         window_timer = 0;
         set_window_value(AT_FTHROW, 14, AG_WINDOW_HSPEED, -9);
    }

    if (spr_dir == -1) && (left_pressed) 
    {
         window = 14;
         window_timer = 0;
         set_window_value(AT_FTHROW, 14, AG_WINDOW_HSPEED, 9);
    }    
    
}    
    
    if (window == 1 && window_timer > 13){
        if (special_down){
            window = 1;
            window_timer = 0;
        }
        
    }

//MID
if (window == 1 && !special_down)
{
    window = 2;
    window_timer = 0;
}

//cancel the bone slicer
if (window == 1 && down_pressed)
{
    //clear_button_buffer(PC_ATTACK_PRESSED)
    destroy_hitboxes();  
	attack_end();
	set_state(PS_IDLE);
}

//LOW    
if (window == 1 && shield_pressed)
{
    clear_button_buffer(PC_SHIELD_PRESSED)
    window = 10;
    window_timer = 0;
}

//HIGH
if (window == 1 && jump_pressed)
{
    clear_button_buffer(PC_JUMP_PRESSED)
    window = 6;
    window_timer = 0;
}
   
    //end the attack after each type of bone slicer
    if (window == 5 && window_timer == get_window_value(AT_FTHROW, 5, AG_WINDOW_LENGTH)) 
    {
    	destroy_hitboxes();  
		attack_end();
		set_state(PS_IDLE);
		cur_card = 15;
    }

	if (window == 9 && window_timer == get_window_value(AT_FTHROW, 9, AG_WINDOW_LENGTH)) 
    {
    	destroy_hitboxes();  
		attack_end();
		set_state(PS_IDLE);
		cur_card = 15;
    }
    
    if (window == 13 && window_timer == get_window_value(AT_FTHROW, 13, AG_WINDOW_LENGTH)) 
    {
    	destroy_hitboxes();  
		attack_end();
		set_state(PS_IDLE);
		cur_card = 15;
    }
    
    if (window == 14 && window_timer == get_window_value(AT_FTHROW, 14, AG_WINDOW_LENGTH)) 
    {
    	window = 1;
        window_timer = 0;
    }

}

if (attack == AT_UTILT)
{
    if (window == 2 && window_timer == get_window_value(AT_UTILT, 1, AG_WINDOW_LENGTH) && has_hit_player == false) 
    {
        window = 3;
        window_timer = 0;
        
        
    }
    if (window == 3)
    {

        if (window_timer == 11)
        {
           set_state(PS_IDLE); 
           move_cooldown[AT_UTILT] = 20;
        }
    }
    if (window == 2 && has_hit_player == true && hitpause == false) 
    {
        	window = 4;
			window_timer = 0;
			hit_player_obj.wrap_time = 60;
			hit_player_obj.state = PS_WRAPPED;
			hitplayer = hit_player_obj;
	}
	if (window == 4)
	{
	    if (window_timer == 3)
	    {
	    	hit_player_obj.x = x + 14 * spr_dir;
		    hit_player_obj.y = y;
	    }
	    
	    if (window_timer == 5)
	    {
		    hit_player_obj.x = x + 10 * spr_dir;
		    hit_player_obj.y = y - 10;
	    }
	}

}

if (attack == AT_FAIR)
{
	if (window == 1)
	{
		can_jump = true;
	}

}

if (attack == AT_DAIR){
	
	can_fast_fall = false;
}

if (attack == AT_EXTRA_2)
{

    if (window == 3 && window_timer == get_window_value(AT_EXTRA_2, 3, AG_WINDOW_LENGTH)) 
    {
    	if (slashed = true)
		{
			window = 4;
			window_timer = 0;
		}
    	
		if (slashed = false)
		{
    		destroy_hitboxes();  
			attack_end();
			set_state(PS_IDLE);			
		}
		
    }
    
    if (window == 2 && window_timer == get_window_value(AT_EXTRA_2, 2, AG_WINDOW_LENGTH))
    {
		window = 28;
        window_timer = 0;    	
    }
    
    if (window == 28 && window_timer == get_window_value(AT_EXTRA_2, 28, AG_WINDOW_LENGTH))
    {
		window = 3;
        window_timer = 0;    	
    }
    
    if (window == 27 && window_timer == get_window_value(AT_EXTRA_2, 27, AG_WINDOW_LENGTH))
    {
    		destroy_hitboxes();  
			attack_end();
			set_state(PS_IDLE);	  	
    }       
    
	can_fast_fall = false;
	can_move = false;
    if (window == 3 && window_timer == 1)
    {
        create_hitbox(AT_EXTRA_2, 2, x + (45* spr_dir), y - 25 );
         sound_play (asset_get("sfx_abyss_explosion_big"));
         cur_card = 15;
    }
    if (window == 5 && window_timer == 1)
    {
        create_hitbox( AT_EXTRA_2, 2, x + (45* spr_dir), y - 25 );
         sound_play (asset_get("sfx_abyss_explosion_big"));
    }
    if (window == 6 && window_timer == 1)
    {
        create_hitbox( AT_EXTRA_2, 2, x + (45* spr_dir), y - 25 );
        sound_play (asset_get("sfx_abyss_explosion_big"));
    }
    if (window == 7 && window_timer == 1)
    {
        create_hitbox( AT_EXTRA_2, 2, x + (45* spr_dir), y - 25 );
        sound_play (asset_get("sfx_abyss_explosion_big"));
    }  
    if (window == 8 && window_timer == 1)
    {
        create_hitbox( AT_EXTRA_2, 2, x + (45* spr_dir), y - 25 );
        sound_play (asset_get("sfx_abyss_explosion_big"));
    }    
    if (window == 9 && window_timer == 1)
    {
        create_hitbox( AT_EXTRA_2, 2, x + (45* spr_dir), y - 25 );
        sound_play (asset_get("sfx_abyss_explosion_big"));
    }
    if (window == 10 && window_timer == 1)
    {
        create_hitbox( AT_EXTRA_2, 2, x + (45* spr_dir), y - 25 );
        sound_play (asset_get("sfx_abyss_explosion_big"));
    }    
    if (window == 11 && window_timer == 1)
    {
        create_hitbox( AT_EXTRA_2, 2, x + (45* spr_dir), y - 25 );
        sound_play (asset_get("sfx_abyss_explosion_big"));
    }
    if (window == 12 && window_timer == 1)
    {
        create_hitbox( AT_EXTRA_2, 2, x + (45* spr_dir), y - 25 );
        sound_play (asset_get("sfx_abyss_explosion_big"));
    }
    if (window == 13 && window_timer == 1)
    {
        create_hitbox( AT_EXTRA_2, 2, x + (45* spr_dir), y - 25 );
        sound_play (asset_get("sfx_abyss_explosion_big"));
    }
    if (window == 14 && window_timer == 1)
    {
        create_hitbox( AT_EXTRA_2, 2, x + (45* spr_dir), y - 25 );
        sound_play (asset_get("sfx_abyss_explosion_big"));
    }
    if (window == 15 && window_timer == 1)
    {
        create_hitbox( AT_EXTRA_2, 2, x + (45* spr_dir), y - 25 );
        sound_play (asset_get("sfx_abyss_explosion_big"));
    }  
    if (window == 16 && window_timer == 1)
    {
        create_hitbox( AT_EXTRA_2, 2, x + (45* spr_dir), y - 25 );
        sound_play (asset_get("sfx_abyss_explosion_big"));
    }
    if (window == 17 && window_timer == 1)
    {
        create_hitbox( AT_EXTRA_2, 2, x + (45* spr_dir), y - 25 );
        sound_play (asset_get("sfx_abyss_explosion_big"));
    } 
    
    if (window == 18 && window_timer == 1)
    {
        create_hitbox( AT_EXTRA_2, 2, x + (45* spr_dir), y - 25 );
        sound_play (asset_get("sfx_abyss_explosion_big"));
    } 
    
    if (window == 19 && window_timer == 1)
    {
        create_hitbox( AT_EXTRA_2, 2, x + (45* spr_dir), y - 25 );
        sound_play (asset_get("sfx_abyss_explosion_big"));
    }
    
    if (window == 22 && window_timer == 3)
    {
        create_hitbox( AT_EXTRA_2, 3, x - (94* spr_dir), y - 25 );
        sound_play (asset_get("sfx_abyss_explosion_big"));
    }


    if (window == 27 && window_timer == 1)
    {
        create_hitbox( AT_EXTRA_2, 4, x - (94* spr_dir), y - 25 );
        sound_play (asset_get("sfx_abyss_explosion_big"));
    }
    
    if (window == 27 && window_timer == 8)
    {
        create_hitbox( AT_EXTRA_2, 4, x - (94* spr_dir), y - 25 );
        sound_play (asset_get("sfx_abyss_explosion_big"));
    }   
        if (window == 27 && window_timer == 15)
    {
        create_hitbox( AT_EXTRA_2, 4, x - (94* spr_dir), y - 25 );
        sound_play (asset_get("sfx_abyss_explosion_big"));
    }   
        if (window == 27 && window_timer == 22)
    {
        create_hitbox( AT_EXTRA_2, 4, x - (94* spr_dir), y - 25 );
        sound_play (asset_get("sfx_abyss_explosion_big"));
    }   
        if (window == 27 && window_timer == 29)
    {
        create_hitbox( AT_EXTRA_2, 4, x - (94* spr_dir), y - 25 );
        sound_play (asset_get("sfx_abyss_explosion_big"));
    }   
        if (window == 27 && window_timer == 36)
    {
        create_hitbox( AT_EXTRA_2, 4, x - (94* spr_dir), y - 25 );
        sound_play (asset_get("sfx_abyss_explosion_big"));
    }   
        if (window == 27 && window_timer == 43)
    {
        create_hitbox( AT_EXTRA_2, 4, x - (94* spr_dir), y - 25 );
        sound_play (asset_get("sfx_abyss_explosion_big"));
    }   
        if (window == 27 && window_timer == 50)
    {
        create_hitbox( AT_EXTRA_2, 4, x - (94* spr_dir), y - 25 );
        sound_play (asset_get("sfx_abyss_explosion_big"));
    }   
        if (window == 27 && window_timer == 55)
    {
        create_hitbox( AT_EXTRA_2, 5, x - (94* spr_dir), y - 25 );
        sound_play (asset_get("sfx_abyss_explosion_big"));
    }   
    
    if (window == 1)
    {
        create_hitbox( AT_EXTRA_2, 1, x, y);
    }
    
    if (window == 2)
    {
        create_hitbox( AT_EXTRA_2, 1, x, y);
    }
    
    if (window == 28)
    {
        create_hitbox( AT_EXTRA_2, 1, x, y);
    }      
    
     if (window == 1 && window_timer == 1)
    {
        sound_play (sound_get("super"));
    }
	    if (my_hitboxID.attack == AT_EXTRA_2 && my_hitboxID.hbox_num == 2) 
	    {
			hit_player_obj.wrap_time = 60;
			hit_player_obj.state = PS_WRAPPED;
			hitplayer = hit_player_obj;
			hit_player_obj.x = x + 48 * spr_dir;
		    hit_player_obj.y = y;
		}  
		
		if (my_hitboxID.attack == AT_EXTRA_2 && my_hitboxID.hbox_num == 3) 
	    {
			hit_player_obj.wrap_time = 100;
			hit_player_obj.state = PS_WRAPPED;
			hitplayer = hit_player_obj;
		}
		
		
if (window == 3 && window_timer == get_window_value(AT_EXTRA_2, 3, AG_WINDOW_LENGTH))
{
	slashed = false;
}

}

if (attack == AT_TAUNT)
{
	can_jump = true;
	can_shield = true;
	
	if (window == 1 && window_timer == 1){
        times_through = 0;
    }
    
        if (window == 6){
        if (window_timer == get_window_value(AT_TAUNT, 6, AG_WINDOW_LENGTH)){
            if (times_through < 1){
                times_through += 1;
                window = 2;
                window_timer = 0;
            }
        }

    }
	
	if (window == 6 && window_timer == get_window_value(AT_TAUNT, 6, AG_WINDOW_LENGTH) && cards > 0)
	{
		if (times_through == 1)
		{
				attack_end();
	set_state(PS_IDLE);
			cards -= 1;
		}
	}
}








































