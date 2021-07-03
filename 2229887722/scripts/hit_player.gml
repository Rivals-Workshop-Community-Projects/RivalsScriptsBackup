//hit_player

//If the enemy's damage was back at 0 through training reset damage
//reset their decimal damage as well
/*
if (get_player_damage( hit_player_obj.player ) == 0)
{
    hit_player_obj.enemyDecimalDamage = 0;
}
*/

if (pacifistModeEnabled)
{
    print_debug(string(hit_player_obj.last_player_hit_me));
    hit_player_obj.last_player_hit_me = 0;
}

if (instance_exists(yarnTieArticle))
{
    hit_player_obj.enemyIsYarnDizzy = false;
    instance_destroy(yarnTieArticle);
}

//if (!(my_hitboxID.attack == AT_DSPECIAL && my_hitboxID.hbox_num == 1))
  //  miniBoostMeterTargetAlpha = 6;

//Damage boost passive
if (isCharged == true && chargeAttackReady == false)
{
    addDamageBoost(1);
}
else
{
    addDamageBoost(0.5);
}
if (my_hitboxID.attack == AT_DSTRONG)
{
    if (my_hitboxID.hbox_num != 1 && my_hitboxID.hbox_num != 10 )
        hit_player_obj.enemyHitByDStrong = true;
    
    if (my_hitboxID.hbox_num != 9)
        hit_player_obj.should_make_shockwave = false;
    
    if (my_hitboxID.hbox_num == 3 || my_hitboxID.hbox_num == 7)
    {
        if (hit_player_obj.url != 1928599994)
        {
            hit_player_obj.x = x + (32 * spr_dir);
            hit_player_obj.y = y;
        }
        sound_play( asset_get("sfx_blow_medium2") );
    }
    
    if (my_hitboxID.hbox_num == 5)
    {
        if (hit_player_obj.url != 1928599994)
        {
            hit_player_obj.x = x - (32 * spr_dir);
            hit_player_obj.y = y;
        }
        sound_play( asset_get("sfx_blow_medium2") );
    }
    
    if (my_hitboxID.hbox_num == 9)
    {
        hit_player_obj.enemyHitByDStrong = false;
        sound_play( asset_get("sfx_blow_heavy1") );
        sound_play( asset_get("sfx_blow_heavy2") );
    }
}

if (my_hitboxID.attack == AT_FSTRONG_2)
{
    sound_play( asset_get("sfx_blow_medium2") );
    sound_play( asset_get("sfx_blow_heavy1") );
    //set_hitbox_value(AT_FSTRONG, 1, HG_HIT_SFX, asset_get("sfx_blow_heavy1"));
}

if (my_hitboxID.attack == AT_USTRONG)
{
    if (my_hitboxID.hbox_num == 1)
    {
        if (hit_player_obj.url != 1928599994 && hit_player_obj.state_cat == SC_HITSTUN)
        {
            hit_player_obj.x = x;
            hit_player_obj.y = y + 30;
        }
    }
    
    if (my_hitboxID.hbox_num == 4)
    {
        sound_play( asset_get("sfx_blow_medium2") );
        sound_play( asset_get("sfx_blow_heavy1") );
        sound_play( asset_get("sfx_burnconsume") );
        
        sound_play(asset_get("sfx_boss_fireball_land"));
        sound_play(asset_get("sfx_clairen_fspecial_slash"));
        
        sound_play(asset_get("sfx_ori_energyhit_heavy"));
        sound_play(asset_get("sfx_ori_energyhit_medium"));
        sound_play( sound_get("dsfx_med_star") );
        
        if (strong_charge == 60)
        {
            //sound_play( sound_get("dsfx_med_star") );
            sound_play( sound_get("dsfx_emp_hit") );
            spawnFullChargeHitFX();
            //sound_play(asset_get("sfx_abyss_explosion"));
        }
    }
}

//Lower the horizontal DI rate for the enemy when hit by Up Special (Launcher Claw)
//Also half the player's hsp upon hit so that they don't fly right past the enemy
//if they rushed towards them
if (my_hitboxID.attack == AT_USPECIAL)
{
    old_hsp *= 0.5;
    //hit_player_obj.old_hsp *= 0.25;
    if (my_hitboxID.hbox_num == 2)
        old_vsp = -8.5; //Used to prevent Amber from reaching above low platforms to help her follow up with combos (was 0.85)
    else
        old_vsp = -10;
}

//When using Up Special 2 (Super Launcher Claw), disable the purple screen effect
//during the multi hit process
if (my_hitboxID.attack == AT_USPECIAL_2)
{
    if (my_hitboxID.hbox_num == 1)
    {
        if (totalDamageDealtPrevious == totalDamageDealtCap)
        {
            speedlinesEnable = true;
            sound_play( sound_get("dsfx_med_star"), false, false, 1, 1.2 );
            sound_play( sound_get("dsfx_med_star"), false, false, 1, 1 );
        }
        else
            sound_play( sound_get("dsfx_med_star"), false, false, 1, 1.1 );
        //Drag the enemy near Amber. But not bosses specifically and only if they're in hitstun
        if (hit_player_obj.url != 1928599994 && hit_player_obj.state_cat == SC_HITSTUN)
        {
            hit_player_obj.x = x + (20 * spr_dir);
            hit_player_obj.y = y + -25;
        }
        
        sound_play(asset_get("sfx_ori_spirit_flame_hit_1"));
        //sound_play( asset_get("sfx_ori_grenade_hit_ground") );
        //sound_play( asset_get("sfx_ori_energyhit_medium"), false, false, 1, 1.1 );
        //sound_play( asset_get("sfx_absa_kickhit") );
        
        if (old_vsp < -15)
            old_vsp = -23;
        else
            old_vsp = -20;
    }
    
    if (my_hitboxID.hbox_num >= 2 && my_hitboxID.hbox_num <= 5 || my_hitboxID.hbox_num >= 8)
    {
        if (hit_player_obj.url != 1928599994 && hit_player_obj.state_cat == SC_HITSTUN)
            hit_player_obj.y = y + -25;
        hit_player_obj.should_make_shockwave = false;
        //sound_play(asset_get("sfx_ori_spirit_flame_hit_1"));
        //sound_play( asset_get("sfx_blow_heavy2") );
        //set_hitbox_value(AT_USPECIAL_2, 7, HG_BASE_HITPAUSE, 65);
    }
    
    //Lower the horizontal DI rate for the enemy when hit by Finisher 1 (Special not held down)
    if (my_hitboxID.hbox_num == 6)
    {
        //hit_player_obj.old_vsp = -8;
        //hit_player_obj.old_hsp = 0;
        //can_fastfall = true;
        //if (down_down)
          //  vsp = 4;
        //hit_player_obj.grav = gravity_speed;
        if (totalDamageDealtPrevious >= totalDamageDealtCap && hit_player_obj.state_cat == SC_HITSTUN )
        {
            sound_play( asset_get("sfx_burnconsume") );
            sound_play(asset_get("sfx_ori_energyhit_medium"));
            sound_play( asset_get("sfx_ell_dspecial_explosion_3") );
            
            //sound_play( asset_get("sfx_absa_kickhit") );
            totalDamageDealt = 0;
        }
        /*
        else if (totalDamageDealt >= 25 && hit_player_obj.state_cat == SC_HITSTUN )
        {
            //sound_play( asset_get("sfx_burnconsume") );
            sound_play(asset_get("sfx_ori_energyhit_medium"));
            sound_play( asset_get("sfx_ell_dspecial_explosion_3") );
            
        }
        */
        //take_damage( hit_player_obj.player, player, floor(totalDamageDealt * damageMultiplier) );
        
        
    }
    if (my_hitboxID.hbox_num == 7)
    {
        //hit_player_obj.old_vsp = vsp;
        //hit_player_obj.old_hsp *= 0.25;
        //can_fastfall
        //hit_player_obj.grav = gravity_speed;
        
            
        if (totalDamageDealtPrevious >= totalDamageDealtCap && hit_player_obj.state_cat == SC_HITSTUN )
        {
            //sound_play( asset_get("sfx_burnconsume") );
            sound_play( asset_get("sfx_ell_dspecial_explosion_3") );
            sound_play(asset_get("sfx_ori_energyhit_heavy"));
            sound_play(asset_get("sfx_ori_energyhit_medium"));
            //sound_play(asset_get("sfx_abyss_explosion_start"), false, false, 1.5, 1);
            sound_play(asset_get("sfx_abyss_explosion"), false, false, 1, 1);
            //sound_play(asset_get("sfx_clairen_fspecial_slash"));
            //sound_play( asset_get("sfx_absa_kickhit") );
            sound_play( sound_get("dsfx_emp_hit") );
            sound_play( sound_get("dsfx_med_star"), false, false, 1, 1.2 );
            
            sound_play( asset_get("sfx_blow_medium2") );
            sound_play( asset_get("sfx_blow_heavy1") );
            //hitpause = true;
            //hitstop += 45;
            //hit_player_obj.hitstop += 45;
            //forceExtendedHitPause = true;
            spawnFullBoostHitFX();
            totalDamageDealt = 0;
        }
        /*
        else if (totalDamageDealt >= (totalDamageDealtCap * 0.5) && hit_player_obj.state_cat == SC_HITSTUN )
        {
            sound_play( asset_get("sfx_burnconsume") );
            //sound_play( asset_get("sfx_ell_dspecial_explosion_3") );
            sound_play(asset_get("sfx_ori_energyhit_heavy"));
            sound_play( asset_get("sfx_blow_medium2") );
            sound_play( asset_get("sfx_blow_heavy1") );
        }
        */
        else
        {
            sound_play( sound_get("dsfx_med_star"), false, false, 1, 1 );
            sound_play(asset_get("sfx_ori_energyhit_heavy"));
            sound_play( asset_get("sfx_blow_heavy1") );
        }
        
        //take_damage( hit_player_obj.player, player, floor(totalDamageDealt * damageMultiplier) );
        //hit_player_obj.orig_knock += (knockbackMultiplier * totalDamageDealt)
        
    }
}


if (my_hitboxID.attack == AT_JAB)
{
    if (my_hitboxID.hbox_num == 2 || my_hitboxID.hbox_num == 3)
    {
        hit_player_obj.should_make_shockwave = false;
        
        //To keep the window sfx consistent, jump 1 frame of the window
        //if the enemy is in hitpause upon hit
        if (hit_player_obj.hitpause)
            window_timer++;
    }
}

if (my_hitboxID.attack == AT_DATTACK)
{
    //There is a bug where Amber does not bounce back if she hits the enemy
    //near the ledge. Stop her hsp so she doesn't touch the ledge then
    //bounce her back via the second hitbox hit
    if (my_hitboxID.hbox_num == 1)
    {
        //x -= (12 * spr_dir);
        old_hsp = 0;
    }
    if (my_hitboxID.hbox_num == 2)
    {
        old_hsp = -6 * spr_dir;
    }
}

if (my_hitboxID.attack == AT_FAIR)
{
    //Apply some vertical boost to allow the player to chain the hits in the air
    if (my_hitboxID.hbox_num < 5)
    {
        //The first hit doesn't register the timer properly on hit. Manually apply it here.
        //Mixing Fair and Ftilt sometimes doesn't register the hit timer properly. Also apply it here.
        clawComboTimer = clawComboHasHitTimerLength;
        
        //Alow the player to move down upon hit or get the boosted vertical speed
        //The player gets slightly less vertical boost when there is input for moving forward
        //and a bit more vertical boost when moving backwards
        
        if (down_down)
            old_vsp = 4;
        else if (up_down && !left_down && !right_down) //directly up
            old_vsp = -8;
        else if (spr_dir == 1 && right_down && up_down || spr_dir == -1 && left_down && up_down) //forward up
            old_vsp = -6;
        else if (spr_dir == 1 && right_down || spr_dir == -1 && left_down) //forward
            old_vsp = -3;
        else
        {
            old_vsp = -4;
        }
        
        //old_vsp += -2;
        if (my_hitboxID.hbox_num < 4)
        {
            //Alow the player to go further or shorter range, or backwards, based on directional input
            //this is to allow the player to follow the enemy's DI to consistently land attacks, if they
            //can read their DI properly
            
            if (spr_dir == 1 && right_down || spr_dir == -1 && left_down)
                old_hsp *= 0.9;
            else if (spr_dir == -1 && right_down || spr_dir == 1 && left_down)
                old_hsp *= -0.75;
            else
                old_hsp *= 0.45;
                
            //hit_player_obj.old_hsp += 5 * spr_dir * get_hitbox_value( AT_FAIR, my_hitboxID.hbox_num, HG_BASE_KNOCKBACK );
            //hit_player_obj.old_hsp = hsp * 0.8;
            
            //Apply gravity change on the enemy if they're in the air
            //Make their gravity the same as Amber's
            if (hit_player_obj.state_cat == SC_AIR_NEUTRAL ||
            hit_player_obj.state_cat == SC_AIR_COMMITTED ||
            hit_player_obj.state == PS_HITSTUN)
            {
                //hit_player_obj.old_vsp = -10;
                //hit_player_obj.grav = gravity_speed;
            }
        }
    }
    else if (my_hitboxID.hbox_num == 6) //Let the player know they landed a stronger fair hitbox with an extra sfx (works on grounded enemies)
    {
        sound_play( asset_get("sfx_blow_medium2") );
        sound_play( asset_get("sfx_blow_heavy1") );
    }
    
}

if (my_hitboxID.attack == AT_FTILT)
{
    //The first hit doesn't register the timer properly on hit. Manually apply it here.
    //Mixing Fair and Ftilt sometimes doesn't register the hit timer properly. Also apply it here.
    clawComboTimer = clawComboHasHitTimerLength;
    
    //There is a bug where the enemy's horizontal knockback does not launch
    //them when standing near the ledge of floating platforms, hover them a bit
    if (my_hitboxID.hbox_num >= 4)
    {
        if (hit_player_obj.url != 1928599994)
        {
            //hit_player_obj.x = x;
            if (hit_player_obj.free == false)
                hit_player_obj.y += 2;
        }
    }
}



if (my_hitboxID.attack == AT_BAIR)
{
    //If we landed the sweet spot hitbox
    if (my_hitboxID.hbox_num == 1 || my_hitboxID.hbox_num == 3)
    {
        //sound_play( asset_get("sfx_ori_grenade_hit_ground") );
        
        //sound_play( asset_get("sfx_ori_charged_flame_hit") );
        //sound_play( asset_get("sfx_ori_energyhit_medium") );
        
        //sound_play( asset_get("sfx_ori_energyhit_heavy") );
    }
    if (!down_hard_pressed)
        old_vsp = -4;
    
}

if (my_hitboxID.attack == AT_FSPECIAL)
{
    //Disable pratfall if we hit the enemy
    set_window_value(AT_FSPECIAL, 6, AG_WINDOW_TYPE, 1);
    set_window_value(AT_FSPECIAL, 9, AG_WINDOW_TYPE, 1);
    
    if (my_hitboxID.hbox_num == 1 || my_hitboxID.hbox_num == 4)
    {
        //Drag the enemy in front of Amber, but not bosses
        if (hit_player_obj.url != 1928599994 && hit_player_obj.state_cat == SC_HITSTUN)
        {
            hit_player_obj.x = x + (30 * spr_dir);
            hit_player_obj.y = y;
        }
        hit_player_obj.should_make_shockwave = false;
        shurikatCanCrit = false;
        if (shurikatChargeLevel == 5)
        {
            if (totalDamageDealtPrevious == totalDamageDealtCap)
                speedlinesEnable = true;
            sound_play(sound_get("amber_magic_hit_medium1"), false, false, 0.5, 1.3);
            //sound_play( asset_get("sfx_ori_grenade_hit_ground") );
            if (my_hitboxID.hbox_num == 4)
            {
                superShurikatHitChargedTotalDamage = totalDamageDealtPrevious;
                
                //sound_play( asset_get("sfx_ori_energyhit_heavy") );
                //sound_play( asset_get("sfx_absa_kickhit") );
                spawn_hit_fx(hit_player_obj.x, hit_player_obj.y - (char_height * 0.5) - 16, 197);
                //Increase finisher damage
                if (totalDamageDealtPrevious == totalDamageDealtCap)
                    set_hitbox_value(AT_FSPECIAL, 2, HG_DAMAGE, 10); //Modified from attack_update. Ranges from 5-10, based on charge length
                else
                    set_hitbox_value(AT_FSPECIAL, 2, HG_DAMAGE, 6); //Modified from attack_update. Ranges from 5-10, based on charge length
            }
        }
        else if (shurikatChargeLevel == 4)
        {
            if (my_hitboxID.hbox_num == 4)
            {
                //sound_play( asset_get("sfx_ori_energyhit_heavy") );
                //sound_play( asset_get("sfx_absa_kickhit") );
                spawn_hit_fx(hit_player_obj.x, hit_player_obj.y - (char_height * 0.5) - 16, 197);
                speedlinesEnable = true;
                set_window_value(AT_FSPECIAL, 4, AG_WINDOW_CUSTOM_GRAVITY, 0.3);
                shurikatLoopCount = 10;
                
                //Adjust finisher damage
                set_hitbox_value(AT_FSPECIAL, 2, HG_DAMAGE, 3); //Modified from attack_update. Ranges from 5-10, based on charge length
            }
        }
        else if (my_hitboxID.hbox_num == 4 && shurikatChargeLevel < 5)
        {
            //sound_play( asset_get("sfx_ori_energyhit_medium") );
            //sound_play( asset_get("sfx_absa_kickhit") );
            spawn_hit_fx(hit_player_obj.x, hit_player_obj.y - (char_height * 0.5) - 16, 305);
        }
        
        //Lunge/first hitbox
        if (my_hitboxID.hbox_num == 4)
        {
            shurikatHitFirstHitbox = true;
            
            switch (shurikatChargeLevel)
            {
                case 5:
                    set_hitbox_value(AT_FSPECIAL, 2, HG_BASE_KNOCKBACK, 8);
                    if (totalDamageDealtPrevious >= totalDamageDealtCap)
                        set_hitbox_value(AT_FSPECIAL, 2, HG_KNOCKBACK_SCALING, 1.3);
                    else
                        set_hitbox_value(AT_FSPECIAL, 2, HG_KNOCKBACK_SCALING, 1);
                    
                    set_hitbox_value(AT_FSPECIAL, 2, HG_BASE_HITPAUSE, 22);
                    set_hitbox_value(AT_FSPECIAL, 2, HG_HITPAUSE_SCALING, 2);
                break;
                case 4:
                    set_hitbox_value(AT_FSPECIAL, 2, HG_BASE_KNOCKBACK, 8);
                    set_hitbox_value(AT_FSPECIAL, 2, HG_KNOCKBACK_SCALING, 1.3);
                    set_hitbox_value(AT_FSPECIAL, 2, HG_BASE_HITPAUSE, 22);
                    set_hitbox_value(AT_FSPECIAL, 2, HG_HITPAUSE_SCALING, 2);
                break;
                /*
                case 3:
                    set_hitbox_value(AT_FSPECIAL, 2, HG_BASE_KNOCKBACK, 8);
                    set_hitbox_value(AT_FSPECIAL, 2, HG_KNOCKBACK_SCALING, 1.1);
                    set_hitbox_value(AT_FSPECIAL, 2, HG_BASE_HITPAUSE, 10);
                    set_hitbox_value(AT_FSPECIAL, 2, HG_HITPAUSE_SCALING, 2);
                break;
                case 2:
                    set_hitbox_value(AT_FSPECIAL, 2, HG_BASE_KNOCKBACK, 8);
                    set_hitbox_value(AT_FSPECIAL, 2, HG_KNOCKBACK_SCALING, 1.05);
                    set_hitbox_value(AT_FSPECIAL, 2, HG_BASE_HITPAUSE, 10);
                    set_hitbox_value(AT_FSPECIAL, 2, HG_HITPAUSE_SCALING, 2);
                break;
                case 1:
                    set_hitbox_value(AT_FSPECIAL, 2, HG_BASE_KNOCKBACK, 8);
                    set_hitbox_value(AT_FSPECIAL, 2, HG_KNOCKBACK_SCALING, 1);
                    set_hitbox_value(AT_FSPECIAL, 2, HG_BASE_HITPAUSE, 10);
                    set_hitbox_value(AT_FSPECIAL, 2, HG_HITPAUSE_SCALING, 2);
                break;
                */
            }
        }
    }
    else if (my_hitboxID.hbox_num == 2) //finisher hitbox
    {
        switch (shurikatChargeLevel)
        {
            case 5:
                sound_play(asset_get("sfx_ori_spirit_flame_hit_1"));
                if (superShurikatHitChargedTotalDamage >= totalDamageDealtCap)
                {
                    //sound_play( asset_get("sfx_burnconsume") );
                    //sound_play(asset_get("sfx_ori_energyhit_medium"));
                    sound_play( asset_get("sfx_ell_dspecial_explosion_3") );
                    sound_play( asset_get("sfx_blow_medium2") );
                    sound_play( asset_get("sfx_blow_heavy1") );
                    
                    if (shurikatHitFirstHitbox == true)
                    {
                        //sound_play(asset_get("sfx_ori_energyhit_heavy"));
                        sound_play(asset_get("sfx_abyss_explosion_start"), false, false, 1, 1);
                        sound_play(asset_get("sfx_abyss_explosion"), false, false, 1.2, 1);
                        //sound_play( sound_get("dsfx_heavy"), false, false, 1, 1.5);
                        //sound_play(asset_get("sfx_boss_fireball_land"));
                        sound_play(asset_get("sfx_clairen_fspecial_slash"));
                        //sound_play( asset_get("sfx_absa_kickhit") );
                        sound_play( sound_get("dsfx_med_star"), false, false, 1, 1.2 );
                        sound_play( sound_get("dsfx_emp_hit") );
                        
                        sound_play( asset_get("sfx_ell_dspecial_explosion_3") );
                        sound_play(asset_get("sfx_boss_fireball_land"));
                        
                        spawnFullBoostHitFX();
                    }
                    totalDamageDealt = 0;
                }
                else
                {
                    sound_play( asset_get("sfx_burnconsume") );
                    //sound_play(asset_get("sfx_ori_energyhit_medium"));
                    sound_play( asset_get("sfx_ell_dspecial_explosion_3") );
                    
                    if (shurikatHitFirstHitbox == true)
                    {
                        //sound_play(asset_get("sfx_ori_energyhit_heavy"));
                        sound_play(asset_get("sfx_boss_fireball_land"));
                        sound_play(asset_get("sfx_clairen_fspecial_slash"));
                        sound_play( sound_get("dsfx_heavy"), false, false, 1, 1.2);
                        //sound_play( asset_get("sfx_blow_medium2") );
                        //sound_play( asset_get("sfx_blow_heavy1") );
                    }
                }
                
                
            break;
            case 4:
                if (shurikatHitFirstHitbox == true)
                {
                    sound_play( asset_get("sfx_burnconsume") );
                    sound_play(asset_get("sfx_abyss_explosion_start"), false, false, 1.5, 1);
                    //sound_play( sound_get("dsfx_heavy"), false, false, 1, 1);
                    //sound_play( sound_get("dsfx_med_star") );
                    sound_play( sound_get("dsfx_emp_hit"), false, false, 1.5, 1 );
                    //sound_play(asset_get("sfx_ori_energyhit_heavy"));
                    //sound_play(asset_get("sfx_ori_energyhit_medium"));
                    //sound_play(asset_get("sfx_clairen_fspecial_slash"));
                    sound_play( asset_get("sfx_ell_dspecial_explosion_3") );
                    sound_play( asset_get("sfx_blow_medium2") );
                    sound_play( asset_get("sfx_blow_heavy1") );
                    
                    //spawn_hit_fx(hit_player_obj.x, hit_player_obj.y - (char_height * 0.5) - 16, 127);
                    spawnFullChargeHitFX();
                }
            break;
            case 3:
                if (shurikatHitFirstHitbox == true)
                {
                    sound_play( asset_get("sfx_burnconsume") );
                    sound_play( sound_get("dsfx_heavy"), false, false, 1, 1.25);
                    sound_play( sound_get("dsfx_med_star") );
                    //sound_play(asset_get("sfx_ori_energyhit_heavy"));
                    //sound_play(asset_get("sfx_ori_energyhit_medium"));
                    //sound_play( asset_get("sfx_absa_kickhit") );
                    //sound_play( asset_get("sfx_ell_dspecial_explosion_3") );
                    //sound_play( asset_get("sfx_blow_medium2") );
                    //sound_play( asset_get("sfx_blow_heavy1") );
                }
            break;
            case 2:
                if (shurikatHitFirstHitbox == true)
                {
                    //sound_play( asset_get("sfx_burnconsume") );
                    //sound_play(asset_get("sfx_ori_energyhit_medium"));
                    //sound_play(asset_get("sfx_ori_energyhit_heavy"));
                    //sound_play( asset_get("sfx_absa_kickhit") );
                    //sound_play( asset_get("sfx_blow_medium2") );
                    //sound_play( asset_get("sfx_blow_heavy1") );
                }
            break;
            case 1:
                if (shurikatHitFirstHitbox == true)
                {
                    //sound_play( asset_get("sfx_burnconsume") );
                    //sound_play( asset_get("sfx_absa_kickhit") );
                    //sound_play(asset_get("sfx_ori_energyhit_medium"));
                    //sound_play(asset_get("sfx_ori_energyhit_heavy"));
                    //sound_play( asset_get("sfx_blow_medium2") );
                    //sound_play( asset_get("sfx_blow_heavy1") );
                }
            break;
        }
        move_cooldown[AT_FSPECIAL] = 30;
    }
    else if (my_hitboxID.hbox_num == 3) //critical hit
    {
        switch (shurikatChargeLevel)
        {
            case 5:
                if (totalDamageDealtPrevious >= totalDamageDealtCap)
                {
                    sound_play( asset_get("sfx_blow_medium2") );
                    sound_play( asset_get("sfx_blow_heavy1") );
                    //sound_play( asset_get("sfx_burnconsume") );
                    //sound_play(asset_get("sfx_ori_energyhit_heavy"));
                    sound_play(asset_get("sfx_abyss_explosion_start"));
                    sound_play(asset_get("sfx_abyss_explosion"), false, false, 1, 1);
                    sound_play( asset_get("sfx_ell_dspecial_explosion_3") );
                    //sound_play(asset_get("sfx_boss_fireball_land"));
                    //sound_play(asset_get("sfx_clairen_fspecial_slash"), false, false, 0.75, 1);
                    sound_play( sound_get("dsfx_med_star"), false, false, 1, 1.2 );
                    sound_play( sound_get("dsfx_heavy"), false, false, 1, 1.5);
                    sound_play( sound_get("dsfx_emp_hit") );
                    
                    spawnFullBoostHitFX();
                    totalDamageDealt = 0;
                }
                /*
                else if (totalDamageDealt >= (totalDamageDealtCap * 0.5))
                {
                    sound_play( asset_get("sfx_blow_medium2") );
                    sound_play( asset_get("sfx_blow_heavy1") );
                    sound_play( asset_get("sfx_burnconsume") );
                    sound_play(asset_get("sfx_ori_energyhit_heavy"));
                    sound_play(asset_get("sfx_abyss_explosion_start"));
                    sound_play(asset_get("sfx_boss_fireball_land"));
                }
                */
                else
                {
                    sound_play( sound_get("dsfx_med_star"), false, false, 1, 1 );
                    //sound_play( sound_get("dsfx_emp_hit"), false, false, 1.5, 1 );
                    //sound_play( asset_get("sfx_blow_medium2") );
                    //sound_play( asset_get("sfx_blow_heavy1") );
                    sound_play( asset_get("sfx_burnconsume") );
                    //sound_play(asset_get("sfx_ori_energyhit_heavy"));
                    //sound_play(sound_get("medium_Edit"), false, false, 2, 1);
                    
                    //sound_play(asset_get("sfx_may_arc_cointoss"));
                }
                
                
            break;
            case 4:
                //sound_play( asset_get("sfx_blow_medium2") );
                //sound_play( asset_get("sfx_blow_heavy1") );
                sound_play( asset_get("sfx_burnconsume") );
                //sound_play(asset_get("sfx_abyss_explosion"), false, false, 1, 1);
                //sound_play( sound_get("dsfx_med_star"), false, false, 1, 1.1 );
                sound_play( sound_get("dsfx_emp_hit"), false, false, 1.5, 1 );
                //sound_play(asset_get("sfx_ori_energyhit_heavy"));
                //sound_play(asset_get("sfx_abyss_explosion_start"));
                sound_play(asset_get("sfx_boss_fireball_land"));
                spawnFullChargeHitFX();
            break;
            case 3:
                //sound_play( asset_get("sfx_blow_medium2") );
                //sound_play( asset_get("sfx_blow_heavy1") );
                sound_play( asset_get("sfx_burnconsume") );
                sound_play( sound_get("dsfx_med_star"), false, false, 1, 1.1 );
                //sound_play(asset_get("sfx_ori_energyhit_heavy"));
                //sound_play(asset_get("mfx_coin"));
            break;
            case 2:
                //sound_play( sound_get("dsfx_med_star"), false, false, 1, 1.25 );
                sound_play( sound_get("dsfx_med_star"), false, false, 1, 1.6 );
                //sound_play( asset_get("sfx_blow_medium2") );
                //sound_play( asset_get("sfx_blow_heavy1") );
                //sound_play(asset_get("sfx_ori_energyhit_heavy"));
                //sound_play(asset_get("sfx_ori_energyhit_medium"));
                //sound_play(asset_get("mfx_coin"));
            break;
            case 1:
                sound_play( sound_get("dsfx_med_star"), false, false, 1, 1.5 );
                //sound_play( asset_get("sfx_blow_medium2") );
                //sound_play( asset_get("sfx_blow_heavy1") );
                //sound_play(asset_get("mfx_coin"));
            break;
        }
    }
    
    //Reset total damage dealt
    if (shurikatChargeLevel == 5 && totalDamageDealt >= totalDamageDealtCap)
    {
        totalDamageDealt = 0;
    }
}

if (my_hitboxID.attack == AT_FSTRONG)
{
    //If the dashing hitbox hits, follow up with a fury of attacks
    if (my_hitboxID.hbox_num <= 2)
    {
        window = 5;
        window_timer = 1;
        
        feralBlitzMaxCount = floor(strong_charge / 20);
        
        if (strong_charge == 60)
        {
            speedlinesEnable = true;
            feralBlitzMaxCount += 2;
            set_hitbox_value(AT_FSTRONG, 6, HG_EXTRA_HITPAUSE, 36); 
            
            //set_hitbox_value(AT_FSTRONG, 7, HG_VISUAL_EFFECT, 1   );
        }
        else
        {
            set_hitbox_value(AT_FSTRONG, 6, HG_EXTRA_HITPAUSE, 20); 
        }
    }
    
    //Lock the enemy to stay in front of Amber
    if (my_hitboxID.hbox_num < 7)
    {
        hit_player_obj.should_make_shockwave = false;
        //hit_player_obj.x = x + (25 * spr_dir);
        //hit_player_obj.y = y;
        //sound_play( asset_get("sfx_blow_medium1") );
        //sound_play( asset_get("sfx_ori_spirit_flame_hit_1") );
        //sound_play( asset_get("sfx_blow_weak2") );
        sound_play(asset_get("sfx_ori_energyhit_light"));
    }
    else if (my_hitboxID.hbox_num == 7)
    {
        if (strong_charge == 60 && hit_player_obj.state_cat == SC_HITSTUN )
        {
            sound_play( asset_get("sfx_blow_medium2") );
            sound_play( asset_get("sfx_blow_heavy1") );
            //sound_play(asset_get("sfx_ori_energyhit_heavy"));
            sound_play(asset_get("sfx_burnconsume"),  false, false, 1, 1 );
            //sound_play(asset_get("sfx_abyss_explosion"), false, false, 1, 1);
            sound_play( asset_get("sfx_ell_dspecial_explosion_3") );
            //sound_play( sound_get("dsfx_med_star"), false, false, 1.5, 1 );
            sound_play( sound_get("dsfx_emp_hit"), false, false, 1.5, 1 );
            //sound_play( sound_get("dsfx_heavy"), false, false, 1, 1 );
            //sound_play(asset_get("sfx_ori_energyhit_medium"),  false, false, 1, 1.1 );
            //sound_play(asset_get("sfx_abyss_explosion_start"));
            sound_play(asset_get("sfx_ori_taunt2"), false, false, 1.5, 0.9);
            
            spawnFullChargeHitFX();
            //spawn_hit_fx( hit_player_obj.x + 32, hit_player_obj.y - 10, 127 );
            //hitpause = true;
            //hitstop += 45;
            //hit_player_obj.hitstop += 45;
            //forceExtendedHitPause = true;
            //sound_play(asset_get("sfx_clairen_fspecial_slash"));
            //sound_play(asset_get("sfx_ori_energyhit_medium"));
        }
        /*
        else if (strong_charge >= (60 * 0.6) && hit_player_obj.state_cat == SC_HITSTUN)
        {
            sound_play( asset_get("sfx_blow_medium2") );
            sound_play( asset_get("sfx_blow_heavy1") );
            sound_play(asset_get("sfx_ori_energyhit_heavy"));
            sound_play(asset_get("sfx_burnconsume"));
        }
        else if (strong_charge >= (60 * 0.3) && hit_player_obj.state_cat == SC_HITSTUN)
        {
            sound_play( asset_get("sfx_blow_medium2") );
            sound_play( asset_get("sfx_blow_heavy1") );
            sound_play(asset_get("sfx_burnconsume"));
        }
        else
        {
            //sound_play( asset_get("sfx_ori_energyhit_medium"), false, false, 1, 1.1 );
            //sound_play( asset_get("sfx_blow_heavy1") );
        }
        */
        //There is a bug where the enemy's horizontal knockback does not launch
        //them when standing near the ledge of floating platforms, hover them a bit
        if (hit_player_obj.url != 1928599994)
        {
            //hit_player_obj.x = x;
            if (hit_player_obj.free == false)
                hit_player_obj.y += 2;
        }
    }
    else if (my_hitboxID.hbox_num == 8)
    {
        old_hsp = 10 * spr_dir;
        window = 17;
        window_timer = 0;
        
    }
    
}

if (my_hitboxID.attack == AT_FTHROW)
{
    //If the dashing hitbox hits, follow up with a fury of attacks
    if (my_hitboxID.hbox_num <= 2)
    {
        window = 5;
        window_timer = 1;
        
        feralBlitzMaxCount = floor(totalDamageDealt / 10);
        
        if (totalDamageDealt == totalDamageDealtCap)
        feralBlitzMaxCount += 5;
    }
    
    //Lock the enemy to stay in front of Amber
    if (my_hitboxID.hbox_num < 7)
    {
        //hit_player_obj.x = x + (25 * spr_dir);
        //hit_player_obj.y = y;
        //sound_play( asset_get("sfx_blow_medium1") );
        sound_play( asset_get("sfx_ori_spirit_flame_hit_1") );
        sound_play( asset_get("sfx_blow_weak2") );
        sound_play(asset_get("sfx_ori_energyhit_light"));
    }
    else if (my_hitboxID.hbox_num == 7)
    {
        if (totalDamageDealt == totalDamageDealtCap && hit_player_obj.state_cat == SC_HITSTUN )
        {
            sound_play( asset_get("sfx_blow_medium2") );
            sound_play( asset_get("sfx_blow_heavy1") );
            sound_play(asset_get("sfx_ori_energyhit_heavy"));
            sound_play(asset_get("sfx_ori_energyhit_medium"));
            //sound_play(asset_get("sfx_abyss_explosion"));
            sound_play(asset_get("sfx_burnconsume"));
            //spawn_hit_fx( hit_player_obj.x + 32, hit_player_obj.y - 10, 127 );
            //hitpause = true;
            //hitstop += 45;
            //hit_player_obj.hitstop += 45;
            //forceExtendedHitPause = true;
        }
        else if (totalDamageDealt >= (totalDamageDealtCap * 0.75) && hit_player_obj.state_cat == SC_HITSTUN)
        {
            sound_play( asset_get("sfx_blow_medium2") );
            sound_play( asset_get("sfx_blow_heavy1") );
            sound_play(asset_get("sfx_ori_energyhit_heavy"));
            sound_play(asset_get("sfx_burnconsume"));
        }
        else if (totalDamageDealt >= (totalDamageDealtCap * 0.5) && hit_player_obj.state_cat == SC_HITSTUN)
        {
            sound_play( asset_get("sfx_blow_medium2") );
            sound_play( asset_get("sfx_blow_heavy1") );
            sound_play(asset_get("sfx_ori_energyhit_medium"));
        }
        else
        {
            sound_play( asset_get("sfx_blow_medium2") );
            sound_play( asset_get("sfx_blow_heavy1") );
        }
        
        //There is a bug where the enemy's horizontal knockback does not launch
        //them when standing near the ledge of floating platforms, hover them a bit
        if (hit_player_obj.url != 1928599994)
        {
            //hit_player_obj.x = x;
            if (hit_player_obj.free == false)
                hit_player_obj.y += 2;
        }
        
        totalDamageDealt = 0;
    }
    
}

if (my_hitboxID.attack == AT_DSPECIAL)
{
    //Yarn ball projectile hit
    if (my_hitboxID.hbox_num == 1)
    {
        //my_hitboxID.hsp *= -0.5;
        //my_hitboxID.vsp *= -0.5;
        
        if (hit_player_obj.state_cat == SC_HITSTUN)
        {
            //hit_player_obj.state = PS_HITSTUN;
            //hit_player_obj.orig_knock = 0;
            //sound_play(asset_get("mfx_star"));
            my_hitboxID.hsp = hit_player_obj.hsp;
            my_hitboxID.vsp = hit_player_obj.vsp;
        }
        else
        {
            my_hitboxID.hsp = 0;
            my_hitboxID.vsp = 0;
        }
        
        if (my_hitboxID.yBallHasHitstun == true)
        {
            hit_player_obj.hitstop = 12;
            hit_player_obj.hitpause = true;
        }
        
    }
    
    if (my_hitboxID.hbox_num == 2 || my_hitboxID.hbox_num == 4 )
    {
        //If we hit the enemy while charge yarn dashing
        if (yarnDashIsEmpowered)
        {
            if (yarnBallMarkedEnemies[hit_player_obj.player - 1] == true)
            {
                //create_hitbox(AT_DSPECIAL_2, 6, hit_player_obj.x, hit_player_obj.y);
                old_hsp = 0;
                old_vsp = 0;
                y = hit_player_obj.y;
                
                set_hitbox_value(AT_DSPECIAL_2, 5, HG_BASE_KNOCKBACK, 6);
                //Change hitbox values
                if (totalDamageDealtPrevious == totalDamageDealtCap)
                {
                    set_hitbox_value(AT_DSPECIAL_2, 5, HG_KNOCKBACK_SCALING, 1);
                    totalDamageDealt = 0;
                }
                else
                    set_hitbox_value(AT_DSPECIAL_2, 5, HG_KNOCKBACK_SCALING, 0.6); 
                //set_hitbox_value(AT_DSPECIAL_2, 5, HG_ANGLE, 361);
                //set_attack_value(AT_DSPECIAL, AG_HURTBOX_SPRITE, sprite_get("dspecial2_hurt"));
                hurtboxID.sprite_index = sprite_get("dspecial2_hurt"); //WOW THIS HURTBOXID WAS NOT DOCUMENTED!!!!
                set_attack(AT_DSPECIAL_2);
                hit_player_obj.hitstop += 20;
                hitpause = false;
                //window = 3;
                //window_timer = 0;
                
                //Despawn and pickup yarnball
                hasYarnBall = true;
                sound_play( asset_get("mfx_coin") );
                spawn_hit_fx( yarnBallObject.x, yarnBallObject.y, 20 );
                //yarnBallObject.destroyed = true;
                if (yarnBallObject.yBallIsProjectile == false)
                    instance_destroy(yarnBallObject);
                else
                    yarnBallObject.destroyed = true;
                
                //Remove mark status from enemies
                user_event(4);
            }
        }
    }
    
    //Yarn ball neutralize test
    if (my_hitboxID.hbox_num == 3)
    {
    //if (my_hitboxID.hbox_num == 2)
    //{
        //if (hit_player != player)
        
        
    }
            //take_damage(hit_player, player, 8);
    //}
}

//Finishing Yarn
if (my_hitboxID.attack == AT_DSPECIAL_2)
{
    if (my_hitboxID.hbox_num == 5)
    {
        if (pacifistModeEnabled == false)
        {
            //There is a bug where the enemy's horizontal knockback does not launch
            //them when standing near the ledge of floating platforms, hover them a bit
            if (my_hitboxID.hbox_num >= 4)
            {
                if (hit_player_obj.url != 1928599994)
                {
                    //hit_player_obj.x = x;
                    if (hit_player_obj.free == false)
                        hit_player_obj.y += 2;
                }
            }
            
            sound_play(asset_get("sfx_ori_taunt2"));
            sound_play(asset_get("sfx_may_whip2"));
            
            if (totalDamageDealtPrevious == totalDamageDealtCap && hit_player_obj.state_cat == SC_HITSTUN )
            {
                sound_play(asset_get("sfx_abyss_explosion_start"));
                sound_play(asset_get("sfx_may_whip1"));
                sound_play(asset_get("sfx_abyss_explosion"));
                sound_play(asset_get("sfx_burnconsume"));
                //sound_play(asset_get("sfx_ori_taunt2"));
                //sound_play(asset_get("sfx_ori_taunt2"));
                //sound_play( sound_get("dsfx_med_star") );
                sound_play( sound_get("dsfx_med_star"), false, false, 1.2, 1 );
                sound_play( sound_get("dsfx_emp_hit"), false, false, 1, 1 );
                
                spawnFullBoostHitFX();
                totalDamageDealt = 0;
                
                //print_debug(string(hit_player_obj.activated_kill_effect));
                
                /*
                //Dramatic long endlag for finishers. Only do long endlag if the knockback is high enough
                //print_debug(string( hit_player_obj.orig_knock));
                if (hit_player_obj.orig_knock >= 20)
                {
                set_window_value(AT_DSPECIAL_2, 5, AG_WINDOW_LENGTH, 90);
                hit_player_obj.hitstop += 30;
                }
                */
            }
            else
            {
                spawn_hit_fx(hit_player_obj.x, hit_player_obj.y - (char_height * 0.5) - 12, 19);
            }
            
            if (hit_player_obj.clone == false) //Don't spawn the article on a fors clone
            {
                yarnTieArticle = instance_create(hit_player_obj.x, hit_player_obj.y - (char_height * 0.5), "obj_article1");
                yarnTieArticle.yarnType = 1;
                yarnTieArticle.targetTiedUpEnemy = hit_player_obj;
            }
        }
        else
        {
            pacifistFinishingYarn();
        }
    }
}

//If we hit the player who is touching the yarn ball
if (hit_player_obj != self)
{
    if (hit_player_obj.enemyTouchingYarnBall[player - 1] == true)
    {
        //If for some reason the enemy has enemyTouchingYarnBall as true but we are still holding the yarn ball
        //reset their value and don't apply extra damage
        if (hasYarnBall == true)
        {
            hit_player_obj.enemyTouchingYarnBall[player - 1] = false;
        }
        else
        {
            if (variable_instance_exists(yarnBallObject, "yBallIsProjectile") && yarnBallObject.player_id == self)
            {
                if (yarnBallObject.yBallIsProjectile == true && yarnBallObject.yBallIsTouchingEnemy == true && hit_player_obj.clone == false) //Ignore forsburn clone
                {
                    //if (yarnBallObject.yBallIsTouchingEnemy == true)
                    //{
                    yarnBallObject.hsp = hit_player_obj.hsp;
                    yarnBallObject.vsp = hit_player_obj.vsp;
                
                    yarnBallObject.yBallFollowingEnemy = hit_player_obj;
                    
                    yarnBallObject.yBallFollowXOffset = x - hit_player_obj.x;
                    yarnBallObject.yBallFollowXOffset = y - hit_player_obj.y;
                    
                    yarnBallObject.x = hit_player_obj.x;
                    yarnBallObject.y = hit_player_obj.y - round(hit_player_obj.char_height * 0.5);
                    //}
                    //exit;
                }
                else if (hit_player_obj.enemyTouchingYarnBall[player - 1] == true && hit_player_obj.clone == false)
                {
                    var oldYarnBallObj = yarnBallObject;
                    //sound_play(asset_get("sfx_blow_weak1"));
                    //set_hitbox_value(AT_DSPECIAL, 1, HG_BASE_KNOCKBACK, 0);
                    yarnBallObject = create_hitbox( AT_DSPECIAL, 1, oldYarnBallObj.x, oldYarnBallObj.y);
                    yarnBallObject.yBallIsTouchingEnemy = true;
                    
                    yarnBallObject.hsp = hit_player_obj.hsp;
                    yarnBallObject.vsp = hit_player_obj.vsp;
                    
                    yarnBallObject.yBallFollowingEnemy = hit_player_obj;
                    
                    yarnBallObject.yBallFollowXOffset = x - hit_player_obj.x;
                    yarnBallObject.yBallFollowXOffset = y - hit_player_obj.y;
                    
                    yarnBallObject.x = hit_player_obj.x;
                    yarnBallObject.y = hit_player_obj.y - round(hit_player_obj.char_height * 0.5);
                    //yarnBallObject.player = argument[3];
                    spawn_hit_fx( yarnBallObject.x, yarnBallObject.y, 301 );
                    //enemyTouchingYarnBall = false;
                    instance_destroy(oldYarnBallObj);
                    //exit;
                }
            }
            var calculatedYarnDamage = (my_hitboxID.damage * (1 + (strong_charge * 0.01))) * 0.25;
            take_damage( hit_player_obj.player, player, floor(calculatedYarnDamage));
            
            //hit_player_obj.enemyDecimalDamage += (my_hitboxID.damage % 1);
            hit_player_obj.enemyDecimalDamage += (calculatedYarnDamage % 1);
            //Amber gains damage boost from the yarn, extra (2x) while charged/Empowered
            //1x if not charged/empowered
            //if (isCharged == true && chargeAttackReady == false)
            //{
            //    addDamageBoost(1);
            //}
            //else
            //{
                addDamageBoost(1);
                //Play a raising pitch star sfx each time Amber lands hits on yarn marked enemies
                if (totalDamageDealt < totalDamageDealtCap && !(my_hitboxID.attack == AT_USPECIAL_2 || my_hitboxID.attack == AT_FSPECIAL && shurikatChargeLevel == 5 || my_hitboxID.attack == AT_DSPECIAL_2)
                    && !(my_hitboxID.attack == AT_DSPECIAL && my_hitboxID.hbox_num == 1))
                {
                    sound_play( asset_get("mfx_star"), false, false, 1.5, 0.5 + (totalDamageDealt * 0.025) );
                }
            //}
        }
    }
    
    
    //Apply remaining decimal damage to the enemy
    hit_player_obj.enemyDecimalDamage += (my_hitboxID.damage % 1);
    if (hit_player_obj.enemyDecimalDamage >= 1)
    {
        take_damage( hit_player_obj.player, player, hit_player_obj.enemyDecimalDamage - (hit_player_obj.enemyDecimalDamage % 1) );
        hit_player_obj.enemyDecimalDamage -= hit_player_obj.enemyDecimalDamage - (hit_player_obj.enemyDecimalDamage % 1);
    }
}
//Reappear if we hit the enemy while smoke bomb invisible
if (smokeBombInvisState == true)
{
    //Reappear
    visible = true;
    smokeBombInvisState = false;
}

#define addDamageBoost
//Argument (multiplier)
//Condition check. Do not boost totalDamageDealt from charged attacks
if (attack != AT_USPECIAL_2 && attack != AT_FTHROW && shurikatChargeLevel != 5)
{
    if (totalDamageDealt < totalDamageDealtCap &&
        totalDamageDealt + ((my_hitboxID.damage * (1 + (strong_charge * 0.01)) * argument[0])) >= totalDamageDealtCap)
        {
            sound_play(asset_get("sfx_ori_taunt2"), false, false, 1.25, 1.1);
            sound_play(asset_get("mfx_coin_portal"), false, false, 1.25, 1.1);
            
        }
    
    if (totalDamageDealt < totalDamageDealtCap)
        totalDamageDealt += (my_hitboxID.damage * (1 + (strong_charge * 0.01)) * argument[0]);
        
    if (totalDamageDealt > totalDamageDealtCap)
        totalDamageDealt = totalDamageDealtCap;
}

#define spawnFullBoostHitFX
var fYarnFx = spawn_hit_fx(hit_player_obj.x - 148, hit_player_obj.y - (char_height * 0.5) - 16 - 148, finishingYarnHitFx);
//var fYarnFx = spawn_hit_fx(hit_player_obj.x - 162, hit_player_obj.y - (char_height * 0.5) - 16 - 168, finishingYarnHitFx);
fYarnFx.spr_dir = 2;
fYarnFx.image_yscale = 2;
fYarnFx.depth = depth - 10;

#define spawnFullChargeHitFX
var fYarnFx = spawn_hit_fx(hit_player_obj.x - 110, hit_player_obj.y - (char_height * 0.5) - 16 - 126, finishingYarnHitFx2);
//var fYarnFx = spawn_hit_fx(hit_player_obj.x - 162, hit_player_obj.y - (char_height * 0.5) - 16 - 168, finishingYarnHitFx);
fYarnFx.spr_dir = 2;
fYarnFx.image_yscale = 2;
fYarnFx.depth = depth - 10;

#define pacifistFinishingYarn
if (get_player_stocks(hit_player_obj.player) == 1)
{
    //hit_player_obj.y = -10000;
    var hitPlayerTemp = hit_player_obj.player;
    lastHitEnemy = hit_player_obj;
    //var hitPlayerObjTemp = hit_player_obj;
    
    //var myPlayerTemp = player;
    
    //hit_player_obj.vsp = -100;
    hit_player_obj.wrap_time = 999999;
    hit_player_obj.state = PS_WRAPPED;
    
    //hit_player_obj.enemyYarnFinished = true;
    /*
    enemyYarnFinished = true;
    enemyTempSprite = hit_player_obj.sprite_index;
    enemyTempSpriteIndex = hit_player_obj.image_index;
    enemyTempX = hit_player_obj.x;
    enemyTempY = hit_player_obj.y;
    enemyTempSprDir = hit_player_obj
    */
    
    var neutralizedEnemy = instance_create( hit_player_obj.x, hit_player_obj.y, "obj_article1" );
    neutralizedEnemy.articleType = 0;
    neutralizedEnemy.spr_dir = hit_player_obj.spr_dir;
    neutralizedEnemy.sprite_index = hit_player_obj.sprite_index;
    neutralizedEnemy.image_index = hit_player_obj.image_index;
    
    var yarnTie = instance_create(hit_player_obj.x, hit_player_obj.y - (char_height * 0.5), "obj_article1");
    yarnTie.articleType = 1;
    yarnTie.yarnType = 1;
    yarnTie.targetTiedUpEnemy = hit_player_obj;
    
    //hit_player_obj.invince_time = 999999;
    //hit_player_obj.invincible = true;
    
    sound_play(asset_get("sfx_abyss_explosion_start"));
    sound_play(asset_get("sfx_may_whip1"));
    sound_play(asset_get("sfx_abyss_explosion"));
    sound_play(asset_get("sfx_burnconsume"));
    
    end_match();
    
    //Finish off the enemy with a deathbox but quickly replace their position
    //with a drawn sprite before KOing them
    /*
    with (asset_get("oPlayer")) {
        if player == hitPlayerTemp
        {
            //enemyYarnFinished = true;
            //enemyTempSprite = sprite_index;
            //enemyTempSpriteIndex = image_index;
            //enemyTempX = x;
            //enemyTempY = y;
            
            //enemyTempSprite = sprite_index;
            //draw_sprite(asset_get(sprite_index), image_index, x, y);
            
            //enemyYarnFinished = true;
            
            //FINISH THEM! ("Non-lethally")
            
            create_deathbox
            (
                player.x, // x
                player.y, // y
                100, // w
                100, // h
                player, // player
                true, // free
                1, // shape
                3, // lifespan
                1 // bg_type
            );
            
            
        }
        
        
    }
    */
}
else
{
    //if (hit_player_obj.orig_knock >= 20)
    //{
        set_player_stocks(hit_player_obj.player, get_player_stocks(hit_player_obj.player) - 1 );
        var yarnTie = instance_create(hit_player_obj.x, hit_player_obj.y - (char_height * 0.5), "obj_article1");
        yarnTie.articleType = 1;
        yarnTie.yarnType = 1;
        yarnTie.targetTiedUpEnemy = hit_player_obj;
    //}
    //else
      //  sound_play(asset_get("mfx_tut_fail"));
    //print_debug("3 stocks");
    
}