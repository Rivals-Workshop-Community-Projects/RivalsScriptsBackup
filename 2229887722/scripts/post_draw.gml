//===============================================
//VFX Drawing
//===============================================
#region
//Draw the charge effect if charging state
if (isCharging == true && currentChargeTime < chargeTimeLength)
    draw_sprite_ext( charge_sprite, currentChargeTime - 1, x-76,y-86, 2, 2, 0, c_white, 1);


//Draw charged status VFX if in charged state
//if (drawChargeVfx == true)
//{
    if (totalDamageDealt >= totalDamageDealtCap)
    {
        if (isChargedAnimTimer >= 30)
            draw_sprite_ext( charged_sprite_front, isChargedAnimTimer - 30, x-34, y-112, 2, 2, 0, c_white, 0.75);
    }
//}

if (chargeAttackReadyTimer < 17)
{
    if (state_cat != SC_GROUND_NEUTRAL || state_cat != SC_AIR_NEUTRAL || state_cat != SC_HITSTUN)
    {
        if (chargeAttackReadyTimer != 0)
            chargeAttackReadyVfxAlpha = 1.25 - (chargeAttackReadyTimer / 17);
        else
            chargeAttackReadyVfxAlpha = 1;
        draw_sprite_ext( sprite_get("chargeready_vfx"), chargeAttackReadyTimer - 1, x-66,y-86, 2, 2, 0, c_white, chargeAttackReadyVfxAlpha);
    }
}

/*
if (miniBoostMeterTargetAlpha > 0)
{
    if (totalDamageDealt != 0)
        draw_sprite_ext( sprite_get("mini_meter_hud"), floor(totalDamageDealt / 2.5), x-20,y+10, 2, 2, 0, c_white, miniBoostMeterTargetAlpha);
    else
        draw_sprite_ext( sprite_get("mini_meter_hud"), 0, x-20,y+10, 2, 2, 0, c_white, miniBoostMeterTargetAlpha);
}
*/
/*
if (isChargePunished == true && !runeC)
{
    draw_sprite(charge_punished_sprite,0,(x + 10),y-86);
}
*/
/*
if (state_cat == SC_HITSTUN && totalDamageDealt <= 0)
{
    draw_sprite(charge_punished_sprite,0,(x + 10),y-86);
}
*/
if (attack == AT_BAIR)
{
    //Spawn a spark vfx on window 2 to show the tipper hitbox. This needs to be drawn
    //in post_draw since hit_fx is rendered behind the player. The spark should be rendered in front
    //of the player
    if (smallSparkVfxBairTimer <= 1)
    {
        if (spr_dir == -1)
            draw_sprite(small_spark_vfx_sprite, smallSparkVfxBairTimer, playersLastXPos + (36), playersLastYPos-28);
        else
            draw_sprite(small_spark_vfx_sprite, smallSparkVfxBairTimer, playersLastXPos - (70), playersLastYPos-28);
    }
}

if (attack == AT_FSPECIAL)
{
    if (shurikatChargeLevel < 5 && window == 2 && window_timer > 4 && 
        state != PS_ROLL_FORWARD && state != PS_ROLL_BACKWARD &&
        state != PS_AIR_DODGE && state != PS_PARRY)
    {
        draw_sprite_ext( shurikenVfxSprite, shurikatChargeLevel - 1, x + (18 * spr_dir), y, spr_dir, 1, 0, c_white, 1);
    }
    if (shurikatChargeLevel == 5 && window == 4)
    {
        draw_sprite_ext( superShurikenVfxSprite, superShurikenVfxTimer, x, y, spr_dir, 1, 0, c_white, 1);
        //draw_sprite(superShurikenVfxSprite, superShurikenVfxTimer, x, y);
    }
}

//Sprites affected by pallet change
shader_start();
//Draw aiming arrow
if (attack == AT_DSPECIAL && window == 5 ||
    attack == AT_DSPECIAL && window == 4)
{
    draw_sprite_ext( aimingArrowSprite, yarnBallAimingPower - 1, x, y - 32, 1, 1, yarnBallThrowAngle, c_white, 1);
   // draw_sprite(charge_attack_ready_sprite,chargeAttackReadyTimer,x,y);
}

//Draw Amber dashing frame with rotation and adjusted y pos
if (attack == AT_DSPECIAL && window == 11 && state != PS_PRATFALL)
{
    if (spr_dir == 1)
        draw_sprite_ext( yarnDashSprite, 0, x - (6 * spr_dir), y - 20, spr_dir, 1, yarnDashAngleDirection, c_white, 1);
    else if (spr_dir == -1)
        draw_sprite_ext( yarnDashSprite, 0, x - (6 * spr_dir), y - 20, spr_dir, 1, yarnDashAngleDirection - 180, c_white, 1);
    
}

//Show cooldown above Amber
if (hasYarnBall == true && move_cooldown[AT_DSPECIAL] > 2 && state != PS_SPAWN)
{
    draw_sprite_ext( sprite_get("yarnball_cooldown_icon"), 0, x - 16, y - char_height - 94, 2, 2, 0, c_white, 1);
}
else if (yarnDashCooldownTimer > 0)
{
    draw_sprite_ext( sprite_get("yarndash_icon"), 0, x - 16, y - char_height - 80, 2, 2, 0, c_gray, 1);
}

/*
if (smokeBombCooldownTimer > 0)
{
    var calculatedStrip = smokeBombCooldownHudRange / 20;
    draw_sprite_ext( sprite_get("smokebomb_cooldown"), floor(smokeBombCooldownTimer / calculatedStrip), x - 32, y + 6, 1, 1, 0, c_white, 1);
}
*/
if (empoweredCooldownTimer > 0)
{
    var calculatedStrip = empoweredCooldownLength / 20;
    draw_sprite_ext( sprite_get("empowered_cooldown"), floor(empoweredCooldownTimer / calculatedStrip), x - 32, y + 6, 2, 2, 0, c_white, 1);
}
#endregion

#region //Amber holding yarnball
if (isHoldingYarnBall)
{
    switch (state)
    {
        case PS_IDLE:
            draw_sprite_ext( sprite_get("yarnball_hold_idle"), image_index, x - (34 * spr_dir), y - 54, 2 * spr_dir, 2, 0, c_white, 1);
        break;
        case PS_CROUCH:
            draw_sprite_ext( sprite_get("yarnball_hold_crouch"), image_index, x - (42 * spr_dir), y - 46, 2 * spr_dir, 2, 0, c_white, 1);
        break;
        case PS_WALK:
            draw_sprite_ext( sprite_get("yarnball_hold_walk"), image_index, x - (34 * spr_dir), y - 60, 2 * spr_dir, 2, 0, c_white, 1);
        break;
        case PS_WALK_TURN:
            draw_sprite_ext( sprite_get("yarnball_hold_walkturn"), image_index, x - (28 * spr_dir), y - 70, 2 * spr_dir, 2, 0, c_white, 1);
        break;
        case PS_DASH_START:
            draw_sprite_ext( sprite_get("yarnball_hold_dashstart"), image_index, x - (50 * spr_dir), y - 48, 2 * spr_dir, 2, 0, c_white, 1);
        break;
        case PS_DASH:
            draw_sprite_ext( sprite_get("yarnball_hold_dash"), image_index, x - (36 * spr_dir), y - 50, 2 * spr_dir, 2, 0, c_white, 1);
        break;
        case PS_DASH_STOP:
            draw_sprite_ext( sprite_get("yarnball_hold_dashstop"), image_index, x - (38 * spr_dir), y - 50, 2 * spr_dir, 2, 0, c_white, 1);
        break;
        case PS_DASH_TURN:
            draw_sprite_ext( sprite_get("yarnball_hold_dashturn"), image_index, x - (22 * spr_dir), y - 48, 2 * spr_dir, 2, 0, c_white, 1);
        break;
        case PS_IDLE_AIR:
            if (prev_state == PS_WALL_JUMP)
                draw_sprite_ext( sprite_get("yarnball_hold_jump2"), image_index, x - (28 * spr_dir), y - 58, 2 * spr_dir, 2, 0, c_white, 1);
            else
                draw_sprite_ext( sprite_get("yarnball_hold_jump"), image_index, x - (28 * spr_dir), y - 58, 2 * spr_dir, 2, 0, c_white, 1);
        break;
        case PS_FIRST_JUMP:
            if (state_timer > 0)
                draw_sprite_ext( sprite_get("yarnball_hold_jump"), image_index, x - (28 * spr_dir), y - 56, 2 * spr_dir, 2, 0, c_white, 1);
            else if (state_timer == 0)
                draw_sprite_ext( sprite_get("yarnball_hold_jumpstart"), image_index, x - (28 * spr_dir), y - 48, 2 * spr_dir, 2, 0, c_white, 1);
        break;
        case PS_DOUBLE_JUMP:
            draw_sprite_ext( sprite_get("yarnball_hold_doublejump"), image_index, x - (38 * spr_dir), y - 54, 2 * spr_dir, 2, 0, c_white, 1);
        break;
        case PS_JUMPSQUAT:
            draw_sprite_ext( sprite_get("yarnball_hold_jumpstart"), image_index, x - (28 * spr_dir), y - 48, 2 * spr_dir, 2, 0, c_white, 1);
        break;
        case PS_PARRY_START:
            draw_sprite_ext( sprite_get("yarnball_hold_parry"), image_index, x - (32 * spr_dir), y - 52, 2 * spr_dir, 2, 0, c_white, 1);
        break;
        case PS_PARRY:
            draw_sprite_ext( sprite_get("yarnball_hold_parry"), image_index, x - (32 * spr_dir), y - 52, 2 * spr_dir, 2, 0, c_white, 1);
        break;
        case PS_ROLL_FORWARD:
            draw_sprite_ext( sprite_get("yarnball_hold_roll"), image_index, x - (36 * spr_dir), y - 80, 2 * spr_dir, 2, 0, c_white, 1);
        break;
        case PS_ROLL_BACKWARD:
            draw_sprite_ext( sprite_get("yarnball_hold_roll"), image_index, x - (36 * spr_dir), y - 80, 2 * spr_dir, 2, 0, c_white, 1);
        break;
        case PS_AIR_DODGE:
            draw_sprite_ext( sprite_get("yarnball_hold_airdodge"), image_index, x - (32 * spr_dir), y - 58, 2 * spr_dir, 2, 0, c_white, 1);
        break;
        case PS_WAVELAND:
            draw_sprite_ext( sprite_get("yarnball_hold_waveland"), image_index, x - (26 * spr_dir), y - 48, 2 * spr_dir, 2, 0, c_white, 1);
        break;
        case PS_LAND:
            draw_sprite_ext( sprite_get("yarnball_hold_land"), image_index, x - (26 * spr_dir), y - 48, 2 * spr_dir, 2, 0, c_white, 1);
        break;
        case PS_LANDING_LAG:
            draw_sprite_ext( sprite_get("yarnball_hold_land"), image_index, x - (26 * spr_dir), y - 48, 2 * spr_dir, 2, 0, c_white, 1);
        break;
        case PS_WALL_JUMP:
            draw_sprite_ext( sprite_get("yarnball_hold_walljump"), image_index, x - (34 * spr_dir), y - 56, 2 * spr_dir, 2, 0, c_white, 1);
        break;
    }
}

#endregion

shader_end();

//Respawn Platform Drawing
if (state == PS_RESPAWN)
{
    //draw_sprite(respawnPlatFrontSprite,floor(respawnPlatAnimTimer),x,y);
}

//Show tutorial bubble if Amber uses Unleash Power (N Special) while in training mode
if (inTraining == true && chargeAttackReady == true && tutSuccessUsedEmpowered == false && tutEmpoweredBubbleAnimTimer < tutEmpoweredBubbleShowLength)
{
    draw_sprite_ext( sprite_get("tut_special_ui"), tutEmpoweredBubbleAnimTimer, x - 70, y - 126, 1, 1, 0, c_white, 1);
}
if (attack == AT_TAUNT)
{
    switch (tauntType)
    {
        case 2: //Hugging Plush
            if (state == PS_ATTACK_GROUND)
            {
                if (image_index == 4)
                    draw_sprite_ext( targetPlushSprite, targetPlushIndex, x - (4 * spr_dir), y - 22, spr_dir * 2, 2, 0, c_white, 1);
                else if (window == 2)
                {
                    draw_sprite_ext( targetPlushSprite, targetPlushIndex, x - (10 * spr_dir), y - 20, spr_dir * 2, 2, 0, c_white, 1);
                }
            }
        break;
        case 3:
            if (amberHugState == 1 && window == 1)
            {
                draw_sprite_ext( sprite_get("speech_bubble"), 0, x - 1, y - char_height - 20, 2, 2, 0, c_white, 1);
                draw_debug_text( x - 52, y - char_height - 58, "Taunt near me!" );
            }
        break;
        case 10: //Tutorial Bubble Menu
            if (tutCurrentMenuCategory == 1 && state == PS_ATTACK_GROUND)
            {
                #region //Draw the Tutorial Bubble Menu
                t_bubbleX = ( x + (254));
                t_bubbleY = y - 240;
                
                t_bubbleLeftSideX = t_bubbleX - 170;
                
                //Startup animation
                if (window == 1)
                {
                    draw_sprite_ext( sprite_get("t_bubble_menu"), image_index, t_bubbleX, t_bubbleY, 2, 2, 0, c_white, 1);
                }
                else if (window == 2)
                {
                    draw_sprite_ext( sprite_get("t_bubble_menu"), 3, t_bubbleX, t_bubbleY, 2, 2, 0, c_white, 1);
                    
                    //Draw the headline
                    draw_sprite_ext( sprite_get("t_bubble_menu_headline"), 0, t_bubbleX + 10, t_bubbleY, 2, 2, 0, c_white, 1);
                    
                    switch (tutSelectedMenuIndex)
                    {
                        case 0:
                        /*
                            draw_debug_text( t_bubbleLeftSideX + 10, t_bubbleY + 60, "Moveset" );
                            draw_debug_text( t_bubbleLeftSideX, t_bubbleY + 80, "Tutorial" );
                            draw_debug_text( t_bubbleLeftSideX, t_bubbleY + 100, "Patch Notes" );
                            draw_debug_text( t_bubbleLeftSideX, t_bubbleY + 120, "Toggle Inf. Meter" );
                            */
                            draw_debug_text( t_bubbleLeftSideX + 10, t_bubbleY + 70, "Moveset" );
                            draw_debug_text( t_bubbleLeftSideX, t_bubbleY + 110, "Toggle Inf. Meter" );
                            draw_debug_text( t_bubbleLeftSideX - 10, t_bubbleY + 70 + (20 *  tutSelectedMenuIndex), ">" );
                        break;
                        case 1:
                        /*
                            draw_debug_text( t_bubbleLeftSideX, t_bubbleY + 60, "Moveset" );
                            draw_debug_text( t_bubbleLeftSideX + 10, t_bubbleY + 80, "Tutorial" );
                            draw_debug_text( t_bubbleLeftSideX, t_bubbleY + 100, "Patch Notes" );
                            draw_debug_text( t_bubbleLeftSideX, t_bubbleY + 120, "Toggle Inf. Meter" );
                            */
                        break;
                        case 2:
                        /*
                            draw_debug_text( t_bubbleLeftSideX, t_bubbleY + 60, "Moveset" );
                            draw_debug_text( t_bubbleLeftSideX, t_bubbleY + 80, "Tutorial" );
                            draw_debug_text( t_bubbleLeftSideX + 10, t_bubbleY + 100, "Patch Notes" );
                            draw_debug_text( t_bubbleLeftSideX, t_bubbleY + 120, "Toggle Inf. Meter" );
                            */
                        break;
                        case 3:
                        /*
                            draw_debug_text( t_bubbleLeftSideX, t_bubbleY + 60, "Moveset" );
                            draw_debug_text( t_bubbleLeftSideX, t_bubbleY + 80, "Tutorial" );
                            draw_debug_text( t_bubbleLeftSideX, t_bubbleY + 100, "Patch Notes" );
                            draw_debug_text( t_bubbleLeftSideX + 10, t_bubbleY + 120, "Toggle Inf. Meter" );
                            */
                            
                            draw_debug_text( t_bubbleLeftSideX, t_bubbleY + 70, "Moveset" );
                            draw_debug_text( t_bubbleLeftSideX + 10, t_bubbleY + 110, "Toggle Inf. Meter" );
                            draw_debug_text( t_bubbleLeftSideX - 10, t_bubbleY + 70 + (40 *  1), ">" );
                            
                        break;
                        default:
                        /*
                            draw_debug_text( t_bubbleLeftSideX, t_bubbleY + 60, "Moveset" );
                            draw_debug_text( t_bubbleLeftSideX, t_bubbleY + 80, "Tutorial" );
                            draw_debug_text( t_bubbleLeftSideX, t_bubbleY + 100, "Patch Notes" );
                            draw_debug_text( t_bubbleLeftSideX, t_bubbleY + 120, "Toggle Inf. Meter" );
                            */
                        break;
                    }
                    //draw_debug_text( t_bubbleLeftSideX - 10, t_bubbleY + 60 + (20 *  tutSelectedMenuIndex), ">" );
                }
                
                #endregion
            }
        break;
    }
}


//Hugging Animation. Draw the other player's sprite and Amber's own sprite (we draw Amber's sprite here due to team outline inconsistencies)
if (attack == AT_EXTRA_3)
{
    if (amberHugState > 2)
    {
        /*
        //Draw team outline around them if on same team. A heart!
        if (targetPlayerHugID.url == CH_ORI)
        {
            if (get_player_team(player) == get_player_team(targetPlayerHugID.player))
            {
                if (get_player_team(player) == 1)
                    draw_sprite_ext( sprite_get("heart_team_outline"), 0, x + (6 * spr_dir),y, 2, 2, 0, teamRedColor, 1);
                else
                    draw_sprite_ext( sprite_get("heart_team_outline"), 0, x + (6 * spr_dir),y, 2, 2, 0, teamBlueColor, 1);
            }
        }
        */
        if (targetPlayerHugID.oPlayerHugAmberSpriteLayer == 0)
        {
            with (targetPlayerHugID)
            {
                shader_start();
                draw_sprite_ext( oPlayerHugAmberSprite, oPlayerHugAmberIndex, oPlayerAmberID.x,oPlayerAmberID.y, oPlayerAmberID.spr_dir, 1, 0, c_white, 1);
                shader_end();
            }
            shader_start();
            draw_sprite_ext( amberHugSprite, image_index, x,y, spr_dir, 1, 0, c_white, 1);
            shader_end();
        }
        else if (targetPlayerHugID.oPlayerHugAmberSpriteLayer == 1)
        {
            shader_start();
            draw_sprite_ext( amberHugSprite, image_index, x,y, spr_dir, 1, 0, c_white, 1);
            shader_end();
            with (targetPlayerHugID)
            {
                shader_start();
                draw_sprite_ext( oPlayerHugAmberSprite, oPlayerHugAmberIndex, oPlayerAmberID.x,oPlayerAmberID.y, oPlayerAmberID.spr_dir, 1, 0, c_white, 1);
                shader_end();
            }
        }
    }
}
