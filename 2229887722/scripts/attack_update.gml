//B - Reversals
if (attack == AT_NSPECIAL || attack == AT_FSPECIAL || attack == AT_DSPECIAL_2 || attack == AT_USPECIAL)
{
    if (!(attack == AT_USPECIAL && window > 1))
        trigger_b_reverse();
}

switch (attack)
{
    case AT_NSPECIAL:
        clear_button_buffer( PC_SPECIAL_PRESSED  );
        
        if (chargeAttackReady == true)
        {
            //if (smokeBombCooldownTimer <= 0)
            //{
                //empoweredCooldownTimer = empoweredCooldownLength;
                set_attack(AT_NTHROW);
            //}
            //else
            //{
                //Play penalty smoke bomb animation
                //set_attack(AT_NTHROW);
                //window = 6;
                //window_timer = 0;
                //chargeAttackReadyTimer = chargeAttackReadyLength;
            //}
        }
        else if (empoweredCooldownTimer <= 0)
        {
            totalDamageDealtPrevious = totalDamageDealt;
            setChargedAttackHitboxValues();
            sound_play(asset_get( "sfx_ori_bash_hit" ));
            chargeAttackReady = true;
            chargeAttackReadyTimer = 0;
            window = 2; //Exit window
            
        }
        else if (empoweredCooldownTimer > 0)
        {
            set_attack(AT_NTHROW);
            window = 6;
            window_timer = 0;
        }
        iasa_script();
        /*
        if (isCharged == false && isCharging == false)
        {
            isCharging = true;
            sound_play( asset_get( "sfx_ori_charged_flame_charge2" ) );
        }
        else if (isCharged == true && chargeAttackReady == false)
        {
            //If we are already charged, enable chargeAttackReady state
            sound_play(asset_get( "sfx_ori_bash_hit" ));
            chargeAttackReady = true;
            chargeAttackReadyTimer = 0;
            clawComboCounter = 1;
            setChargedAttackHitboxValues();
        }
        
        if (isCharging == true || chargeAttackReady == true)
            iasa_script();
            */
    break;
    case AT_USPECIAL:
        can_wall_jump = true;
        //hasUsedUSpecial = true;
        move_cooldown[AT_USPECIAL] = 300;
        //if (hasWallJumped == false)
        if (was_parried == false)
            air_accel = 0.4;
        //If charged, use Super Launcher Claw, but only during the first frame of the
        //attack, otherwise there is a bug where Amber will switch to Super Launcher Claw
        //during the attack if she is fully charged
        if (chargeAttackReady == true && window == 1 && window_timer == 1)
        {
            empoweredCooldownTimer = empoweredCooldownLength;
            totalDamageDealtPrevious = totalDamageDealt;
            if (totalDamageDealt >= totalDamageDealtCap)
                totalDamageDealt = 0;
            set_attack(AT_USPECIAL_2);
            prat_land_time = 45;
            
        }
        else //else, default to regular Launcher Claw
        {
            //hasUsedUSpecial = true;
            attack = AT_USPECIAL;
            prat_land_time = 12; 
            //If we have hit the enemy, ignore pratfall state
            //Set the player to normal air idle state once the attack
            //finishes
            can_fast_fall = false;
            
            if (window == 2 && has_hit)
            {
                //can_fast_fall = true;
                if (attack_down && up_down || up_stick_down)
                {
                    can_fast_fall = true;
                    set_attack(AT_UAIR);
                }
                if (attack_down && down_down || down_stick_down)
                {
                    can_fast_fall = true;
                    set_attack(AT_DAIR);
                }
                if (attack_down && right_down && spr_dir == 1 || 
                    right_stick_down && spr_dir == 1 ||
                    attack_down && left_down && spr_dir == -1 ||
                    left_stick_down && spr_dir == -1 )
                {
                    can_fast_fall = true;
                    set_attack(AT_FAIR);
                }
                else if (attack_down && right_down && spr_dir == -1 || 
                    right_stick_down && spr_dir == -1 ||
                    attack_down && left_down && spr_dir == 1 ||
                    left_stick_down && spr_dir == 1 )
                {
                    can_fast_fall = true;
                    set_attack(AT_BAIR);
                }
                else if (attack_down && joy_pad_idle)
                {
                    can_fast_fall = true;
                    set_attack(AT_NAIR);
                }
            }
            
            if(window == 3 && window_timer == 4 && (has_hit || runeF))
            {
                set_state(PS_IDLE_AIR);
                can_fast_fall = true;
            }
            
            //Set the secondary up special cooldown after everything else has been executed
            //just to be safe
            move_cooldown[AT_USPECIAL_2] = 100;
        }
        
        //Stop the startup window sfx upon attacking. This is to prevent
        //overlapping sounds during the special
        if (window == 2 && window_timer == 1) 
        {
            sound_stop(asset_get( "sfx_ori_grenade_aim" ));
            
            if (right_down && spr_dir == 1 && hsp < 0 ||
                left_down && spr_dir == -1 && hsp > 0)
                hsp *= -0.5;
        }
    break;
    case AT_USPECIAL_2:
        can_wall_jump = true;
        chargeAttackReady = false;
        drawChargeVfx = false;
        
        if (tutSuccessUsedEmpowered == false)
            tutSuccessUsedEmpowered = true;
        
        //Allow the player to fast fall if they have hit the player and on the ending window
        if (has_hit_player == false)
            can_fast_fall = false;
        else if (has_hit_player == true && window >= 5)
            can_fast_fall = true;
          
        move_cooldown[AT_USPECIAL_2] = 300;
        move_cooldown[AT_USPECIAL] = 300;
        //Stop the startup window sfx upon attacking. This is to prevent
        //overlapping sounds during the special
        if (window == 1 && window_timer == 12) 
        {
            sound_stop(asset_get( "sfx_ori_grenade_aim" ));
            sound_play(asset_get("sfx_ori_grenade_launch"));
            
            if (free)
                set_window_value(AT_USPECIAL_2, 2, AG_WINDOW_VSPEED, -15);
            else
                set_window_value(AT_USPECIAL_2, 2, AG_WINDOW_VSPEED, -16);
        }
        
       
        if (window == 2 && has_hit_player == false && window_timer == 2) 
        {
            window_timer = 12;
        }
        
        //If the special button is held down, the attack will use the finishing
        //blow instead of a weak hitbox.
        if ((special_down || simpleModeEnabled) && window == 2 && window_timer >= 15)
        {
            //Allow Amber to shorten her vspeed height if the player is holding "down"
            if (down_down)
            {
                set_window_value(AT_USPECIAL_2, 4, AG_WINDOW_VSPEED_TYPE, 1);
                set_window_value(AT_USPECIAL_2, 4, AG_WINDOW_VSPEED, -6);
            }
            else
            {
                set_window_value(AT_USPECIAL_2, 4, AG_WINDOW_VSPEED_TYPE, 0);
                set_window_value(AT_USPECIAL_2, 4, AG_WINDOW_VSPEED, 0);
            }
            
            window_timer = 0;
            window = 4;
        }
        else if (window == 2 && window_timer >= 15)
        {
            //Allow Amber to shorten her vspeed height if the player is holding "down"
            if (has_hit_player)
            {
                set_window_value(AT_USPECIAL_2, 3, AG_WINDOW_VSPEED_TYPE, 1);
                if (down_down)
                {
                    set_window_value(AT_USPECIAL_2, 3, AG_WINDOW_VSPEED, -6);
                }
                else
                {
                    set_window_value(AT_USPECIAL_2, 3, AG_WINDOW_VSPEED, -8);
                }
            }
            else
            {
                set_window_value(AT_USPECIAL_2, 3, AG_WINDOW_VSPEED_TYPE, 0);
                set_window_value(AT_USPECIAL_2, 3, AG_WINDOW_VSPEED, 0);
            }
            
            window_timer = 0;
            window = 3;
        }
        
        //Manually transition the Finisher attack windows to the ending window
        if (window == 3 && window_timer >= 3 || window == 4 && window_timer >= 3 )
        {
            window_timer = 0;
            window = 5;
        }
        
        //At the very end of the attack, set the charged state to false
        //Do not set the isCharged to false at the beginning of the attack
        //since the intention for the charge punish is if she is charged/charging
        //or while using a charged attack
        if(window == 5 && window_timer >= 7)
        {
            isCharged = false;
            //If we have hit the enemy, ignore pratfall state
            //Set the player to normal air idle state once the attack
            //finishes
            if (has_hit)
                set_state(PS_IDLE_AIR);
            //move_cooldown[AT_USPECIAL] = 1;
        }
    break;
    case AT_JAB:
        //Prevent Amber from auto transitioning to Jab 2 from tapping Attack,
        //But don't clear the button buffer on frame 1 to allow workshop dialogue
        //compatibility (such as Dracula)
        if ((window == 1 || window == 4) && window_timer == 1)
        {
            clear_button_buffer(PC_ATTACK_PRESSED);
        }
        
        if (window == 4 && window_timer == 1 && !hitpause)
        {
            sound_play(asset_get("sfx_swipe_medium2"), false, false, 1, 1.1);
        }
        
        //A weird bug happened from a workshop update, causing tilt cancels to use
        //the HSP from the jab's next window. We have to remove the HSP from the jab
        //and use it manually for proper jab chains
        if (window == 7)
        {
            if (window_timer == 1)
                hsp = spr_dir * 8;
                
            if (attack_down == false)
            {
                window = 9;
                window_timer = 0;
            }
        }
            
        
        if (window == 8)
        {
            if ((window_timer == 6 || window_timer == 12) && hitpause == false)
                sound_play(asset_get("sfx_swipe_weak2"));
            
            if (window_timer == 5 || window_timer == 10)
                attack_end();
            if (attack_down == false)
            {
                window = 9;
                window_timer = 0;
            }
        }
        
        if (has_hit && window < 10)
        {
            if (up_down && special_pressed)
                set_attack(AT_USPECIAL);
        }
    break;
    case AT_FTILT:
        if (was_parried == false)
        {
            //Amber's Ftilt behaves like a jab combo chain. Allow her to chain each
            //attack into each other
            if (window == 3 && window_timer >= 1 ||
                window == 6 && window_timer >= 1 ||
                window == 9 && window_timer >= 1 ||
                window == 12 && window_timer >= 1)
            {
                if (attack_down && !up_down && !down_down || left_stick_down && spr_dir == -1 || right_stick_down && spr_dir == 1 || simpleModeEnabled == true && has_hit_player && !up_down && !down_down)
                {
                    if (clawComboCounter < 5)
                    {
                        window++;
                        window_timer = 0;
                        //if (clawComboCounter == 4)
                          //  vsp = -4;
                        clawComboCounter++;
                            
                        /*
                        if (has_hit)
                        {
                            clawComboTimer = clawComboHasHitTimerLength;
                            //set_window_value(AT_FTILT, 2, AG_WINDOW_LENGTH, 3);
                            set_window_value(AT_FTILT, 5, AG_WINDOW_LENGTH, 4);
                            set_window_value(AT_FTILT, 8, AG_WINDOW_LENGTH, 4);
                        }
                        else
                        {
                            clawComboTimer = clawComboTimerLength;
                            //set_window_value(AT_FTILT, 2, AG_WINDOW_LENGTH, 6);
                            set_window_value(AT_FTILT, 5, AG_WINDOW_LENGTH, 4);
                            set_window_value(AT_FTILT, 8, AG_WINDOW_LENGTH, 4);
                        }
                        */
                    }
                    else
                    {
                        window++;
                        window_timer = 0;
                        clawComboCounter = 1;
                        clawComboTimer = 0;
                    }
                    
                    //For some reason the attack isn't granting the player
                    //horizontal movement if we are chaining the attack windows
                    //inside this script. We have to apply the hsp manually
                    hsp = get_window_value(AT_FTILT, window, AG_WINDOW_HSPEED) * spr_dir;
                    
                    //Allow a bit of hsp control while attacking
                    if (window < 12)
                    {
                        if (left_down)
                            hsp -= 2;
                        else if (right_down)
                            hsp += 2;
                    }
                }
            }
            else if (window == 13 && window_timer <= 1) //Redundant claw combo reset in case the reset doesn't register when Amber uses the 5th attack
            {
                clawComboCounter = 1;
                clawComboTimer = 0;
            }
            //Allow Amber to follow up with up special while in the middle of her
            //jab attacks. Only if the attack lands though
            if (has_hit)
            {
                if (window == 3 && window_timer >= 1 ||
                    window == 6 && window_timer >= 1 ||
                    window == 9 && window_timer >= 1 ||
                    window == 12 && window_timer >= 1)
                {
                    if (special_pressed && up_down)
                    {
                        window = 1;
                        window_timer = 0;
                        set_attack(AT_USPECIAL);
                    }
                    
                    if (attack_down && up_down || up_stick_down)
                    {
                        set_attack(AT_UTILT);
                    }
                    if (attack_down && down_down || down_stick_down)
                    {
                        set_attack(AT_DTILT);
                    }
                }
            }
            
            //Redundant vsp set in case the user tap presses FTilt
            if (window == 10 && window_timer == 1 && hitpause == false)
                vsp = -4;
        }
    break;
    case AT_UTILT:
        can_fast_fall = false;
        can_move = false;
        //Allow for snappy movement with utilt instead of an accelerating movement
        /*
        if (window == 1 && window_timer == get_window_value(AT_UTILT, AG_WINDOW_LENGTH, 1) - 1)
        {
            if (spr_dir == (right_down || -left_down))
                set_window_value(AT_UTILT, 2, AG_WINDOW_HSPEED, 4);
            else if (spr_dir == (-right_down || left_down))
                set_window_value(AT_UTILT, 2, AG_WINDOW_HSPEED, -4);
            else
                set_window_value(AT_UTILT, 2, AG_WINDOW_HSPEED, 0);
        }
        */
        
        if (window == 2)
        {
            if (hitpause == false && window_timer == 1)
            {
                if (left_down)
                    hsp = -4;
                if (right_down)
                    hsp = 4;
            }
            //hsp = clamp(hsp, -7, 7);
            
            
        }
        
        if (window == 3 && has_hit)
            iasa_script();
    break;
    case AT_DTILT:
        switch (window)
        {
            case 2:
                //Prevent hitfalling during hitpause
                
                if (hitpause && has_hit)
                    can_fast_fall = false;
                else if (can_fast_fall == false && !hitpause && has_hit)
                    can_fast_fall = true;
                    
            break;
            case 3:
                can_jump = true;
                
                if (attack_pressed || simpleModeEnabled == true)
                {
                    window = 5;
                    window_timer = 0;
                }
                
                
                //Prevent dtilt jump, waveland, spam
                if (jump_pressed || shield_pressed)
                    move_cooldown[AT_DTILT] = 15;
                
                if (free == false)
                {
                    window = 4;
                    window_timer = 0;
                }
            break;
            case 4:
                var currWinLength = get_window_value( attack, window, AG_WINDOW_LENGTH);
                var whiffLagAdd = floor( ( (currWinLength * 1.5) - currWinLength ) * (get_window_value( attack, window, AG_WINDOW_HAS_WHIFFLAG)) + 0.5);
                var whiffLagCalc = currWinLength + whiffLagAdd - (whiffLagAdd * has_hit);
                
                if (window_timer == whiffLagCalc)
                {
                    window = 6;
                    window_timer = 18 * 1.5;
                }
                else if (window_timer >= 5)
                    iasa_script();
            break;
        }
    break;
    case AT_USTRONG:
        //can_move = false;
        can_fast_fall = false;
        
        vanishingStrikeChargeParam();
        
        if (window < 5 && window > 1)
            fall_through = true;
        else
            fall_through = false;
        
        //Cancel U-strong charges when not grounded, but allow us to be in the air right before the attack
        if (window == 1 && free)
            set_state(PS_IDLE_AIR);
        
        if (window == 2)
        {
            if (window_timer == 2)
                visible = false;
            invincible = true;
            invince_time = 6;
            
        }
        if (window == 3 && window_timer == 4)
        {
            visible = true;
            invincible = false;
        }
        if (window == 4)
        {
            visible = true;
            fall_through = true;
            //if ((y + 20) <= stylingSlashInitYPos)
            if (hitpause == false)
            {
                //y += 30;
                
                if (window_timer <= 5)
                {
                    create_hitbox(AT_USTRONG, 1, x, y - 30);
                }
            }
        }
        if (window >= 5)
            can_move = false;
        
        if (window == 7 && window_timer == 6 && has_hit_player == false && free)
        {
            prat_land_time = 12;
            hurtboxID.sprite_index = hurtbox_spr;
            state = PS_PRATFALL;
        }
    break;
    case AT_DSTRONG:
        if (window == 1 && window_timer == 1)
        currentEaseTime = 0;
        
        //Cancel d-strong charges when not grounded, but allow us to be in the air right before the attack
        if (window < 4 && free)
            set_state(PS_IDLE_AIR);
        
        if (window == 3 && window_timer == 3)
        {
            dStrongLaserSpawnX = x;
            dStrongLaserSpawnY = y;
        }
        
        if (window >= 4)
        {
            dStrongLaserOffsetX = x - dStrongLaserSpawnX;
            off_edge = true;
            can_move = false;
        }
        
        if (window < 14)
        {
            if (currentEaseTime < 6)
            {
                char_height = ease_quadOut( originCharHeight, 100, currentEaseTime, 6);
                currentEaseTime++;
            }
        }
        else
        {
            if (window == 10 && window_timer == 1)
                currentEaseTime = 0;
            if (currentEaseTime < 10)
            {
                char_height = ease_quadOut( 100, originCharHeight, currentEaseTime, 10);
                currentEaseTime++;
            }
        }
        
        //Teleport the enemy towards the front of Amber during pounce windows
        if (instance_exists(hit_player_obj))
        if (has_hit_player && hit_player_obj.state_cat == SC_HITSTUN)
        {
            if (window == 6 || window == 10)
            {
                with (asset_get("oPlayer"))
                {
                    if (self != other && hit_player_obj == other)
                    {
                        if (enemyHitByDStrong == true && url != 1928599994 && state_cat == SC_HITSTUN)
                        {
                            x = other.x - (50 * other.spr_dir);
                            y = other.y;
                        }
                    }
                }
                
            }
            
            if (window == 4 || window == 8)
            {
                with (asset_get("oPlayer"))
                {
                    if (self != other && hit_player_obj == other)
                    {
                        if (enemyHitByDStrong == true && url != 1928599994 && state_cat == SC_HITSTUN)
                        {
                            x = other.x + (50 * other.spr_dir);
                            y = other.y;
                        }
                    }
                }
            }
        }
        
        if (window == 13 && window_timer == (get_window_value( attack, window, AG_WINDOW_LENGTH)) && has_hit == false)
        {
            if (free)
                set_window_value(AT_DSTRONG, 14, AG_WINDOW_TYPE, 7);
            else
                set_window_value(AT_DSTRONG, 14, AG_WINDOW_TYPE, 1);
        }
        
        //Reverse Amber's spr_dir during endlag so it matches with the endlag animation
        if (window == 14 && window_timer == (get_window_value( attack, window, AG_WINDOW_LENGTH)))
        {
            spr_dir *= -1;
        }
    break;
    case AT_NAIR:
        //Set attack doesn't work. Do it here. Anti-infinite when hit falling
        if (window == 1 && window_timer == 1 || has_hit && window < 3)
        {
            move_cooldown[AT_NAIR] = 20;
        }
        else if (has_hit && window == 3)
        {
            move_cooldown[AT_NAIR] = 0;
        }
    break;
    case AT_FAIR:
        if (was_parried == false)
        {
            //Amber's Ftilt behaves like a jab combo chain. Allow her to chain each
            //attack into each other
            if (window == 3 && window_timer >= 1 ||
                window == 6 && window_timer >= 1 ||
                window == 9 && window_timer >= 1 ||
                window == 12 && window_timer >= 1 )
            {
                if (attack_down || left_stick_down && spr_dir == -1 || right_stick_down && spr_dir == 1 || simpleModeEnabled == true && has_hit_player || simpleModeEnabled == true && clawComboCounter < 5)
                {
                    if (clawComboCounter < 5)
                    {
                        window++;
                        window_timer = 0;
                        clawComboCounter++;
                        if (has_hit)
                        {
                            clawComboTimer = clawComboHasHitTimerLength;
                            window_timer = get_window_value( attack, window, AG_WINDOW_LENGTH);
                            sound_play(get_window_value( attack, window, AG_WINDOW_SFX));
                        }
                        else
                            clawComboTimer = clawComboTimerLength;
                    }
                    else
                    {
                        
                        if (down_down)
                            vsp = 4;
                        else if (spr_dir == 1 && right_down || spr_dir == -1 && left_down)
                            vsp = -2;
                        else if (spr_dir == -1 && right_down || spr_dir == 1 && left_down)
                            vsp = -5;
                        else
                            vsp = -3;
                            
                        window++;
                        window_timer = 0;
                        clawComboCounter = 1;
                        clawComboTimer = 0;
                    }
                    
                    //For some reason the attack isn't granting the player
                    //horizontal movement if we are chaining the attack windows
                    //inside this script. We have to apply the hsp manually. Only if the attack has hit already
                    if (has_hit)
                        hsp += get_window_value(AT_FAIR, window, AG_WINDOW_HSPEED) * spr_dir;
                    clear_button_buffer( PC_ATTACK_PRESSED  );
                }
                else if (down_stick_down || down_strong_pressed)
                    set_attack(AT_DAIR);
                else if (up_stick_down || up_strong_pressed)
                    set_attack(AT_UAIR);
            }
            else if (window == 13 && window_timer <= 1) //Redundant claw combo reset in case the reset doesn't register when Amber uses the 5th attack
            {
                clawComboCounter = 1;
                clawComboTimer = 0;
            }
            
            //Fair rework experimentation. Commented out and saved for later
            /*
            if (attack_down || left_stick_down && spr_dir == -1 || right_stick_down && spr_dir == 1 || simpleModeEnabled == true && has_hit_player || simpleModeEnabled == true && clawComboCounter < 2)
                {
                    if (clawComboCounter < 2)
                    {
                        window++;
                        window_timer = 0;
                        clawComboCounter++;
                        if (has_hit)
                        {
                            clawComboTimer = clawComboHasHitTimerLength;
                            window_timer = get_window_value( attack, window, AG_WINDOW_LENGTH);
                            sound_play(get_window_value( attack, window, AG_WINDOW_SFX));
                        }
                        else
                            clawComboTimer = clawComboTimerLength;
                    }
                    else
                    {
                            
                        window++;
                        window_timer = 0;
                        clawComboCounter = 1;
                        clawComboTimer = 0;
                    }
                    
                    //For some reason the attack isn't granting the player
                    //horizontal movement if we are chaining the attack windows
                    //inside this script. We have to apply the hsp manually. Only if the attack has hit already
                    if (has_hit)
                        hsp += get_window_value(AT_FAIR, window, AG_WINDOW_HSPEED) * spr_dir;
                    clear_button_buffer( PC_ATTACK_PRESSED  );
                }
            }
            else if (window == 13 && window_timer <= 1) //Redundant claw combo reset in case the reset doesn't register when Amber uses the 5th attack
            {
                clawComboCounter = 1;
                clawComboTimer = 0;
            }
            */
            
            //Half Amber's horizontal speed and decrease gravity temporarily to allow
            //her to hover in the air after using the finishing attack
            if (window == 14 && window_timer >= 1 || window == 15 && window_timer <= 10)
            {
                if (has_hit)
                {
                    //gravity_speed = 0.025;
                    hsp *= 0.9;
                    can_fast_fall = false;
                }
            }
            
            //Set more landing lag on the final attack
            if (window >= 14)
            {
                set_attack_value(AT_FAIR, AG_LANDING_LAG, 16);
                //can_fast_fall = false;
            }
            else if (get_attack_value( attack, AG_LANDING_LAG ) >= 16)
                set_attack_value(AT_FAIR, AG_LANDING_LAG, 1);
        }
    break;
    case AT_BAIR:
        
        if (window == 1 && window_timer == 12)
        {
            /*
            if (spr_dir == 1)
            {   
                if (left_down)
                    hsp = -12;
                else
                    hsp += -12;
            }
            else if (spr_dir == -1)
            {
                if (right_down)
                    hsp = 12;
                else
                    hsp += 12;
            }
            */
            hsp += (-14 * spr_dir);
            hsp = clamp(hsp, -12, 12);
        }
    
        if (has_hit && was_parried == false)
        {
            if (simpleModeEnabled == false)
            {
                old_hsp = (8 * spr_dir) + (left_down * -2) + (right_down * 2);
                
                /*
                if (spr_dir == 1)
                {
                    old_hsp = 8;
                }
                else if (spr_dir == -1)
                {
                    old_hsp = -8;
                }
            
                if (left_down)
                    old_hsp -= 2;
                else if (right_down)
                    old_hsp += 2;
                    */
            }
            else
            {
                /*
                if (spr_dir == 1)
                {
                    old_hsp = 6;
                }
                else if (spr_dir == -1)
                {
                    old_hsp = -6;
                }
                */
            }
            //if (!down_hard_pressed)
              //  old_vsp = -4;
        }
        else if (window == 3 && window_timer == 1 && simpleModeEnabled == false && !has_hit && was_parried == false)
        {
            if (spr_dir == 1)
            {
                if (right_down)
                    hsp += 7;
                else if (left_down)
                    hsp += 4.5;
                else
                    hsp += 7;
            }
            else if (spr_dir == -1)
            {
                if (left_down)
                    hsp += -7;
                else if (right_down)
                    hsp += -4.5;
                else
                    hsp += -7;
            }
            hsp = clamp(hsp, -air_max_speed, air_max_speed);
        }
        
        //Spawn a spark vfx on window 2 to show the tipper hitbox
        if (window == 1 && window_timer == 16)
        {
            //spawn_hit_fx( x - (54 * spr_dir), y-24, smallSparkVfx );
            smallSparkVfxBairTimer = -1;
            playersLastXPos = x; 
            playersLastYPos = y;
        }
    break;
    case AT_DATTACK:
        can_ustrong = false;
        //Allow Amber to cancel the dash attack by releasing the attack button during the attack
        if (has_hit_player)
        {
            if (window == 2)
            {
                if (window_timer <= 1)
                {
                    if (attack_down == false && simpleModeEnabled == false || dashAttackCancelBuffer == true)
                    {
                        dashAttackCancelBuffer = true;
                        //hitpause = false;
                        //hitstop = 0;
                        
                        
                        //clear_button_buffer( PC_SHIELD_PRESSED  );
                        //clear_button_buffer( PC_ATTACK_PRESSED  );
                        if (hitpause == false)
                        {
                            move_cooldown[AT_DATTACK] = 60;
                            window = 4;
                            window_timer = 0;
                            hsp = 12 * spr_dir;
                        }
                    }
                }
                else if (window_timer == 2 && hitpause == false)
                {
                    create_hitbox( AT_DATTACK, 2, x + (8 * spr_dir), y - 26 );
                }
            }
                
        }
        else if (has_hit_player == false && window == 2 && window_timer == 2 && hitpause == false)
        {
            create_hitbox( AT_DATTACK, 3, x + (8 * spr_dir), y - 26 );
        }
    break;
    case AT_FSPECIAL:
        can_wall_jump = true;
        
        switch(window)
        {
            case 1:
                clear_button_buffer( PC_SPECIAL_PRESSED );
                shurikatCurrentLoopCount = 0;
                shurikatCanCrit = true;
                if (chargeAttackReady == true)
                {
                    shurikatChargeLevel = 5;
                    //totalDamageDealtPrevious = totalDamageDealt;
                    if (totalDamageDealt >= totalDamageDealtCap)
                        totalDamageDealt = 0;
                        
                    if (tutSuccessUsedEmpowered == false)
                        tutSuccessUsedEmpowered = true;
                    empoweredCooldownTimer = empoweredCooldownLength;
                    //chargeAttackReady = false;
                }
                else
                    shurikatChargeLevel = 1;
            break;
            
            case 2:
                can_move = false;
                //max_fall = 3;
                if (vsp > 6)
                {
                    set_window_value(AT_FSPECIAL, 2, AG_WINDOW_VSPEED_TYPE, 1);
                    set_window_value(AT_FSPECIAL, 2, AG_WINDOW_VSPEED, 6);
                }
                else
                {
                    set_window_value(AT_FSPECIAL, 2, AG_WINDOW_VSPEED_TYPE, 0);
                    set_window_value(AT_FSPECIAL, 2, AG_WINDOW_VSPEED, 0);
                }
                //If special is held down, player will charge up and prepare for Shurikat attack
                if (special_down == true && shurikatChargeLevel != 5)
                {
                        if (window_timer >= 70 && shurikatChargeLevel != 1 && chargeAttackReady == false && shurikatChargeLevel != 5)
                        {
                            shurikatChargeLevel = 4;
                            if (window_timer == 89 && !hitpause)
                                spawn_hit_fx(x + (18 * spr_dir), y, shurikenFullChargeFx);
                        }
                        else if (window_timer >= 50 && window_timer < 70)
                            shurikatChargeLevel = 3;
                        else if (window_timer >= 20 && window_timer < 50)
                            shurikatChargeLevel = 2;
                        else
                            shurikatChargeLevel = 1;
                    
                }
                else if (special_down == false && window_timer < 89 && window_timer >= 4 && shurikatChargeLevel < 5 
                        || shurikatChargeLevel == 5 && window_timer < 89 && window_timer >= 8) //Unleash Shurikat
                {
                    shurikatCurrentLoopCount = 0;
                    window_timer = 89;
                    chargeAttackReady = false;
                    sound_stop(asset_get( "sfx_ori_sein_strong_start" ));
                }
                
                if (window_timer >= 89)
                    setShurikatParam();
                
                if(runeD)
                    window_timer++;
            break;
            
            case 3:
                can_fast_fall = false;
            break;
            
            case 4: //During the Shurikat looping window
                can_fast_fall = false;
                //Allow the finisher hitbox to connect by shortening hit lockout
                if (shurikatCurrentLoopCount == shurikatLoopCount)
                    set_hitbox_value(AT_FSPECIAL, 1, HG_HIT_LOCKOUT, 2); //2 for super, 4 for normal
                else
                    set_hitbox_value(AT_FSPECIAL, 1, HG_HIT_LOCKOUT, 4); //2 for super, 4 for normal
                
                create_hitbox( AT_FSPECIAL, 1, x, y - 40 );
                //shurikatBreakRockBugFix();
                //Before the end of the window, reset the window loop until
                //the loop count reaches the max
                if (window_timer >= 4 && shurikatCurrentLoopCount < shurikatLoopCount)
                {
                    window_timer = 0;
                    shurikatCurrentLoopCount++;
                }
                
                if (has_hit_player)
                {
                    set_window_value(AT_FSPECIAL, 4, AG_WINDOW_HSPEED, shurikatHitHsp); //Modified from attack_update. Ranges from 10-20, based on charge rate
                    move_cooldown[AT_FSPECIAL] = 2;
                    move_cooldown[AT_NSPECIAL] = 2;
                    if (runeB)
                        iasa_script();
                }
                
                //Skip to the finisher if the special button is pressed again
                if (special_pressed && window_timer > 1 || simpleModeEnabled == true && window_timer > 1 && shurikatCurrentLoopCount == shurikatLoopCount)
                {
                    if (!has_hit_player)
                    {
                        destroy_hitboxes();
                        window = 7;
                        window_timer = 0;
                    }
                    if (shurikatChargeLevel == 5)
                        set_window_value(AT_FSPECIAL, 6, AG_WINDOW_LENGTH, 25);
                    else
                        set_window_value(AT_FSPECIAL, 6, AG_WINDOW_LENGTH, 20);
                }
                
                //Forcefully end shurikat to the finisher if Amber is about to touch the blast zone
                if (x - 64 < get_stage_data(SD_X_POS) - get_stage_data(SD_SIDE_BLASTZONE)
                || x + 64 > get_stage_data(SD_WIDTH) + get_stage_data(SD_X_POS) + get_stage_data(SD_SIDE_BLASTZONE))
                {
                    print_debug("Called");
                    
                    if (has_hit_player)
                    {
                        if (shurikatCurrentLoopCount < shurikatLoopCount)
                        {
                            shurikatCurrentLoopCount = shurikatLoopCount;
                            window_timer = 1;
                        }
                    }
                    //else
                    //{
                    //    destroy_hitboxes();
                    //    window = 7;
                    //    window_timer = 0;
                    //}
                    if (shurikatChargeLevel == 5)
                        set_window_value(AT_FSPECIAL, 6, AG_WINDOW_LENGTH, 25);
                    else
                        set_window_value(AT_FSPECIAL, 6, AG_WINDOW_LENGTH, 20);
                        
                    shurikatHitHsp = 0;
                }
                
                //Update Super Shurikat VFX
                if (shurikatChargeLevel == 5)
                {
                    superShurikenVfxTimer += 2;
                }
            break;
            
            case 5:
                can_fast_fall = false;
                if (window_timer == 2)
                {
                    if (isCharged == true && shurikatChargeLevel == 5)
                    isCharged = false;
                }
            break;
            
            case 7:
                if (window_timer == get_window_value( attack, window, AG_WINDOW_LENGTH ))
                    sound_play(asset_get("sfx_charge_blade_swing"));
                
                if (isCharged == true && shurikatChargeLevel == 5)
                    isCharged = false;
            break;
        }
        
        
        if (window == 6 || window == 9)
        {
            //Force into pratland as soon as the player lands on the ground and has
            //not hit an enemy
            if (has_hit == false && free == false && window_timer < floor((get_window_value( attack, window, AG_WINDOW_LENGTH ) * 1.5) + 0.5) - 4)
            {
                attack_end();
                prat_land_time = floor((get_window_value( attack, window, AG_WINDOW_LENGTH ) * 1.5) + 0.5) - window_timer - 1;
                state = PS_PRATFALL;
                //window = 10;
            }
            else if (has_hit == true && free == false)
            {
                attack_end();
                prat_land_time = get_window_value( attack, window, AG_WINDOW_LENGTH ) - window_timer - 1;
                state = PS_PRATFALL;
                //window = 10;
            }
            
            //If Amber ended her attack so early that she is floating up, force her to float down
            if (vsp < 2)
            {
                vsp = 2;
            }
            
            //There is a bug with windows 6 where windows category won't properly transistion to pratfall. We'll have to do this manually
            //Also forcefully set prat_land_time to 4
            if (window_timer >= (floor((get_window_value( attack, window, AG_WINDOW_LENGTH ) * 1.5) + 0.5) - 4) && has_hit_player == false)
            {
                window = 10;
                prat_land_time = 4;
            }
        }
        
        
    break;
    case AT_FSTRONG:
        feralBlitzChargeParam();
        //Reset counter upon start of the attack
        if (window == 1)
        {
            if (window_timer <= 1)
                feralBlitzCounter = 0;
            else if (window_timer == get_window_value( attack, window, AG_WINDOW_LENGTH ) - 1 && runeD)
                strong_charge++;
                
        }
        
        //Draw after images during dash
        if (window == 2 && window_timer > 1 || window == 3 || window >= 20 && window <= 23)
        {
            afterImageUpdating(x, y, 0.8, spr_dir, 0, sprite_index, image_index, originAfterImageColor, 0.05, 2);
        }
            
        if (window == 4)
        {
            var currWinLength = get_window_value( attack, window, AG_WINDOW_LENGTH);
            var whiffLagAdd = floor( ( (currWinLength * 1.5) - currWinLength ) * (get_window_value( attack, window, AG_WINDOW_HAS_WHIFFLAG)) + 0.5);
            var whiffLagCalc = currWinLength + whiffLagAdd - (whiffLagAdd * has_hit);
            
            if (window_timer == 1)
                hsp *= 0.25;
            if (window_timer == whiffLagCalc)
            {
                window = 19;
                window_timer = whiffLagCalc;
            }
        }
        
        //Lock the enemy in front of Amber. Not bosses though
        if (has_hit_player && window < 18 && hit_player_obj.url != 1928599994 && hit_player_obj.state_cat == SC_HITSTUN)
        {
            hit_player_obj.x = x + (25 * spr_dir);
            hit_player_obj.y = y;
        }
        
        //Loop back to the other window if the counter is below max count
        //for extended damage
        if (window == 13 && feralBlitzCounter < feralBlitzMaxCount)
        {
            window = 8;
            feralBlitzCounter++;
        }
        if (window == 15 && hitpause == false && window_timer == 2 && strong_charge == 60)
        {
            sound_play(asset_get("sfx_ori_bash_hit"), false, false, 1, 1);
            window = 20;
            window_timer = 0;
            //spr_dir = spr_dir * -1;
            hsp = spr_dir * -10;
            feralBlitzMaxVfxObj = spawn_hit_fx(x - 98, y - 176, feralBlitzMaxVfx);
            feralBlitzMaxVfxObj.spr_dir = 2;
            feralBlitzMaxVfxObj.image_yscale = 2;
            feralBlitzMaxVfxObj.depth = depth - 1;
        }
        
        if (window >= 20 && instance_exists(feralBlitzMaxVfxObj))
        {
            feralBlitzMaxVfxObj.x = x - 94;
            feralBlitzMaxVfxObj.y = y - 116;
        }
    break;
    case AT_FTHROW:
        chargeAttackReady = false;
        drawChargeVfx = false;
        
        //Reset counter upon start of the attack
        if (window == 1)
            feralBlitzCounter = 0;
        
        //Lock the enemy in front of Amber. Not bosses though
        if (has_hit_player && window < 18 && hit_player_obj.url != 1928599994 && hit_player_obj.state_cat == SC_HITSTUN)
        {
            hit_player_obj.x = x + (25 * spr_dir);
            hit_player_obj.y = y;
        }
        
        //Loop back to the other window if the counter is below max count
        //for extended damage
        if (window == 13 && feralBlitzCounter < feralBlitzMaxCount)
        {
            window = 8;
            feralBlitzCounter++;
        }
        
        if (window == 19 || window == 4)
        {
            isCharged = false;
        }
    break;
    case AT_NTHROW: //Smoke bomb
        if (tutSuccessUsedEmpowered == false)
            tutSuccessUsedEmpowered = true;
        
        
        if (window == 1)
        {
            chargeAttackReady = false;
            if (window_timer == 1)
                currentEaseTime = 0;
            if (currentEaseTime < 6)
            {
                char_height = ease_quadOut( originCharHeight, 64, currentEaseTime, 6);
                currentEaseTime++;
            }
        }
        
        if (window == 2)
        {
            if (window_timer == 1)
                currentEaseTime = 0;
            if (currentEaseTime < 3)
            {
                char_height = ease_quadOut( 64, originCharHeight, currentEaseTime, 3);
                currentEaseTime++;
            }
            if (window_timer == 4 && hitpause == false)
            {
                var smokefx = spawn_hit_fx(x - 102, y - 130, smokeBombVfx);
                smokefx.spr_dir = 1;
                smokefx.depth = depth - 30;
            }
        }
        if (window == 3 && window_timer == 4)
        {
            visible = false;
            smokeBombInvisState = true;
            smokeBombInvisTimer = smokeBombInvisLength;
            chargeAttackReadyTimer = chargeAttackReadyLength;
            take_damage(player, -1, 1);
            clear_button_buffer(PC_SPECIAL_PRESSED);
            //smokeBombCooldownTimer = smokeBombCooldownLength;
            smokeBombBurstSpeedTimer = smokeBombBurstSpeedLength;
            empoweredCooldownTimer = empoweredCooldownLength;
            if (totalDamageDealt > smokeBombMeterCost)
                totalDamageDealt -= smokeBombMeterCost;
            else if (totalDamageDealt > 0 && totalDamageDealt <= smokeBombMeterCost)
                totalDamageDealt = 0;
        }
        
        //Looping invis
        if (window == 4)
        {
            fall_through = true;
            can_fast_fall = false;
            if (joy_pad_idle)
            {
                hsp = 0;
                vsp = 0;
            }
            else
            {
                if (smokeBombBurstSpeedTimer > 0)
                {
                    hsp = lengthdir_x(30, joy_dir);
                    vsp = lengthdir_y(30, joy_dir);
                }
                else
                {
                    hsp = lengthdir_x(15, joy_dir);
                    vsp = lengthdir_y(15, joy_dir);
                }
            }
            
            //Increaes smokebomb cooldown if we ran out of boost meter
            if (totalDamageDealt <= 0)
                smokeBombCooldownTimer += 10; //Update.gml subtracts 1 from this due to passively reducing cooldown
                
            if (playerDecimalDamage >= 1)
            {
                take_damage( player, hit_player_obj.player, playerDecimalDamage - (playerDecimalDamage % 1) );
                playerDecimalDamage -= playerDecimalDamage - (playerDecimalDamage % 1);
            }
        
            
            if (special_pressed)
            {
                window = 5;
                window_timer = 0;
            }
            
            if (smokeBombBurstSpeedTimer > 0)
                smokeBombBurstSpeedTimer--;
            
            if (smokeBombInvisTimer > 0)
                smokeBombInvisTimer--;
            else
            {
                window = 5;
                window_timer = 0;
            }
        }
        
        //Reappear window
        if (window == 5)
        {
            if (window_timer == 0)
            {
                char_height = originCharHeight;
                visible = true;
                smokeBombCooldownHudRange = smokeBombCooldownTimer;
                hsp *= 0.5;
                vsp *= 0.5;
            }
            if (window_timer == get_window_value( attack, window, AG_WINDOW_LENGTH ))
                smokeBombInvisState = false;
            
            //If we still have meter, allow smoke bomb momentum boost
            //and no pratfall. Otherwise, go into pratfall and no momentum boost
            if (totalDamageDealt <= 0)
            {
                prat_land_time = 60;
                if (window_timer == get_window_value( attack, window, AG_WINDOW_LENGTH ))
                {
                    state = PS_PRATFALL;
                    hurtboxID.sprite_index = hurtbox_spr;
                    smokeBombCooldownHudRange = smokeBombCooldownTimer;
                }
            }
            else
            {
               //isCharged = true;
               empoweredCooldownTimer = 1;
            }
            
        }
    break;
    #region //Amber's DSpecial Update (Yarn Ball)
    case AT_DSPECIAL:
        //Use Finishing Yarn move instead if in charge stance
        if (hasYarnBall == true && window == 1 && window_timer == 1 && chargeAttackReady == true)
        {
            window_timer = 0;
            //totalDamageDealtPrevious = totalDamageDealt;
            if (totalDamageDealt >= totalDamageDealtCap)
                totalDamageDealt = 0;
            empoweredCooldownTimer = empoweredCooldownLength;
            set_attack(AT_DSPECIAL_2);
        }
        //Yarn ball get!
        if (hasYarnBall == true && window == 2 && window_timer <= 1)
        {
            isHoldingYarnBall = true;
            yarnBallWasHitByEnemy = false;
            yarnBallAimingPower = 0;
            clear_button_buffer( PC_SPECIAL_PRESSED  );
        }
        
        if (window == 3 || window == 2 && (left_down || right_down || jump_pressed))
            iasa_script();
        
        if (window <= 3)
            can_wall_jump = true;
        
        //A new Workshop update has broke the use of cancel windows from stopping parts of the D-Special moves
        //A new code snippet will have to take its place to properly segment the D-Special moves
        if (window == 3 || window >= 6 && window <= 9 || window >= 12 && window <= 18)
        {
            var currWinLength = get_window_value( attack, window, AG_WINDOW_LENGTH);
            var whiffLagAdd = floor( ( (currWinLength * 1.5) - currWinLength ) * (get_window_value( attack, window, AG_WINDOW_HAS_WHIFFLAG)) + 0.5);
            var whiffLagCalc = currWinLength + whiffLagAdd - (whiffLagAdd * has_hit);
            
            if (window_timer == whiffLagCalc)
            {
                window = 20;
                window_timer = 2;
            }
        }
        
        if (window == 10 || window == 11 || window == 12)
        {
            can_fast_fall = false;
            can_move = false; 
        }
        
        if (window == 10 && window_timer <= 1)
        {
            //There is a bug where using attack cancel to pratfall will retain
            //hitbox hit values, preventing the player from hitting the enemy
            //again. Fix this here
            attack_end();
        }
        else if (window == 10 && window_timer == get_window_value( attack, window, AG_WINDOW_LENGTH)) //There is 1 frame where Amber doesn't read the angle right away upon entering window 11. Do it a frame before
        {
            if (instance_exists(yarnBallObject))
                {
                    yarnDashAngleDirection = point_direction(x, y, yarnBallObject.x, yarnBallObject.y);
                    yarnDashHitboxDirection = point_direction(x, y - 24, yarnBallObject.x, yarnBallObject.y);
                }
                
                hsp = lengthdir_x(yarnDashSpeed, yarnDashAngleDirection);
                vsp = lengthdir_y(yarnDashSpeed, yarnDashAngleDirection);
                
            //Create a hitbox right before Amber dashes. There is a bug where
            //Amber tries to pick up the yarn ball on the very first frame of the
            //dash window. This may cause Amber to completely whiff the attack when
            //perfectly overlapping against the enemy
            set_hitbox_value(AT_DSPECIAL, 6, HG_HITBOX_X, floor(lengthdir_x(14, yarnDashHitboxDirection)) * spr_dir);
            set_hitbox_value(AT_DSPECIAL, 6, HG_HITBOX_Y, -24 + floor(lengthdir_y(14, yarnDashHitboxDirection)));
            set_hitbox_value(AT_DSPECIAL, 5, HG_ANGLE_FLIPPER, 0 );
            set_hitbox_value(AT_DSPECIAL, 5, HG_ANGLE, yarnDashAngleDirection);
            //set_hitbox_value(AT_DSPECIAL, 6, HG_ANGLE, yarnDashAngleDirection);
            set_hitbox_value(AT_DSPECIAL, 5, HG_HITBOX_X, 0);
            set_hitbox_value(AT_DSPECIAL, 5, HG_HITBOX_Y, -22);
            create_hitbox( AT_DSPECIAL, 5, x, y - 22);
            create_hitbox( AT_DSPECIAL, 6, x + floor(lengthdir_x(14, yarnDashHitboxDirection)) * spr_dir, y - 24 + floor(lengthdir_y(14, yarnDashHitboxDirection)));
            
            
            yarnDashAgainstWall = false;
            yarnDashLedgeBoostTimer = 0;
        }
        
        if (window == 11)
        {
            if (window_timer <= 1)
            {
                yarnDashPrevXPos = x;
                yarnDashPrevYPos = y;
                set_hitbox_value(AT_DSPECIAL, 5, HG_ANGLE_FLIPPER, 10 );
            }
            
            can_fast_fall = false;
            can_move = false; 
            
            //Afterimages
            if (yarnDashIsEmpowered)
                if (spr_dir == 1)
                    afterImageUpdating(x - (6 * spr_dir), y - 20, 0.8, spr_dir, yarnDashAngleDirection, yarnDashSprite, 1, originAfterImageColor, 0.1, 0);
                else if (spr_dir == -1)
                    afterImageUpdating(x - (6 * spr_dir), y - 20, 0.8, spr_dir, yarnDashAngleDirection - 180, yarnDashSprite, 1, originAfterImageColor, 0.1, 0);
                //draw_sprite_ext( yarnDashSprite, 0, x - (6 * spr_dir), y - 20, spr_dir, 1, yarnDashAngleDirection, c_white, 1);
            
            //Cancel the move and enter pratfall
            if (shield_pressed && yarnDashIsEmpowered == false)
            {
                if (has_hit_player || runeF)
                    set_window_value(AT_DSPECIAL, 19, AG_WINDOW_TYPE, 1);
                else
                    set_window_value(AT_DSPECIAL, 19, AG_WINDOW_TYPE, 7);
                window = 19;
                window_timer = 0;
                prat_land_time = 10;
                clear_button_buffer( PC_SHIELD_PRESSED  );
                sound_play( asset_get("mfx_back") );
                spawn_hit_fx(x, y - 32, 115 );
                destroy_hitboxes();
            }
            
            if (instance_exists(yarnBallObject))
            {
                if (distance_to_object( yarnBallObject ) < 4)
                {
                    set_hitbox_value(AT_DSPECIAL, 4, HG_HITBOX_X, floor(lengthdir_x(14, yarnDashHitboxDirection)) * spr_dir);
                    set_hitbox_value(AT_DSPECIAL, 4, HG_HITBOX_Y, -24 + floor(lengthdir_y(14, yarnDashHitboxDirection)));
                    create_hitbox( AT_DSPECIAL, 4, x + floor(lengthdir_x(14, yarnDashHitboxDirection)) * spr_dir, y - 24 + floor(lengthdir_y(14, yarnDashHitboxDirection)));
                    
                    hasYarnBall = true;
                    sound_play( asset_get("mfx_coin") );
                    spawn_hit_fx( yarnBallObject.x, yarnBallObject.y, 109 );
                    if (variable_instance_exists(yarnBallObject, "yBallIsProjectile"))
                    {
                    if (yarnBallObject.yBallIsProjectile == true)
                        yarnBallObject.destroyed = true;
                    else
                        instance_destroy( yarnBallObject );
                    }
                    else
                        instance_destroy( yarnBallObject );
                    window_timer = 1;
                    window = 12;
                    
                    if (yarnDashSpeed >= 25)
                    {
                        hsp *= 0.5;
                        vsp *= 0.5;
                    }
                    else if (yarnDashSpeed >= 20)
                    {
                        hsp *= 0.8;
                        vsp *= 0.8;
                    }
                    
                    destroy_hitboxes();
                    
                    //Remove mark status from enemies
                    user_event(4);
                }
                else //dash towards yarn ball
                {
                    can_wall_jump = true;
                    fall_through = true; //This variable was not documented....
                    
                    if (yarnBallObject != undefined)
                    {
                        //var yarnBallDirection = point_direction(x, y, yarnBallObject.x, yarnBallObject.y);
                        yarnDashAngleDirection = point_direction(x, y, yarnBallObject.x, yarnBallObject.y);
                        yarnDashHitboxDirection = point_direction(x, y - 24, yarnBallObject.x, yarnBallObject.y);
                        
                    }
                    
                    hsp = lengthdir_x(yarnDashSpeed, yarnDashAngleDirection);
                    vsp = lengthdir_y(yarnDashSpeed, yarnDashAngleDirection);
                    //Amber may get stuck against the wall while dashing towards the yarn ball. Forcefully end her dash
                    //early if this happens
                    if ((yarnDashPrevXPos - x) == 0 && (yarnBallObject.x > x || yarnBallObject.x < x) && window_timer > 1 && 
                        ((yarnDashPrevYPos - y) <= 5 && (yarnDashPrevYPos - y) >= -5))
                    {
                        //Push Amber up slightly if she yarn dashes at the wall ledge
                        if (yarnDashAgainstWall == false && yarnDashLedgeBoostTimer <= 0)
                        {
                            yarnDashAgainstWall = true;
                            yarnDashLedgeBoostTimer = 60;
                        }
                        else if (yarnDashAgainstWall == true && yarnDashLedgeBoostTimer > 0)
                        {
                            //vsp = lengthdir_y(yarnDashSpeed, yarnDashAngleDirection) + (yarnDashLedgeBoostTimer - 15);
                            y -= 4;
                            yarnDashLedgeBoostTimer--;
                            
                        }
                        else if (yarnDashAgainstWall == true && yarnDashLedgeBoostTimer <= 0)
                        {
                            window_timer = 1;
                            window = 12;
                            destroy_hitboxes();
                        }
                    }
                    yarnDashPrevXPos = x;
                    yarnDashPrevYPos = y;
                    
                    if (window_timer == 1 && window == 11 && hitpause == false)
                    {
                        if (yarnDashIsEmpowered)
                            sound_play( asset_get("sfx_ori_grenade_launch") );
                    }
                    //For some reason we can't move the hitbox manually if it's a physical attack. Instead we'll update the hitbox
                    //parameters every frame of the window and spawn it.
                    set_hitbox_value(AT_DSPECIAL, 4, HG_HITBOX_X, floor(lengthdir_x(14, yarnDashHitboxDirection)) * spr_dir);
                    set_hitbox_value(AT_DSPECIAL, 4, HG_HITBOX_Y, -24 + floor(lengthdir_y(14, yarnDashHitboxDirection)));
                    create_hitbox( AT_DSPECIAL, 4, x + floor(lengthdir_x(14, yarnDashHitboxDirection)) * spr_dir, y - 24 + floor(lengthdir_y(14, yarnDashHitboxDirection)));
                }
            }
            else
            {
                window_timer = 1;
                window = 12;
                destroy_hitboxes();
            }
            
            if (window == 12)
            {
                //Make the hurtbox in the original offset of the player
                //Yarn dash modifies the offset of the hurtbox
                //sprite_change_offset("dspecial_hurt", 80, 118);
                can_wall_jump = true;
                if (has_hit_player)
                {
                    if (yarnDashSpeed >= 20)
                    {
                        old_hsp *= 0.5;
                        old_vsp *= 0.5;
                    }
                }
            }
            
        }
    break;
    #endregion
    case AT_DSPECIAL_2:
        can_fast_fall = false;
        can_move = false;
        chargeAttackReady = false;
        isCharged = false;
        hurtboxID.sprite_index = sprite_get("dspecial2_hurt");
        
        if (tutSuccessUsedEmpowered == false)
            tutSuccessUsedEmpowered = true;
            
        if (window == 1)
        {
            set_window_value(AT_DSPECIAL_2, 5, AG_WINDOW_LENGTH, 30);
            attack_end(); //Refresh hitboxes in case we were KO'd earlier while using Finishing Yarn
            
            //Check if the attack is used near the side blast zones by calculating the
            //future distance with the blastzone positions
            if (x - 120 < get_stage_data(SD_X_POS) - get_stage_data(SD_SIDE_BLASTZONE)
            || x + 120 > get_stage_data(SD_WIDTH) + get_stage_data(SD_X_POS) + get_stage_data(SD_SIDE_BLASTZONE))
            {
                set_hitbox_value(AT_DSPECIAL_2, 5, HG_HITBOX_X, 50);
                set_window_value(AT_DSPECIAL_2, 2, AG_WINDOW_HSPEED, 0);
                set_window_value(AT_DSPECIAL_2, 3, AG_WINDOW_HSPEED, 0);
            }
            else
            {
                set_hitbox_value(AT_DSPECIAL_2, 5, HG_HITBOX_X, -50);
                set_window_value(AT_DSPECIAL_2, 2, AG_WINDOW_HSPEED, 5);
                set_window_value(AT_DSPECIAL_2, 3, AG_WINDOW_HSPEED, 20);
            }
        }
        
        
        if (window == 2 && window_timer > 1 || window == 3)
        {
            var targetAlpha = 1;
            if (window == 2)
                targetAlpha = 0.6;
            else if (window == 3 && window_timer == 1)
                targetAlpha = 0.8;
            else
                targetAlpha = 1;
            
            afterImageUpdating(x, y, targetAlpha, spr_dir, 0, sprite_get("dspecial2_afterimage"), 1, c_white, 0.1, 0);
        }
        
    
        if (window == 5 && window_timer == get_window_value( attack, window, AG_WINDOW_LENGTH ) - 1)
        {
            if (has_hit == false && free == true)
            {
                state = PS_PRATFALL;
                hurtboxID.sprite_index = hurtbox_spr;
                prat_land_time = 4;
            }
        }
    break;
    #region //Special Taunt Update
    case AT_TAUNT: 
        can_move = false;
        can_fast_fall = false;
        
        switch(tauntType)
        {
            case 2: //Hug Plush
                if (tauntCancelTimer > 0)
                {
                    tauntCancelTimer--;
                    if (window == 2 && window_timer == 4 && targetPlushIndex == 16) //WUAH!!!!
                        sound_play(asset_get("sfx_sand_yell") , false, false, 0.5, 1.75);
                }
                else
                    iasa_script();
            break;
            case 3: //Ready to Hug
                if (window == 1)
                {
                    switch (amberHugState)
                    {
                        case 0: //If we're somehow in this state while in ready hug state, go to cancelling window
                            window = 2;
                            window_timer = 0;
                        break;
                        case 1: //Ready to hug
                            if (shield_pressed)
                            {
                                window = 2;
                                window_timer = 0;
                                //amberWantsToHug = false;
                            }
                            checkOtherPlayerHug();
                        break;
                        case 2: //Startup state for hugging
                            updateOPlayerHugging();
                        break;
                    }
                }
            break;
        }
    break;
    #endregion
    #region //Hugging other character (character to character interaction)
    case AT_EXTRA_3:
        switch (amberHugState)
        {
            case 3: //Actual Hug
                updateOPlayerHugging();
                if (amberHugCanExitTimer <= 0)
                {
                    if (shield_pressed || attack_pressed || special_pressed)
                    {
                        amberHugState = 4;
                        targetPlayerHugID.oPlayerHugAmberState = 4;
                        window = amberHugExitWindow;
                        window_timer = 0;
                    }
                }
                else
                    amberHugCanExitTimer--;
            break;
            case 4:
                updateOPlayerHugging();
            break;
        }
    break;
    #endregion
    #region//Cardboard Box Taunt Update
    case AT_TAUNT_2:
        //Grounded movement
        if (window == 3 || window == 4)
        {
            if (left_down && free == false)
            {
                hsp = -walk_speed;
                window = 4;
                spr_dir = -1;
            }
            else if (right_down && free == false)
            {
                hsp = walk_speed;
                window = 4;
                spr_dir = 1;
            }
            else if (hsp != 0 && right_down == false && left_down == false)
            {
                hsp = 0;
                window = 3;
            }
            
            //Jumping
            if (jump_pressed && free == false)
            {
                window = 5;
                window_timer = 0;
                
                //Adjust jump height based on tap or hold down jump during jump squat
                if (jump_down)
                {
                    set_window_value(AT_TAUNT_2, 6, AG_WINDOW_LENGTH, 30);
                    set_window_value(AT_TAUNT_2, 6, AG_WINDOW_VSPEED, -jump_speed);
                }
                else if (jump_down == false)
                {
                    set_window_value(AT_TAUNT_2, 6, AG_WINDOW_LENGTH, 18);
                    set_window_value(AT_TAUNT_2, 6, AG_WINDOW_VSPEED, -short_hop_speed);
                }
                
            }
            
            //Exit the box. Leave taunt state
            if (free == false && (taunt_pressed || attack_pressed || special_pressed))
            {
                window = 9;
                window_timer = 0;
                clear_button_buffer(PC_ATTACK_PRESSED);
                clear_button_buffer(PC_SPECIAL_PRESSED);
                clear_button_buffer(PC_TAUNT_PRESSED);
            }
        }
        
        //Landing
        if (free == false && (window == 6 || window == 7))
        {
            window = 8;
            window_timer = 0;
        }
        
        //Land transition to idle
        if (window == 8 && window_timer == 7)
        {
            window = 3;
        }
        
        //Exiting box. Ease the char_height
        if (window == 9)
        {
            if (window_timer <= 12)
            {
                char_height = ease_quadOut( originCharHeight, 100, window_timer, 12);
            }
            else if (window_timer > 15 && window_timer <= 30)
            {
                char_height = ease_quadIn( 100, originCharHeight, (window_timer) - 12, (30) - 12);
            }
        }
    break;
    #endregion
}
#region //unused f-strong2
/*
if (attack == AT_FSTRONG_2)
{
    if (window < 6)
    {
        fall_through = true;
        
    }
    
    if (window != 4)
    {
        can_fast_fall = false;
        can_move = false;
    }
    else
    {
        can_fast_fall = true;
        can_move = true;
    }
    
    if (window == 2 && window_timer == 1)
    {
        stylingSlashInitYPos = y; //The y position where Amber started her fstrong attack
    }
    
    if (window >= 3 && window <= 4)
    {
        
    }
    
    if (window == 5)
    {
        fall_through = true;
        //if ((y + 20) <= stylingSlashInitYPos)
        if (hitpause == false)
        {
            if (window_timer == 1)
            {
                sound_play( asset_get("sfx_swipe_heavy2") );
            }
        }
        
        //else if ((y + 20) > stylingSlashInitYPos)
          //  y += y - stylingSlashInitYPos;
    }
    
    if (window == 8 && window_timer <= 1)
    {
        iasa_script();
    }
    
}
*/
#endregion
if (attack != AT_FSPECIAL && shurikatChargeLevel == 5) //reset shurikat charge level if not using fspecial, bug fix for hit_player while charged
{
    shurikatChargeLevel = 1;
}

#region //Special Taunts
if (taunt_pressed && free == false && attack != AT_TAUNT_2 && attack == AT_TAUNT)
{
    //Hug taunt
    if (left_down && spr_dir == -1 || right_down && spr_dir == 1)
    {
        //Hug Plush
        tauntType = 2;
        getOtherPlayerPlush();
        tauntCancelTimer = 60;
        user_event(0);
        set_attack(AT_TAUNT);
    }
    else if (up_down && !left_down && !right_down) //Ready to Hug Taunt
    {
        //Hug Character
        tauntType = 3;
        user_event(0);
        amberHugState = 1;
        set_attack(AT_TAUNT);
    }
    //Ninja Gum!
    else if (joy_pad_idle && attack_down)
    {
        tauntType = 6; //ninja gum
        user_event(0);
        set_attack(AT_TAUNT);
    }
    //Training Menu Taunt
    else if (inTraining && joy_pad_idle && !attack_down && tutCurrentMenuCategory == 0)
    {
        spr_dir = 1; //Force Amber to look right
        tauntType = 10;
        user_event(0);
        tutCurrentMenuCategory = 1;
        set_attack(AT_TAUNT);
    }
    else if (tutCurrentMenuCategory == 0)
    {
        tauntType = 1; // jump wave
        user_event(0);
        set_attack(AT_TAUNT);
    }
    
     //Cardbox box
    if (down_down && shield_down)
    {
        set_attack(AT_TAUNT_2);
    }
    
    clear_button_buffer(PC_TAUNT_PRESSED);
}
#endregion

#region //Tutorial Menu Update
if (tauntType == 10 && attack == AT_TAUNT && window == 2)
{
    if (up_down || down_down)
    {
        menuInputHeldTimer++;
    }
    else
    {
        menuInputHeldTimer = 0;
    }
    #region//Tutorial Bubble Menu Update
    if (tutCurrentMenuCategory == 1)
    {
        //Close Menu
        if (special_pressed || taunt_pressed)
        {
            tutCurrentMenuCategory = 0;
            window = 3;
            window_timer = 0;
        }
        
        //Move selection cursor up or down with held or pressed input
        if ((up_pressed || (up_down && menuInputHeldTimer > 18 && menuInputHeldTimer mod 5 == 0)))
        {
    		tutSelectedMenuIndex -= 3;
            if(tutSelectedMenuIndex < 0)
                tutSelectedMenuIndex = tutMaxMenuIndex;
            sound_play(asset_get("mfx_move_cursor"));
    	}
    	if ((down_pressed || (down_down && menuInputHeldTimer > 18 && menuInputHeldTimer mod 5 == 0)))
    	{
    		tutSelectedMenuIndex += 3;
            if(tutSelectedMenuIndex > tutMaxMenuIndex)
                tutSelectedMenuIndex = 0;
            sound_play(asset_get("mfx_move_cursor"));
    	}
        
        
        if (attack_pressed)
        {
            switch(tutSelectedMenuIndex)
            {
                case 0:
                    tutCurrentMenuCategory = 2;
                    sound_play(sound_get("open_scroll"));
                break;
                case 1:
                    
                break;
                case 2:
                    
                break;
                case 3:
                    if (infiniteMeter == false)
                        infiniteMeter = true;
                    else
                        infiniteMeter = false;
                    sound_play(asset_get("mfx_star"));
                break;
                
            }
            
            clear_button_buffer( PC_ATTACK_PRESSED );
        }
    }
    #endregion
    
    #region //Scroll Menu Update
    else if (tutCurrentMenuCategory == 2)
    {
        switch(tutScrollCurrentCursorCategory)
        {
            case 0: //Side Scroll Moves
                if ((up_pressed || (up_down && menuInputHeldTimer > 18 && menuInputHeldTimer mod 5 == 0)))
                {
                    tutScrollInfoScrollCurrentIndex = 0;
            		tutScrollCurrentMove--;
                    if(tutScrollCurrentMove < 0)
                        tutScrollCurrentMove = tutScrollMaxMoves;
                    checkMoveCategory();
                    sound_play(asset_get("mfx_option"));
            	}
            	if ((down_pressed || (down_down && menuInputHeldTimer > 18 && menuInputHeldTimer mod 5 == 0)))
            	{
            	    tutScrollInfoScrollCurrentIndex = 0;
            		tutScrollCurrentMove++;
                    if(tutScrollCurrentMove > tutScrollMaxMoves)
                        tutScrollCurrentMove = 0;
                    checkMoveCategory();
                    sound_play(asset_get("mfx_option"));
            	}
            break;
            case 1: //Info Box
                switch(tutScrollCurrentInfoCategory)
                {
                    case 0: //Description
                        if ((up_pressed || (up_down && menuInputHeldTimer > 18 && menuInputHeldTimer mod 5 == 0)))
                        {
                            if (tutScrollInfoScrollCurrentIndex > 0)
                            {
                        		tutScrollInfoScrollCurrentIndex--;
                                sound_play(asset_get("mfx_option"));
                            }
                    	}
                    	if ((down_pressed || (down_down && menuInputHeldTimer > 18 && menuInputHeldTimer mod 5 == 0)))
                    	{
                    		if (tutScrollInfoScrollCurrentIndex < tutScrollMaxDescIndex[tutScrollCurrentMove] - 1)
                            {
                        		tutScrollInfoScrollCurrentIndex++;
                                sound_play(asset_get("mfx_option"));
                            }
                    	}
                    break;
                    case 1:
                    
                    break;
                    case 2:
                    
                    break;
                    case 3:
                    
                    break;
                }
            break;
            case 2: //Info Categories
                if ((up_pressed || (up_down && menuInputHeldTimer > 18 && menuInputHeldTimer mod 5 == 0)))
                {
            		tutScrollCurrentInfoCategory--;
                    if(tutScrollCurrentInfoCategory < 0)
                        tutScrollCurrentInfoCategory = tutScrollMaxInfoCategory;
                    //checkMoveCategory();
                    sound_play(asset_get("mfx_option"));
            	}
            	if ((down_pressed || (down_down && menuInputHeldTimer > 18 && menuInputHeldTimer mod 5 == 0)))
            	{
            		tutScrollCurrentInfoCategory++;
                    if(tutScrollCurrentInfoCategory > tutScrollMaxInfoCategory)
                        tutScrollCurrentInfoCategory = 0;
                    //checkMoveCategory();
                    sound_play(asset_get("mfx_option"));
            	}
            break;
        }
        
        //Horizontal navigation through categories
        if (left_pressed)
    	{
    	    tutScrollCurrentCursorCategory--;
    	    if (tutScrollCurrentCursorCategory < 0)
    	        tutScrollCurrentCursorCategory = 2;
    	    clear_button_buffer( PC_LEFT_HARD_PRESSED );
    	    sound_play(asset_get("mfx_option"));
    	}
    	if (right_pressed){
    	    tutScrollCurrentCursorCategory++;
    	    if (tutScrollCurrentCursorCategory > 2)
    	        tutScrollCurrentCursorCategory = 0;
    	    clear_button_buffer( PC_RIGHT_HARD_PRESSED );
    	    sound_play(asset_get("mfx_option"));
    	}
        
        //Close Moveset Menu
        if (special_pressed || taunt_pressed)
        {
            tutCurrentMenuCategory = 1;
            sound_play(sound_get("close_scroll"));
            clear_button_buffer( PC_SPECIAL_PRESSED );
        }
    }
    #endregion
}

#endregion

speedLinesAttackUpdate();
extendHitPause();

#define setShurikatParam
switch (shurikatChargeLevel)
{
    //Charged
    case 5:
        set_window_value(AT_FSPECIAL, 3, AG_WINDOW_HSPEED, 10); // 30 if fully charged, 20 for normal
        set_window_value(AT_FSPECIAL, 4, AG_WINDOW_HSPEED, 10); //Modified from attack_update. Ranges from 10-20, based on charge rate
        set_window_value(AT_FSPECIAL, 4, AG_WINDOW_CUSTOM_GRAVITY, 0.3);
        set_window_value(AT_FSPECIAL, 6, AG_WINDOW_LENGTH, 20);
        //set_window_value(AT_FSPECIAL, 6, AG_WINDOW_TYPE, 7); 
        //set_window_value(AT_FSPECIAL, 8, AG_WINDOW_TYPE, 7); 
        set_hitbox_value(AT_FSPECIAL, 1, HG_DAMAGE, 0.5);
        set_hitbox_value(AT_FSPECIAL, 1, HG_EFFECT, 0 );
        
        
        set_hitbox_value(AT_FSPECIAL, 2, HG_BASE_KNOCKBACK, 8); //modified from attack_update. Ranges from 6-12
        
        set_hitbox_value(AT_FSPECIAL, 2, HG_DRIFT_MULTIPLIER, 1);
        set_hitbox_value(AT_FSPECIAL, 4, HG_DAMAGE, 8); //Modified from attack_update. Lunge hitbox
        
        set_hitbox_value(AT_FSPECIAL, 3, HG_BASE_KNOCKBACK, 8);
        
        
        
        
        shurikatLoopCount = 10 - (5 * lethalLeague_stage);
        drawChargeVfx = false;
        
        if (totalDamageDealtPrevious == totalDamageDealtCap)
        {
            set_hitbox_value(AT_FSPECIAL, 2, HG_DAMAGE, 10);
            set_hitbox_value(AT_FSPECIAL, 2, HG_KNOCKBACK_SCALING, 1.1);
            set_hitbox_value(AT_FSPECIAL, 3, HG_KNOCKBACK_SCALING, 1.3);
            set_hitbox_value(AT_FSPECIAL, 3, HG_DAMAGE, 25); 
            
            
            shurikatHitHsp = 4;
            set_hitbox_value(AT_FSPECIAL, 1, HG_BASE_KNOCKBACK, 1.5 * shurikatHitHsp);
        }
        else
        {
            set_hitbox_value(AT_FSPECIAL, 2, HG_DAMAGE, 6);
            set_hitbox_value(AT_FSPECIAL, 2, HG_KNOCKBACK_SCALING, 0.75);
            set_hitbox_value(AT_FSPECIAL, 3, HG_KNOCKBACK_SCALING, 0.9);
            set_hitbox_value(AT_FSPECIAL, 3, HG_DAMAGE, 18); 
            
            shurikatHitHsp = 2;
            set_hitbox_value(AT_FSPECIAL, 1, HG_BASE_KNOCKBACK, 1.5 * shurikatHitHsp);
        }
    break;
    case 4:
        set_window_value(AT_FSPECIAL, 3, AG_WINDOW_HSPEED, 16); // 30 if fully charged, 20 for normal
        set_window_value(AT_FSPECIAL, 4, AG_WINDOW_HSPEED, 15); //Modified from attack_update. Ranges from 10-20, based on charge rate
        set_window_value(AT_FSPECIAL, 4, AG_WINDOW_CUSTOM_GRAVITY, 0.4);
        set_window_value(AT_FSPECIAL, 6, AG_WINDOW_LENGTH, 15);
        //set_window_value(AT_FSPECIAL, 6, AG_WINDOW_TYPE, 1); 
        //set_window_value(AT_FSPECIAL, 8, AG_WINDOW_TYPE, 1); 
        set_hitbox_value(AT_FSPECIAL, 1, HG_DAMAGE, 1);
        set_hitbox_value(AT_FSPECIAL, 1, HG_EFFECT, 0 );
        set_hitbox_value(AT_FSPECIAL, 1, HG_BASE_KNOCKBACK, 9);
        set_hitbox_value(AT_FSPECIAL, 2, HG_DAMAGE, 6); //Modified from attack_update. Ranges from 5-10, based on charge length
        set_hitbox_value(AT_FSPECIAL, 2, HG_BASE_KNOCKBACK, 9); //modified from attack_update. Ranges from 6-12
        set_hitbox_value(AT_FSPECIAL, 2, HG_KNOCKBACK_SCALING, 1);
        set_hitbox_value(AT_FSPECIAL, 2, HG_DRIFT_MULTIPLIER, 1);
        set_hitbox_value(AT_FSPECIAL, 4, HG_DAMAGE, 8); //Modified from attack_update
        
        set_hitbox_value(AT_FSPECIAL, 3, HG_BASE_KNOCKBACK, 8);
        set_hitbox_value(AT_FSPECIAL, 3, HG_KNOCKBACK_SCALING, 1.3);
        set_hitbox_value(AT_FSPECIAL, 3, HG_DAMAGE, 20); 
        
        shurikatHitHsp = 4;
        shurikatLoopCount = 6 - (3 * lethalLeague_stage);
    break;
    case 3:
        set_window_value(AT_FSPECIAL, 3, AG_WINDOW_HSPEED, 16);
        set_window_value(AT_FSPECIAL, 4, AG_WINDOW_HSPEED, 15);
        set_window_value(AT_FSPECIAL, 4, AG_WINDOW_CUSTOM_GRAVITY, 0.4);
        set_window_value(AT_FSPECIAL, 6, AG_WINDOW_LENGTH, 15);
        //set_window_value(AT_FSPECIAL, 6, AG_WINDOW_TYPE, 1); 
        //set_window_value(AT_FSPECIAL, 8, AG_WINDOW_TYPE, 1); 
        set_hitbox_value(AT_FSPECIAL, 1, HG_DAMAGE, 0.5);
        set_hitbox_value(AT_FSPECIAL, 1, HG_EFFECT, 0 );
        set_hitbox_value(AT_FSPECIAL, 1, HG_BASE_KNOCKBACK, 6);
        set_hitbox_value(AT_FSPECIAL, 2, HG_DAMAGE, 5); //Modified from attack_update. Ranges from 5-10, based on charge length
        set_hitbox_value(AT_FSPECIAL, 2, HG_BASE_KNOCKBACK, 8); //modified from attack_update. Ranges from 6-8
        set_hitbox_value(AT_FSPECIAL, 2, HG_KNOCKBACK_SCALING, 0.5);
        set_hitbox_value(AT_FSPECIAL, 2, HG_DRIFT_MULTIPLIER, 1);
        set_hitbox_value(AT_FSPECIAL, 4, HG_DAMAGE, 5); //Modified from attack_update
        
        set_hitbox_value(AT_FSPECIAL, 3, HG_BASE_KNOCKBACK, 8);
        set_hitbox_value(AT_FSPECIAL, 3, HG_KNOCKBACK_SCALING, 1.1);
        set_hitbox_value(AT_FSPECIAL, 3, HG_DAMAGE, 18); 
        
        shurikatHitHsp = 4;
        shurikatLoopCount = 6 - (3 * lethalLeague_stage);
    break;
    case 2:
        set_window_value(AT_FSPECIAL, 3, AG_WINDOW_HSPEED, 13);
        set_window_value(AT_FSPECIAL, 4, AG_WINDOW_HSPEED, 10);
        set_window_value(AT_FSPECIAL, 4, AG_WINDOW_CUSTOM_GRAVITY, 0.4);
        set_window_value(AT_FSPECIAL, 6, AG_WINDOW_LENGTH, 15);
        //set_window_value(AT_FSPECIAL, 6, AG_WINDOW_TYPE, 1); 
        //set_window_value(AT_FSPECIAL, 8, AG_WINDOW_TYPE, 1); 
        set_hitbox_value(AT_FSPECIAL, 1, HG_DAMAGE, 0.5);
        set_hitbox_value(AT_FSPECIAL, 1, HG_EFFECT, 0 );
        set_hitbox_value(AT_FSPECIAL, 1, HG_BASE_KNOCKBACK, 4.5);
        set_hitbox_value(AT_FSPECIAL, 2, HG_DAMAGE, 4); //Modified from attack_update. Ranges from 5-10, based on charge length
        set_hitbox_value(AT_FSPECIAL, 2, HG_BASE_KNOCKBACK, 8); //modified from attack_update. Ranges from 6-12
        set_hitbox_value(AT_FSPECIAL, 2, HG_KNOCKBACK_SCALING, 0.45);
        set_hitbox_value(AT_FSPECIAL, 2, HG_DRIFT_MULTIPLIER, 1.25);
        set_hitbox_value(AT_FSPECIAL, 4, HG_DAMAGE, 4); //Modified from attack_update
        
        set_hitbox_value(AT_FSPECIAL, 3, HG_BASE_KNOCKBACK, 8);
        set_hitbox_value(AT_FSPECIAL, 3, HG_KNOCKBACK_SCALING, 1.05);
        set_hitbox_value(AT_FSPECIAL, 3, HG_DAMAGE, 17); 
        
        shurikatHitHsp = 3;
        shurikatLoopCount = 6 - (3 * lethalLeague_stage);
    break;
    case 1:
        set_window_value(AT_FSPECIAL, 3, AG_WINDOW_HSPEED, 10);
        set_window_value(AT_FSPECIAL, 4, AG_WINDOW_HSPEED, 8);
        set_window_value(AT_FSPECIAL, 4, AG_WINDOW_CUSTOM_GRAVITY, 0.4);
        set_window_value(AT_FSPECIAL, 6, AG_WINDOW_LENGTH, 15);
        //set_window_value(AT_FSPECIAL, 6, AG_WINDOW_TYPE, 7); 
        //set_window_value(AT_FSPECIAL, 8, AG_WINDOW_TYPE, 7); 
        set_hitbox_value(AT_FSPECIAL, 1, HG_DAMAGE, 0.5);
        set_hitbox_value(AT_FSPECIAL, 1, HG_EFFECT, 0 ); // was 9
        set_hitbox_value(AT_FSPECIAL, 1, HG_BASE_KNOCKBACK, 3);
        set_hitbox_value(AT_FSPECIAL, 2, HG_DAMAGE, 3); //Modified from attack_update. Ranges from 5-10, based on charge length
        set_hitbox_value(AT_FSPECIAL, 2, HG_BASE_KNOCKBACK, 8); //modified from attack_update. Ranges from 4-8
        set_hitbox_value(AT_FSPECIAL, 2, HG_KNOCKBACK_SCALING, 0.4);
        set_hitbox_value(AT_FSPECIAL, 2, HG_DRIFT_MULTIPLIER, 1.5);
        set_hitbox_value(AT_FSPECIAL, 4, HG_DAMAGE, 3); //Modified from attack_update
        
        set_hitbox_value(AT_FSPECIAL, 3, HG_BASE_KNOCKBACK, 8);
        set_hitbox_value(AT_FSPECIAL, 3, HG_KNOCKBACK_SCALING, 1);
        set_hitbox_value(AT_FSPECIAL, 3, HG_DAMAGE, 16); 
        
        shurikatHitHsp = 2;
        shurikatLoopCount = 6 - (3 * lethalLeague_stage);
    break;
    
    set_hitbox_value(AT_FSPECIAL, 2, HG_BASE_HITPAUSE, 6);
    set_hitbox_value(AT_FSPECIAL, 2, HG_HITPAUSE_SCALING, 2);
}

#define shurikatBreakRockBugFix
//Kragg's rock when airborne glitches out if it gets hit by any attack that is less than 1 damage but greater than 0 damage
//Temporarily boost Amber's fspecial damage to 1 when she is near it 
with (pHitBox)
{
    if (attack == 19 && hbox_num == 1 && player_id.url == CH_KRAGG) //If Kragg's rock (when in the air)
    {
        other.amber_kraggsRock = self;
        if (distance_to_object(other) < 30)
        {
            with (other)
            {
                set_hitbox_value(AT_FSPECIAL, 1, HG_DAMAGE, 1);
            }
        }
        else
        {
            with (other)
            {
                switch (shurikatChargeLevel)
                {
                    //Charged
                    case 5:
                        set_hitbox_value(AT_FSPECIAL, 1, HG_DAMAGE, 0.5);
                    break;
                    case 4:
                        set_hitbox_value(AT_FSPECIAL, 1, HG_DAMAGE, 0.75);
                    break;
                    case 3:
                        set_hitbox_value(AT_FSPECIAL, 1, HG_DAMAGE, 0.5);
                    break;
                    case 2:
                        set_hitbox_value(AT_FSPECIAL, 1, HG_DAMAGE, 0.5);
                    break;
                    case 1:
                        set_hitbox_value(AT_FSPECIAL, 1, HG_DAMAGE, 0.5);
                    break;
                }
            }
        }
    }
}

if (!instance_exists(amber_kraggsRock))
{
    if (get_hitbox_value(AT_FSPECIAL, 1, HG_DAMAGE) >= 1) //Reset damage values
    {
        switch (shurikatChargeLevel)
        {
            //Charged
            case 5:
                set_hitbox_value(AT_FSPECIAL, 1, HG_DAMAGE, 0.5);
            break;
            case 4:
                set_hitbox_value(AT_FSPECIAL, 1, HG_DAMAGE, 0.75);
            break;
            case 3:
                set_hitbox_value(AT_FSPECIAL, 1, HG_DAMAGE, 0.5);
            break;
            case 2:
                set_hitbox_value(AT_FSPECIAL, 1, HG_DAMAGE, 0.5);
            break;
            case 1:
                set_hitbox_value(AT_FSPECIAL, 1, HG_DAMAGE, 0.5);
            break;
        }
    }
}


/*
if (instance_exists(asset_get("rock_obj")))
{
    print_debug("There's a rock");
    with (asset_get("rock_obj"))
    {
        if (distance_to_object(other) < 30)
        {
            with (other)
            {
                print_debug("Close to rock");
                set_hitbox_value(AT_FSPECIAL, 1, HG_DAMAGE, 1);
            }
        }
        else
        {
            with (other)
            {
                switch (shurikatChargeLevel)
                {
                    //Charged
                    case 5:
                        set_hitbox_value(AT_FSPECIAL, 1, HG_DAMAGE, 0.5);
                    break;
                    case 4:
                        set_hitbox_value(AT_FSPECIAL, 1, HG_DAMAGE, 0.75);
                    break;
                    case 3:
                        set_hitbox_value(AT_FSPECIAL, 1, HG_DAMAGE, 0.5);
                    break;
                    case 2:
                        set_hitbox_value(AT_FSPECIAL, 1, HG_DAMAGE, 0.5);
                    break;
                    case 1:
                        set_hitbox_value(AT_FSPECIAL, 1, HG_DAMAGE, 0.5);
                    break;
                }
            }
        }
    }
}
else if (get_hitbox_value(AT_FSPECIAL, 1, HG_DAMAGE) >= 1) //Reset damage values
{
    switch (shurikatChargeLevel)
    {
        //Charged
        case 5:
            set_hitbox_value(AT_FSPECIAL, 1, HG_DAMAGE, 0.5);
        break;
        case 4:
            set_hitbox_value(AT_FSPECIAL, 1, HG_DAMAGE, 0.75);
        break;
        case 3:
            set_hitbox_value(AT_FSPECIAL, 1, HG_DAMAGE, 0.5);
        break;
        case 2:
            set_hitbox_value(AT_FSPECIAL, 1, HG_DAMAGE, 0.5);
        break;
        case 1:
            set_hitbox_value(AT_FSPECIAL, 1, HG_DAMAGE, 0.5);
        break;
    }
}
*/
#define setChargedAttackHitboxValues


//FTHROW (aka Feral Blitz)
set_hitbox_value(AT_FTHROW, 7, HG_DAMAGE, 5 + (totalDamageDealt * 0.4));
set_hitbox_value(AT_FTHROW, 7, HG_KNOCKBACK_SCALING, 0.6 + (totalDamageDealt * 0.0035));

//FSPECIAL is defined in #setShurikatParams



if (totalDamageDealtPrevious >= totalDamageDealtCap)
{
    //USPECIAL_2
    set_hitbox_value(AT_USPECIAL_2, 6, HG_DAMAGE, 12);
    set_hitbox_value(AT_USPECIAL_2, 7, HG_DAMAGE, 12);
    set_hitbox_value(AT_USPECIAL_2, 7, HG_KNOCKBACK_SCALING, 0.9);
    
    //DSPECIAL_2 (Finishing Yarn)
    set_hitbox_value(AT_DSPECIAL_2, 5, HG_BASE_KNOCKBACK, 12);
    //These hitbox values are also modified in hit_player.gml if Amber hits the enemy
    //while charged yarn dashing
    set_hitbox_value(AT_DSPECIAL_2, 5, HG_KNOCKBACK_SCALING, 1.75);
}
else
{
    //USPECIAL_2
    set_hitbox_value(AT_USPECIAL_2, 6, HG_DAMAGE, 7);
    set_hitbox_value(AT_USPECIAL_2, 7, HG_DAMAGE, 7);
    set_hitbox_value(AT_USPECIAL_2, 7, HG_KNOCKBACK_SCALING, 0.7);
    
    //DSPECIAL_2 (Finishing Yarn)
    //These hitbox values are also modified in hit_player.gml if Amber hits the enemy
    //while charged yarn dashing
    set_hitbox_value(AT_DSPECIAL_2, 5, HG_BASE_KNOCKBACK, 12);
    set_hitbox_value(AT_DSPECIAL_2, 5, HG_KNOCKBACK_SCALING, 1); 
}
//set_hitbox_value(AT_DSPECIAL_2, 5, HG_ANGLE, 361);

#define feralBlitzChargeParam
set_window_value(AT_FSTRONG, 2, AG_WINDOW_HSPEED, 10 + (strong_charge * 0.083));
set_window_value(AT_FSTRONG, 3, AG_WINDOW_HSPEED, 10 + (strong_charge * 0.083));
if (strong_charge < 60)
    set_hitbox_value(AT_FSTRONG, 7, HG_BASE_HITPAUSE, 6 + (strong_charge * 0.166));
else
    set_hitbox_value(AT_FSTRONG, 7, HG_BASE_HITPAUSE, 22);
    
#define vanishingStrikeChargeParam
set_window_value(AT_USTRONG, 2, AG_WINDOW_VSPEED, -20 - (strong_charge * 0.166));
set_window_value(AT_USTRONG, 4, AG_WINDOW_VSPEED, 20 + (strong_charge * 0.166));

#define afterImageUpdating(xPos, yPos, startAlpha, sprDir, rot, sprIndex, imgIndex, color, fadeOutSpeed, updateDelay)
if (afterImageUpdateTimer > 0)
{
    afterImageUpdateTimer--;
}
else
{
    if (currentAfterImage >= afterImageMaxCount)
        {
            currentAfterImage = 0;
        }
        else
        {
            currentAfterImage++;
        }
    afterImageXPos[currentAfterImage] = argument[0]; 
    afterImageYPos[currentAfterImage] = argument[1];
    afterImageAlpha[currentAfterImage] = argument[2];
    afterImageSprDir[currentAfterImage] = argument[3];
    afterImageRot[currentAfterImage] = argument[4];
    afterImageSprIndex[currentAfterImage] = argument[5];
    afterImageImgIndex[currentAfterImage] = argument[6];
    afterImageColor = argument[7];
    afterImageFadeOutSpeed = argument[8];
    
    afterImageUpdateTimer = argument[9]; //Every 2 frames the afterImage sets itself to the player's pos
}

#define finishYarnAfterImageUpdating
if (afterImageUpdateTimer > 0)
{
    afterImageUpdateTimer--;
}
else
{
    if (currentAfterImage >= afterImageMaxCount)
        {
            currentAfterImage = 0;
        }
        else
        {
            currentAfterImage++;
        }
    afterImageXPos[currentAfterImage] = x; 
    afterImageYPos[currentAfterImage] = y;
    afterImageAlpha[currentAfterImage] = 1;
    afterImageSprDir[currentAfterImage] = spr_dir;
    afterImageSprIndex[currentAfterImage] = sprite_get("dspecial2_afterimage");
    afterImageImgIndex[currentAfterImage] = 1;
    afterImageColor = c_white;
    afterImageFadeOutSpeed = 0.1;
    
    afterImageUpdateTimer = 0; //Every 2 frames the afterImage sets itself to the player's pos
}
#define speedLinesAttackUpdate
if (speedlinesEnable == true)
{
    if (speedlinesBG.image_alpha < 1)
        speedlinesBG.image_alpha += 0.1;
    
    if (attack == AT_FSPECIAL)
    {
        speedlinesBG.spr_dir = 2.5 * spr_dir; 
        speedlinesBG.image_angle = 0;
    }
    
    if (attack == AT_USPECIAL_2)
    {
        speedlinesBG.spr_dir = 2.5;
        speedlinesBG.image_angle = 90;
    }
}
#define checkMoveCategory
if (tutScrollCurrentMove < 5)
    tutScrollCurrentMoveCategory = 0;
else if (tutScrollCurrentMove >= 5 && tutScrollCurrentMove < 10)
    tutScrollCurrentMoveCategory = 1;
else if (tutScrollCurrentMove >= 10 && tutScrollCurrentMove < 13)
    tutScrollCurrentMoveCategory = 2;
else if (tutScrollCurrentMove >= 13 && tutScrollCurrentMove < 18)
    tutScrollCurrentMoveCategory = 3;
else if (tutScrollCurrentMove >= 18 && tutScrollCurrentMove < 23)
{
    tutScrollCurrentMoveCategory = 4;
}
#define getOtherPlayerPlush
with (asset_get("oPlayer"))
{
    
    //Check if the other character has a plush for Amber
    //If not, check if its a default cast character
    if ("plushForAmber" in self)
    {
        var oPlayerPlush = plushForAmber;
        with (other)
        {
            targetPlushSprite = oPlayerPlush;
            targetPlushIndex = 0;
        }
    }
    else if (url != other.url && url != "") //Don't run this code if checking through ourselves and make sure the url is not blank
    {
        if (real(url) > 1 && real(url) < 16) //Base cast url id ranges from 2-15
        {
            var oPlayerUrl = real(url);
            
            with (other)
            {
                targetPlushSprite = sprite_get("plushies");
                targetPlushIndex = oPlayerUrl - 1;
            }
            if (oPlayerUrl == 7 && get_player_color(player) == 15) //Ragnir Skin
            {
                with (other){
                    targetPlushIndex = 15;
                }
            }
        }
        else if (real(url) == 1865940669) //Sandbert
        {
            with (other)
            {
                targetPlushSprite = sprite_get("plushies");
                targetPlushIndex = 16;
            }
        }
        else if (real(url) == 1866016173) //Guadua
        {
            with (other)
            {
                targetPlushSprite = sprite_get("plushies");
                targetPlushIndex = 17;
            }
        }
    }
}

#define checkOtherPlayerHug
//print_debug("Checking other player");
var playerAmberHug = self;
with (asset_get("oPlayer"))
{
    if (distance_to_object(playerAmberHug) < 25) //If close to Amber
    {
        other.targetPlayerHugID = self;
        var targetPlayerUrl = real(url);
        /*
        if (targetPlayerUrl == 2108764588) //Zerra
        {
            if (other.amberHugA2ZReady == 0)
                other.amberHugA2ZReady = 1;
            else
                other.amberHugA2ZReady = 2;
        }
        else if (targetPlayerUrl == 1904437331) //Astra
        {
            if (other.amberHugA2ZReady == 0)
                other.amberHugA2ZReady = 1;
            else
                other.amberHugA2ZReady = 2;
        }
        */
        if ("oPlayerHugAmberState" in self) //Don't check ourselves
        {
            //First check if there is a CPU on STAND state. This will allow Amber to hug CPUs
            //in training mode if they're on STAND
            if (get_training_cpu_action() != CPU_FIGHT || attack == AT_TAUNT && state == PS_ATTACK_GROUND)
            {
                with (playerAmberHug)
                {
                    //targetPlayerHugID = targetPlayerHug;
                    
                    //print_debug(string (distance_to_object(targetPlayerHugID)));
                    if (distance_to_object(targetPlayerHugID) < 25) //If close to Amber
                    {
                        if (amberHugA2ZReady == 0)
                        {
                            if (targetPlayerUrl < 16 || targetPlayerUrl == 1865940669 && !("amber_herObj" in targetPlayerHugID)) //From the base cast or public version Sandbert
                            {
                                user_event(1);
                            }
                            else
                                user_event(2);
                        }
                        else if (amberHugA2ZReady == 1) //Check again
                        {
                            print_debug("Called 1");
                            with (asset_get("oPlayer"))
                            {
                                if ("oPlayerHugAmberState" in self && self != other)
                                {
                                    print_debug("Called 2");
                                    playerAmberHug.targetPlayerHugIDTwo = self;
                                    var targetPlayerUrlTwo = real(url);
                                    
                                    if (targetPlayerUrlTwo == 2108764588) //Zerra
                                    {
                                        if (other.amberHugA2ZReady == 0)
                                            other.amberHugA2ZReady = 1;
                                        else
                                            other.amberHugA2ZReady = 2;
                                    }
                                    else if (targetPlayerUrlTwo == 1904437331) //Astra
                                    {
                                        if (other.amberHugA2ZReady == 0)
                                            other.amberHugA2ZReady = 1;
                                        else
                                            other.amberHugA2ZReady = 2;
                                    }
                                }
                            }
                            if (amberHugA2ZReady == 2)
                                user_event(5);
                        }
                        else if (amberHugA2ZReady == 2)
                            user_event(5);
                    }
                }
            }
        }
    }
    
    
}
#define updateOPlayerHugging
if (targetPlayerHugID != noone)
{
    with (targetPlayerHugID)
    {
        if (url == CH_ORI) //Sein, no attacking!
        {
            state = PS_PRATLAND;
            was_parried = true;
        }
        
        switch (oPlayerHugAmberState)
        {
            case 2: //Entering hug state
                //Move towards ideal Amber position. Ease quad
                state = PS_SPAWN;
                x = ease_linear( oPlayerInitHugPos[0], oPlayerHugStartPos[0], oPlayerEaseTime, oPlayerTargetEaseTime);
                y = ease_linear( oPlayerInitHugPos[1], oPlayerHugStartPos[1], oPlayerEaseTime, oPlayerTargetEaseTime);
                
                if (oPlayerEaseTime < oPlayerTargetEaseTime)
                    oPlayerEaseTime++;
                //Once in position, activate the actual hug state
                if (floor(x + 0.5) == oPlayerHugStartPos[0] && floor(y + 0.5) == oPlayerHugStartPos[1])
                {
                    oPlayerHugAmberState = 3;
                    oPlayerHugAmberIndex = 0;
                    with (oPlayerAmberID){
                        
                        amberHugState = 3;
                        set_attack(AT_EXTRA_3);
                        image_index = 0;
                        window = 1;
                        window_timer = 0;
                    }
                }
            break;
            case 3: //Actual hug
                if (url != CH_ORI)
                    state = PS_SPAWN;
                state_timer = 0;
                visible = false;
                
                if (other.amberHugCanExitTimer <= 0)
                {
                    if (shield_pressed || attack_pressed || special_pressed)
                    {
                        oPlayerHugAmberState = 4;
                        //visible = true;
                        with(oPlayerAmberID)
                        {
                            amberHugState = 4;
                            targetPlayerHugID.oPlayerHugAmberState = 4;
                            window = amberHugExitWindow;
                            window_timer = 0;
                        }
                    }
                }
                else
                    other.amberHugCanExitTimer--;
            break;
            case 4:
                x = oPlayerHugExitPos[0];
                y = oPlayerHugExitPos[1];
                oPlayerHugAmberIndex = oPlayerAmberID.image_index;
                
                //special case for Ori. Return to idle state right before they turn visible due to the
                //pratland frame
                if (oPlayerHugAmberIndex == 16)
                    state = PS_IDLE;
            break;
        }
    }
    if (targetPlayerHugIDTwo != noone)
    {
        with (targetPlayerHugIDTwo)
        {
            if (url == CH_ORI) //Sein, no attacking!
            {
                state = PS_PRATLAND;
                was_parried = true;
            }
            
            switch (oPlayerHugAmberState)
            {
                case 2: //Entering hug state
                    //Move towards ideal Amber position. Ease quad
                    state = PS_SPAWN;
                    x = ease_linear( oPlayerInitHugPos[0], oPlayerHugStartPos[0], oPlayerEaseTime, oPlayerTargetEaseTime);
                    y = ease_linear( oPlayerInitHugPos[1], oPlayerHugStartPos[1], oPlayerEaseTime, oPlayerTargetEaseTime);
                    
                    if (oPlayerEaseTime < oPlayerTargetEaseTime)
                        oPlayerEaseTime++;
                    //Once in position, activate the actual hug state
                    if (floor(x + 0.5) == oPlayerHugStartPos[0] && floor(y + 0.5) == oPlayerHugStartPos[1])
                    {
                        oPlayerHugAmberState = 3;
                        oPlayerHugAmberIndex = 0;
                        with (oPlayerAmberID){
                            
                            amberHugState = 3;
                            set_attack(AT_EXTRA_3);
                            image_index = 0;
                            window = 1;
                            window_timer = 0;
                        }
                    }
                break;
                case 3: //Actual hug
                    if (url != CH_ORI)
                        state = PS_SPAWN;
                    state_timer = 0;
                    visible = false;
                    
                    if (other.amberHugCanExitTimer <= 0)
                    {
                        if (shield_pressed || attack_pressed || special_pressed)
                        {
                            oPlayerHugAmberState = 4;
                            //visible = true;
                            with(oPlayerAmberID)
                            {
                                amberHugState = 4;
                                targetPlayerHugID.oPlayerHugAmberState = 4;
                                window = amberHugExitWindow;
                                window_timer = 0;
                            }
                        }
                    }
                    else
                        other.amberHugCanExitTimer--;
                break;
                case 4:
                    x = oPlayerHugExitPos[0];
                    y = oPlayerHugExitPos[1];
                    oPlayerHugAmberIndex = oPlayerAmberID.image_index;
                    
                    //special case for Ori. Return to idle state right before they turn visible due to the
                    //pratland frame
                    if (oPlayerHugAmberIndex == 16)
                        state = PS_IDLE;
                break;
            }
        }
    }
}
#define extendHitPause
if (forceExtendedHitPause == true && hitpause == false)
{
    hitpause = true;
    hitstop = hit_player_obj.hitstop;
    forceExtendedHitPause = false;
}