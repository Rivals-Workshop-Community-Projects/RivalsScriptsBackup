//enemy_hitboxID 

//When getting hit while charged or while in charged state, Amber takes extra damage
//and knockback while in hitstun. The penalty is removed once no longer in hitstun.
//Amber also loses the charged/charging status when hit
//Don't call the getting hit if we got hit by our own yarn ball
if (enemy_hitboxID != yarnBallObject)
{
    
    if (isCharging == true || isCharged == true)
    {
        if (isChargePunished == false)
        {
            //isCharging = false;
            //isCharged = false;
            
            //Lose the charge state when we get hit while using Empowered(charged) moves
            if (attack == AT_USPECIAL_2 || attack == AT_DSPECIAL_2 || (attack == AT_FSPECIAL && shurikatChargeLevel == 5)
                || (attack == AT_DSPECIAL && yarnDashSpeed >= 30))
                {
                    isCharged = false;
                }
            
            isChargePunished = true;
            
            //currentChargeTime = 0 + (runeB * 50);
            
            //enemy_hitboxID.damage = enemy_hitboxID.damage * 2;
            //take_damage( player, -1, enemy_hitboxID.damage);
            //orig_knock *= 2;
            
            if (totalDamageDealt > 0)
            {
                //totalDamageDealt = 0;
                var calculatedEnemyDamage = (enemy_hitboxID.damage * (1 + (enemy_hitboxID.player_id.strong_charge * 0.01)));
                if (totalDamageDealt > calculatedEnemyDamage * 1.5)
                    totalDamageDealt -= calculatedEnemyDamage * 1.5;
                else 
                    totalDamageDealt = 0;
                
                if (totalDamageDealt <= 0)
                {
                    //sound_play(asset_get("sfx_ori_energyhit_medium"));
                    sound_play(asset_get("sfx_clairen_fspecial_slash"), false, false, 0.8, 0.95);
                    spawn_hit_fx( x, y - 15, 127 );
                    totalDamageDealt = 0;
                }
            }
            
            //sound_play(asset_get("sfx_blow_heavy1"));
            //sound_play(asset_get("sfx_ori_spirit_flame_hit_1"));
            //sound_play(asset_get("sfx_shovel_hit_med1"));
            
            //
            
            //Stop any existing charge sounds if they were playing
            sound_stop(asset_get( "sfx_ori_bash_hit" ));
            sound_stop( asset_get( "sfx_ori_charged_flame_charge2" ) );
            
            //Add extra hitstun on the very first hit to let both players know that
            //there is Charge Punish
            //if (enemy_hitboxID.hitpause < 32)
            //hitstop += enemy_hitboxID.hitpause;
            //hit_player_obj.hitstop += enemy_hitboxID.hitpause;
        }
    }
    else if (totalDamageDealt > 0 && !isChargePunished)
    {
        //totalDamageDealt = 0;
        /*
        var calculatedEnemyDamage = (enemy_hitboxID.damage * (1 + (enemy_hitboxID.player_id.strong_charge * 0.01)));
        if (totalDamageDealt > calculatedEnemyDamage)
            totalDamageDealt -= calculatedEnemyDamage * 0.25;
        else 
            totalDamageDealt = 0;
          */  
        /*
        if (totalDamageDealt <= 0)
        {
            //sound_play(asset_get("sfx_ori_energyhit_medium"));
            sound_play(asset_get("sfx_clairen_fspecial_slash"), false, false, 0.8, 0.95);
            spawn_hit_fx( x, y - 15, 127 );
            totalDamageDealt = 0;
        }
        
    }
    
    if (isChargePunished == true)
    {
        //enemy_hitboxID.damage = enemy_hitboxID.damage * 2;
        //sound_play(asset_get("sfx_blow_heavy1"));
        //sound_play(asset_get("sfx_ori_spirit_flame_hit_1"));
        //Take extra damage and knockback
        /*
        var calculatedDamage = (enemy_hitboxID.damage * (1 + (hit_player_obj.strong_charge * 0.01))) * 0.25 * !(runeC);
        take_damage( player, -1, floor(calculatedDamage));
        
        //Apply remaining decimal damage to the player
        playerDecimalDamage += (calculatedDamage % 1);
        if (playerDecimalDamage >= 1)
        {
            take_damage( player, hit_player_obj.player, playerDecimalDamage - (playerDecimalDamage % 1) );
            playerDecimalDamage -= playerDecimalDamage - (playerDecimalDamage % 1);
        }
        */
        var previousMeterValue = totalDamageDealt;
        
        calculatedEnemyDamage = (enemy_hitboxID.damage * (1 + (enemy_hitboxID.player_id.strong_charge * 0.01)));
        
        if (totalDamageDealt > calculatedEnemyDamage * 0.25)
            totalDamageDealt -= calculatedEnemyDamage * 0.25;
        else 
            totalDamageDealt = 0;
        
        //Lose additional meter when full meter
        if (totalDamageDealt < totalDamageDealtCap && previousMeterValue >= totalDamageDealtCap)
        {
            //sound_play(asset_get("sfx_ori_energyhit_heavy"));
            //sound_play(asset_get("sfx_clairen_fspecial_slash"), false, false, 0.5, 1);
            //spawn_hit_fx( x, y - 15, 127 );
            
            if (totalDamageDealt > calculatedEnemyDamage * 1.5)
                totalDamageDealt -= calculatedEnemyDamage * 1.5;
            else 
                totalDamageDealt = 0;
        }
        else if (totalDamageDealt <= 0 && previousMeterValue > 0)
        {
            //sound_play(asset_get("sfx_ori_energyhit_heavy"));
            //sound_play(asset_get("sfx_clairen_fspecial_slash"));
            //spawn_hit_fx( x, y - 15, 127 );
            totalDamageDealt = 0;
        }
        
        //orig_knock *= 1.25;
    }
    
    //Lose the Unleash Power (charge attack ready) state if we got hit while in this state
    if (chargeAttackReady == true && state_cat == SC_HITSTUN)
    {
        chargeAttackReady = false;
        chargeAttackReadyTimer = chargeAttackReadyLength;
        isCharged = false;
        empoweredCooldownTimer = empoweredCooldownLength;
        sound_play(asset_get("sfx_clairen_fspecial_slash"));
        spawn_hit_fx( x, y - 15, 127 );
    }
    
    if (smokeBombInvisState == true)
    {
        isChargePunished = true;
        sound_play(asset_get("sfx_ori_energyhit_heavy"));
        sound_play(asset_get("sfx_clairen_fspecial_slash"));
        spawn_hit_fx( x, y - 15, 127 );
        totalDamageDealt = 0;
        /*
        var calculatedDamage = (enemy_hitboxID.damage * (1 + (hit_player_obj.strong_charge * 0.01))) * 1.5;
        take_damage( player, -1, floor(calculatedDamage));
        
        //Apply remaining decimal damage to the player
        playerDecimalDamage += (calculatedDamage % 1);
        if (playerDecimalDamage >= 1)
        {
            take_damage( player, hit_player_obj.player, playerDecimalDamage - (playerDecimalDamage % 1) );
            playerDecimalDamage -= playerDecimalDamage - (playerDecimalDamage % 1);
        }
        */
        //Reappear
        visible = true;
        smokeBombCooldownHudRange = smokeBombCooldownTimer;
        smokeBombInvisState = false;
    }
    
    //Reset players to default hug state (not hugging) if they get hit
    with (targetPlayerHugID)
    {
        if (oPlayerHugAmberState != 0)
        {
            oPlayerHugAmberState = 0;
            visible = true;
            state = PS_IDLE;
        }
    }
    amberHugState = 0;
    
    if (char_height != originCharHeight)
        char_height = originCharHeight;
}