// attack_update

//====> SIDE SMASH #######################################################
/*
    Create a Hit FX every time Side Smash is used
*/

if (timing_fstrong > 0) { timing_fstrong--; }

if (attack == AT_FSTRONG &&
    window == 3 &&
    timing_fstrong == 0)
{
    var _sprite = sprite_get( "hardway" );
    
    spawn_hit_fx( x + ((fx_hardway_x ) * image_xscale), y + fx_hardway_y, fx_hardway );
    timing_fstrong = fx_hardway_duration;
}

//====> ATTACKS CANCELLABLE INTO HADOKEN #######################################################

if (attack == AT_JAB || attack == AT_NAIR)
{
    if (attack_down && special_down)
    {
        set_attack(AT_NSPECIAL);
    }
}

//====> DASH ATTACK #######################################################

if (attack == AT_DATTACK)
{
    if (window > 1 && attack_pressed && (spr_dir > 0 && right_down || spr_dir < 0 && left_down) && !was_parried)
    {
        attack_end();
        set_attack(42);
    }
}

//====> NEUTRAL B #######################################################
/*
    Create a Fire Ball object that goes out of Fernet's hands
    The attack can be charged
    Manage the Fire Ball array accordingly, only 3 fireballs should exist at the same time in the array
*/

if (attack == AT_NSPECIAL)
{
    var use_spm = 0;
    if (nspecial_hado_lock == 0)
    {
        if (attack_down) nspecial_hado_lock = 1;
        if (nspecial_hadoInput == 4) nspecial_hado_lock = 2;
    }
    
    var is_hadoken = nspecial_hado_lock != 0
    var use_energy = nspecial_hado_lock * 2
    
    if (fBall_obj != noone
        /*&& fBall_obj._currHB == noone*/
        && window < 8
        && !is_hadoken)
    {
        attack_end();
        set_state(PS_IDLE);
    }
    
    if (is_hadoken)
    {
        use_spm = 2;
        //hsp = 0;
    }
    else { use_spm = nspecial_mode }
    
    //If the player has not enough MP run the no MP sequence
    if (window == 1)
    {
        if (val_mp < nspecial_cost[use_spm])
        {
            //sound_play(asset_get("mfx_tut_fail"));
            sound_play(asset_get("sfx_ell_steam_release"));
            sound_play(asset_get("sfx_springgo"));
            window_timer = 0;
            window = 12; //Fail Window
            
            set_attack_value( AT_NSPECIAL, AG_HURTBOX_SPRITE, sprite_get("nspecial_hurt"));
            set_attack_value( AT_NSPECIAL, AG_SPRITE, sprite_get ("nspecial") );
            
            nspecial_postfail = true;
            nspecial_hadoInput = 0;
            
            //take_damage( player, -1, 1 );
        }
        /*if (is_hadoken && free) 
        {
            window = 2;
            window_timer = 0;
        }*/
    }
    
    //Snap of the no MP sequence after 15 frames
    else if (window == 13)
    {
        if (window_timer == 20)
        {
            attack_end();
            set_state(PS_IDLE);
            hurtboxID.sprite_index = asset_get("ex_guy_hurt_box");
        }
    }
    
    //Actual Attack Logic
    else
    {
        //Charge move: Reset to the charging animation if B is still being held at the end of it
        if ((window == 2 || window == 3 || window == 4) && 
            special_down)
        {
            //print_debug(nspecial_charge);
            //print_debug(window_timer);
            
            //Save charge if the player presses shield
            if (shield_pressed)
            {
                sound_play(asset_get("mfx_coin"));
                set_state(PS_IDLE);
                hurtboxID.sprite_index = asset_get("ex_guy_hurt_box");
            }
            else
            {
                if (window_timer == 1)
                {
                    sound_play(asset_get("sfx_zap"));
                    
                    set_attack_value( AT_NSPECIAL, AG_HURTBOX_SPRITE, sprite_get("nspecial_hurt"));
                    
                    if (nspecial_charge < 2)        { window = 2; }
                    else if (nspecial_charge < 6)   { window = 3; }
                    else                            { window = 4; }
                    
                    set_attack_value( AT_NSPECIAL, AG_HURTBOX_AIR_SPRITE, sprite_get("nspecial_air_hurt"));
                    set_attack_value( AT_NSPECIAL, AG_AIR_SPRITE, sprite_get ("nspecial_air") );
                }
                else if (window_timer == 12 && nspecial_charge < 6)
                {
                    //print_debug("ENTER");
                    
                    window_timer = 0;
                    nspecial_charge++;
                }
            }
        }
        
        if ((window == 2 || window == 3 || window == 4 || window == 5 || window == 6) && 
            (!special_down || attack_down || is_hadoken))
        {
            if (free && use_spm == 2)   window = 10;
            else if (is_hadoken)        window = 10;
            else                        window = 7;
            window_timer = 0;
        }
        
        //Charge move: Ready animation after fully charging
        if (window == 6 && 
            special_down)
        {
            //Save charge if the player presses shield
            if (shield_pressed)
            {
                sound_play(asset_get("mfx_coin"));
                set_state(PS_IDLE);
                hurtboxID.sprite_index = asset_get("ex_guy_hurt_box");
            }
            else
            {
                window_timer = 0;
            }
        }
        
        //Conditional appearance
        /*if (use_spm == 2)
        { 
            set_attack_value( AT_NSPECIAL, AG_HURTBOX_AIR_SPRITE, sprite_get("nspecial_down_hurt"));
            set_attack_value( AT_NSPECIAL, AG_AIR_SPRITE, sprite_get ("nspecial_down") );
        }*/
        
        //Shoot
        if ((window == 8 ||
            window == 11 /*|| 
            (window == 9 && window_timer == 5)*/) &&
            flag_nspecial == 0 &&
            (fBall_obj == noone || is_hadoken))
        {
            //Deduct MP
            val_mp -= nspecial_cost[use_spm];
            
            //Shoot the fireball
            spawn_hit_fx(x, y, fx_nspecial_dust1);
            
            if ((left_down && spr_dir > 0) || (right_down && spr_dir < 0))
            {
                spr_dir *= -1;
                image_xscale *= -1;
            }
            
            //if (is_hadoken) nspecial_charge = 5;
            if (is_hadoken) nspecial_charge = use_energy;
            
            if (!is_hadoken || nspecial_hado_cool <= 0)
            {
                nspecial_hado_cool = 60;
                if (use_spm == 2 && free)
                {
                    spawnFireBall(
                        x + (nspecial_offsetX * image_xscale),
                        y + nspecial_offsetY,
                        x, 
                        y - 30, 
                        use_spm, 
                        nspecial_charge, 
                        fBall_distance, 
                        0, 
                        false, 
                        true
                    );
                }
                else if (down_down)
                {
                    //spawnFireBall(x, y - 30, use_spm, nspecial_charge, fBall_distance / 2, 40, false, false);
                    spawnFireBall(
                        x + (nspecial_offsetX * image_xscale),
                        y + nspecial_offsetY,
                        x, 
                        y - 30, 
                        use_spm, 
                        nspecial_charge, 
                        fBall_distance / 2, 
                        40, 
                        false,
                        false
                    );
                }
                else
                {
                    //spawnFireBall(x, y - 30, use_spm, nspecial_charge, fBall_distance, 0, false, false);
                    spawnFireBall(
                        x + (nspecial_offsetX * image_xscale),
                        y + nspecial_offsetY,
                        x, 
                        y - 30, 
                        use_spm, 
                        nspecial_charge, 
                        fBall_distance, 
                        0, 
                        false,
                        false
                    );
                }
            }
            else
            {
                //spawnFireBall(x, y - 30, -1, nspecial_charge, fBall_distance, 0, false, false);
                spawnFireBall(
                    x + (nspecial_offsetX * image_xscale),
                    y + nspecial_offsetY,
                    x, 
                    y - 30, 
                    -1, 
                    nspecial_charge, 
                    fBall_distance, 
                    0, 
                    false,
                    false
                );
            }
            
            nspecial_last_charge = nspecial_charge;
            nspecial_charge = 0;
            nspecial_hadoInput = 0;
            flag_nspecial = 1;
        }
        
        if (window != 8 && window != 11 /*&& window != 9*/)
        {
            flag_nspecial = 0;
        }
        
        //Shoot animation loop normalization
        //End the attack at the end window of the first nspecial variant 
        if ((window == 9 && window_timer == 15) || (window == 12 && window_timer == 15))
        {
            nspecial_hado_lock = 0;
            attack_end();
            set_state(PS_IDLE);
        }
    }
}

//====> NEUTRAL B 2 #######################################################
/*
    Call all the fire balls
*/

if (attack == AT_NSPECIAL_2)
{
    /*if (attack_down)
    {
        set_attack(AT_NSPECIAL);
    }*/
    
    if (window == 1 && window_timer == 6)
    {
        nspecial_targetX = x
        nspecial_targetY = y + ballCall_callOffsetY;
        spawn_hit_fx(nspecial_targetX, nspecial_targetY, 304);
        
        //Indicator
        if (fBall_obj != noone)
        {
            with (fBall_obj)
            {
                spawn_hit_fx(x, y, 304);
            }
        }
        
        flag_ballCall = 0;
    }
    
    if (window == 2 && 
        window_timer == 1)
    {
        sound_play(sound_get("fingersnap"), false, 0, 1, 0.7);
    }
    
    if (flag_ballCall == 1)
    {
        //sound_play(asset_get("mfx_tut_fail"));
        print_debug("NO CALL ALERT")
    }
    
    if (flag_ballCall == 0 &&
        window == 3)
    {
        //Restart holding variable
        nspecial_held = 0;
        
        //Deduct MP
        val_mp -= ballCall_cost;
        
        //Call Fire balls
        if (fBall_obj != noone)
        {
            with (fBall_obj)
            {
                _targetX = other.nspecial_targetX;
                _targetY = other.nspecial_targetY;
                _reduceChargeNSCool = c_reduceChargeNSCool;
                _reduceChargeNSFlag = true;
            }
        }
        
        //flag_ballCall = 1;
    }
    
    if (window == 4)
    {
        flag_ballCall = 0;
    }
}

//====> SIDE B #######################################################
/*
    manage the fspecial flag
*/
if (attack == AT_FSPECIAL)
{
    can_wall_jump = true;
    
    //Change directions
    if (window < 3)
    {
        if (spr_dir > 0 && left_down)   spr_dir = -1;
        if (spr_dir < 0 && right_down)  spr_dir = 1;
    }
    
    if (window == 3)
    {
        if (window_timer == 1)  spawn_hit_fx(x, y + 2, fx_nspecial_dust1);
        else                    spawn_hit_fx(x, y + 2, fx_nspecial_dust2);
    }
    
    if (jump_pressed && flag_fspecial_jump == 0)
    {
        hsp = 7 * image_xscale;
        set_state(PS_DOUBLE_JUMP);
        flag_fspecial_jump = 1;
        flag_fspecial = 1;
        djumps = 0;
    }
    
    if (fspecial_grab)
    {
        fspecial_grab = false;
        window_timer = 0;
        window = 0;
        set_attack(AT_FSPECIAL_2);
        //attack = AT_FSPECIAL_2;
    }
    
    if (flag_fspecial != 0)
    {
        set_state(PS_IDLE);
    }
    
    if (window == fspecial_goLoops + 5)
    {
        flag_fspecial = 1;
    }
    
    if (window > 3 && !free)
    {
        fx_nspecial_ground_cool--;
        
        if (fx_nspecial_ground_cool <= 0)
        {
            fx_nspecial_ground_cool = fx_nspecial_ground_cool_c;
            //spawn_hit_fx(x, y, fx_nspecial_dust1);
        }
    }
}

//SIDE B 2

if (attack == AT_FSPECIAL_2)
{
    //Change directions
    if (window < 3)
    {
        if (spr_dir > 0 && left_down)   spr_dir = -1;
        if (spr_dir < 0 && right_down)  spr_dir = 1;
        
        //Fumble Sphere
        if (jump_pressed || shield_pressed)
        {
            spawnFireBall(
                x + (nspecial_offsetX * image_xscale),
                y + nspecial_offsetY,
                x, 
                y + nspecial_offsetY, 
                fspecial_grabbedMode, 
                fspecial_grabbedCharge * 2, 
                fBall_fumble * 2, 
                -fBall_fumble, 
                false, 
                false
            );
            
            attack_end();
            set_state(PS_AIR_DODGE);
            
            /*
            if (shield_pressed) set_state(PS_AIR_DODGE);
            else
            {
                set_state(PS_IDLE_AIR);
                if (hsp > air_max_speed)
                {
                    print_debug("FAILSAFE ACTIVATE AAAAAAAAAAAAAAAAAA");
                    hsp = air_max_speed;
                }
            }
            */
        }
    }
    
    if (window == 3 &&
        flag_fspecial_2 == 0)
    {
        spawnFireBall(
            x + (nspecial_offsetX * image_xscale),
            y + nspecial_offsetY,
            x, 
            y + nspecial_offsetY, 
            fspecial_grabbedMode, 
            fspecial_grabbedCharge * 2, 
            fBall_distance * 4, 
            0, 
            true, 
            false
        );
        flag_fspecial_2 = 1;
    }
}
else
{
    flag_fspecial_2 = 0;
}

//====> UP B #######################################################
/*
    The jump and power of the move depends on how much MP does Fernet have
    Deduct All of the MP
*/
if (attack == AT_USPECIAL)
{
    can_wall_jump = true;
    
    if (flag_uspecial == 0 &&
        window == 1)
    {
        //Deduct MP
        val_mp -= uspecial_cost;
        if (val_mp < 0) { val_mp = 0; }
        
        flag_uspecial = 1;
    }
    
    //Go into Side Recovery mode if B is pressed during pratfall
    if ((window == 3 || window == 4) &&
        special_pressed &&
        dip_doubleUSpecial)
    {
        window = 6;
        window_timer = 0;
        
        if (left_down)          { spr_dir = -1; }
        else if (right_down)    { spr_dir = 1; }
    }
    
    if (window != 1)
    {
        flag_uspecial = 0;
    }
}

//====> DOWN B #######################################################
/*
    Change Fireball mode
*/
if (attack == AT_DSPECIAL)
{
    if (window == 2 && window_timer == 1)
    {
        spawn_hit_fx(x, y - 20, 143); //3
        spawn_hit_fx(x, y - 20, 13);
        
        if (fBall_obj != noone)
        {
            with (fBall_obj)
            {
                _explode = true;
            }
        }
    }
}

/*
if (window == 2)
{
    flag_dspecial = 0;
}
else if ()
{
    mode_fball++;
    if (mode_fball > 2) { mode_fball = 0; }
    window = 2;
    window_timer = 0;
    flag_dspecial = 1;
    
    print_debug("Enter");
    //print_debug("FBM: " + string(mode_fball));
}
*/

//====> TAUNT #######################################################
if (attack == AT_TAUNT)
{
    if (dip_developerMode && !flag_taunt)
    {
        dip_mode++;
        if (dip_mode > 3) { dip_mode = 0; } 
        flag_taunt = true;
    }
    if (window == 3)
    {
        flag_taunt = false;
        set_state(PS_IDLE);
    }
}

//====> PRE CODED #######################################################

//B - Reversals
if (attack == AT_NSPECIAL || attack == AT_FSPECIAL || attack == AT_DSPECIAL || attack == AT_USPECIAL){
    trigger_b_reverse();
}

//====> FUNCTIONS #######################################################

#define spawnFireBall(xo, yo, xs, ys, mode, charge, xDist, yDist, inmediate, tilt)

//FBall Logic
if (mode == 0 ||
    mode == 1 ||
    mode == 3)
{
    //var use_offY = nspecial_offsetY;
    //use_offY += tilt ? 60 : 0;
    
    //var new_fBall = instance_create( x + (nspecial_offsetX * image_xscale) , y + use_offY, "obj_article1" );
    
    var new_fBall = instance_create( round(xo), round(yo), "obj_article1" );
    nspecial_ballOut = mode;
    
    with (new_fBall)
    {
        //Applies to all fBall modes
        c_id = 0;
        c_mode = mode; //other.nspecial_mode;
        c_owner = other;
        c_direction = other.image_xscale;
        c_img_spd = .2;
        c_vanishFX = 21;
        c_HBLifespan = 0;
        c_HBStartup = inmediate ? 0 : 80; //How many frames until the hit box activates
        c_HBPostHitCool = 60;       //Post Hit Cooldown (custom property)
        c_HBRepositionDist = 100;   //Reposition Distance (custom property)
        c_HBVRepositionDist = 60;   //Reposition Distance (custom property)
        c_hitFX = 304;              //Fire Burst
        //c_sprite = "ball_formB";
        c_sprite = "ball_formA";
        c_HBsound_effect = asset_get("sfx_clairen_hit_strong");
        _charge = charge; //other.nspecial_charge;
        _targetX = xs + (xDist * other.image_xscale); //other.x + (other.fBall_distance * other.image_xscale);
        _targetY = ys + (yDist); //other.y - 30;
        sprite_index = sprite_get("ball_form0");
    }

    if (fBall_obj != noone)     
    {
        spawn_hit_fx(fBall_obj.x, fBall_obj.y, fBall_obj.c_vanishFX);
        instance_destroy(fBall_obj._currHB); 
        instance_destroy(fBall_obj);
    }
    
    fBall_obj = new_fBall;
}

//PBall Logic
else if (mode >= 0)
{
    var use_offX = nspecial_offsetX;
    var use_offY = nspecial_offsetY;
    if (tilt && !place_meeting(x, y + 20, asset_get("par_block"))) 
    {
        //The catooken will only snap to the hand if above 20 units off the ground
        use_offY += 40 
    }
    
    var use_charge = floor(charge / 2);
    if (use_charge > 3) { use_charge = 3; }
    
    //Tilt
    if (tilt)
    {
        set_hitbox_value( AT_NSPECIAL, 3, HG_PROJECTILE_HSPEED, pBall_base_hsp + (pBall_inc_hsp * use_charge) - 1);
        set_hitbox_value( AT_NSPECIAL, 3, HG_PROJECTILE_VSPEED, pBall_base_hsp + (pBall_inc_hsp * use_charge) - 1); 
    }
    else
    {
        set_hitbox_value( AT_NSPECIAL, 3, HG_PROJECTILE_HSPEED, pBall_base_hsp + (pBall_inc_hsp * use_charge));
        set_hitbox_value( AT_NSPECIAL, 3, HG_PROJECTILE_VSPEED, 0);
    }
    
    //Parameters
    set_hitbox_value( AT_NSPECIAL, 3, HG_DAMAGE, pBall_base_dmg + (pBall_inc_dmg * use_charge));
    set_hitbox_value( AT_NSPECIAL, 3, HG_BASE_HITPAUSE, pBall_base_hitpause + (pBall_inc_hitpause * use_charge));
    
    //Sound
    switch (use_charge)
    {
        case 0: set_hitbox_value(AT_NSPECIAL, 3, HG_HIT_SFX, asset_get("sfx_blow_weak2")); break;
        case 1: set_hitbox_value(AT_NSPECIAL, 3, HG_HIT_SFX, asset_get("sfx_blow_medium2")); break;
        case 2: set_hitbox_value(AT_NSPECIAL, 3, HG_HIT_SFX, asset_get("sfx_blow_heavy2")); break;
        case 3: set_hitbox_value(AT_NSPECIAL, 3, HG_HIT_SFX, asset_get("sfx_blow_heavy2")); break;
    }
    
    var new_pBall = create_hitbox(AT_NSPECIAL, 3, x + (use_offX * image_xscale), y + use_offY);
    
    with (new_pBall)
    {
        sprite_index = tilt ? 
            sprite_get("ball_formC_" + string(use_charge + 1) + "T") : 
            sprite_get("ball_formC_" + string(use_charge + 1));
    }
    
    if (arr_pBall[pBall_rotation] != noone)     { instance_destroy(arr_pBall[pBall_rotation]); }
    
    arr_pBall[pBall_rotation] = new_pBall;
    pBall_rotation++;
    if (pBall_rotation >= pBall_amount) { pBall_rotation = 0; }
}

return noone

//END