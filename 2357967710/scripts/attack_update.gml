// attack_update

//B - Reversals
if (attack == AT_NSPECIAL || attack == AT_FSPECIAL || attack == AT_DSPECIAL || attack == AT_USPECIAL){
    trigger_b_reverse();
}
switch(attack)
{
    case AT_DATTACK:
        if (window == 2 and has_hit_player)
        {
            can_jump = true;
        }
        break;
    case AT_FSPECIAL_2:
        if (window == 1)
        {
            switch(window_timer)
            {
                case 1:
                    old_x = x;
                    old_y = y;
                    cursor += 1;
                    break;
                case 2:
                    switch(spirit)
                    {
                        case 0:
                            investigate = random_func(0, 8, true);
                            break;
                        case 1:
                            investigate = random_func(0, 7, true);
                            break;
                    }
                    break;
                case 3:
                    switch(slot)
                    {
                        case 2:
                            if (investigate == evidence1)
                            {
                               if (investigate >= 0 and investigate < 7)
                               {
                                   investigate += 1;
                               }
                               else
                               {
                                   investigate -= 1;
                               }
                            }
                            break;
                        case 3:
                            if (investigate == evidence1)
                            {
                                if (evidence1 > evidence2)
                                {
                                    if (evidence1 = 7)
                                    {
                                        investigate -= 1;
                                    }
                                    else
                                    {
                                        investigate += 1
                                    }
                                }
                                else if (evidence2 > evidence1)
                                {
                                    if (evidence1 = 0)
                                    {
                                        investigate += 1;
                                    }
                                    else
                                    {
                                        investigate -= 1
                                    }
                                }                            
                            }
                            else if (investigate == evidence2)
                            {
                                if (evidence2 > evidence1)
                                {
                                    if (evidence1 = 7)
                                    {
                                        investigate -= 1;
                                    }
                                    else
                                    {
                                        investigate += 1
                                    }
                                }
                                else if (evidence1 > evidence2)
                                {
                                    if (evidence1 = 0)
                                    {
                                        investigate += 1;
                                    }
                                    else
                                    {
                                        investigate -= 1
                                    }
                                }                            
                            }
                            break;
                        case 4:
                            if (slot == 3)
                            {
                                if (investigate == evidence1)
                                {
                                   if (evidence2 > evidence1)
                                    {
                                        investigate += 1;
                                    }
                                    else if (evidence1 > evidence2)
                                    {
                                        investigate -= 1;
                                    }    
                                }
                                else if (investigate == evidence2)
                                {
                                   if (evidence2 > evidence1)
                                    {
                                        investigate -= 1;
                                    }
                                    else if (evidence1 > evidence2)
                                    {
                                        investigate += 1;
                                    }    
                                }                        
                            }
                            break;
                        }
            }
            if (window_timer % 5 == 0)
            {
                switch(window_timer)
                {   
                    case 5:
                    case 10:
                    case 15:
                    case 20:
                        if (window_timer == 20)
                        {
                            sound_play(sound_get("selectblip"));
                        }
                    case 25:
                    case 30:
                    case 35:
                        cursor += 1;
                        
                        if (window_timer > 24)
                        {
                            popup += 1;
                            if (window_timer == 35)
                            {
                                sound_play(sound_get("SelectJingle"));
                                popup2 = 1;
                            }
                        }
                        break;
                }
            }
        }
        else if (window == 2)
        {
            switch(window_timer)
            {
                case 1:
                    popup = 2;
                    break;
                case 5:
                    cursor = -1;
                    slot += 1;
                    switch (slot) 
                    {
                        case 1:
                            evidence1 = investigate;
                            break;
                        case 2:
                            evidence2 = investigate;
                            break;
                        case 3:
                            evidence3 = investigate;
                            break;
                    }
                    break;
            }
        }
        else if (window == 4)
        {
            move_cooldown[AT_DSPECIAL] = 15;
            if (window_timer % 3 = 0)
            {
                if (popup > -1)
                {
                    popup -= 1;
                }
                popup2 = 0;
            }
            safe = 0;
        }
        break;
    case AT_NSPECIAL:
        if (window == 1)
        {
            reset_hitbox_value(AT_NSPECIAL, 1, HG_DAMAGE);
            reset_hitbox_value(AT_NSPECIAL, 1, HG_BASE_KNOCKBACK);
            reset_hitbox_value(AT_NSPECIAL, 1, HG_BASE_HITPAUSE);
            reset_hitbox_value(AT_NSPECIAL, 1, HG_KNOCKBACK_SCALING);
            reset_hitbox_value(AT_NSPECIAL, 1, HG_HITPAUSE_SCALING);
        }
        else if (window == 2)
        {
            frame = 0; 
            switch(slot)
            {
                case 1:
                    set_hitbox_value(AT_NSPECIAL, 1, HG_DAMAGE, 5);
                    set_hitbox_value(AT_NSPECIAL, 1, HG_BASE_KNOCKBACK, 6);
                    set_hitbox_value(AT_NSPECIAL, 1, HG_BASE_HITPAUSE, 4);
                    set_hitbox_value(AT_NSPECIAL, 1, HG_KNOCKBACK_SCALING, .5);
                    set_hitbox_value(AT_NSPECIAL, 1, HG_HITPAUSE_SCALING, .4);
                    break;
                case 2:
                    set_hitbox_value(AT_NSPECIAL, 1, HG_DAMAGE, 9);
                    set_hitbox_value(AT_NSPECIAL, 1, HG_BASE_KNOCKBACK, 9);
                    set_hitbox_value(AT_NSPECIAL, 1, HG_BASE_HITPAUSE, 6);
                    set_hitbox_value(AT_NSPECIAL, 1, HG_KNOCKBACK_SCALING, .7);
                    set_hitbox_value(AT_NSPECIAL, 1, HG_HITPAUSE_SCALING, .6);
                    break;
                case 3:
                    set_hitbox_value(AT_NSPECIAL, 1, HG_DAMAGE, 12);
                    set_hitbox_value(AT_NSPECIAL, 1, HG_BASE_KNOCKBACK, 12);
                    set_hitbox_value(AT_NSPECIAL, 1, HG_BASE_HITPAUSE, 10);
                    set_hitbox_value(AT_NSPECIAL, 1, HG_KNOCKBACK_SCALING, .8);
                    set_hitbox_value(AT_NSPECIAL, 1, HG_HITPAUSE_SCALING, .7);
                    break;
            }
            if(window_timer == 5 and !hitpause)
            {
                appear = 1; 
                if (voice == 0)
                {
                    sound_play(sound_get("Objection"));
                }
                sound_play(sound_get("SpeechBubble"));
            }
        }
        else if (window == 3)
        {
            if (has_hit_player and slot > 0)
            {
                turnabout = 1
                switch(slot)
                {
                    case 1:
                        bout_timer = 250;
                        break;
                    case 2:
                        bout_timer = 500;
                        break;
                    case 3:
                        bout_timer = 1000;
                        break;
                }
            }
            evidence1 = -1;
            evidence2 = -1;
            evidence3 = -1;
            slot = 0;
            if (frame < 13)
            {
                frame += 1;    
            }
        }
        else if (window == 4)
        {
            appear = 0;
        }
        break;
    case AT_NSPECIAL_AIR:
        if (window == 1)
        {
            switch(slot)
            {
                default:
                    set_hitbox_value(AT_NSPECIAL_AIR, 1, HG_DAMAGE, 1);
                    set_hitbox_value(AT_NSPECIAL_AIR, 1, HG_BASE_KNOCKBACK, 1);
                    set_hitbox_value(AT_NSPECIAL_AIR, 1, HG_BASE_HITPAUSE, 2);
                    break;
                case 1:
                    set_hitbox_value(AT_NSPECIAL_AIR, 1, HG_DAMAGE, 5);
                    set_hitbox_value(AT_NSPECIAL_AIR, 1, HG_BASE_KNOCKBACK, 6);
                    set_hitbox_value(AT_NSPECIAL_AIR, 1, HG_BASE_HITPAUSE, 4);
                    break;
                case 2:
                    set_hitbox_value(AT_NSPECIAL_AIR, 1, HG_DAMAGE, 9);
                    set_hitbox_value(AT_NSPECIAL_AIR, 1, HG_BASE_KNOCKBACK, 9);
                    set_hitbox_value(AT_NSPECIAL_AIR, 1, HG_BASE_HITPAUSE, 6);
                    break;
                case 3:
                    set_hitbox_value(AT_NSPECIAL_AIR, 1, HG_DAMAGE, 12);
                    set_hitbox_value(AT_NSPECIAL_AIR, 1, HG_BASE_KNOCKBACK, 12);
                    set_hitbox_value(AT_NSPECIAL_AIR, 1, HG_BASE_HITPAUSE, 10);
                    break;
            }
        }
        else if (window == 2)
        {
            frame = 0;
            if (window_timer == 2 and !hitpause)
            {
                appear = 2;
                if (voice == 0)
                {
                    sound_play(sound_get("Objection"));
                }
                sound_play(sound_get("SpeechBubble"));
            }
        }
        else if (window == 3)
        {
            if (has_hit_player and slot > 0)
            {
                turnabout = 1
                switch(slot)
                {
                    case 1:
                        bout_timer = 250;
                        break;
                    case 2:
                        bout_timer = 500;
                        break;
                    case 3:
                        bout_timer = 1000;
                        break;
                }
            }
            evidence1 = -1;
            evidence2 = -1;
            evidence3 = -1;
            slot = 0;
            if (frame < 13)
            {
                frame += 1;    
            }
        }
        else if (window == 4)
        {
            appear = 0;
        }    
        
        if (free == false)
        {
            time = 0;
            land = 1;
            set_state(PS_LANDING_LAG);
            appear = 0;
        }
        break;
    case AT_DSPECIAL:
        if (window == 2 and window_timer == 3)
        {
            switch(evidence1)
            {
                case 0:
                    create_hitbox(AT_DSPECIAL, 1, x + (32 * spr_dir), y - 45);
                    break;
                case 1:
                    create_hitbox(AT_DSPECIAL, 2, x + (32 * spr_dir), y - 45);
                    break;
                case 2:
                    create_hitbox(AT_DSPECIAL, 4, x + (32 * spr_dir), y - 45);
                    break;
                case 3:
                    create_hitbox(AT_DSPECIAL, 5, x + (32 * spr_dir), y - 45);
                    break;
                case 4:
                    create_hitbox(AT_DSPECIAL, 8, x + (32 * spr_dir), y - 45);
                    break;
                case 5:
                    create_hitbox(AT_DSPECIAL, 9, x + (32 * spr_dir), y - 45);
                    break;
                case 6:
                    create_hitbox(AT_DSPECIAL, 6, x + (32 * spr_dir), y - 45);
                    break;
            }
            slot -= 1;
            evidence1 = evidence2;
            evidence2 = evidence3;
            evidence3 = -1;
        }
        break;
    case AT_FSPECIAL:
        if (window == 1 and window_timer == 1)
        {
            move_cooldown[AT_FSPECIAL] = 180;
            if (free)
            {
                ground2 = 0;
            }
            else
            {
                ground2 = 1;
            }
        }
        else if (window == 2)
        {
            frame = 0;
            if (window_timer == 8 and !hitpause)
            {
                appear = 3;
                if(voice == 0)
                {
                    sound_play(sound_get("Hold_it_1"));
                }
                sound_play(sound_get("SpeechBubble"));
            }
        }
        else if (window == 3)
        {
            if (frame < 13)
            {
                frame += 1;    
            }
        }
        else if (window == 4 and window_timer == 5)
        {
            appear = 0;
        }
        break;
    case AT_USPECIAL:
        can_fast_fall = false;
        if (window != 1)
        {
            can_wall_jump = true;
        }
        if(frame == 6 and get_gameplay_time() mod 3 == 0)
        {
            explosion = 1;
            create_hitbox(AT_USPECIAL, 1, old_x - (23 * spr_dir), old_y - 15)
            sound_play(sound_get("sfx-damage2"));
        }
        switch(window)
        {
            case 1: 
                can_move = false;
                stuff = 1;
                if(window_timer == 1)
                {
                    frame = -1;
                    old_x = x;
                    old_y = y;
                    old_dir = spr_dir
                }
                break;
            case 2:
                can_move = false;
                break;
            case 3:
                air_max_speed = 6;
                air_accel = .5;
                air_friction = .02;
                if (!free)
                {
                    window = 5;
                }
                break;
            case 4:
                can_jump = true;
                can_shield = true;
                break;
        }
        break;
    case AT_EXTRA_2:
        if (window == 3 and window_timer == 1)
        {
            spirit = 1;
            slot -= 1;
            evidence1 = evidence2;
            evidence2 = evidence3;
            evidence3 = -1;            
        }
        break;
    case AT_FSTRONG:
        switch(get_player_color(player))
        {
            case 0:
                set_attack_value(AT_FSTRONG, AG_SPRITE, sprite_get("fstrong"))
                break;
            case 1:
                set_attack_value(AT_FSTRONG, AG_SPRITE, sprite_get("fstrong-1"))
                break;
            case 2:
                set_attack_value(AT_FSTRONG, AG_SPRITE, sprite_get("fstrong-2"))
                break;
            case 3:
                set_attack_value(AT_FSTRONG, AG_SPRITE, sprite_get("fstrong-3"))
                break;
            case 4:
                set_attack_value(AT_FSTRONG, AG_SPRITE, sprite_get("fstrong-4"))
                break;
            case 5:
                set_attack_value(AT_FSTRONG, AG_SPRITE, sprite_get("fstrong-5"))
                break;        
            case 6:
                set_attack_value(AT_FSTRONG, AG_SPRITE, sprite_get("fstrong-6"))
                break;
            case 7:
                set_attack_value(AT_FSTRONG, AG_SPRITE, sprite_get("fstrong-7"))
                break;
            case 8:
                set_attack_value(AT_FSTRONG, AG_SPRITE, sprite_get("fstrong-8"))
                break;
            case 9:
                set_attack_value(AT_FSTRONG, AG_SPRITE, sprite_get("fstrong-9"))
                break;
            case 10:
                set_attack_value(AT_FSTRONG, AG_SPRITE, sprite_get("fstrong-10"))
                break;
            case 11:
                set_attack_value(AT_FSTRONG, AG_SPRITE, sprite_get("fstrong-11"))
                set_article_color_slot(6, 255, 198, 150);
                break;
            case 12:
                set_attack_value(AT_FSTRONG, AG_SPRITE, sprite_get("fstrong-12"))
                break;
            case 13:
                set_attack_value(AT_FSTRONG, AG_SPRITE, sprite_get("fstrong-13"))
                break;
            case 14:
                set_attack_value(AT_FSTRONG, AG_SPRITE, sprite_get("fstrong-14"))
                break;
            case 15:
                set_attack_value(AT_FSTRONG, AG_SPRITE, sprite_get("fstrong-15"))
                break;
        
        }
        if (window == 1)
        {
            if (window_timer == 1)
            {
                reset_hitbox_value(AT_FSTRONG, 2, HG_BASE_KNOCKBACK);
                reset_hitbox_value(AT_FSTRONG, 2, HG_KNOCKBACK_SCALING);
                reset_hitbox_value(AT_FSTRONG, 2, HG_BASE_HITPAUSE);
                reset_hitbox_value(AT_FSTRONG, 2, HG_HITPAUSE_SCALING);
            }
            else if (window_timer == 2 and spirit == 1)
            {
                set_hitbox_value(AT_FSTRONG, 2, HG_BASE_KNOCKBACK, 12);
                set_hitbox_value(AT_FSTRONG, 2, HG_KNOCKBACK_SCALING, 1.1);
                set_hitbox_value(AT_FSTRONG, 2, HG_BASE_HITPAUSE, 9);
                set_hitbox_value(AT_FSTRONG, 2, HG_HITPAUSE_SCALING, 1);
            }
        }
        else if (window == 3 and window_timer == 4)
        {
            spirit = 0;
            move_cooldown[AT_FSTRONG] = 187;
            Maya = instance_create(x - (15 * spr_dir),y - 80, "obj_article2");
            Maya.player_id = id;
            Maya.player = player;
            Maya.spr_dir = spr_dir;
            Maya.Mayacolor = get_player_color(player);
        }
        break;
    case AT_USTRONG:
        if (psyche = 1)
        {
            psychedraw = 1;
        }
        if (window == 1)
        {
            if (window_timer == 1)
            {
                reset_hitbox_value(AT_USTRONG, 3, HG_BASE_KNOCKBACK);
                reset_hitbox_value(AT_USTRONG, 3, HG_KNOCKBACK_SCALING);
                reset_hitbox_value(AT_USTRONG, 3, HG_BASE_HITPAUSE);
                reset_hitbox_value(AT_USTRONG, 3, HG_HITPAUSE_SCALING);
            }
            else if (window_timer == 2 and spirit == 1)
            {
                set_hitbox_value(AT_USTRONG, 3, HG_BASE_KNOCKBACK, 11);
                set_hitbox_value(AT_USTRONG, 3, HG_KNOCKBACK_SCALING, .9);
                set_hitbox_value(AT_USTRONG, 3, HG_BASE_HITPAUSE, 11);
                set_hitbox_value(AT_USTRONG, 3, HG_HITPAUSE_SCALING, .9);
            }
        }
        else if (window == 2)
        {
            if (window_timer == 12)
            {
                spirit = 0;
            }
        }
        break;
    case AT_BAIR:
        can_fast_fall = false;
        if (has_hit_player)
        {
            can_fast_fall = true;
        }
        if (window == 2)
        {
            sound = 0;
            frame = 0;
            if (window_timer == 2 and !hitpause)
            {
                if (voice == 0)
                {
                    sound_play(sound_get("Take_That"));   
                }
                sound_play(sound_get("SpeechBubble"));
            }
            if(window_timer == 2)
            {
                appear = 4;
            }
        }
        else if (window == 3)
        {

            if (frame < 13)
            {
                frame += 1;    
            }
        }
        else if (window == 4 and window_timer == 5)
        {
            appear = 0;
        }
        
        if (!free)
        {
            appear = 0;
        }
        break;
}