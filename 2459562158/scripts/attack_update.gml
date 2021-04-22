// attack_update

//B - Reversals
if (attack == AT_NSPECIAL || attack == AT_FSPECIAL || attack == AT_USPECIAL || attack == AT_DSPECIAL){
    trigger_b_reverse();
}

// no fast fall zone
if (attack == AT_USPECIAL || attack == AT_DAIR || attack == AT_DSPECIAL || attack == AT_EXTRA_1 || attack == AT_FSPECIAL || attack == AT_FSPECIAL_2) 
{
    can_fast_fall = false;
}

switch(attack)
{
    case AT_DSTRONG:
        
    break;
    case AT_NSPECIAL:
        var time = get_window_value(AT_NSPECIAL, 2, AG_WINDOW_LENGTH);
        if (window == 2) and (window_timer == time)
        {
            inst = instance_create(x + 46 * spr_dir ,y - 48,"obj_article1")
        }
    break;
    case AT_FSPECIAL:
        
        y_hand = y - 44 - 10 * free;
    
        switch(window)
        {
            case 1:
            
            if (window_timer == 1)
            {
            	sound_play(asset_get("sfx_propeller_dagger_draw"))
            }
            
            
              var time = get_window_value(AT_FSPECIAL, 1, AG_WINDOW_LENGTH);
                x_hand = 80 * spr_dir;
                
                spd_hand = (13.5 + has_rune("G") * 9) * spr_dir;
                
                
                if(window_timer == time)
                {
                    sound_play(asset_get("sfx_frog_dspecial_cast"));
                    spawn_hit_fx( x, y - 100, fspecial_swipe_fx)
                }
        
                if (shield_pressed) and (window_timer < 11)
                {
                    free = true;
                    can_uspe = false;
                    set_attack(AT_USPECIAL);
                }
                
            break;
            case 2:
                can_move = false;
                if (window_timer > 4)
                {
                    set_window_value(AT_FSPECIAL, 2, AG_WINDOW_ANIM_FRAME_START, 5);
                }
                
                x_hand += spd_hand;
                spd_hand -= acc_hand * spr_dir;
                
                if (sign(spd_hand) != sign(spr_dir))
                {
                    window = 3;
                    window_timer = 0;
                }
                
                 if (collision_circle(x_hand ,y_hand,10,asset_get("par_block"),false,true))
                 {
                     spd_hand = 0;
                 }
            
            break;
            case 3:
                can_move = false;
                
                switch(window_timer)
                {
                    case 4:
                        set_window_value(AT_FSPECIAL, 3, AG_WINDOW_ANIM_FRAME_START, 7);
                    break;
                    case 8:
                        set_window_value(AT_FSPECIAL, 3, AG_WINDOW_ANIM_FRAME_START, 8);
                    break;
                    case 12:
                        set_window_value(AT_FSPECIAL, 3, AG_WINDOW_ANIM_FRAME_START, 9);
                    break;
                }
                
                x_hand += spd_hand;
                spd_hand -= acc_hand * spr_dir;
                
                if (x_hand < 56 ) and (x_hand > -56 )
                {
                    if(grab_id == noone)
                    {
                        window_timer = get_window_value(AT_FSPECIAL, 3, AG_WINDOW_LENGTH);
                        sound_play(asset_get("sfx_ell_utilt_retract"));
                    }
                    else
                    {
                        if has_rune("K") 
                        {
                            if (right_down - left_down = -spr_dir)
                            {
                                window_timer = 0;
                                image_index = 0;
                                spr_dir *= -1;
                            }
                        }
                        
                        attack_end()
                        destroy_hitboxes()
                        set_attack(AT_FSPECIAL_2)
                        hurtboxID.sprite_index = sprite_get("fspecial_throw_ground_hurt")
                    }
                }
            break;
            case 4:
            
            break;
        }
    
    break;
    case AT_USTRONG:
        var time = get_window_value(AT_USTRONG, 2, AG_WINDOW_LENGTH);
        
        if (window == 2) and (window_timer == time)
        {
            sound_play(asset_get("sfx_ell_utilt_fire"))
        }
    break;
    case AT_UAIR:
        var time = get_window_value(AT_UAIR, 1, AG_WINDOW_LENGTH);
        
        if (window == 1) and (window_timer == time)
        {
            sound_play(asset_get("sfx_shovel_swing_heavy1"))
        }
    break;
    case AT_EXTRA_1:
        if (window == 1) or (window == 2)
        {
            set_attack_value(AT_EXTRA_1, AG_HAS_LANDING_LAG, 0);
        }
        else
        {
            set_attack_value(AT_EXTRA_1, AG_HAS_LANDING_LAG, 1);
        }
    break;
    case AT_UTILT:
        if ((window == 1) and (window_timer > 8)) or (window == 2) 
        {
            hud_offset = floor(lerp(hud_offset, 130, 0.4))
        }
    break;
    case AT_DSPECIAL:
        switch(window)
        {
            case 1:
                x_cursor = x + 196 * spr_dir;
                y_cursor = y - 38;
            break;
            case 2:
                if (special_down)
                {
                    window_timer = 0;
                }
                
                var cur_spd = 5.5;
                
                x_cursor += (right_down - left_down) * cur_spd;
                y_cursor += ( down_down - up_down) * cur_spd;
                
                
                var offset = 30;
                if (is_aimable)
                {
                    var already_aimed = (aimed_id != noone)
                    aimed_id = noone;
                    
                    with(oPlayer)
                    {
                        if (self != other) and (state != PS_DEAD)
                        {
                            if (collision_rectangle( other.x_cursor - offset,other.y_cursor - offset,other.x_cursor + offset,other.y_cursor + offset,self,false,false))
                            {
                                other.aimed_id = self;
                            }
                        }
                        
                    }
                    
                    if (aimed_id != noone) and !(already_aimed)
                    {
                        sound_play(sound_get("click"))
                    }
                }
                
                
                var time = get_window_value(AT_DSPECIAL, 2, AG_WINDOW_LENGTH);
        
                if (window == 2) and (window_timer == time)
                {
                    if (aimed_id != noone)
                    {
                        x_cursor = aimed_id.x + aimed_id.hsp;
	                    y_cursor = aimed_id.y + aimed_id.vsp - 30;
                    }
                    
                    var inst = instance_create(x + 24 * spr_dir ,y - 88,"obj_article3")
                    
                    inst.x_target = x_cursor;
                    inst.y_target = y_cursor;
                    inst.angle = 45 + 90 * (spr_dir == -1)
                    inst.image_angle = inst.angle;
                    inst.hsp *= spr_dir
                    inst.aimed_id = aimed_id;
                    
                    if(has_rune("I"))
                    {
                        var inst = instance_create(x + 24 * spr_dir ,y - 88,"obj_article3")
                    
                        inst.x_target = x_cursor;
                        inst.y_target = y_cursor;
                        inst.angle = 75 + 90 * (spr_dir == -1)
                        inst.image_angle = inst.angle;
                        inst.hsp = lengthdir_x(10,inst.angle)
                        inst.vsp = lengthdir_y(10,inst.angle)
                         inst.aimed_id = aimed_id;
                        
                        
                        
                        var inst = instance_create(x + 24 * spr_dir ,y - 88,"obj_article3")
                    
                        inst.x_target = x_cursor;
                        inst.y_target = y_cursor;
                        inst.angle = 15 + 90 * (spr_dir == -1)
                        inst.image_angle = inst.angle;
                        inst.hsp = lengthdir_x(10,inst.angle)
                        inst.vsp = lengthdir_y(10,inst.angle)
                        inst.aimed_id = aimed_id;
                        
                        
                    }
                    
                    
                    sound_play(asset_get("sfx_ell_big_missile_ground"))
                }
                
            break;
        }
    break;
    case AT_DAIR:
        var time = get_window_value(AT_DAIR, 1, AG_WINDOW_LENGTH);
        
        if (window == 1) and (window_timer == time)
        {
            instance_create(x + 14 * spr_dir ,y - 10,"obj_article2")
        }
    
    break;
    case AT_FTILT:
        var time = get_window_value(AT_FTILT, 1, AG_WINDOW_LENGTH);
        
        if (window == 1) and (window_timer == time)
        {
            sound_play(asset_get("sfx_ell_utilt_hit"))
        }
    break;
    case AT_FSTRONG:
        var time = get_window_value(AT_FSTRONG, 2, AG_WINDOW_LENGTH);
        
        if (window == 2) and (window_timer == time)
        {
            sound_play(sound_get("bag"))
        }
    break;
    case AT_JAB:
         was_parried = false;
    break;
    case AT_USPECIAL:
        var time = get_window_value(AT_USPECIAL, 1, AG_WINDOW_LENGTH);
        switch(window)
        {
            case 1:
                if (can_uspe)
                {
                    y_min = 100;
                    if (y > room_height - y_min)
                    {
                        y += ((room_height - y_min) - y) / 8
                    }
                    
                    y_max = 300;
                    
                    if (y < 0 +  y_max)
                    {
                        y += ((0 + y_max) - y) / 8
                    }
                    
                }
            
                if (window_timer == time)
                {
                    if (can_uspe)
                    {
                        with(obj_article_platform)
                        {
                            if (player_id == other)
                            {
                               destroyed = true;
                            }
                        }
                        
                        
                        instance_create(x,room_height + 100,"obj_article_platform")
                        if (has_rune("L"))
                        {
                            instance_create(x + 80,room_height + 100,"obj_article_platform")
                            instance_create(x - 80,room_height + 100,"obj_article_platform")
                        }
                        
                        can_uspe = false;
                    }
                    else
                    {
                        set_state(PS_PRATFALL)
                        
                        with(obj_article_platform)
                            {
                                if (player_id == other)
                                {
                                   destroyed = true;
                                }
                            }
                        }
                }
            break;
            case 2:
                can_move = false;
            break;
        }
    break;
}