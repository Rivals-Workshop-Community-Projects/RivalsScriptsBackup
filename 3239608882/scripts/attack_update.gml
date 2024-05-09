//B - Reversals
if (attack == AT_NSPECIAL || attack == AT_FSPECIAL || attack == AT_DSPECIAL || attack == AT_USPECIAL){
    trigger_b_reverse();
}

if (attack == AT_DATTACK)
{
if (window == 1 && window_timer == get_window_value(attack, 1, AG_WINDOW_LENGTH))
{
	times_through = 0;
}	
    if (window == 2)
    {
        if (window_timer == get_window_value(attack, 2, AG_WINDOW_LENGTH)){
            if (times_through < 3){
                times_through += 1;
                window = 2;
                window_timer = 0;
            }
            if (times_through >= 3){
                window = 3;
                window_timer = 0;
            }
        }
	}
}

if (attack == AT_DSTRONG)
{
can_fast_fall = false;	
	if (window == 2)
	{
		draw_orb = true;
	}
if (window == 3)
{
    draw_orb = false;
}	
	
}

if (attack == AT_FSTRONG)
{
can_fast_fall = false;	
	if (window == 2)
	{
		draw_flame = true;
	}
if (window == 3)
{
    draw_flame = false;
}	
	
}

if (attack == AT_NAIR)
{
can_fast_fall = false;	
	
}

if (attack == AT_DAIR)
{
can_fast_fall = false;	
	
}

//Fling
if (attack == AT_NSPECIAL)
{
    if (window == 1 && window_timer == 1)
    {
        item_cycle = 0;
        var item_rand = random_func(0, 5, true);//need to adjust odds
        item = item_rand;
    }    
    if (window == 3)
    {
    if (window_timer == get_window_value(attack, 3, AG_WINDOW_LENGTH))
    {
        if (special_down)
        {
            item_cycle++;
            window = 8;
            window_timer = 0;
        }
    }
    }
    
    if (window = 8)
    {
        can_shield = true;
    if (window_timer == get_window_value(attack, 8, AG_WINDOW_LENGTH))
    {
        if (special_down)
        {
            item_cycle++;
            window = 8;
            window_timer = 0;
        }
    } 
        if (!special_down)
        {
            window = 4;
            window_timer = 0;
        }     
    }
 //items  
     if (window == 5 and window_timer = 1)
    {
    	if (item == 0)
    	{
    		create_hitbox(AT_NSPECIAL, 1, x + (5* spr_dir), y - 25 ); //tomb
    	}
    	if (item == 1)
    	{
    	var article = instance_create(x + (5 * spr_dir), y - 25, "obj_article2"); //iron ball
    	article.spr_dir = spr_dir;
    	article.num = "2";
    	}
    	if (item == 2)
    	{
    		create_hitbox(AT_NSPECIAL, 5, x, y - 45); //toxic orb
    	} 
    	
    	if (item == 3)
    	{
    	var voltorb = instance_create(x + (25 * spr_dir), y - 55, "obj_article3"); //voltorb
    	voltorb.spr_dir = spr_dir;
    	}
    	if (item == 4)
    	{
    	var article = instance_create(x + (5 * spr_dir), y - 25, "obj_article2"); //leftovers
    	article.spr_dir = spr_dir;
    	article.num = "4";
    	}    	
    	
    }
     if (window == 7 and window_timer == get_window_value(attack, 7, AG_WINDOW_LENGTH))
    {
        move_cooldown[AT_NSPECIAL] = 5;
        set_state( PS_IDLE );
    }
}

//Will o wisp
if (attack == AT_FSPECIAL)
{
    if (window == 4 and window_timer == get_window_value(attack, 4, AG_WINDOW_LENGTH))
    {
        move_cooldown[AT_FSPECIAL] = 5;
    }
}

//Trick
if (attack == AT_USPECIAL)
{
    if (window == 4 and window_timer == 1 and can_trick == 0)
    {
        item = 6;
        trick = true;
        var article = instance_create(x + (25 * spr_dir), y - 35, "obj_article2"); //iron ball
    	article.spr_dir = spr_dir;
    	article.num = "5"; //trick gem
    }
    
}

if (attack == AT_USPECIAL_2) //trick teleport
{
    can_fast_fall = false;
    if (window == 2 && window_timer == 1)
	{
	    can_trick += 1;
	    trick = false;
	}
}


//Foul play
if (attack == AT_DSPECIAL)
{
    can_fast_fall = false; 
    var percent = get_player_damage(player);
    
    //set up FP scaling stuff
    var base_damage = 5;
    var damage_scaling = percent * 0.10;
    var fp_damage = base_damage + damage_scaling;
    
    var base_kb = 6;
    var kb_scaling = percent * 0.10;
    var fp_kb = base_kb + kb_scaling; 
    
    var base_hitpause = 5;
    var hitpause_scaling = 0;
    var fp_hitpause = base_hitpause + hitpause_scaling; 
    
    set_hitbox_value(AT_DSPECIAL, 1, HG_DAMAGE, fp_damage);
    set_hitbox_value(AT_DSPECIAL, 1, HG_BASE_KNOCKBACK, fp_kb);
    set_hitbox_value(AT_DSPECIAL, 1, HG_BASE_HITPAUSE, fp_hitpause);
    
    set_hitbox_value(AT_DSPECIAL, 2, HG_DAMAGE, fp_damage);
    set_hitbox_value(AT_DSPECIAL, 2, HG_BASE_KNOCKBACK, fp_kb);
    set_hitbox_value(AT_DSPECIAL, 2, HG_BASE_HITPAUSE, fp_hitpause);
    
    //turn around code
	if (window == 2)
	{
	    	if (spr_dir == 1) && (left_pressed) 
	    	{
                spr_dir = -1;
            }
            if (spr_dir == -1) && (right_pressed) 
            {
                spr_dir = 1;
            }
	}

}







































