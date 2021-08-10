//B - Reversals
if (attack == AT_NSPECIAL || attack == AT_FSPECIAL || attack == AT_DSPECIAL || attack == AT_USPECIAL){
    trigger_b_reverse();
}




if (attack == AT_FTILT)
{
		if (my_hitboxID.attack == AT_FTILT && my_hitboxID.hbox_num == 1) 
	    {
        	can_special = true;
		}
}

if (attack == AT_DSTRONG)
{
    if (window == 2 && window_timer == 1)
    {
        sound_play(asset_get("sfx_swipe_heavy2"));
    }
}

if (attack == AT_DATTACK)
{
 
 if (window < 3)
 {
	can_move = false;
 }
 
    if (window == 2 && window_timer > 1){
        if (attack_down){
            window = 2;
            window_timer = 0;
        }
        
    }
    
    if (window == 2 && !free)
    {
    	window = 3;
        window_timer = 0;
    }
}

if (attack == AT_DAIR)
{
can_fast_fall = false;

    if (window == 2 && !free)
    {
    	window = 6;
        window_timer = 0;
        destroy_hitboxes();  
    }

    if (window == 5 && window_timer == 0)
    {
        destroy_hitboxes();  
    }

 
//    if (window == 2 && window_timer > 1){
  //      if (attack_down){
    //        window = 2;
      //      window_timer = 0;
        //}
        
    //}


}    

if (attack == AT_NSPECIAL){
    if (window == 2 && window_timer > 1){
        if (special_down){
            window = 2;
            window_timer = 0;
        }
        
    }
    
    if (window == 3 && window_timer == 4)
    {
        powerup = true;
    }
    
    if (window == 3 && window_timer == 3)
    {
        take_damage( player, -1, 5);
    }
    
    if (window == 3 && window_timer == 1)
    {
        sound_play(sound_get("roar"));
    }
    

}

if (attack == AT_NSPECIAL_2){

if (window <= 3) 
{
                if (spr_dir == 1) && (left_pressed) {
                spr_dir = -1;
            }
            if (spr_dir == -1) && (right_pressed) {
                spr_dir = 1;
            }
}
    
    if (window == 2 && window_timer > 1){

        if (special_down){
            window = 2;
            window_timer = 0;
        }
        
    }
    
    if (window == 3 && window_timer == 1){
        
        powerup = false;
        
    }    
    
}

if (attack == AT_FSPECIAL){
    
	    //if (window == 1 && window_timer > 1){
        //if (special_down){
          //  window = 1;
           // window_timer = 0;
        //}
        
    //}
	if (window == 3 && window_timer == get_window_value(AT_FSPECIAL, 3, AG_WINDOW_LENGTH) && has_hit_player == false) 
    {
        window = 6;
        window_timer = 0;
        move_cooldown[AT_FSPECIAL] = 20;
        
    }    
    
    if (window == 3 && has_hit_player == true && hitpause == false) 
    {
            destroy_hitboxes();        
        	window = 4;
			window_timer = 0;
	}
	
	if (window == 2)
	{
		soft_armor = 100;
	}	
	
	if (window == 3)
	{
		if (window_timer < 10)
		{
			soft_armor = 50;
		}
		
		if (window_timer >= 10)
		{
			soft_armor = 0;
		}
	}  
	
	if (window == 4)
	{
		soft_armor = 0;
	}
	
}

if (attack == AT_FSPECIAL_2){
    
	   // if (window == 1 && window_timer > 1){
        //if (special_down){
          //  window = 1;
            //window_timer = 0;
        //}
        
    //}
	if (window == 3 && window_timer == get_window_value(AT_FSPECIAL_2, 3, AG_WINDOW_LENGTH) && has_hit_player == false) 
    {
        window = 6;
        window_timer = 0;
        move_cooldown[AT_FSPECIAL] = 20;
        
    }    
    
    if (window == 3 && has_hit_player == true && hitpause == false) 
    {
            destroy_hitboxes();        
        	window = 4;
			window_timer = 0;
	}
	
    if (window == 2 && window_timer == 2){
        
        powerup = false;
        
    }
    
	if (window == 2)
	{
		soft_armor = 100;
	}    
    
	if (window == 3)
	{
		if (window_timer < 10)
		{
			soft_armor = 50;
		}
		
		if (window_timer >= 10)
		{
			soft_armor = 0;
		}
	}
	
	if (window == 4)
	{
		soft_armor = 0;
	}
	
}


if (attack == AT_USPECIAL)
{

can_fast_fall = false;


}

if (attack == AT_USPECIAL_2){
	
	can_fast_fall = false;
	
    if (window == 1 && window_timer == 1){
        
        powerup = false;
    }
 
}

if (attack == AT_DSPECIAL)
{
	can_fast_fall = false;
	
	if (window == 1 && free)
	{
		set_attack(AT_DSPECIAL_AIR);

	}
	
	if (window == 5 && window_timer == 11) 
    {
        move_cooldown[AT_DSPECIAL] = 7;
    }
	
}

if (attack == AT_DSPECIAL_AIR)
{
	can_fast_fall = false;
	
	if (!free)
	{
		destroy_hitboxes();  	
	}
	
	if (window == 2) 
    {
    	if (!free)
    	{
        	window = 4;
        	window_timer = 0;
        	destroy_hitboxes();  
        	//move_cooldown[AT_DSPECIAL] = 40;
    	}
        
    }
	
	if (window == 3) 
    {
    	if (!free)
    	{
        	window = 4;
        	window_timer = 0;
        	destroy_hitboxes();  
        	//move_cooldown[AT_DSPECIAL] = 20;
    	}
        
    }
	if (window == 4 && window_timer == get_window_value(AT_DSPECIAL_AIR, 4, AG_WINDOW_LENGTH)) 
    {
    	destroy_hitboxes();  
		attack_end();
		set_state(PS_IDLE);
		move_cooldown[AT_DSPECIAL] = 8;
    }
    
	if (window == 5 && window_timer == 11) 
    {
        move_cooldown[AT_DSPECIAL] = 9;
    }
    
    if (window == 4 && window_timer == 7) 
    {
        move_cooldown[AT_DSPECIAL] = 9;
    }
    
}

if (attack == AT_DSPECIAL_2){
	
	can_fast_fall = false;
	
    if (window == 1 && window_timer == 1){
        
        powerup = false;
    }
    
     if (window == 1 && window_timer == 11)
    {
        sound_play(sound_get("ZAP2"));
    }
    
     if (window == 5 && window_timer == 11)
    {
        sound_play(sound_get("ZAP"));
    }     

	    if (my_hitboxID.attack == AT_DSPECIAL_2 && my_hitboxID.hbox_num < 11) 
	    {
        	hitplayer = hit_player_obj;
			hit_player_obj.x = x + 40 * spr_dir;
			hitplayer.y = y;
		}
		
    
}









