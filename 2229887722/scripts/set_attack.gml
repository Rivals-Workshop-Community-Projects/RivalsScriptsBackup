//armored E.specials rune
if(runeG && chargeAttackReady && (attack == AT_DSPECIAL || attack == AT_USPECIAL || attack == AT_NSPECIAL || attack == AT_FSPECIAL)){
    super_armor = true;
}

if(chargeAttackReady){
    if(totalDamageDealt >= totalDamageDealtCap){
        totalDamageDealtPrevious = totalDamageDealt;
    }
    setChargedAttackHitboxValues();
    if(attack == AT_FSPECIAL && move_cooldown[AT_FSPECIAL] == 0){
        if(totalDamageDealt < totalDamageDealtCap){
            totalDamageDealt -= 10;
            if(totalDamageDealt < 0){
                totalDamageDealt = 0;
            }
        } else {
            totalDamageDealtPrevious = totalDamageDealt;
        }
    }
}

//set attack
switch (attack)
{
    case AT_DATTACK:
        dashAttackCancelBuffer = false;
    break;
    
    case AT_FTILT:
        attack_end();
        if (isHoldingYarnBall == false)
        {
            switch (clawComboCounter)
            {
                case 1:
                    //clawComboAttackReleased = false;
                    window_timer = 0;
                    window = 1;
                    clawComboCounter++;
                    clawComboTimer = clawComboTimerLength;
                    break;
                case 2:
                    window_timer = 0;
                    window = 4;
                    clawComboCounter++;
                    clawComboTimer = clawComboTimerLength;
                    break;
                case 3:
                    window_timer = 0;
                    window = 7;
                    clawComboCounter++;
                    clawComboTimer = clawComboTimerLength;
                    break;
                case 4:
                    window_timer = 0;
                    window = 10;
                    clawComboCounter++;
                    clawComboTimer = clawComboTimerLength;
                    vsp = -4;
                    break;
                case 5:
                    window_timer = 0;
                    window = 13;
                    clawComboCounter = 1;
                    clawComboTimer = 0;
                    break;
            }
        }
    break;
    
    case AT_FAIR:
        attack_end();
        has_hit = false;
        has_hit_player = false;
        if (isHoldingYarnBall == false)
        {
            switch (clawComboCounter)
            {
                case 1:
                    window_timer = 0;
                    window = 1;
                    clawComboCounter++;
                    clawComboTimer = clawComboTimerLength;
                    break;
                case 2:
                    window_timer = 0;
                    window = 4;
                    clawComboCounter++;
                    clawComboTimer = clawComboTimerLength;
                    break;
                case 3:
                    window_timer = 0;
                    window = 7;
                    clawComboCounter++;
                    clawComboTimer = clawComboTimerLength;
                    break;
                case 4:
                    window_timer = 0;
                    window = 10;
                    clawComboCounter++;
                    clawComboTimer = clawComboTimerLength;
                    break;
                case 5:
                    window_timer = 0;
                    window = 13;
                    clawComboCounter = 1;
                    clawComboTimer = 0;
                    break;
            }
        }
    break;
    
    case AT_DTILT:
        if (isHoldingYarnBall == false)
            clear_button_buffer(PC_ATTACK_PRESSED);
    break;
    
    case AT_DAIR:
        ////Force a cooldown on dair to prevent wobbling combo loop
        //if (previousDairDirection != spr_dir && move_cooldown[AT_DAIR] <= 0)
        //{
          //  move_cooldown[AT_DAIR] = 30;
        //}
        
        //Set previousDairDirection early if there is no cooldown
        if (secondaryDairCooldown <= 0)
        previousDairDirection = spr_dir;
        
        if(secondaryDairCooldown > 0 && previousDairDirection != spr_dir)
            move_cooldown[AT_DAIR] = 15;
        else if (secondaryDairCooldown <= 0)
            secondaryDairCooldown = 30;
            
        previousDairDirection = spr_dir;
    break;
    
    case AT_BAIR:
        bairHeldDown = false;
    break;
    
    case AT_FTHROW:
        chargeAttackReady = false;
    break;
    
    case AT_FSTRONG:
        afterImageUpdateTimer = 0;
    break;
    
    case AT_NSPECIAL:
        speedlinesEnable = false;
        if (isCharged)
        {
            window = 2;
        }
    break;
    
    case AT_FSPECIAL:
        speedlinesEnable = false;
        superShurikatHitChargedTotalDamage = 0;
        shurikatHitFirstHitbox = false;
        
        //frame data reduction rune
        if(runeE){
            if(chargeAttackReady){
                set_window_value(AT_FSPECIAL, 1, AG_WINDOW_LENGTH, 2);
                set_window_value(AT_FSPECIAL, 9, AG_WINDOW_LENGTH, 12);
            } else {
                reset_window_value(AT_FSPECIAL, 1, AG_WINDOW_LENGTH);
                reset_window_value(AT_FSPECIAL, 9, AG_WINDOW_LENGTH);
            }
        }
        
        set_window_value(AT_FSPECIAL, 2, AG_WINDOW_VSPEED_TYPE, 0);
        set_window_value(AT_FSPECIAL, 2, AG_WINDOW_VSPEED, 0);
    break;
    
    case AT_DSPECIAL:
        //instance_create( x, y, "obj_article2" );
        
        //Make the hurtbox in the original offset of the player
        //Yarn dash modifies the offset of the hurtbox
        //sprite_change_offset("dspecial_hurt", 80, 118);
        
        if (hasYarnBall == false)
        {
            if (instance_exists(yarnBallObject))
            {
                //If we are close to the yarn ball, pick it up
                if (distance_to_object( yarnBallObject ) < 16 && yarnBallObject.yBallIsProjectile == false)
                {
                    window = 9;
                    hasYarnBall = true;
                    sound_play( asset_get("mfx_coin") );
                    spawn_hit_fx( yarnBallObject.x, yarnBallObject.y, 20 );
                    //yarnBallObject.destroyed = true;
                    instance_destroy(yarnBallObject);
                    clear_button_buffer( PC_SPECIAL_PRESSED );
                    
                    //Remove yarn mark status from all enemies
                    user_event(4);
                    /*
                    with (asset_get("oPlayer")) 
                    {
                        if (self != other)
                        {
                            if (enemyTouchingYarnBall == true)
                            {
                                enemyTouchingYarnBall = false;
                                //sound_play(asset_get("sfx_blow_medium3"));
                            }
                        }
                    }
                    */
                }
                else if (yarnDashCooldownTimer <= 0)
                {
                    //set_window_value(AT_DSPECIAL, 11, AG_WINDOW_SFX, asset_get("sfx_infinidagger")); // was  sfx_ori_grenade_launch
                    set_window_value(AT_DSPECIAL, 10, AG_WINDOW_LENGTH, 12);
                    if (chargeAttackReady == true)
                    {
                        empoweredCooldownTimer = empoweredCooldownLength;
                        yarnDashSpeed = 25;
                        yarnDashIsEmpowered = true;
                        yarnDashSprite = yarnDashEmpoweredSprite;
                        
                        totalDamageDealtPrevious = totalDamageDealt;
                        if (totalDamageDealt >= totalDamageDealtCap)
                            totalDamageDealt = 0;
                        
                        set_window_value(AT_DSPECIAL, 10, AG_WINDOW_LENGTH, 20);
                        
                        //frame data reduction rune
                        if(runeE){
                            set_window_value(AT_DSPECIAL, 10, AG_WINDOW_LENGTH, 4);
                        }
                        
                        chargeAttackReadyTimer = chargeAttackReadyLength;
                        if (tutSuccessUsedEmpowered == false)
                            tutSuccessUsedEmpowered = true;
                        chargeAttackReady = false;
                        //outline_color = chargeAttackReadyOutlineColor;
                        //init_shader();
                        //set_window_value(AT_DSPECIAL, 11, AG_WINDOW_SFX, asset_get("sfx_infinidagger"));
                    }
                    else if (yarnBallObject.yBallIsProjectile == true && chargeAttackReady == false){
                        yarnDashSprite = originYarnDashSprite;
                        yarnDashSpeed = 16;
                        yarnDashIsEmpowered = false;
                    }
                    else if (chargeAttackReady == false){
                        yarnDashSprite = originYarnDashSprite;
                        yarnDashSpeed = 16;
                        yarnDashIsEmpowered = false;
                    }
                    //Pounce at the yarn ball
                    yarnDashPrevYPos = y;
                    
                    if (yarnBallObject.x > x)
                        spr_dir = 1;
                    else if (yarnBallObject.x < x)
                        spr_dir = -1;
                    window = 10;
                    
                    yarnDashCooldownTimer = yarnDashCooldown;
                }
                else if (yarnDashCooldownTimer > 0)
                {
                    sound_play( asset_get("mfx_tut_fail") );
                    //window_timer = 9;
                    window = 20;
                    clear_button_buffer(PC_SPECIAL_PRESSED);
                    if(fast_falling){
                        fast_falling = false;
                        vsp = max_fall;
                    }
                }
            }
        }
        else if (hasYarnBall == true && isCharged == false)
        {
            set_attack_value(AT_DSPECIAL, AG_HURTBOX_SPRITE, sprite_get("dspecial_hurt"));
        }
    break;
    
    case AT_DSPECIAL_2:
        set_attack_value(AT_DSPECIAL, AG_HURTBOX_SPRITE, sprite_get("dspecial2_hurt"));
        set_window_value(AT_DSPECIAL_2, 5, AG_WINDOW_LENGTH, 30);
    break;
}

//frame date reduction rune
if(runeE){
    set_window_value(AT_USPECIAL_2, 1, AG_WINDOW_LENGTH, 4);
    set_window_value(AT_DSPECIAL_2, 1, AG_WINDOW_LENGTH, 2);
    set_window_value(AT_DSPECIAL_2, 5, AG_WINDOW_LENGTH, 8);
}

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
    set_hitbox_value(AT_DSPECIAL_2, 5, HG_ANGLE, 40);
    set_hitbox_value(AT_DSPECIAL_2, 5, HG_BASE_KNOCKBACK, 9);//12
    //These hitbox values are also modified in hit_player.gml if Amber hits the enemy
    //while charged yarn dashing
    set_hitbox_value(AT_DSPECIAL_2, 5, HG_KNOCKBACK_SCALING, 2);//1.75
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
    set_hitbox_value(AT_DSPECIAL_2, 5, HG_ANGLE, 40);
    set_hitbox_value(AT_DSPECIAL_2, 5, HG_BASE_KNOCKBACK, 8); //12
    set_hitbox_value(AT_DSPECIAL_2, 5, HG_KNOCKBACK_SCALING, 1.1); //1
}
//set_hitbox_value(AT_DSPECIAL_2, 5, HG_ANGLE, 361);