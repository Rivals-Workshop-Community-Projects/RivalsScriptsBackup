//B - Reversals
if (attack == AT_NSPECIAL || attack == AT_FSPECIAL || attack == AT_DSPECIAL || attack == AT_USPECIAL){
    trigger_b_reverse();
}

if (attack == AT_USTRONG)
{
    can_fast_fall = false;
    if (window == 5 && window_timer == 9)
    {
    if (has_hit)
    {
        set_state(PS_AIR_IDLE);
    }
    else
    {
        set_state(PS_PRATFALL);
    }
    }
}

if (attack == AT_FSPECIAL)
{
    if (window == 1)
    {
    //transform sfx	
   	if window_timer == 1 && !hitpause {
		sound_play(asset_get("sfx_frog_fspecial_charge_gained_1"),false,noone,.5,1.2 )
		sound_play(asset_get("sfx_flareo_rod"),false,noone,1,0.7 + chestoCharge/120 )
	}
	//easing momentum
    if vsp > 0 vsp /= 1.15
    vsp /= 1.1
    hsp /= 1.2
	move_cooldown[AT_FSPECIAL] = 999;
	chestoCharge = 0;
    }
    can_fast_fall = false;
    if (window == 2)
    {
    //easing momentum
    if vsp > 0 vsp /= 1.15
    vsp /= 1.1
    hsp /= 1.2
	can_jump = true;
	//charge sfx	
	if window_timer == 1 && !hitpause {
		sound_play(asset_get("sfx_flareo_rod"),false,noone,1,0.7 + chestoCharge/120 )
		spawn_hit_fx(x - 30*spr_dir,y-40,14)
	}
        if (special_down && chestoCharge < 60)
	    {
	    chestoCharge += 1;
        }
	else
	{
		//change hit sfx base on charge
	    set_hitbox_value(AT_FSPECIAL, 2, HG_DAMAGE, 6 + (chestoCharge / 10));
	    if chestoCharge < 30 {
	    	set_hitbox_value(AT_FSPECIAL, 2, HG_HIT_SFX, asset_get("sfx_blow_medium3"));
	    } else {
	    	set_hitbox_value(AT_FSPECIAL, 2, HG_HIT_SFX, asset_get("sfx_blow_heavy1"));
	    }
	    window = 3;
        window_timer = 0;
        hsp = (16 + (chestoCharge / 3))*spr_dir
	}
    }
    if window == 3 {
    	//dash sfx, grow deeper the more it charged
    	if window_timer == 1 && !hitpause {
    		sound_play(asset_get("sfx_bird_sidespecial_start"),false,noone,.7,1.2 - chestoCharge/120 )
    		sound_play(asset_get("sfx_bird_downspecial"),false,noone,.7,1.2 - chestoCharge/120 )
    	}
    	vsp = 0
    	hsp /= 1.05
    	if free hsp /= 1.05
    	if has_hit && !hitpause {
    		window = 4
    		window_timer = -1
    	}
    }
    
    if window > 3 {
    	//cancel and pratfall stuff
    	if has_hit && window == 4 && window_timer > 2 && !hitpause {
    		if up_down && !down_down {
    			attack_end()
    			set_attack(AT_UTILT)
    			window = 1
    			window_timer = 0
    		}
    		if down_down && !up_down  {
    			attack_end()
    			if !free {
    			hsp = 12*spr_dir 
    			set_attack(AT_FTILT)
    			window = 1
    			window_timer = 0
    			spr_dir *= -1
    			} else {
    			vsp = -4
    			hsp = 6*spr_dir 
    			set_attack(AT_DAIR)
    			window = 1
    			window_timer = 6	
    			}
    		}
    	}
    	
    	if !has_hit && window = 5 {
    		set_state(PS_PRATFALL)
    	}
    	vsp /= 1.2
    	hsp /= 1.05
    	if free hsp /= 1.05	
    }
}

if (attack == AT_USPECIAL)
{
    can_fast_fall = false;
    if (window == 1)
    {
	move_cooldown[AT_USPECIAL] = 999;
	if (vsp > 0)
	{
	    vsp = vsp * 0.8;
	}
    }
	if (window == 2)
	{
    	if (window_timer == 4)
    	{
        sound_play(asset_get("sfx_bird_sidespecial"));
    	}
}

    if (window == 3)
    {
	can_wall_jump = true;
	can_shield = true;
	if (vsp > 0)
	{
	    grav = 0.05;
	}
	if (vsp < 0)
	{
	    grav = 0.65;
	}
	if (down_pressed)
	{
    	    window = 4;
    	    window_timer = 0;
	}
    }
}

if (attack == AT_DSPECIAL)
{
    if (window == 2)
    {
    super_armor = true;
    }
    else
    {
    super_armor = false;
    }
    if (window == 1)
    {
    myDmg = get_player_damage(player);
    reflectHit = false;
    set_window_value(AT_DSPECIAL, 3, AG_WINDOW_INVINCIBILITY, 0);
    set_num_hitboxes(AT_DSPECIAL, 2);
    set_hitbox_value(AT_DSPECIAL, 1, HG_DAMAGE, 4);
    set_hitbox_value(AT_DSPECIAL, 2, HG_DAMAGE, 4);
    }
    if (free)
    {
    move_cooldown[AT_DSPECIAL] = 999;
    }
    if (!free)
    {
    move_cooldown[AT_DSPECIAL] = 90;
    }
    can_fast_fall = false;
    if (window == 3 && window_timer == 7)
    {
    if (reflectHit)
    {
        window = 5;
        window_timer = 0;
        counterBonus = get_player_damage(player) - myDmg;
        set_hitbox_value(AT_DSPECIAL, 1, HG_DAMAGE, 4 + (counterBonus / 2));
        set_hitbox_value(AT_DSPECIAL, 2, HG_DAMAGE, 4 + (counterBonus / 2));
        set_hitbox_value(AT_DSPECIAL, 2, HG_BASE_KNOCKBACK, 8 + (counterBonus / 8));
        set_hitbox_value(AT_DSPECIAL, 2, HG_KNOCKBACK_SCALING, 0.65 + (counterBonus / 24));
        set_player_damage(player, myDmg);
    }
    }
}

//JAB
if (attack == AT_JAB)
{
    if (window == 1)
    {
    if (window_timer > 15 && attack_pressed)
    {
        window = 2;
        window_timer = 0;
    }
    }
    if (window == 2)
    {
    if (window_timer > 15 && attack_pressed)
    {
        window = 3;
        window_timer = 0;
    }
    }
}

//FAIR
if (attack == AT_FAIR)
{
	if (window == 1)
	{
		if (window_timer > 16 && attack_pressed)
		{
        		window = 2;
			window_timer = 0;
    		}
    		if (window_timer > 17)
    		{
        		can_special = true;
    		}
    	}
    	if (window == 2)
    	{
    		if (window_timer > 12 && attack_pressed)
    		{
        		window = 3;
        		window_timer = 0;
    		}
    		if (window_timer > 13)
    		{
        		can_special = true;
    		}
    	}
    	if (window == 3)
    	{
    		if (window_timer > 12)
    		{
        		can_special = true;
    		}
    	}
}

if (attack == AT_DAIR)
{
    if (window != 3)
    {
	can_fast_fall = false;
    }
    else
    {
	can_fast_fall = true;
    }
}