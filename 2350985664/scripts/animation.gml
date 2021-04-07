var idle_ref = 0;
var dash_ref = 0;
var crouch_ref = 0;
switch (state){
    case PS_IDLE:
        // IDLE TRANSITION
        switch(prev_prev_state)
        {
            case PS_WALK_TURN:
                var idle_ref = 2;
            break;
            
        }
         switch(prev_state)
         {
            case PS_DASH_STOP:
                var idle_ref = 10;
            break;
            case PS_LAND:
                var idle_ref = 10;
            break;
            case PS_DASH_TURN:
                 var idle_ref = 10;
            break;
            case PS_HITSTUN_LAND:
                var idle_ref = 1;
            break;
            case PS_ATTACK_GROUND:
                switch (attack)
                {
                    case AT_FTILT:
                        var idle_ref = 7;
                    break;
                    case AT_USTRONG:
                        var idle_ref = 5;
                    break;
                    case AT_DATTACK:
                        var idle_ref = 10;
                    break;
                    case AT_DSPECIAL:
                        var idle_ref = 1;
                    break;
                    case AT_UTILT:
                        var idle_ref = 4;
                    break;
                    case AT_FSTRONG:
                        var idle_ref = 13;
                    break;
                    case AT_DSTRONG:
                        var idle_ref = 9;
                    break;
                    case AT_JAB:
                        switch (last_jab)
                        {
                            case 1:
                                var idle_ref = 1;
                            break;
                            case 2:
                                var idle_ref = 8;
                            break;
                            case 3:
                                var idle_ref = 11;
                            break;
                        }
                    break;
                }
            break;
            case PS_LANDING_LAG:
                switch (attack)
                {
                    case AT_DAIR:
                        var idle_ref = 1;
                    break;
                    default:
                        var idle_ref = 1;
                    break;
                }
            break;
            case PS_CROUCH:
                var idle_ref = 1;
            break;
            case PS_ROLL_BACKWARD:
            case PS_ROLL_FORWARD:
            case PS_PARRY: //turns out to be the same as dodge
                var idle_ref = 4;
            break;
            case PS_WAVELAND:
            case PS_TECH_GROUND:
                 var idle_ref = 1;
            break;
         }
        image_index = idle_ref + state_timer * idle_anim_speed;
    break;
    case PS_DASH:
        switch(prev_state)
         {
             case PS_DASH_TURN:
                var dash_ref = -1;
                
            break;
         }
         image_index = dash_ref + state_timer * dash_anim_speed;
    break;
    case PS_CROUCH:
       
    break;
    case PS_FIRST_JUMP:
        if (!is_last_jump_short)
        {
            sprite_index = sprite_get("fulljump");
            image_index = state_timer / 5;
            if(image_index >= image_number - 1){
                image_index = image_number - 1
            }
        }
        else
        {
            sprite_index = sprite_get("jump");
        }
    break;
    case PS_LANDING_LAG:
        switch (attack)
        {
            case AT_DAIR:
                sprite_index = sprite_get("dair_land");
                image_index = state_timer / 3.2;
            break;
        }
    break;
    case PS_PRATLAND:
        sprite_index = sprite_get("landinglag");
        image_index = state_timer * 3 / parry_lag_ref
    break;
    default: break;
}


if (state == PS_IDLE_AIR) and ((prev_state == PS_AIR_DODGE) or (prev_state == PS_ATTACK_AIR))
{
    image_index = image_number - 1;
}

if ((state == PS_ATTACK_GROUND) or (state == PS_ATTACK_AIR))
{
    switch (attack)
    {
        case AT_FSPECIAL:
        
            switch(window)
            {
                case 5:
                
                if (!instance_exists(grab_id)) or (grab_id.super_armor) or (grab_id.soft_armor >= 1)
                {
                    destroy_hitboxes() 
                    attack_end();
                    set_attack(AT_FSPECIAL_AIR);
                    hurtboxID.sprite_index = sprite_get("grab_release_hurt");
                    sprite_index = sprite_get("grab_release");
                    image_index = 0;
                    vsp = -3;
                    hsp = spr_dir * -3;
                    old_vsp = -3;
                    old_hsp = spr_dir * -3;
                }
                else
                {
                    if (grab_id.blinded)
                    {
                        attack_end();
                        set_attack(AT_EXTRA_1);
                        hurtboxID.sprite_index = sprite_get("animalcage_hurt");
                        sprite_index = sprite_get("animalcage");
                        image_index = 0;
                        ds_list_add(caged_list,grab_id);
                        ds_list_add(cage_time_list,0);
                        grab_id.blinded = 0;
                        
                        var list_size = ds_list_size(caged_list) - 1;
                        x = caged_list[|list_size].x;
                        y = caged_list[|list_size].y - 30;
                        break;
                    }
                }
                
                case 6:
                
                    if (!instance_exists(grab_id))
                    {
                        grab_id = noone;
                    }
                    
                    if (grab_id != noone)
                    {
                        if (grab_id.state != PS_RESPAWN)
                        {
                            if (!grab_id.super_armor) and (grab_id.soft_armor < 1)
                            {
                                grab_id.hitpause = true;
                                grab_id.hitstop = 1;
                                grab_id.hitstop_full = 2;
                                
                                switch(image_index)
                                {
                                    case 4:
                                        grab_id.x = x + 10 * spr_dir;
                                        grab_id.y = y + 10;
                                    break;
                                    case 5:
                                        grab_id.x = x + 12 * spr_dir;
                                        grab_id.y = y + 8;
                                    break;
                                    case 6:
                                        grab_id.x = x + 36 * spr_dir;
                                        grab_id.y = y - 16;
                                        grab_id = noone;
                                    break;
                                }
                            }
                        }
                    }
                
                break;
            }
        
        break;
        case AT_USPECIAL:
            switch(window)
            {
                case 5:
                
                if (!instance_exists(grab_id)) or (grab_id.super_armor) or (grab_id.soft_armor >= 1)
                {
                    destroy_hitboxes() 
                    attack_end();
                    set_attack(AT_FSPECIAL_AIR);
                    hurtboxID.sprite_index = sprite_get("grab_release_hurt");
                    sprite_index = sprite_get("grab_release");
                    image_index = 0;
                    vsp = -3;
                    hsp = spr_dir * -3;
                    old_vsp = -3;
                    old_hsp = spr_dir * -3;
                }
                else
                {
                
                    if (grab_id.blinded)
                    {
                        attack_end();
                        set_attack(AT_EXTRA_1);
                        hurtboxID.sprite_index = sprite_get("animalcage_hurt");
                        sprite_index = sprite_get("animalcage");
                        image_index = 0;
                        ds_list_add(caged_list,grab_id);
                        ds_list_add(cage_time_list,0);
                        grab_id.blinded = 0;
                        
                        var list_size = ds_list_size(caged_list) - 1;
                        x = caged_list[|list_size].x;
                        y = caged_list[|list_size].y - 30;
                        break;
                    }
                    
                    
                    if (window_timer == 0)
                    {
                        if (abs(right_down - left_down))
                        {
                            spr_dir = right_down - left_down;
                        }
                    }
                }
                case 6:
                
                    if (!instance_exists(grab_id))
                    {
                        grab_id = noone;
                    }
                    
                    if (grab_id != noone) 
                    {
                        if (grab_id.state != PS_RESPAWN)
                        {
                            if (!grab_id.super_armor) and (grab_id.soft_armor < 1)
                            {
                                grab_id.hitpause = true;
                                grab_id.hitstop = 1;
                                grab_id.hitstop_full = 2;
                                
                                switch(image_index)
                                {
                                    case 4:
                                        grab_id.x = x - 30 * spr_dir;
                                        grab_id.y = y - 50;
                                    break;
                                    case 5:
                                        grab_id.x = x - 26 * spr_dir;
                                        grab_id.y = y -50;
                                    break;
                                    case 6:
                                        grab_id.x = x + 30 * spr_dir;
                                        grab_id.y = y - 0;
                                        grab_id = noone;
                                    break;
                                }
                            }
                        }
                    }
                
                break;
            }
        break;
        case AT_DAIR:
            switch (window)
            {
                case 3:
                    if (window_timer > 10)
                    {
                        if (shield_pressed) and (has_airdodge)
                        {
                            set_state(PS_AIR_DODGE);
                        }
                    }
                break;
                case 5:
                if (!instance_exists(grab_id)) or (grab_id.super_armor) or (grab_id.soft_armor >= 1)
                {
                    destroy_hitboxes() 
                    attack_end();
                    set_attack(AT_FSPECIAL_AIR);
                    hurtboxID.sprite_index = sprite_get("grab_release_hurt");
                    sprite_index = sprite_get("grab_release");
                    image_index = 0;
                    vsp = -3;
                    hsp = spr_dir * -3;
                    old_vsp = -3;
                    old_hsp = spr_dir * -3;
                }
                else
                {
                    if (grab_id.blinded)
                    {
                        attack_end();
                        set_attack(AT_EXTRA_1);
                        hurtboxID.sprite_index = sprite_get("animalcage_hurt");
                        sprite_index = sprite_get("animalcage");
                        image_index = 0;
                        ds_list_add(caged_list,grab_id);
                        ds_list_add(cage_time_list,0);
                        grab_id.blinded = 0;
                        
                        var list_size = ds_list_size(caged_list) - 1;
                        x = caged_list[|list_size].x;
                        y = caged_list[|list_size].y - 30;
                        break;
                    }
                
                    
                    
                    if (window_timer == 0)
                    {
                        if (abs(right_down - left_down))
                        {
                            spr_dir = right_down - left_down;
                        }
                    }
                }
                // no break here
                case 6:
                    if (!instance_exists(grab_id))
                    {
                        grab_id = noone;
                    }
                    
                    if (grab_id != noone)
                    {
                        if (grab_id.state != PS_RESPAWN)
                        {
                            if (!grab_id.super_armor) and (grab_id.soft_armor < 1)
                            {
                                grab_id.hitpause = true;
                                grab_id.hitstop = 1;
                                grab_id.hitstop_full = 2;
                                
                                switch(image_index)
                                {
                                    case 4:
                                        grab_id.x = x - 30 * spr_dir;
                                        grab_id.y = y;
                                    break;
                                    case 5:
                                        grab_id.x = x - 26 * spr_dir;
                                        grab_id.y = y + 10;
                                    break;
                                    case 6:
                                        grab_id.x = x + 20 * spr_dir;
                                        grab_id.y = y - 10;
                                        grab_id = noone;
                                    break;
                                }
                            }
                        }
                    }
                
                break;
            }
        
                if (window == 5) or (window == 4)
                {
                    set_attack_value(AT_DAIR, AG_HAS_LANDING_LAG, 0);
                }
                else
                {
                    set_attack_value(AT_DAIR, AG_HAS_LANDING_LAG, 1);
                }
        break;
    }
}
    

if !(((attack == AT_DAIR) or (attack == AT_USPECIAL) or (attack == AT_FSPECIAL) ) and ((state == PS_ATTACK_GROUND) or (state == PS_ATTACK_AIR)))
{
    grab_id = noone;
}



if (has_rune("N"))
{
    var is_someone_blind = false;
    with (oPlayer)
    {
        if (self != other)
        {
            if (blinded)
            {
                is_someone_blind = true;
            }
        }
    }
    
    if (is_someone_blind)
    {
        sprite_index = sprite_get("nothing");
        draw_indicator = false;
    }
    else
    {
        draw_indicator = true;
    }
    
}





