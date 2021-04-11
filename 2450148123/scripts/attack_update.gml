//sfx code
user_event(1);
user_event(2);

//B - Reversals
if (attack == AT_NSPECIAL || attack == AT_FSPECIAL || attack == AT_DSPECIAL || attack == AT_USPECIAL) && !stopbreverse{
    trigger_b_reverse();
}

    if (window == 1 && window_timer == 1)
        clear_button_buffer( PC_ATTACK_PRESSED )
    


if (attack != AT_DSTRONG && has_hit)
{
	firstattack = false;
}



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
        can_ustrong = true;
        
    }
    
}

if (attack == AT_FTILT)
{
    //cant gatling
    move_cooldown[AT_FTILT] = 1;
    move_cooldown[AT_DTILT] = 1;
    move_cooldown[AT_JAB] = 1;
    
    can_move = false;
	
    if (has_hit && (attack_pressed || (left_stick_pressed && spr_dir = -1) || (right_stick_pressed && spr_dir = 1)) && window == 2) && !was_parried
    confirm_ftilt = true;
    
    if (window == 2 && window_timer > 8) && ((attack_pressed || (left_stick_pressed && spr_dir = -1) || (right_stick_pressed && spr_dir = 1)) || confirm_ftilt) && !was_parried
    {
        attack_end();
        destroy_hitboxes();
        window = 3;
        window_timer = -1;
        hsp += 5 * spr_dir;
        confirm_ftilt = false;
    }
    else if (window == 2 && window_timer == 19)
    {
        window = 4;
        window_timer = 0;
    }
    
    if has_hit
    {
        can_attack = true;
        can_strong = true;
        can_ustrong = true;
                
    }
    
}
else
confirm_ftilt = false;

if (attack == AT_UTILT)
{
    move_cooldown[AT_UTILT] = 1;
    move_cooldown[AT_FTILT] = 1;
    move_cooldown[AT_DTILT] = 1;
    move_cooldown[AT_JAB] = 1;
    
    if has_hit
    {
        can_strong = true;
        can_ustrong = true;
        can_attack = true;
        can_jump = true;
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
    
    move_cooldown[AT_UAIR] = 1;
    move_cooldown[AT_FAIR] = 1;
    move_cooldown[AT_DAIR] = 1;
    move_cooldown[AT_NAIR] = 1;
    move_cooldown[AT_BAIR] = 1;
    
    if (window == 3 || has_hit) && (attack_pressed || ((left_strong_pressed && spr_dir = -1) || (right_strong_pressed && spr_dir = 1))) && !was_parried
    confirm_fstrong = true;
    
    if (window == 7)
    {
    	if (window_timer == get_window_value( attack, window, AG_WINDOW_LENGTH ) - 1)
    	{
    	window = 8;
        window_timer = get_window_value( attack, 6, AG_WINDOW_LENGTH );
    	}
    	
    	landing_lag_time = 15
        if !free
        set_state(PS_LANDING_LAG);
    }
    
    if (window == 4) && (attack_pressed || (left_strong_pressed && spr_dir = -1) || (right_strong_pressed && spr_dir = 1) || confirm_fstrong) && !was_parried
    {
        attack_end();
        window_timer = get_window_value( attack, window, AG_WINDOW_LENGTH );
        confirm_fstrong = false;
        

    }
    else if (window == 4 && window_timer == get_window_value( attack, window, AG_WINDOW_LENGTH ) - 1)
    {
    	landing_lag_time = 0;
        window = 8;
        window_timer = -1;
    }
    
    
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
    
    move_cooldown[AT_UAIR] = 1;
    move_cooldown[AT_FAIR] = 1;
    move_cooldown[AT_DAIR] = 1;
    move_cooldown[AT_NAIR] = 1;
    move_cooldown[AT_BAIR] = 1;
    
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
    
    move_cooldown[AT_UAIR] = 1;
    move_cooldown[AT_FAIR] = 1;
    move_cooldown[AT_DAIR] = 1;
    move_cooldown[AT_NAIR] = 1;
    
    can_attack = true;
    
}


if (attack == AT_DATTACK)
{
    if (window == 2 && window_timer == 14 && has_hit) 
    {
        hsp = 3 * spr_dir;
        
        if (hit_player_obj.x < x)
            spr_dir = -1;
            
        if (hit_player_obj.x > x)
        spr_dir = 1;   
    }
    
    if (!has_hit && window < 3)
    hsp = 7 * spr_dir;


    
    if (window == 2 && window_timer == 12) && !has_hit
    {
        window = 4;
        window_timer = -1;

    }

    if (window == 3 && window_timer == 9)
    {

            
        window = 4;
        window_timer = -1;
        
    }
    
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


if (attack == AT_UAIR)
{
    move_cooldown[AT_NAIR] = 1;
    move_cooldown[AT_UAIR] = 1;
    move_cooldown[AT_BAIR] = 1;
    
    move_cooldown[AT_JAB] = 1;
    move_cooldown[AT_FTILT] = 1;
    move_cooldown[AT_UTILT] = 1;
    move_cooldown[AT_DTILT] = 1;
    
    move_cooldown[AT_FSTRONG] = 1;
    move_cooldown[AT_USTRONG] = 1;
    move_cooldown[AT_DSTRONG] = 1;
    
    if has_hit
    {
        can_attack = true;
    }

}

if (attack == AT_FAIR)
{
    move_cooldown[AT_NAIR] = 1;
    move_cooldown[AT_FAIR] = 1;
    move_cooldown[AT_UAIR] = 1;
    move_cooldown[AT_BAIR] = 1;
    
    move_cooldown[AT_JAB] = 1;
    move_cooldown[AT_FTILT] = 1;
    move_cooldown[AT_UTILT] = 1;
    move_cooldown[AT_DTILT] = 1;
    
    move_cooldown[AT_FSTRONG] = 1;
    move_cooldown[AT_USTRONG] = 1;
    move_cooldown[AT_DSTRONG] = 1;
    
    if window == 1 && (attack_down || (left_stick_pressed && spr_dir = -1) || (right_stick_pressed && spr_dir = 1))
    {
        if (vsp > 0)
        vsp -= 1;
        else
        vsp -= 0.2;
    }
    else if window == 1 && window_timer > 10
    {
        window = 2;
        window_timer = -1;
    }
    
    if has_hit
    {
        can_attack = true;
    }
    
}




if (attack == AT_DAIR)
{
    move_cooldown[AT_NAIR] = 1;
    move_cooldown[AT_FAIR] = 1;
    move_cooldown[AT_UAIR] = 1;
    move_cooldown[AT_DAIR] = 1;
    move_cooldown[AT_BAIR] = 1;
    
    move_cooldown[AT_JAB] = 1;
    move_cooldown[AT_FTILT] = 1;
    move_cooldown[AT_UTILT] = 1;
    move_cooldown[AT_DTILT] = 1;
    
    move_cooldown[AT_FSTRONG] = 1;
    move_cooldown[AT_USTRONG] = 1;
    move_cooldown[AT_DSTRONG] = 1;
    
    can_attack = true;
}

if (attack == AT_BAIR)
{
    move_cooldown[AT_NAIR] = 1;
    move_cooldown[AT_FAIR] = 1;
    move_cooldown[AT_UAIR] = 1;
    move_cooldown[AT_BAIR] = 1;
    
    move_cooldown[AT_JAB] = 1;
    move_cooldown[AT_FTILT] = 1;
    move_cooldown[AT_UTILT] = 1;
    move_cooldown[AT_DTILT] = 1;
    
    move_cooldown[AT_FSTRONG] = 1;
    move_cooldown[AT_USTRONG] = 1;
    move_cooldown[AT_DSTRONG] = 1;
    
    can_attack = true;
}

    
if (attack == AT_NSPECIAL_AIR || attack == AT_NSPECIAL_AIR_2){
    has_airdash = false;
    can_fast_fall = false;
    move_cooldown[AT_NSPECIAL] = 90;
    move_cooldown[AT_NSPECIAL_2] = 90;
    move_cooldown[AT_NSPECIAL_AIR] = 90;
    move_cooldown[AT_NSPECIAL_AIR_2] = 90;
}

if (attack == AT_NSPECIAL || attack == AT_NSPECIAL_2){
	move_cooldown[AT_NSPECIAL] = 90;
    move_cooldown[AT_NSPECIAL_2] = 90;
    move_cooldown[AT_NSPECIAL_AIR] = 90;
    move_cooldown[AT_NSPECIAL_AIR_2] = 90;
}

if (attack == AT_USPECIAL || attack == AT_USPECIAL_2){
    has_airdash = false;
    can_move = false;
    can_fast_fall = false;
    can_wall_jump = true;
}

if (attack == AT_DSPECIAL || attack == AT_DSPECIAL_2){
    
    can_move = false;
    can_fast_fall = false;
    can_dspec = false;
    can_wall_jump = true;
    
    if (state_timer = 0){
    clear_button_buffer( PC_SPECIAL_PRESSED );
    clear_button_buffer( PC_ATTACK_PRESSED );
    }
    
    if (!was_parried)
    {
    	
    if (reentry > 0)
    fall_through = true;
    
    if has_hit
    {
       destroy_hitboxes();
        if (window == 2)
        {
        reentry_pressed = false;
        window = 3;
        window_timer = 15;
        has_hit = false;
        }
    }
    else if (window == 2 && window_timer == 15)
    {
        window = 6;
        window_timer = -1;
    }
    
    
    if (window == 4)
    {
         has_airdash = true;
        if ( (special_pressed || attack_pressed) && reentry < 2 && !reentry_pressed) && !was_parried
        {
            reentry_pressed = true;
            clear_button_buffer( PC_SPECIAL_PRESSED );
            reentry += 1;
        }
    }
    else
    has_airdash = false;
    
    if (window == 4 && window_timer = 11 && !reentry_pressed )
    {
        window = 6;
        reentry = 0;
    }
    else if (window == 4 && window_timer = 11)
    {
        attack_end();
        destroy_hitboxes();
        clear_button_buffer( PC_SPECIAL_PRESSED );
        
        if (reentry < 2)
        window = 2;
        else if (reentry = 2)
        window = 5;
        
        window_timer = -1;
        
    }
    


    }
    
    else if (window != 6)
    {
        window = 6;
    	window_timer = -1;
    }
    
    if (!free) || (window == 6)
    {
    	landing_lag_time = 10
    	
        if !free && !was_parried
        set_state(PS_LANDING_LAG);
        
        reentry_pressed = false;
	    reentry = 0;
    }
}


if (attack == AT_FSPECIAL || attack == AT_FSPECIAL_2){
    can_fast_fall = false;
    has_airdash = false;
    can_move = false;
    can_wall_jump = true;
    northknuckle_used = true;
    
    if (window == 2 && hitstop > 0) && (special_pressed || attack_pressed) && has_hit && !was_parried
    {
        attack_end();
        destroy_hitboxes();
        window = 3;
        window_timer = -1;
        hsp /= 3;
    }
    else if (window == 2 && window_timer == get_window_value( attack, 2, AG_WINDOW_LENGTH ) - 1)
    {
        window = 3;
        window_timer = 11;
    }
    
}



if (attack == AT_TAUNT)
{
	
	
	
	if (window = 2 || window = 3 || window = 4){
	initial_invince = 2;
	
		var countertrigger, counterplayer = id;
		
		with (pHitBox){
			if player != counterplayer.player && type = 1
			{
			countertrigger = instance_place(x, y, counterplayer);
			
				if (countertrigger){
				player_id.x = counterplayer.x + (30 * counterplayer.spr_dir);
				player_id.y = counterplayer.y;
				}
			
			}
			else if (player != counterplayer.player && type = 2)
			{
				counterplayer.initial_invince = 0;
			}
			
		}
		
		if (!countertrigger && (window_timer = 19))
		{
			window = 6;
			window_timer = -1;
		}
		else if (countertrigger)
		{
			attack_end();
			destroy_hitboxes();
			window_timer = 19;
		}

	
	}
	else 
	initial_invince = 0;
}


if (attack == AT_EXTRA_1)
{
	initial_invince = 2;
	suppress_stage_music(0);
	if (window = 7 && window_timer == 9)
	{
		install = true;
		initial_invince = 0;
	}
}

if (attack == AT_EXTRA_2)
{
vsp = 0;
hsp = 0;
can_move = false;
can_fast_fall = false;


}

if (attack == 49)
{
vsp = 0;
hsp = 0;
can_move = false;
can_fast_fall = false;	
	
	if (window = 2 && window_timer = 1 && final_smash_loop = 0)
	{
		sound_play(sound_get("beam"));
	}
	
	if (window = 2 && window_timer = 9) && final_smash_loop < 10
	{
		window_timer = 0;
		final_smash_loop++;
	}
	
}

if (attack != AT_NSPECIAL &&
attack != AT_NSPECIAL_2 &&

attack != AT_NSPECIAL_AIR &&
attack != AT_NSPECIAL_AIR_2 &&

attack != AT_FSPECIAL &&
attack != AT_FSPECIAL_2 &&

attack != AT_USPECIAL &&
attack != AT_USPECIAL_2 &&

attack != AT_DSPECIAL &&
attack != AT_DSPECIAL_2 &&

attack != AT_DATTACK &&
attack != AT_EXTRA_1 &&
attack != AT_EXTRA_2 &&
attack != AT_TAUNT &&
attack != AT_PHONE &&
attack != 49 &&
!was_parried
)
{
	can_attack = true;
    can_special = true;
}

if (install)
{
	if (attack_pressed && special_pressed &&
	attack != AT_EXTRA_2 &&
	attack != AT_TAUNT &&
	attack != AT_PHONE && 
	attack != 49 &&
	!was_parried
	)
	{

		can_special = true;
		hitstop = 0;
	}
}

if (fs_charge = 200)
{
	if (special_down && joy_pad_idle &&
	attack != AT_EXTRA_1 &&
	attack != AT_EXTRA_2 &&
	attack != AT_TAUNT &&
	attack != AT_PHONE &&
	attack != 49 &&
	!was_parried
	)
	{
		can_special = true;
	}
}














