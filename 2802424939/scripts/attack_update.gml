//B - Reversals
if (attack == AT_NSPECIAL || attack == AT_FSPECIAL || attack == AT_DSPECIAL || attack == AT_USPECIAL){
    trigger_b_reverse();
}
switch(attack)
{
    case AT_JAB:
        if (window == 4 or window == 7)
        {
            clear_button_buffer(PC_ATTACK_PRESSED);
        }
        break;
    case AT_DATTACK:
        if (window == 3)
        {
            
            if (window_timer >= 3 and has_hit)
            {
                can_attack = true;
            }
        }
    case AT_BAIR:
        if (window == 1)
        {
            if (window_timer == get_window_value(AT_BAIR, 1, AG_WINDOW_LENGTH))
            {
                if (instance_exists(stopwatch))
                stopwatch.unfreeze = 0;
                if (!attack_down)
                {
                    with(pHitBox)
                    {
                        if (player = other.player)
                        {
                            frozen = 2;
                            if (freeze_lockout == 1)
                            freeze_lockout += 1;
                        }
                    }                    
                }
                else if (attack_down)
                {
                    with(pHitBox)
                    {
                        if (player = other.player)
                        {
                            if (knife_set == 1)
                            knife_set += 1;
                        }
                    }
                }
            } 
            else if (window_timer == get_window_value(AT_BAIR, 1, AG_WINDOW_LENGTH) - 2)
            {
                sound_play(sound_get("throw"));
            }
        }
        break;
    case AT_NSPECIAL:
        if (free)
        set_window_value(AT_NSPECIAL, 4, AG_WINDOW_ANIM_FRAMES, 1);
        else 
        set_window_value(AT_NSPECIAL, 4, AG_WINDOW_ANIM_FRAMES, 2);
        if (window == 1)
        {
            old_spr_dir = spr_dir;
            can_move = false;
            if (window_timer == get_window_value(AT_NSPECIAL, 1, AG_WINDOW_LENGTH))
            {
                if (instance_exists(stopwatch))
                stopwatch.unfreeze = 0;
                if (!special_down)
                {
                    with(pHitBox)
                    {
                        if (player = other.player)
                        {
                            frozen = 2;
                            if (freeze_lockout == 1)
                            freeze_lockout += 1;
                        }
                    }                    
                }
                else if (special_down)
                {
                    with(pHitBox)
                    {
                        if (player = other.player)
                        {
                            if (knife_set == 1)
                            knife_set += 1;
                        }
                    }
                }
            }
        }
        else if (window == 4)
        {
            if (window_timer == get_window_value(AT_NSPECIAL, 4, AG_WINDOW_LENGTH))
            {
                move_cooldown[AT_NSPECIAL] = 30;
                move_cooldown[AT_FSPECIAL] = 30;
            }
        }
        can_fast_fall = false;
        break;
    case AT_FSPECIAL:
        if (window == 1)
        {
            reset_hitbox_value(AT_FSPECIAL, 1, HG_PROJECTILE_VSPEED);
            reset_hitbox_value(AT_FSPECIAL, 2, HG_PROJECTILE_VSPEED);
            reset_hitbox_value(AT_FSPECIAL, 3, HG_PROJECTILE_VSPEED);
            reset_hitbox_value(AT_FSPECIAL, 1, HG_HITBOX_Y);
            reset_hitbox_value(AT_FSPECIAL, 2, HG_HITBOX_Y);
            reset_hitbox_value(AT_FSPECIAL, 3, HG_HITBOX_Y);
            if (free == true)
            {
                set_attack_value(AT_FSPECIAL, AG_CATEGORY, 1);//code for landing lag
                set_hitbox_value(AT_FSPECIAL, 1, HG_PROJECTILE_VSPEED, 6.8);
                set_hitbox_value(AT_FSPECIAL, 2, HG_PROJECTILE_VSPEED, 5.2);
                set_hitbox_value(AT_FSPECIAL, 3, HG_PROJECTILE_VSPEED, 6);
                
            }
            else
            {
                set_attack_value(AT_FSPECIAL, AG_CATEGORY, 2);//code for landing lag
                set_hitbox_value(AT_FSPECIAL, 1, HG_HITBOX_Y, -50);
                set_hitbox_value(AT_FSPECIAL, 2, HG_HITBOX_Y, -50);
                set_hitbox_value(AT_FSPECIAL, 3, HG_HITBOX_Y, -50);
            }
            if (window_timer == get_window_value(AT_FSPECIAL, 1, AG_WINDOW_LENGTH))
            {
                if (instance_exists(stopwatch))
                stopwatch.unfreeze = 0;
                if (!special_down)
                {
                    with(pHitBox)
                    {
                        if (player = other.player)
                        {
                            frozen = 2;
                            if (freeze_lockout == 1)
                            freeze_lockout += 1;
                        }
                    }                    
                }
                else if (special_down)
                {
                    with(pHitBox)
                    {
                        if (player = other.player)
                        {
                            if (knife_set == 1)
                            knife_set += 1;
                        }
                    }
                }
            }
        }
        else if (window >= 2)
        {
            move_cooldown[AT_FSPECIAL] = 30;
            move_cooldown[AT_NSPECIAL] = 30;
        }
        can_fast_fall = false;
        break;
    case AT_USPECIAL:
        if (cooldown == 1)
        {
            move_cooldown[AT_DSPECIAL] = 60;
        }
        if (window >= 1)
        {
            can_fast_fall = false; //Prevent the player from accidentally fast falling during the move.
        }
        if (window <= 2)
        {
            can_move = false;
        }
            //Startup Logic
        if(window == 1) 
        {
            if (window_timer == 1)
            {
                cooldown = 0;
                reset_window_value(AT_USPECIAL, 3, AG_WINDOW_LENGTH)
            }
            var tp_angle = 0;   //The angle at which the teleport will go.
            if(!joy_pad_idle) { //Set the angle to the direction held on the joystick if a direction is being held.
                tp_angle = joy_dir;
            }
            else if (joy_pad_idle)
            {
                tp_angle = 90;
            }
            var tp_dist_x = lengthdir_x(tp_dist, tp_angle); //The x and y components of the vector that will be added to
            var tp_dist_y = lengthdir_y(tp_dist, tp_angle); //the player's location.
            
            x_ = x + tp_dist_x; //The coordinates of the desired teleportation destination.
            y_ = y + tp_dist_y;
        }
        if (!instance_exists(stopwatch))
        {
            //Teleportation Logic
            if(window == 2) 
            {
                var tp_angle = 0;   //The angle at which the teleport will go.
                if(!joy_pad_idle) { //Set the angle to the direction held on the joystick if a direction is being held.
                    tp_angle = joy_dir;
                }
                else if (joy_pad_idle)
                {
                    tp_angle = 90;
                }
                var tp_dist_x = lengthdir_x(tp_dist, tp_angle); //The x and y components of the vector that will be added to
                var tp_dist_y = lengthdir_y(tp_dist, tp_angle); //the player's location.
                
                x_ = x + tp_dist_x; //The coordinates of the desired teleportation destination.
                y_ = y + tp_dist_y;
                if(window_timer == get_window_value(attack, window, AG_WINDOW_LENGTH)) { //Teleport during the first frame of the active window.
                    //Change the player's location to the teleport destination.
                    x = x_;
                    y = y_;
                    x_spot = x_;
                    y_spot = y_;
                }
            }
        }
        if (instance_exists(stopwatch))
        {
            //Teleportation Logic
            if(window == 2) {
                if(window_timer == get_window_value(attack, window, AG_WINDOW_LENGTH)) //Teleport during the first frame of the active window.
                { 
                    if (special_down)
                    {
                        cooldown = 1;
                        set_window_value(AT_USPECIAL, 3, AG_WINDOW_LENGTH, 20);
                        x = stopwatch.x + 2;
                        y = stopwatch.y + 36;
                        x = stopwatch2.x + 2;
                        y = stopwatch2.y + 36;                        
                        instance_destroy(stopwatch);
                        instance_destroy(stopwatch2);                        
                        with(pHitBox)
                        {
                            if (player == other.player)
                            if (type = 2)
                            {
                                hit_effect = 301
                                destroyed = true;
                            }
                        }
                    }
                    else if (!special_down)
                    {
                        var tp_angle = 0;   //The angle at which the teleport will go.
                        if(!joy_pad_idle) { //Set the angle to the direction held on the joystick if a direction is being held.
                            tp_angle = joy_dir;
                        }
                        else if (joy_pad_idle)
                        {
                            tp_angle = 90;
                        }
                        var tp_dist_x = lengthdir_x(tp_dist, tp_angle); //The x and y components of the vector that will be added to
                        var tp_dist_y = lengthdir_y(tp_dist, tp_angle); //the player's location.
                        
                        x_ = x + tp_dist_x; //The coordinates of the desired teleportation destination.
                        y_ = y + tp_dist_y;
                        //Change the player's location to the teleport destination.
                        x = x_;
                        y = y_;
                        x_spot = x_;
                        y_spot = y_;
                    }
                }
            }
        }
        break;
    case AT_DSPECIAL:
        can_fast_fall = false;
        if (window == 2 and window_timer == 1)
        {
            if (!instance_exists(stopwatch))
            {
                stopwatch = instance_create(x, y + 20, "obj_article1");
                stopwatch2 = instance_create(x, y + 20, "obj_article2");
            }
            else if (instance_exists(stopwatch))
            {
                stopwatch.x = x;
                stopwatch.y = y+20;
                stopwatch2.x = x;
                stopwatch2.y = y+20;
            }
        }
        else if (window == 3 and window_timer == get_window_value(AT_DSPECIAL, 3, AG_WINDOW_LENGTH))
        {
            move_cooldown[AT_DSPECIAL] = 60; 
        }
        break;
    case AT_USTRONG:
        can_fast_fall = false;
        if (window < 5)
        {
            can_move = false;
        }
        else if (window >= 5)
        {
            set_attack_value(AT_USTRONG, AG_CATEGORY, 1);
        }
        break;
}
#define stage_collide_alt {
    ///stage_collide_alt(x1, y1, x2, y2, prec)
    //This recursive script checks from (x1, y1) to (x2, y2) for the location of coordinates
    //of the edge of the stage along that line, returning it as an array formated: [x, y].
    //
    //This script assumes that there is a collision at (x2,y2) and would need to be modified
    //if this is not assumed in order to function properly.
    //
    //  Arguments:
    //      x1      The x cooridnate of the starting point, real.
    //      y1      The y coordinate of the starting point, real.
    //      x2      The x coordinate of the ending point, real.
    //      y2      The y coordinate of the ending point, real.
    //      prec    The number of samples taken for the measurement, real.
    //
    //Script by Deor
    
    var x1 = argument[0];
    var y1 = argument[1];
    var x2 = argument[2];
    var y2 = argument[3];
    var prec = argument[4];
    
    var qpu_x = (x2 - x1) / prec;  //One nth the length of the x component of the input vector, where n is prec.
    var qpu_y = (y2 - y1) / prec;  //One nth the length of the y component of the input vector.
    var x_ = x2;    //The location of the closest detection point that is colliding with the
    var y_ = y2;    //stage, the default being the destination point.
    
    //Check each detection point to find which is the closest to (x1,y1) while still colliding with the stage.
    for(var i = 1; i < prec; i++) {
        if(place_meeting(x2 - qpu_x * i, y2 - qpu_y * i, asset_get("par_block"))) {
            x_ = x2 - qpu_x * i;
            y_ = y2 - qpu_y * i;
        }
    }
    
    //If the closest colliding detection point is not the destination, recurse with the new destination being the closest colliding point.
    if(x_ != x2 && y_ != y2) {
        return stage_collide_alt(x1, y1, x_, y_, prec);
    }
        
    //Otherwise, return the closest free detection point.
    else {
        return [x2 - qpu_x, y2 - qpu_y];
    }
}
