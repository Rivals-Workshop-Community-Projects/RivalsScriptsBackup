//Update scripts execute every frame in-game

introInputs();
checkForClonedAmbers();
initRuneStats();

//Allow Amber to wall jump 2 times
//=================================
if (state == PS_WALL_JUMP && prev_state != PS_WALL_JUMP)
{
    if (hasWallJumped == false)
    {
        hasWallJumped = true;
        //air_accel = 0.7;
        wallJumpCount++;
    }
}
else if (hasWallJumped == true && state != PS_WALL_JUMP)
{
    hasWallJumped = false;
}
if (wallJumpCount < 2)
{
    if (state_cat == SC_AIR_NEUTRAL || state_cat == SC_AIR_COMMITTED)
    {
        has_walljump = true;
    }
}
//Reset the wall jump counter upon landing, ignore hitstun landing
if (state_cat == SC_GROUND_NEUTRAL || state_cat == SC_GROUND_COMMITTED)
{
    if (wallJumpCount != 0)
        wallJumpCount = 0;
    hasWallJumped = false;
    air_accel = origin_air_accel;
}

//Dodge roll sfx
if (state == PS_ROLL_FORWARD || state == PS_ROLL_BACKWARD )
{
    if (state_timer == 0)
    {
        clear_button_buffer(PC_SHIELD_PRESSED);
        sound_stop(asset_get("sfx_roll"));
        sound_play(sound_get("dodge_start"));
        roll_forward_max = originRollSpeed;
        roll_backward_max = originRollSpeed;
    }
    
    if (state_timer < 10)
    {
        char_height += 4;
    }
    else if (state_timer < 20)
    {
        char_height -= 4;
    }
    
    //Landing on the ground (visually) and apply friction
    if (state_timer >= 17)
    {
        /*
        if (state_timer == 15)
        {
            sound_play(asset_get("sfx_land_light"));
            sound_play(sound_get("dodge_land"));
        }
        */
        roll_forward_max *= rollSpeedLandingFriction;
        roll_backward_max *= rollSpeedLandingFriction;
    }
    
    if (state_timer == 17)
    {
        sound_play(asset_get("sfx_land_light"));
        sound_play(sound_get("dodge_land"));
        
        //if (!(left_down == true && spr_dir == -1) && !(right_down == true && spr_dir == 1))
          //  spr_dir = -spr_dir;
    }
}
else if (char_height != originCharHeight && attack != AT_DSTRONG && attack != AT_NTHROW && attack != AT_TAUNT_2)
{
    char_height = originCharHeight;
}


//if (miniBoostMeterTargetAlpha > 0)
  //  miniBoostMeterTargetAlpha -= 0.1;

//Disable air dodge sfx during waveland
//if (state == PS_WAVELAND && state_timer == 0)
  //  sound_stop(asset_get("sfx_quick_dodge"));
  

//Meter KB Armor
/*
if (totalDamageDealt > 0 && knockback_adj != meteredKbAdj)
    knockback_adj = meteredKbAdj;
else if (totalDamageDealt <= 0 && knockback_adj != meterlessKbAdj)
    knockback_adj = meteredKbAdj;
    */
//======================================
//Neutral Special Charge Update
//=======================================
/*
if (isCharging == true)
{
    if (can_wall_cling == true)
        can_wall_cling = false;
        
    //Get out of N Special charge animation if we are almost fully charged
    if (attack == AT_NSPECIAL && window == 1 && currentChargeTime >= chargeTimeLength - 1 && (state == PS_ATTACK_GROUND || state == PS_ATTACK_AIR))
        window = 2;
    //If the timer has reached the max charge time, enable charged state
    if (currentChargeTime >= chargeTimeLength)
    {
        isCharged = true;
        isCharging = false;
        drawChargeVfx = true;
        //currentChargeTime = 0 + (50 * runeB);
        sound_play(asset_get( "mfx_coin_portal" ));
        sound_stop( asset_get( "sfx_ori_charged_flame_charge2" ) );
    }
    else
    {
        currentChargeTime += chargeTimeSpeed;
    }
}
*/

if (totalDamageDealt >= totalDamageDealtCap)
{
    //Charged VFX Update
    //Make sure the animation timer doesn't go above 60. If it's about
    //to go above 60, reset it back to 0
    if (isChargedAnimTimer < 59)
        isChargedAnimTimer++;
    else
        isChargedAnimTimer = 0;
}

//Fade out afterimages
for (i = 0; i < afterImageMaxCount; i++)
{
    if (afterImageAlpha[i] > 0)
        afterImageAlpha[i] -= afterImageFadeOutSpeed;
}

#region //Charge Attack Ready Update
if (chargeAttackReady == true)
{
    if (tutSuccessUsedEmpowered == false && tutEmpoweredBubbleAnimTimer < tutEmpoweredBubbleShowLength)
        tutEmpoweredBubbleAnimTimer += tutEmpoweredBubbleAnimSpeed;
    
    outline_color = chargeAttackReadyOutlineColor;
    init_shader();
}
if (chargeAttackReadyTimer < 17) //For animation purposes
    chargeAttackReadyTimer++;



if (outline_color != originOutlineColor && chargeAttackReady == false)
{
    outline_color = originOutlineColor;
    init_shader();
}
#endregion
//Enable wall clinging again if we are not charging or charged
if (isCharging == false && can_wall_cling == false)
    can_wall_cling = true;
    

//============================================
#region//Attack cooldowns
//===========================================

//Amber cannot use the up special again until she lands. This is to prevent
//ladder combos since her up special ignores pratfall state if the attack lands
if (move_cooldown[AT_USPECIAL] > 0 || move_cooldown[AT_USPECIAL_2] > 0)
{
    //move_cooldown[AT_USPECIAL] = 2;
    //move_cooldown[AT_USPECIAL_2] = 2;
    
    if (state_cat == SC_GROUND_NEUTRAL || state_cat == SC_GROUND_COMMITTED
        || state == PS_WALL_JUMP ||  state == PS_WALL_TECH)
    {
        move_cooldown[AT_USPECIAL] = 0;
        move_cooldown[AT_USPECIAL_2] = 0;
        //hasUsedUSpecial = false;
    }
}

//Claw combo timer update. Set the counter to 1 once the timer reaches 0
if (clawComboTimer > 0 && !(state_cat == SC_GROUND_COMMITTED && attack == AT_FTILT))
{
    clawComboTimer--;
}
else if (clawComboCounter > 1 && clawComboTimer <= 0)
{
    clawComboCounter = 1;
}

if (secondaryDairCooldown > 0)
    secondaryDairCooldown--;
//else if (secondaryDairCooldown && previousDairDirection != 0)


if (move_cooldown[AT_DATTACK] > 0 && ((state == PS_DASH || state == PS_DASH_START) && attack_pressed))
{
    set_attack(AT_FTILT);
}

//Yarndash cooldown timer. Only set it to 0 if Amber is grounded
if ((state_cat == SC_GROUND_NEUTRAL || state_cat == SC_GROUND_COMMITTED) &&
    yarnDashCooldownTimer == 1 || yarnDashCooldownTimer > 1 )
{
    yarnDashCooldownTimer--;
}

if (empoweredCooldownTimer > 0)
{
    empoweredCooldownTimer--;
    move_cooldown[AT_NSPECIAL] = empoweredCooldownTimer;
}
//else if (empoweredCooldownTimer <= 0 && move_cooldown[AT_NSPECIAL] != 0)
  //  move_cooldown[AT_NSPECIAL] = 0;

/*
//Smoke bomb invisibility and cooldown
if (smokeBombInvisState == true)
{
    disableNonSpecialAttacks();
    smokeBombCooldownTimer = smokeBombCooldownLength;
    if (taunt_pressed)
    {
        //Reappear
        visible = true;
        //set_attack(AT_NTHROW);
        //window = 4;
        smokeBombInvisState = false;
        clear_button_buffer(PC_TAUNT_PRESSED);
    }
    
    if (smokeBombInvisTimer > 0)
        smokeBombInvisTimer--;
    else if (totalDamageDealt > 0)
        totalDamageDealt -= 0.5;
    else
    {
        //Reappear
        visible = true;
        //set_attack(AT_NTHROW);
        //window = 4;
        smokeBombInvisState = false;
    }
}
*/
//In case totalDamageDealt is lower than 0 or higher than the cap
if (totalDamageDealt < 0)
    totalDamageDealt = 0;
else if (totalDamageDealt > totalDamageDealtCap)
    totalDamageDealt = totalDamageDealtCap;

if (smokeBombCooldownTimer > 0 && smokeBombInvisState == false)
{
    smokeBombCooldownTimer--;
}
#endregion
#region//Yarn ball holding state
if (isHoldingYarnBall == true)
{
    //Prevent Amber from using attacks while holding the yarnball.
    disableAllAttacks();
    //can_attack = false;
    
    
    //Input to start aiming the yarn ball, and set aiming power
    if (window < 4 && state_cat != SC_HITSTUN && !(state == PS_AIR_DODGE && state_timer == 0))
    {
        if (strong_down && yarnBallAimingPower != 3 || (right_stick_down || left_stick_down || up_stick_down || down_stick_down) && yarnBallAimingPower != 3 && yarnBallRightStickTargetPower == 3)
        {
            yarnThrowAntiIFrame();
            if (!(state == PS_PRATFALL && state_timer > 1) && !(state == PS_AIR_DODGE && state_timer > 3 && state_timer < 1) && !(state == PS_PARRY || state == PS_ROLL_FORWARD || state == PS_ROLL_BACKWARD || state == PS_TECH_GROUND || state == PS_TECH_BACKWARD || state == PS_TECH_FORWARD))
            {
                yarnBallAimingPower = 3;
                yarnBallWasAimingRightStick = (right_stick_down || left_stick_down || up_stick_down || down_stick_down);
                move_cooldown[AT_DSPECIAL] = 0;
                set_attack( AT_DSPECIAL );
                window = 4;
            }
        }
        else if (special_pressed || (right_stick_down || left_stick_down || up_stick_down || down_stick_down) && yarnBallAimingPower != 2 && yarnBallRightStickTargetPower == 2)
        {
            yarnThrowAntiIFrame();
            if ( !(state == PS_PRATFALL && state_timer > 1) && !(state == PS_AIR_DODGE && state_timer > 3 && state_timer < 1) && !(state == PS_PARRY || state == PS_ROLL_FORWARD || state == PS_ROLL_BACKWARD || state == PS_TECH_GROUND || state == PS_TECH_BACKWARD || state == PS_TECH_FORWARD))
            {
                yarnBallAimingPower = 2;
                yarnBallWasAimingRightStick = (right_stick_down || left_stick_down || up_stick_down || down_stick_down);
                move_cooldown[AT_DSPECIAL] = 0;
                set_attack( AT_DSPECIAL );
                window = 4;
            }
        }
        else if (attack_down || (right_stick_down || left_stick_down || up_stick_down || down_stick_down) && yarnBallAimingPower != 1 && yarnBallRightStickTargetPower == 1)
        {
            yarnThrowAntiIFrame();
            
            if (!(state == PS_PRATFALL && state_timer > 1) && !(state == PS_AIR_DODGE && state_timer > 3 && state_timer < 1) && !(state == PS_PARRY || state == PS_ROLL_FORWARD || state == PS_ROLL_BACKWARD || state == PS_TECH_GROUND || state == PS_TECH_BACKWARD || state == PS_TECH_FORWARD))
            {
                yarnBallAimingPower = 1;
                yarnBallWasAimingRightStick = (right_stick_down || left_stick_down || up_stick_down || down_stick_down);
                move_cooldown[AT_DSPECIAL] = 0;
                set_attack( AT_DSPECIAL );
                window = 4;
            }
        }
    }
    
    //Preparing aim
    if (window == 4)
    {
        
        if (keyboardModeEnabled == true && yarnBallThrowAngle != joy_dir)
        {
            if (window_timer == 0)
            {
                if (joy_pad_idle)
                    yarnBallThrowAngle = 0 + (180 * (spr_dir == -1));
                else
                    yarnBallThrowAngle = joy_dir;
                yarnBallWasAimingRightStick = false;
            }
            else
            {
                if (joy_pad_idle == false)
                    yarnBallTargetJoyAngle = joy_dir;
                
                var angDiff = angle_difference(yarnBallThrowAngle, yarnBallTargetJoyAngle);
                yarnBallThrowAngle -= min(abs(angDiff), (6 + (abs(angDiff * 0.05)))) * sign(angDiff);
                
                if (yarnBallThrowAngle >= 360)
                    yarnBallThrowAngle -= 360;
                if (yarnBallThrowAngle <= 0)
                    yarnBallThrowAngle += 360;
            }
            //yarnBallThrowAngle += sin(degtorad(dir - image_angle)) * rspeed;
        }
        else if ((right_stick_down || left_stick_down || up_stick_down || down_stick_down))
        {
            yarnBallThrowAngle = (right_stick_down * 0) + (up_stick_down * 90) + (left_stick_down * 180) + (down_stick_down * 270);
            yarnBallWasAimingRightStick = true;
            
            if (shield_pressed)
            {
                yarnBallRightStickTargetPower += 1;
                if (yarnBallRightStickTargetPower > 3)
                    yarnBallRightStickTargetPower = 1;
                yarnBallAimingPower = yarnBallRightStickTargetPower;
                clear_button_buffer(PC_SHIELD_PRESSED);
            }
        }
        else if (joy_pad_idle == false && yarnBallWasAimingRightStick == false)
            yarnBallThrowAngle = joy_dir;
        if (yarnBallThrowAngle > 90 && yarnBallThrowAngle < 270 && spr_dir == 1)
            spr_dir = -1;
        else if (spr_dir == -1 && yarnBallThrowAngle < 90 || yarnBallThrowAngle > 270)
            spr_dir = 1;
    }
    
    //Aiming Window
    if (window == 5)
    {
        if (keyboardModeEnabled == true && yarnBallThrowAngle != joy_dir)
        {
            if (joy_pad_idle == false)
                yarnBallTargetJoyAngle = joy_dir;
            
            var angDiff = angle_difference(yarnBallThrowAngle, yarnBallTargetJoyAngle);
            yarnBallThrowAngle -= min(abs(angDiff), (3 + (abs(angDiff * 0.1)))) * sign(angDiff);
            
            if (yarnBallThrowAngle >= 360)
                yarnBallThrowAngle -= 360;
            if (yarnBallThrowAngle <= 0)
                yarnBallThrowAngle += 360;
        }
        else if ((right_stick_down || left_stick_down || up_stick_down || down_stick_down))
        {
            if (right_stick_down)
            {
                if (up_stick_down)
                    yarnBallThrowAngle = 45;
                else if (down_stick_down)
                    yarnBallThrowAngle = 315;
                else
                    yarnBallThrowAngle = 0;
            }
            else if (up_stick_down)
            {
                yarnBallThrowAngle = 90 + (left_stick_down * 45) - (right_stick_down * 45);
            }
            else if (left_stick_down)
            {
                yarnBallThrowAngle = 180 + (down_stick_down * 45) - (up_stick_down * 45);
            }
            else if (down_stick_down)
            {
                yarnBallThrowAngle = 270 + (right_stick_down * 45) - (left_stick_down * 45);
            }
            /*
            yarnBallThrowAngle = (right_stick_down * 0) + 
            (up_stick_down * 90 + (left_stick_down * 45) - (right_stick_down * 45)) + 
            ((left_stick_down * 180) - (up_stick_down * 45) + (down_stick_down * 45)) + 
            (down_stick_down * 270 - (left_stick_down * 45) + (right_stick_down * 45));
            */
            if (shield_pressed)
            {
                yarnBallRightStickTargetPower += 1;
                if (yarnBallRightStickTargetPower > 3)
                    yarnBallRightStickTargetPower = 1;
                yarnBallAimingPower = yarnBallRightStickTargetPower;
                clear_button_buffer(PC_SHIELD_PRESSED);
            }
        }
        else if (joy_pad_idle == false && yarnBallWasAimingRightStick == false)
            yarnBallThrowAngle = joy_dir;
        
        if (yarnBallThrowAngle > 90 + keyboardModeEnabled && yarnBallThrowAngle < 270 - keyboardModeEnabled && spr_dir == 1)
            spr_dir = -1;
        else if (spr_dir == -1 && yarnBallThrowAngle < 90 - keyboardModeEnabled || yarnBallThrowAngle > 270 + keyboardModeEnabled)
            spr_dir = 1;
            
        if ((attack_down == false && yarnBallAimingPower == 1 ||
            special_down == false && yarnBallAimingPower == 2 || 
            strong_down == false && yarnBallAimingPower == 3) && 
            !(right_stick_down || left_stick_down || up_stick_down || down_stick_down)
            ||
            !(right_stick_down || left_stick_down || up_stick_down || down_stick_down) && yarnBallAimingPower == 2 && special_down == false)
            {
                spawnYarnBall();
                window_timer = 0;
                
                //Get the rough direction of the aim to play the appropriate animation
                var yarnAimDir = 2; //1 is up. 2 is straight. 3 is down
                //Throwing down
                if (yarnBallThrowAngle > 225 && yarnBallThrowAngle < 315)
                    yarnAimDir = 3;
                else if (yarnBallThrowAngle > 45 && yarnBallThrowAngle < 135) //throwing upwards
                    yarnAimDir = 1;
                else
                    yarnAimDir = 2;
                
                //Play animation and throw the yarn ball
                switch (yarnAimDir)
                {
                    case 1: // up
                        switch (yarnBallAimingPower)
                        {
                            case 3:
                            window = 15;
                            break;
                            case 2:
                            window = 14;
                            break;
                            case 1:
                            window = 13;
                            break;
                            default:
                            window = 14;
                            break;
                        }
                    break;
                    case 3: //down
                        switch (yarnBallAimingPower)
                        {
                            case 3:
                            window = 18;
                            break;
                            case 2:
                            window = 17;
                            break;
                            case 1:
                            window = 16;
                            break;
                            default:
                            window = 17;
                            break;
                        }
                    break;
                    default: //straight
                        switch (yarnBallAimingPower)
                        {
                            case 3:
                            window = 8;
                            break;
                            case 2:
                            window = 7;
                            break;
                            case 1:
                            window = 6;
                            break;
                            default:
                            window = 7;
                            break;
                        }
                    break;
                    
                }
                
                isHoldingYarnBall = false;
            }
    }
}

//Fail safe if the yarnball is destroyed but Amber wasn't able to pick it up.
//Give Amber her yarnball back manually
if (!instance_exists(yarnBallObject) && hasYarnBall == false)
{
    hasYarnBall = true;
}
#endregion

if (instance_exists(yarnBallObject))
{
    //The yarnball itself cannot spawn the article, so we'll have to spawn the article here
    if (variable_instance_exists(yarnBallObject, "yBallTransformingToArticle"))
    if (yarnBallObject.yBallTransformingToArticle == true)
    {
        transformYarnBallToArticle();
    }
}
//=================================
//State Updates
//=================================
if (isChargePunished == true)
{
    if (state_cat != SC_HITSTUN)
        isChargePunished = false;
}

if (chargeAttackReady == true && hasSetChargedHurtboxes == false)
    setChargedAttackHurtboxes();
else if (chargeAttackReady == false && hasSetChargedHurtboxes == true)
    resetRegularAttackHurtboxes();


//Allow Amber to shift her double jump velocity to the other direction if
//the player is pressing the opposite direction
/*
if (state == PS_DOUBLE_JUMP && state_timer <= 6)
{
    if (spr_dir == 1 && left_down)
    {
        //hsp = -7;
        //air_accel = 1;
    }
    else if (spr_dir == -1 && right_down)
    {
        //hsp = 7;
        //air_accel = 1;
    }
}
else if (state == PS_DOUBLE_JUMP && state_timer > 6
        && air_accel == 1)
{
    air_accel = 0.2;
}
*/



//Failsafe condition check if Amber's gravity was not reverted back after using FAir
if (attack != AT_FAIR && gravity_speed != originGravitySpeed ||
    state_cat == SC_GROUND_COMMITTED && gravity_speed != originGravitySpeed)
        gravity_speed = originGravitySpeed;
       
//Initial dash speed and cooldown
if (state == PS_DASH_START)
{
    if (state_timer == 0)
    {
        if (lastDashDir == spr_dir && !runeA)
            initial_dash_speed = cooldownInitialDashSpeed;
        else if (initial_dash_speed != originInitialDashSpeed || runeA)
            initial_dash_speed = originInitialDashSpeed + runeA;
            
        lastDashDir = spr_dir;
        cooldownDashTimer = cooldownDashLength;
    }
    
    if (initial_dash_speed != cooldownInitialDashSpeed && !runeA)
    {
        if (state_timer > 4)
            initial_dash_speed = cooldownInitialDashSpeed;
        else if (state_timer > 2 && state_timer <= 4)
            initial_dash_speed = 9.5;
    }
    
    //if (lastDashDir != spr_dir)
        //initial_dash_speed = ease_linear(originInitialDashSpeed, cooldownInitialDashSpeed, state_timer, 6);
}
if (cooldownDashTimer > 0)
{
    cooldownDashTimer--;
}
else if (lastDashDir != 0 && cooldownDashTimer <= 0)
    lastDashDir = 0;
    

//Amber hugging other characters interaction
#region
/*
switch(amberHugState)
{
    case 1:
        
    break;
    case 2:
        
    break;
}
*/

if (amberHugState > 0)
{
    if (state != PS_ATTACK_GROUND)
    amberHugState = 0;
}

if (targetPlayerHugID != noone)
{
    with (targetPlayerHugID)
    {
        if (oPlayerHugAmberState == 4 && other.state != PS_ATTACK_GROUND || oPlayerHugAmberState == 3 && other.state != PS_ATTACK_GROUND && visible == false)
        {
            //x = oPlayerHugExitPos[0];
            //y = oPlayerHugExitPos[1];
            oPlayerHugAmberState = 0;
            state = PS_IDLE;
            visible = true;
        }
    }

}

#endregion


if (keyboardSwappingAnimTimer > 0)
{
    keyboardSwappingAnimTimer -= 1;
}

//Respawn platform animation update.
/*
if (state == PS_RESPAWN)
{
    if (respawnPlatAnimTimer < respawnPlatAnimStripLength)
        respawnPlatAnimTimer += respawnPlatAnimSpeed;
    else
        respawnPlatAnimTimer = 0;
}
else if (state != PS_RESPAWN && respawnPlatAnimTimer != 0)
    respawnPlatAnimTimer = 0;
    */
/*
#region //Debug speedlines depth
if (up_down)
{
    if (taunt_down)
        testSpeedLines.depth += 10;
    else
        testSpeedLines.depth += 1;
}
else if (down_down)
{
    testSpeedLines.depth -= 1;
}
#endregion
*/
tutorialMeter();
speedLinesUpdate();
if (infiniteMeter == true && totalDamageDealt < totalDamageDealtCap && !(attack == AT_NTHROW && window == 4))
{
    totalDamageDealt = totalDamageDealtCap;
} 

#region//Other character interactions
//===================================================
//This is for Trummel and Alto codec interaction
if (trummelcodecneeded)
{
    trummelcodec = 17;
    trummelcodecmax = 20;
    trummelcodecsprite1 = sprite_get("ta_codec");
    trummelcodecsprite2 = sprite_get("idle");
    var page = 0;

    //Page 0
    trummelcodecspeaker[page] = 1;
    trummelcodecexpression[page] = 1;

    trummelcodecline[page,1] = "Aww look at that cute";
    trummelcodecline[page,2] = "little kitten. That's";
    trummelcodecline[page,3] = "Amber. The Non-Lethal";
    trummelcodecline[page,4] = "Ninja.";
    page++; 

    //Page 1
    trummelcodecspeaker[page] = 3;
    trummelcodecexpression[page] = 2;

    trummelcodecline[page,1] = "Oh! It's a talking";
    trummelcodecline[page,2] = "cloud.";
    trummelcodecline[page,3] = "";
    trummelcodecline[page,4] = "";
    page++; 
    
    //Page 2
    trummelcodecspeaker[page] = 3;
    trummelcodecexpression[page] = 1;

    trummelcodecline[page,1] = "Hi Mr. Talking Cloud!!";
    trummelcodecline[page,2] = "";
    trummelcodecline[page,3] = "";
    trummelcodecline[page,4] = "";
    page++; 
    
    //Page 3
    trummelcodecspeaker[page] = 1;
    trummelcodecexpression[page] = 1;

    trummelcodecline[page,1] = "Well um, yes...";
    trummelcodecline[page,2] = "Just call me Alto.";
    trummelcodecline[page,3] = "";
    trummelcodecline[page,4] = "";
    page++; 
    
    //Page 4
    trummelcodecspeaker[page] = 3;
    trummelcodecexpression[page] = 1;

    trummelcodecline[page,1] = "Hi Alto!";
    trummelcodecline[page,2] = "";
    trummelcodecline[page,3] = "";
    trummelcodecline[page,4] = "";
    page++; 
    
    //Page 5
    trummelcodecspeaker[page] = 1;
    trummelcodecexpression[page] = 2;

    trummelcodecline[page,1] = "Anyways, don't let her";
    trummelcodecline[page,2] = "cuteness fool you. She's";
    trummelcodecline[page,3] = "loaded with deadly";
    trummelcodecline[page,4] = "combos.";
    page++; 
    
    //Page 6
    trummelcodecspeaker[page] = 1;
    trummelcodecexpression[page] = 2;

    trummelcodecline[page,1] = "For a ninja, she lacks";
    trummelcodecline[page,2] = "shurikens and damaging";
    trummelcodecline[page,3] = "projectiles.";
    trummelcodecline[page,4] = "";
    page++; 
    
    //Page 7
    trummelcodecspeaker[page] = 1;
    trummelcodecexpression[page] = 2;

    trummelcodecline[page,1] = "Making her very";
    trummelcodecline[page,2] = "rushdown focused.";
    trummelcodecline[page,3] = "";
    trummelcodecline[page,4] = "";
    page++; 
    
    //Page 8
    trummelcodecspeaker[page] = 2;
    trummelcodecexpression[page] = 2;

    trummelcodecline[page,1] = "ninja";
    trummelcodecline[page,2] = "no shuriken";
    trummelcodecline[page,3] = "";
    trummelcodecline[page,4] = "smh";
    page++; 
    
    //Page 9
    trummelcodecspeaker[page] = 3;
    trummelcodecexpression[page] = 3;

    trummelcodecline[page,1] = "U-uh.... I'm not";
    trummelcodecline[page,2] = "allowed to use them.";
    trummelcodecline[page,3] = "";
    trummelcodecline[page,4] = "";
    page++; 
    
    //Page 10
    trummelcodecspeaker[page] = 3;
    trummelcodecexpression[page] = 4;

    trummelcodecline[page,1] = "I'm also afraid I";
    trummelcodecline[page,2] = "might really hurt";
    trummelcodecline[page,3] = "someone if I don't use";
    trummelcodecline[page,4] = "it properly";
    page++; 
    
    //Page 11
    trummelcodecspeaker[page] = 1;
    trummelcodecexpression[page] = 3;

    trummelcodecline[page,1] = "While she may not throw";
    trummelcodecline[page,2] = "shurikens, she can";
    trummelcodecline[page,3] = "BECOME the shuriken.";
    trummelcodecline[page,4] = "";
    page++; 
    
    //Page 11
    trummelcodecspeaker[page] = 2;
    trummelcodecexpression[page] = 0;

    trummelcodecline[page,1] = "woag";
    trummelcodecline[page,2] = "";
    trummelcodecline[page,3] = "";
    trummelcodecline[page,4] = "";
    page++; 
    
    //Page 12
    trummelcodecspeaker[page] = 1;
    trummelcodecexpression[page] = 0;

    trummelcodecline[page,1] = "Just don't get hit by";
    trummelcodecline[page,2] = "her Empowered Specials";
    trummelcodecline[page,3] = "when she glows blue.";
    trummelcodecline[page,4] = "";
    page++; 
    
    //Page 7
    trummelcodecspeaker[page] = 1;
    trummelcodecexpression[page] = 2;

    trummelcodecline[page,1] = "Let's not forget her";
    trummelcodecline[page,2] = "yarn ball either.";
    trummelcodecline[page,3] = "";
    trummelcodecline[page,4] = "";
    page++; 
    
    //Page 8
    trummelcodecspeaker[page] = 1;
    trummelcodecexpression[page] = 0;

    trummelcodecline[page,1] = "Stand near it and";
    trummelcodecline[page,2] = "we'll take extra";
    trummelcodecline[page,3] = "damage.";
    trummelcodecline[page,4] = "";
    page++; 
    
    //Page 8
    trummelcodecspeaker[page] = 1;
    trummelcodecexpression[page] = 0;

    trummelcodecline[page,1] = "She can use it";
    trummelcodecline[page,2] = "to tech chase and";
    trummelcodecline[page,3] = "recover.";
    trummelcodecline[page,4] = "";
    page++; 
    
    //Page 8
    trummelcodecspeaker[page] = 1;
    trummelcodecexpression[page] = 0;

    trummelcodecline[page,1] = "Knock out her";
    trummelcodecline[page,2] = "yarn ball off stage";
    trummelcodecline[page,3] = "to avoid any";
    trummelcodecline[page,4] = "trouble.";
    page++; 
    
    if (trummelcodec_id.practice == true)
    {
        //Page 8
        trummelcodecspeaker[page] = 3;
        trummelcodecexpression[page] = 4;
    
        trummelcodecline[page,1] = "Um.... We're not fighting";
        trummelcodecline[page,2] = "are we?....";
        trummelcodecline[page,3] = "";
        trummelcodecline[page,4] = "";
        page++; 
        
        //Page 9
        trummelcodecspeaker[page] = 1;
        trummelcodecexpression[page] = 3;
    
        trummelcodecline[page,1] = "Technically, no. This is";
        trummelcodecline[page,2] = "training mode.";
        trummelcodecline[page,3] = "";
        trummelcodecline[page,4] = "";
        page++; 
        
        //Page 10
        trummelcodecspeaker[page] = 3;
        trummelcodecexpression[page] = 1;
    
        trummelcodecline[page,1] = "Oh ok!";
        trummelcodecline[page,2] = "";
        trummelcodecline[page,3] = "";
        trummelcodecline[page,4] = "";
        page++; 
    }
    
    //For next patch
    //Amber: Uh.... If it's too painful for you, I can hit lighter if you want
    //Alto: Well unless the dev nerfs you, that power will remain as is.
    if (trummelcodec_id.practice == false)
    {
        //Page 8
        trummelcodecspeaker[page] = 3;
        trummelcodecexpression[page] = 4;
    
        trummelcodecline[page,1] = "Um.... I'm not an";
        trummelcodecline[page,2] = "annoying kitten am I?";
        trummelcodecline[page,3] = "";
        trummelcodecline[page,4] = "";
        page++; 
        
        //Page 9
        trummelcodecspeaker[page] = 1;
        trummelcodecexpression[page] = 3;
    
        trummelcodecline[page,1] = "Nah don't worry about it.";
        trummelcodecline[page,2] = "We've seen far worse.";
        trummelcodecline[page,3] = "";
        trummelcodecline[page,4] = "";
        page++; 
        
        //Page 10
        trummelcodecspeaker[page] = 3;
        trummelcodecexpression[page] = 1;
    
        trummelcodecline[page,1] = "Oh ok!";
        trummelcodecline[page,2] = "";
        trummelcodecline[page,3] = "";
        trummelcodecline[page,4] = "";
        page++; 
    }
}
#endregion
#define setChargedAttackHurtboxes
//There is a bug where hurtboxes don't update if Amber activates ChargeReady
//and then uses a charged move that has a different sprite sheet
//set_attack_value(AT_FTILT, AG_HURTBOX_SPRITE, sprite_get("fthrow_hurt"));
//set_attack_value(AT_FAIR, AG_HURTBOX_SPRITE, sprite_get("fthrow_hurt"));
//set_attack_value(AT_NSPECIAL, AG_HURTBOX_SPRITE, sprite_get("fthrow_hurt"));
if (hasYarnBall)
    set_attack_value(AT_DSPECIAL, AG_HURTBOX_SPRITE, sprite_get("dspecial2_hurt"));
hasSetChargedHurtboxes = true;

#define resetRegularAttackHurtboxes
//set_attack_value(AT_FTILT, AG_HURTBOX_SPRITE, sprite_get("ftilt_hurt"));
//set_attack_value(AT_FAIR, AG_HURTBOX_SPRITE, sprite_get("ftilt_hurt"));
//set_attack_value(AT_NSPECIAL, AG_HURTBOX_SPRITE, sprite_get("hurtbox"));
set_attack_value(AT_DSPECIAL, AG_HURTBOX_SPRITE, sprite_get("dspecial_hurt"));
hasSetChargedHurtboxes = false;

#define disableAllAttacks
//This is used for Amber holding the yarn ball
move_cooldown[AT_JAB] = 2;
move_cooldown[AT_DATTACK] = 2;
move_cooldown[AT_NSPECIAL] = 2;
move_cooldown[AT_FSPECIAL] = 2;
move_cooldown[AT_USPECIAL] = 2;

move_cooldown[AT_DSPECIAL] = 2;

move_cooldown[AT_FSTRONG] = 2;
move_cooldown[AT_USTRONG] = 2;
move_cooldown[AT_DSTRONG] = 2;
move_cooldown[AT_FTILT] = 2;
move_cooldown[AT_UTILT] = 2;
move_cooldown[AT_DTILT] = 2;
move_cooldown[AT_NAIR] = 2;
move_cooldown[AT_FAIR] = 2;
move_cooldown[AT_BAIR] = 2;
move_cooldown[AT_DAIR] = 2;
move_cooldown[AT_UAIR] = 2;

move_cooldown[AT_NSPECIAL_2] = 2;
move_cooldown[AT_NSPECIAL_AIR] = 2;
move_cooldown[AT_FSPECIAL_2] = 2;
move_cooldown[AT_FSPECIAL_AIR] = 2;
move_cooldown[AT_USPECIAL_2] = 2;
move_cooldown[AT_USPECIAL_GROUND] = 2;
move_cooldown[AT_DSPECIAL_2] = 2;
move_cooldown[AT_DSPECIAL_AIR] = 2;

move_cooldown[AT_FSTRONG_2] = 2;
move_cooldown[AT_USTRONG_2] = 2;
move_cooldown[AT_DSTRONG_2] = 2;

move_cooldown[AT_FTHROW] = 2;
move_cooldown[AT_UTHROW] = 2;
move_cooldown[AT_DTHROW] = 2;
move_cooldown[AT_NTHROW] = 2;


/*
AT_TAUNT_2
AT_EXTRA_1
AT_EXTRA_2
AT_EXTRA_3
*/

#define disableNonSpecialAttacks
//Used for Amber in smoke bomb form
move_cooldown[AT_JAB] = 2;
move_cooldown[AT_DATTACK] = 2;

//move_cooldown[AT_DSPECIAL] = 2;

move_cooldown[AT_FSTRONG] = 2;
move_cooldown[AT_USTRONG] = 2;
move_cooldown[AT_DSTRONG] = 2;
move_cooldown[AT_FTILT] = 2;
move_cooldown[AT_UTILT] = 2;
move_cooldown[AT_DTILT] = 2;
move_cooldown[AT_NAIR] = 2;
move_cooldown[AT_FAIR] = 2;
move_cooldown[AT_BAIR] = 2;
move_cooldown[AT_DAIR] = 2;
move_cooldown[AT_UAIR] = 2;

//move_cooldown[AT_NSPECIAL_2] = 2;
move_cooldown[AT_NSPECIAL_AIR] = 2;
//move_cooldown[AT_FSPECIAL_2] = 2;
move_cooldown[AT_FSPECIAL_AIR] = 2;
//move_cooldown[AT_USPECIAL_2] = 2;
move_cooldown[AT_USPECIAL_GROUND] = 2;
//move_cooldown[AT_DSPECIAL_2] = 2;
move_cooldown[AT_DSPECIAL_AIR] = 2;

move_cooldown[AT_FSTRONG_2] = 2;
move_cooldown[AT_USTRONG_2] = 2;
move_cooldown[AT_DSTRONG_2] = 2;

move_cooldown[AT_FTHROW] = 2;
move_cooldown[AT_UTHROW] = 2;
move_cooldown[AT_DTHROW] = 2;
//move_cooldown[AT_NTHROW] = 2;

#define spawnYarnBall
hasYarnBall = false;
set_hitbox_value(AT_DSPECIAL, 1, HG_BASE_KNOCKBACK, 0);
switch (yarnBallAimingPower)
{
    case 3:
        yarnBallThrowPower = 15;
        set_hitbox_value(AT_DSPECIAL, 1, HG_BASE_KNOCKBACK, 1);
    break;
    case 2:
    yarnBallThrowPower = 10;
    break;
    case 1:
    yarnBallThrowPower = 5;
    break;
    default:
    yarnBallThrowPower = 5;
    break;
}
//other.hsp = lengthdir_x(2*kb_value, get_hitbox_angle(id));
//other.vsp = lengthdir_y(1*kb_value, get_hitbox_angle(id));
yarnBallObject = create_hitbox( AT_DSPECIAL, 1, x + floor(lengthdir_x(yarnBallThrowPower, yarnBallThrowAngle)), y - 32);
yarnBallObject.yBallStickEnemyWhenThrown = true;
yarnBallObject.hsp = lengthdir_x(yarnBallThrowPower, yarnBallThrowAngle) + (hsp * 0.5);
yarnBallObject.vsp = lengthdir_y(yarnBallThrowPower, yarnBallThrowAngle) + (vsp * 0.5);
yarnBallObject.yBallHasHitstun = (yarnBallAimingPower == 3);

#define transformYarnBallToArticle
var oldYarnBallObj = yarnBallObject;
yarnBallObject = instance_create( oldYarnBallObj.x, oldYarnBallObj.y + 2, "obj_article2" );
yarnBallObject.free = false;
yarnBallObject.ignores_walls = false;
yarnBallObject.yarnType = 0;
yarnBallObject.unbashable = 0;

var yarnBallArticleHitbox = instance_create( oldYarnBallObj.x, oldYarnBallObj.y + 2, "obj_article2" );
yarnBallObject.yBallArticleHitbox = yarnBallArticleHitbox;
yarnBallArticleHitbox.yarnType = 2;
yarnBallArticleHitbox.yBallTrackingArticle = yarnBallObject;
yarnBallArticleHitbox.sprite_index = sprite_get("yarnball_aura_med");
yarnBallArticleHitbox.mask_index = sprite_get("yarnball_hitbox_mask_med");
oldYarnBallObj.destroyed = true;

#define tutorialMeter
// Practice Mode Functionality
if (get_training_cpu_action() != CPU_FIGHT && get_gameplay_time() >= 120)
{
    trainingTimer2 = get_game_timer();
    if (trainingTimer1 == trainingTimer2 && trainingTimer1 != 0 && !inTraining)
    {
        inTraining = true;
    }
}

if (inTraining == true)
{
    /*
    if (variable_instance_exists(self, "get_training_cpu_action()"))
    {
        if (get_training_cpu_action() != CPU_FIGHT)
        {
            if (taunt_pressed && down_down && shield_pressed && infiniteMeter == false)
            {
                infiniteMeter = true;
            }
            else if (taunt_pressed && down_down && shield_pressed && infiniteMeter == true)
            {
                infiniteMeter = false;
            }
            
            if (infiniteMeter == true && totalDamageDealt < totalDamageDealtCap && !(attack == AT_NTHROW && window == 4))
            {
                totalDamageDealt = totalDamageDealtCap;
            }
        }
    }
    */
    /*
    if (taunt_pressed && down_down && shield_down && infiniteMeter == false)
    {
        infiniteMeter = true;
    }
    else if (taunt_pressed && down_down && shield_down && infiniteMeter == true)
    {
        infiniteMeter = false;
    }
    */
    /*
    if (infiniteMeter == true && totalDamageDealt < totalDamageDealtCap && !(attack == AT_NTHROW && window == 4))
    {
        totalDamageDealt = totalDamageDealtCap;
    } 
    */
    
}
#define introInputs
if (get_gameplay_time() <= 100)
{
    if (taunt_pressed)
    {
        //pacifistModeEnabled = true;
        //sound_play( asset_get("mfx_star") );
    }
    /*
    if (special_pressed && simpleModeEnabled == true)
    {
        simpleModeEnabled = false;
        sound_play( asset_get("mfx_star") );
    }
    */
    if (special_pressed && keyboardModeEnabled == false)
    {
        keyboardModeEnabled = true;
        sound_play( asset_get("mfx_star") );
        keyboardSwappingAnimTimer = 35;
    }
    
}
/*
else if (get_gameplay_time() == 141)
{
    //Set the simple mode attributes
    if (simpleModeEnabled == true)
    {
        originInitialDashSpeed = 8;
        wave_land_adj = 1.2;
        
        set_window_value(AT_BAIR, 2, AG_WINDOW_HSPEED_TYPE, 0);
        set_window_value(AT_BAIR, 2, AG_WINDOW_HSPEED, 0);
        
        set_hitbox_value(AT_FTILT, 1, HG_BASE_HITPAUSE, 5);
        set_hitbox_value(AT_FTILT, 2, HG_BASE_HITPAUSE, 5);
        set_hitbox_value(AT_FTILT, 3, HG_BASE_HITPAUSE, 5);
        set_hitbox_value(AT_FTILT, 4, HG_BASE_HITPAUSE, 5);
        
        set_hitbox_value(AT_FAIR, 1, HG_BASE_HITPAUSE, 7);
        set_hitbox_value(AT_FAIR, 2, HG_BASE_HITPAUSE, 7);
        set_hitbox_value(AT_FAIR, 3, HG_BASE_HITPAUSE, 7);
        set_hitbox_value(AT_FAIR, 4, HG_BASE_HITPAUSE, 8);
        
        for (var i = 0; i < 6; i++)
            set_hitbox_value(AT_UAIR, i, HG_BASE_HITPAUSE, 6);
        
        //set_window_value(AT_DTILT, 2, AG_WINDOW_HSPEED, 5);
    }
}
*/
#define checkForClonedAmbers
//Init is unstable order for checking duplicate Ambers. Do it in update instead after the timer has passed a bit, assuming all characters are loaded
if (get_gameplay_time() == 20 || was_reloaded)
{
    with (asset_get("oPlayer"))
    {
        if (self != other)
        {
            if ("thisIsAmber" in self)
            {
                other.clonedEnemyAmber[player - 1] = self;
                other.clonedAmberExists = true;
                //For some reason some other Ambers cannot detect other Ambers. Make every Amber set each other to true
                //clonedAmberExists = true;
                //if (clonedEnemyAmber == noone)
                  //  clonedEnemyAmber[player - 1] = self;
            }
        }
    }
}
#define speedLinesUpdate
if (speedlinesEnable == true)
{
    //if (speedlinesBG.image_alpha < 1)
      //  speedlinesBG.image_alpha += 0.1;
    
    if (attack == AT_FSPECIAL || attack == AT_FSTRONG)
    {
        speedlinesBG.spr_dir = 2.5 * spr_dir; 
        speedlinesBG.image_angle = 0;
    }
    
    if (attack == AT_USPECIAL_2)
    {
        speedlinesBG.spr_dir = 2.5;
        speedlinesBG.image_angle = 90;
    }
    
    if (!(state == PS_ATTACK_AIR || state == PS_ATTACK_GROUND))
    {
        if (hitpause == 0)
        speedlinesEnable = false;
    }
}
else if (speedlinesEnable == false)
{
    if (speedlinesBG.image_alpha > 0)
        speedlinesBG.image_alpha -= 0.1;
    
    if (speedlinesBG.image_alpha < 0)
        speedlinesBG.image_alpha = 0;
}

#define initRuneStats
if (get_gameplay_time() == 1)
{
    if (runeC)
        knockback_adj = 1.31;
        
    if (runeL)
        infiniteMeter = true;
}

#define lethalLeagueInit
if (get_gameplay_time() == 1 && lethalLeague_stage)
{
    
}

#define yarnThrowAntiIFrame
//Amber can cancel her air dodge or rolling or parrying with a yarn throw. This leads to perma i-frame bug. Prevent this from happening
switch(state)
{
    /*
    case PS_ROLL_FORWARD:
        if (window < 2)
        {
            window = 1;
            window_timer = 14;
        }
    break;
    
    case PS_ROLL_BACKWARD:
        if (window < 2)
        {
            window = 1;
            window_timer = 14;
        }
    break;
    
    case PS_PARRY:
        if (window < 2)
        {
            window = 1;
            window_timer = 7;
        }
    break;
    */
    case PS_AIR_DODGE:
        
        if (state_timer < 3)
        {
            //window = 1;
            //window_timer = 12;
            
            state = PS_PRATFALL;
            state_timer = 0;
            //window = 0;
            //window_timer = 12;
        }
        
    break;
}

