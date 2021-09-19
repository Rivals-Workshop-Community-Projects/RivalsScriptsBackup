// attack_update

//B - Reversals
if (attack == AT_NSPECIAL || attack == AT_FSPECIAL || attack == AT_DSPECIAL || attack == AT_USPECIAL){
    trigger_b_reverse();
}

switch(attack)
{
    case AT_JAB:
        was_parried = false;
        break;
    case AT_NSPECIAL:
        can_move = false;
        if (nspec_charge == 30)
        {
            sound_play(asset_get("mfx_star"))
            spawn_hit_fx(x, y - 20, 301);
            set_window_value(AT_NSPECIAL, 3, AG_WINDOW_HSPEED, 4.5)
            set_hitbox_value(AT_NSPECIAL, 1, HG_BASE_KNOCKBACK, 7)
            set_hitbox_value(AT_NSPECIAL, 1, HG_KNOCKBACK_SCALING, 0.7)
            set_hitbox_value(AT_NSPECIAL, 1, HG_BASE_HITPAUSE, 7)
            set_hitbox_value(AT_NSPECIAL, 1, HG_KNOCKBACK_SCALING, 0.7)
            set_hitbox_value(AT_NSPECIAL, 2, HG_BASE_KNOCKBACK, 9)
            set_hitbox_value(AT_NSPECIAL, 2, HG_KNOCKBACK_SCALING, 0.9)
            set_hitbox_value(AT_NSPECIAL, 2, HG_BASE_HITPAUSE, 9)
            set_hitbox_value(AT_NSPECIAL, 2, HG_KNOCKBACK_SCALING, 1)
            set_hitbox_value(AT_NSPECIAL, 1, HG_DAMAGE, 9)
            set_hitbox_value(AT_NSPECIAL, 2, HG_DAMAGE, 14)
        }
        if (window == 1)
        {
            reset_window_value(AT_NSPECIAL, 3, AG_WINDOW_HSPEED)
            reset_hitbox_value(AT_NSPECIAL, 1, HG_BASE_KNOCKBACK)
            reset_hitbox_value(AT_NSPECIAL, 1, HG_KNOCKBACK_SCALING)
            reset_hitbox_value(AT_NSPECIAL, 1, HG_BASE_HITPAUSE)
            reset_hitbox_value(AT_NSPECIAL, 1, HG_KNOCKBACK_SCALING)
            reset_hitbox_value(AT_NSPECIAL, 2, HG_BASE_KNOCKBACK)
            reset_hitbox_value(AT_NSPECIAL, 2, HG_KNOCKBACK_SCALING)
            reset_hitbox_value(AT_NSPECIAL, 2, HG_BASE_HITPAUSE)
            reset_hitbox_value(AT_NSPECIAL, 2, HG_KNOCKBACK_SCALING)
            reset_hitbox_value(AT_NSPECIAL, 1, HG_DAMAGE)
            reset_hitbox_value(AT_NSPECIAL, 2, HG_DAMAGE)
        }
        else if (window == 2)
        {
            if (special_down and nspec_charge < 90)
            {
                nspec_charge++;
                if window_timer = 19
                window_timer = 0;
            }
            if (!special_down)
            {
                window_timer = 20;
            }
            if (window_timer == 20)
            {
                nspec_charge = 0;
            }
        }
        else if (window == 3)
        {
            if (window_timer == 2)
            sound_play(asset_get("sfx_charge_blade_swing"));
            if (instance_exists(bubbleg))
            {
                if (bubbleg.bubbled_playerid == noone and has_hit_player)
                {
                    bubbleg.sfx = 1;
                }
                if (has_hit and (bubbleg.hsp != 0 or bubbleg.vsp != 0) and window_timer < 9 and bubbleg.bubbled_playerid == noone)
                {
                    bubbleg.sprite_index = asset_get("empty_sprite");
                    bubbleg.state = 8;
                    bubbleg.outline = 0;
                }
            }
        }
        break;
    case AT_FSPECIAL:
        if (shrimp == 1)
        {
            if free
            sprite_index = sprite_get("fspecial_air_shrimp")
            else
            sprite_index = sprite_get("fspecial_shrimp")
        }
        
        if (window == 1)
        {
            boost = 1;
            vsp = 0;
            if (window_timer == 12)
            {
                if (shrimp == 0)
                create_hitbox(AT_FSPECIAL, 1, x + (20 * spr_dir), y - 60);
                else if (shrimp == 1)
                create_hitbox(AT_FSPECIAL, 3, x + (20 * spr_dir), y - 60);
            }
        }
        else if (window == 2)
        {
            if (boost == 1 and free == true)
            {
                vsp -= 6;
                boost = 0;
            }
        }
        else if (window == 3)
        {
            if (window_timer == 8)
            {
                move_cooldown[AT_FSPECIAL] = 60;
            }
        }
        break;
    case AT_DSPECIAL:
        can_fast_fall = false;
        if (window == 1)
        {
            bubble_effect = 1;
            follow = 1;
            can_move = false;
            can_fast_fall = false;
            move_cooldown[AT_DSPECIAL] = 180
            switch(window_timer)
            {
                case 6:
                    bubble_frame = 1;
                    break;
                case 11:
                    bubble_frame = 2;
                    break;
                case 14:
                    if (!instance_exists(bubbleg))
                    {
                        bubbleg = instance_create(x - (4 * spr_dir), y + 5, "obj_article1");
                        bubbleg.state = 5;
                        bubbleg.col = get_player_hud_color(player); 
                    }
                    break;
                case 15: 
                    bubble_effect = 0;
                    bubble_frame = 0;
                    if (instance_exists(bubbleg))
                    {
                        bubbleg.outline = 1;
                    }
                    break;
            }
        }
        else if (window == 2)
        {
            can_move = false;
            can_fast_fall = false;
        }
        if (window == 3)
        {
            if (free)
            {
                follow = 0;
            }
            if (follow == 0 and free == false)
            {
                set_state(PS_LANDING_LAG)
            }
            if (window_timer < 4)
            {
                if (left_down)
                {
                    x_dir = -1;
                }
                else if (right_down)
                {
                    x_dir = 1;
                }
                else if (!left_down and !right_down)
                {
                    x_dir = spr_dir;
                }
            }
            else if (window_timer == 4)
            {
                spr_dir = x_dir;
                bubbleg.x_dir = spr_dir;
            }
            else if (window_timer == 12)
            {
                bubbleg.depth = 0;
                if free
                {
                    window = 5;
                    bubbleg.move = 0;
                }
                else
                {
                    follow = 0;
                    bubbleg.move = 1;
                }
            }
        }
        else if (window == 3)
        {
            follow = 0;
        }
        break;
    case AT_DSPECIAL_2:
        if (window == 1)
        {
            can_move = false
            reset_window_value(AT_DSPECIAL_2, 2, AG_WINDOW_GOTO);
            vsp = 0;
            float = 0;
        }
        else if (window == 2)
        {
            can_move = false
            if (special_down)
            {
                vsp = float;
                float += 0.05
                if (instance_exists(bubbleg))
                {
                    if (bubbleg.bubbled_playerid == noone)
                    {
                        set_window_value(AT_DSPECIAL_2, 2, AG_WINDOW_GOTO, 2);
                        if (up_down or down_down)
                        bubbleg.drag = 1;
                        else
                        bubbleg.drag_y = 0;
                        
                        if (right_down or left_down)
                        bubbleg.drag = 1;
                        else
                        bubbleg.drag_x = 0;
                        
                        switch(up_down)
                        {
                            case true:
                                bubbleg.drag_y = -1;
                                break;
                        }
                        switch(down_down)
                        {
                            case true:
                                bubbleg.drag_y = 1;
                                break;
                        }
                        switch(right_down)
                        {
                            case true:
                                bubbleg.drag_x = 1;
                                break;
                        }
                        switch(left_down)
                        {
                            case true:
                                bubbleg.drag_x = -1;
                                break;
                        }
                    }
                    if (bubbleg.state == 9)
                    {
                        bubbleg.drag = 0;
                        bubbleg.drag_y = 0;
                        bubbleg.drag_x = 0;
                        set_window_value(AT_DSPECIAL_2, 2, AG_WINDOW_GOTO, 3)
                    }
                }
            }
            else if (!special_down)
            {
                if (instance_exists(bubbleg))
                {
                    bubbleg.drag = 0;
                    bubbleg.drag_y = 0;
                    bubbleg.drag_x = 0;
                }
                set_window_value(AT_DSPECIAL_2, 2, AG_WINDOW_GOTO, 3)
            }
        }
        break;
    case AT_USPECIAL:
        can_fast_fall = false;
        if (window == 2)
        {
            if (instance_exists(bubbleg))
            {
                if (has_hit and (bubbleg.hsp != 0 or bubbleg.vsp != 0) and window_timer < 4 and bubbleg.bubbled_playerid == noone)
                {
                    bubbleg.sprite_index = asset_get("empty_sprite");
                    bubbleg.state = 8;
                    bubbleg.outline = 0;
                }
            }
        }
        else if (window == 3)
        can_wall_jump = true;
        break;
    case AT_USTRONG:
        if (strong_charge == 30 and boost2 == 0)
        {
            sound_play(asset_get("mfx_star"))
            spawn_hit_fx(x, y - 20, 301);
            boost2 = 1;
        }
        switch (window)
        {
            case 1:
                if (window_timer == 1)
                {
                    boost2 = 0;
                    reset_hitbox_value(AT_USTRONG, 1, HG_PROJECTILE_HSPEED);
                    reset_hitbox_value(AT_USTRONG, 1, HG_PROJECTILE_VSPEED);
                }
                if (boost2 == 0)
                {
                    if (spr_dir == 1)
                    {
                        if (left_down)
                        {
                            set_hitbox_value(AT_USTRONG, 1, HG_PROJECTILE_HSPEED, -6)
                            set_hitbox_value(AT_USTRONG, 1, HG_PROJECTILE_VSPEED, -8)
                        }
                        if (right_down)
                        {
                            set_hitbox_value(AT_USTRONG, 1, HG_PROJECTILE_HSPEED, -2)
                            set_hitbox_value(AT_USTRONG, 1, HG_PROJECTILE_VSPEED, -12)
                        }
                    }
                    else if (spr_dir == -1)
                    {
                        if (right_down)
                        {
                            set_hitbox_value(AT_USTRONG, 1, HG_PROJECTILE_HSPEED, -6)
                            set_hitbox_value(AT_USTRONG, 1, HG_PROJECTILE_VSPEED, -8)
                        }
                        if (left_down)
                        {
                            set_hitbox_value(AT_USTRONG, 1, HG_PROJECTILE_HSPEED, -2)
                            set_hitbox_value(AT_USTRONG, 1, HG_PROJECTILE_VSPEED, -12)
                        }
                    }
                }
                else if (boost2 == 1)
                {
                    if (spr_dir == 1)
                    {
                        if (left_down)
                        {
                            set_hitbox_value(AT_USTRONG, 1, HG_PROJECTILE_HSPEED, -8)
                            set_hitbox_value(AT_USTRONG, 1, HG_PROJECTILE_VSPEED, -10)
                        }
                        if (right_down)
                        {
                            set_hitbox_value(AT_USTRONG, 1, HG_PROJECTILE_HSPEED, -4)
                            set_hitbox_value(AT_USTRONG, 1, HG_PROJECTILE_VSPEED, -16)
                        }
                        if (!right_down and !left_down)
                        {
                            set_hitbox_value(AT_USTRONG, 1, HG_PROJECTILE_HSPEED, -6)
                            set_hitbox_value(AT_USTRONG, 1, HG_PROJECTILE_VSPEED, -12) 
                        }
                    }
                    else if (spr_dir == -1)
                    {
                        if (right_down)
                        {
                            set_hitbox_value(AT_USTRONG, 1, HG_PROJECTILE_HSPEED, -8)
                            set_hitbox_value(AT_USTRONG, 1, HG_PROJECTILE_VSPEED, -10)
                        }
                        if (left_down)
                        {
                            set_hitbox_value(AT_USTRONG, 1, HG_PROJECTILE_HSPEED, -4)
                            set_hitbox_value(AT_USTRONG, 1, HG_PROJECTILE_VSPEED, -16)
                        }
                        if (!right_down and !left_down)
                        {
                            set_hitbox_value(AT_USTRONG, 1, HG_PROJECTILE_HSPEED, -6)
                            set_hitbox_value(AT_USTRONG, 1, HG_PROJECTILE_VSPEED, -12) 
                        }
                    }
                }
            case 2:
                if (window_timer == 1)
                {
                    move_cooldown[AT_USTRONG] = 60;
                }
        }
        break;
    case AT_DSTRONG:
        can_fast_fall = false;
        reset_window_value(AT_DSTRONG, 2, AG_WINDOW_VSPEED);
        switch(window)
        {
            case 1:
                jump_time = 0;
                if (up_down)
                {
                    set_window_value(AT_DSTRONG, 2, AG_WINDOW_VSPEED, -11);
                }
                break;
            case 4:
                can_move = false;
                break;
            case 5:
                jump_time++;
                if (jump_time >= 24)
                {
                    can_jump = true;
                }
                can_move = false;
                break;
            case 6:
                if (window_timer == 1)
                {
                    sound_play(asset_get("sfx_swish_medium"))
                }
                can_move = false;
                break;
            case 7:
                can_move = false;
                break;
        }
        break;
    case AT_DAIR:
        if (window == 1)
        {
            boost = 1;
        }
        if (has_hit and boost = 1)
        {
            can_fast_fall = false;
            old_vsp = 0;
            old_vsp += -7;
            boost = 0;
        }
        break;
}