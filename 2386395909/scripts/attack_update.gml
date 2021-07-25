// attack_update

//B - Reversals
if (attack == AT_FSPECIAL || attack == AT_DSPECIAL || attack == AT_USPECIAL){
    trigger_b_reverse();
}

switch (attack)
{
    case AT_DAIR:
        if window == 1 && window_timer == 1
        {
            reset_hitbox_value(AT_DAIR, 1, HG_ANGLE);
            reset_hitbox_value(AT_DAIR, 2, HG_ANGLE);
            reset_hitbox_value(AT_DAIR, 2, HG_BASE_KNOCKBACK);
    
        }
        if left_down && spr_dir = 1 || right_down && spr_dir = -1 
        {
            set_hitbox_value(AT_DAIR, 1, HG_ANGLE, 105);
            set_hitbox_value(AT_DAIR, 1, HG_BASE_KNOCKBACK, 8);
            set_hitbox_value(AT_DAIR, 2, HG_ANGLE, 105);
            set_hitbox_value(AT_DAIR, 2, HG_BASE_KNOCKBACK, 8);
            
            set_hitbox_value(AT_DAIR, 1, HG_HITSTUN_MULTIPLIER, 1.0);
            set_hitbox_value(AT_DAIR, 2, HG_HITSTUN_MULTIPLIER, 1.0);    
        }
        else
        {
            set_hitbox_value(AT_DAIR, 1, HG_HITSTUN_MULTIPLIER, 0.7);
            set_hitbox_value(AT_DAIR, 2, HG_HITSTUN_MULTIPLIER, 0.7);          
        }
    break;
    
    case AT_DSPECIAL:
        if window == 2 && window_timer == 1
        {

            if ball_exists == false && ball_cooldown < 1
            {
                var stage_x = get_stage_data(SD_X_POS);
                var stage_y = get_stage_data(SD_Y_POS);
                if !(x < stage_x || x > room_width - stage_x || y < 250)
                {
                    if spr_dir == 1
                    {
                        var ball = instance_create(x+24,y-64,"obj_article1");
                        ball_exists = true;
                    }
                    else
                    {
                        var ball = instance_create(x-24,y-64,"obj_article1");
                        ball_exists = true;                        
                    }
                }
            }
            
        }
        if window == 2
        {
            with (obj_article1)
            {
                if player_id == other.id
                {
                    if place_meeting(x,y,player_id) && (st != 0)
                    {
                        life = 100;
                        st = 6;
                        stt = 0;
                        if other.ball_exists == true
                        {
                            other.ball_exists = false;
                        }
                        if other.ball_cooldown == 0
                        {
                            other.ball_cooldown = 140;
                        }
                        else
                        {
                            other.ball_cooldown-=40;
                        }
                    }
                }
            }
        }
    break;
    
    case AT_TAUNT:
        if window == 2 && window_timer == 2
        {
            var voice_line2 = random_func(0,4,true)
            switch(voice_line2)
            {
                case 0: sound_play(sound_get("candy_score_a")); break;
                case 1: sound_play(sound_get("candy_score_b")); break;
                case 2: sound_play(sound_get("candy_score_c")); break;
                case 3: sound_play(sound_get("candy_score_d")); break;            
            }
        }
        if window == 3 && taunt_down
        {
            window = 3;
            window_timer = 0;
        }
    break;
    case AT_NAIR:
        if window == 2 && (left_down || right_down) && attack_pressed
        {
            do_a_fair = true;
        }
    break;
    
    case AT_FAIR:
            /*if do_a_fair == true
            {
                set_hitbox_value(AT_FAIR, 1, HG_DAMAGE, 14);
                set_hitbox_value(AT_FAIR, 1, HG_ANGLE, 300);
                set_hitbox_value(AT_FAIR, 1, HG_BASE_KNOCKBACK, 8);
                set_hitbox_value(AT_FAIR, 1, HG_KNOCKBACK_SCALING, 0.6);
                set_hitbox_value(AT_FAIR, 1, HG_BASE_HITPAUSE, 14);
                
                set_hitbox_value(AT_FAIR, 2, HG_DAMAGE, 18);
                set_hitbox_value(AT_FAIR, 2, HG_BASE_KNOCKBACK, 9);
                set_hitbox_value(AT_FAIR, 2, HG_KNOCKBACK_SCALING, 0.7);
                set_hitbox_value(AT_FAIR, 2, HG_BASE_HITPAUSE, 18);
                set_hitbox_value(AT_FAIR, 2, HG_HITPAUSE_SCALING, 1.0);
            }
            else
            {
                reset_hitbox_value(AT_FAIR, 1, HG_DAMAGE);
                reset_hitbox_value(AT_FAIR, 1, HG_ANGLE);
                reset_hitbox_value(AT_FAIR, 1, HG_BASE_KNOCKBACK);
                reset_hitbox_value(AT_FAIR, 1, HG_KNOCKBACK_SCALING);
                reset_hitbox_value(AT_FAIR, 1, HG_BASE_HITPAUSE);
                
                reset_hitbox_value(AT_FAIR, 2, HG_DAMAGE);
                reset_hitbox_value(AT_FAIR, 2, HG_BASE_KNOCKBACK);
                reset_hitbox_value(AT_FAIR, 2, HG_KNOCKBACK_SCALING);
                reset_hitbox_value(AT_FAIR, 2, HG_BASE_HITPAUSE);
                reset_hitbox_value(AT_FAIR, 2, HG_HITPAUSE_SCALING);                
            } 
    
        if window == 3 && window_timer == 6
        {
            do_a_fair = false;
        }
    }*/
    break;
    case AT_NSPECIAL:if window > 1 { can_jump = true; can_shield = true;}
    break;
    case AT_DATTACK: if (window != 3 || window != 1) && has_hit {can_jump = true;}
    break;
    case AT_FSPECIAL:

        if window == 1 && window_timer == 1
        {
            reset_attack_value(AT_FSPECIAL, AG_NUM_WINDOWS);
            reset_window_value(AT_FSPECIAL, 2, AG_WINDOW_CUSTOM_GRAVITY);
            reset_window_value(AT_FSPECIAL, 3, AG_WINDOW_CUSTOM_GRAVITY);
            reset_window_value(AT_FSPECIAL, 2, AG_WINDOW_VSPEED_TYPE);
        }
        if has_hit_player
        {
            if free 
            {
                djumps = 1;
            }
            if window == 2 && window_timer <= 9
            {
                window_timer = 14;
            }
            if window == 3 && window_timer < 5
            {
                vsp = 0;
                can_move = false;
            }
            hsp = 0;
            set_window_value(AT_FSPECIAL, 2, AG_WINDOW_VSPEED_TYPE, 1);
            set_window_value(AT_FSPECIAL, 2, AG_WINDOW_CUSTOM_GRAVITY, 0.2);
            set_window_value(AT_FSPECIAL, 3, AG_WINDOW_CUSTOM_GRAVITY, 0.2);
            set_attack_value(AT_FSPECIAL, AG_NUM_WINDOWS, 6); 
            can_fast_fall = false; 
        }
    break;
    case AT_USPECIAL: 
    if (window == 2 || window == 3)
    {
        if (!joy_pad_idle)
        {
            hsp += lengthdir_x(.2, joy_dir);
        } 
        else 
        {
            hsp *= .9;
        }

        var fly_dir = point_direction(0,0,hsp,vsp);
        var fly_dist = point_distance(0,0,hsp,vsp);
        var max_speed = 7;
        
        if (fly_dist > max_speed)
        {
            hsp = lengthdir_x(max_speed, fly_dir);
            vsp = lengthdir_y(max_speed, fly_dir);
        }
    }
    can_wall_jump = true;
    break;
}