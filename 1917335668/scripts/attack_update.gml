//B - Reversals
if (attack == AT_NSPECIAL || attack == AT_FSPECIAL || attack == AT_DSPECIAL || attack == AT_USPECIAL || attack == AT_NSPECIAL_2 || attack == AT_EXTRA_1 || attack == AT_EXTRA_2){
    trigger_b_reverse();
}

//Misc


if (attack == AT_EXTRA_3)
{
    can_move = false;
	can_jump = false;
}


// Specials

if (attack == AT_NSPECIAL)
{

    if (window == 2)
    {
        hsp *= 0.25;
        
        if (rolloutcharge >= 10 || !special_down)
        {
            charge = rolloutcharge * 5;
            rolloutcharge = 0;
            window = 3;
            window_timer = 0;
            sound_play(asset_get("sfx_swipe_medium1"));
        }
        
        
        
        if (window_timer > 8 && special_down)
        {
            window = 2;
            window_timer = 0;
            rolloutcharge += 1;
            set_hitbox_value(AT_NSPECIAL, 1, HG_DAMAGE, get_hitbox_value( AT_NSPECIAL, 1, HG_DAMAGE ) + (rolloutcharge * 0.5) );
            set_hitbox_value(AT_NSPECIAL, 1, HG_KNOCKBACK_SCALING, get_hitbox_value( AT_NSPECIAL, 1, HG_KNOCKBACK_SCALING) + (rolloutcharge * 0.01) );
        }
        

        
    }
    
    if (window == 3 && charge > 0)
    {
        charge -= 1;
        
        hsp = 10 * spr_dir;     
        
        if (spr_dir == 1 && (joy_dir >= 157.5 && joy_dir < 202.5))
              {
                      if (has_hit_player)
                            {
                                attack_end();
                            }
                window_timer = 0;
                window = 4;
                sound_play(asset_get("sfx_swipe_medium1"));

              }
        else if (spr_dir == -1 && ((joy_dir >= 337.5 && joy_dir <= 360 ) || (joy_dir >= 1 && joy_dir < 22.5 )))
              {
                         if (has_hit_player)
                            {
                                attack_end();
                            }
                window_timer = 0;
                window = 5;
                sound_play(asset_get("sfx_swipe_medium1"));
              }
        
        
        if (window_timer > 8)
        {
        window_timer = 0;
        window = 3;
        }
        if (charge <= 0)
        {
            window = 6;
        }

        
    }
    
    if (window == 4)
    {
        spr_dir = -1;
        charge -= 0.25;
        if (charge <= 0)
        {
            window = 6;
        }
        if (window_timer > 19)
        {
            window_timer = 0;
            window = 3;
        }

    }
    
    if (window == 5)
    {
        spr_dir = 1;
        charge -= 0.25;
        
        if (charge <= 0)
        {
            window = 6;
        }
        if (window_timer > 19)
        {
            window_timer = 0;
            window = 3;
        }
        
    }
    
    
    if (window == 6)
    {
        set_hitbox_value( AT_NSPECIAL, 1, HG_DAMAGE, 6 );
        set_hitbox_value( AT_NSPECIAL, 1, HG_KNOCKBACK_SCALING, 1 );
    }
    
}



if (attack == AT_FSPECIAL){

move_cooldown[AT_FSPECIAL] = 20;

    if (window == 2){
        if (!joy_pad_idle && free){
            vsp = lengthdir_y(1, joy_dir) * 3;
        }
    }
    can_fast_fall = false;
}

if (attack == AT_DSPECIAL){
    can_fast_fall = false;
	hsp = 1.5;
}

if (attack == AT_USPECIAL){
    attack_end();
    hsp *= 0.5;
    can_fast_fall = false;
}



if (attack == AT_DSPECIAL && has_hit_player == true){

	set_window_value(AT_DSPECIAL, 2, AG_WINDOW_LENGTH, 80);
	set_window_value(AT_DSPECIAL, 3, AG_WINDOW_LENGTH, 30);
	attack_end();

}

if (attack == AT_DSPECIAL && has_hit_player == false){

	set_window_value(AT_DSPECIAL, 2, AG_WINDOW_LENGTH, 168);
	set_window_value(AT_DSPECIAL, 3, AG_WINDOW_LENGTH, 40);
	attack_end();

}



if (attack == AT_JAB){

    if (window == 3){

        if (window_timer >= 5)
        {
            window = 6;
            window_timer = 0;
        }

        if (attack_pressed){
            window = 4;
            window_timer = 0;
            attack_end();
        }

    }

}




