//update

//print_debug(get_player_color(player));
//print_debug(dip_mode);

//====> SWITCHES #######################################################

switch (dip_mode)
{
    case 0: dip_MP = true; dip_3rdSpecial = true; break;
    case 1: dip_MP = false; dip_3rdSpecial = true; break;
    case 2: dip_MP = true; dip_3rdSpecial = false; break;
    case 3: dip_MP = false; dip_3rdSpecial = false; break;
}

//Nspecial Costs
if (dip_MP)     nspecial_cost = [100, 50, 20, 50];
else            nspecial_cost = [0, 0, 0, 0];

//Nspecial Available Modes
if (dip_altNSpecial)
{
    if (dip_3rdSpecial)     nspecial_mode_order = [1, 3, 2];
    else                    nspecial_mode_order = [1, 3];
}
else
{
    if (dip_3rdSpecial)     nspecial_mode_order = [1, 0, 2];
    else                    nspecial_mode_order = [1, 0];
}

//====> VISUAL FX #######################################################

if (elec_timer <= 0)
{
    elec_target = noone;
}

//Final Smash
if (fs_currHB != noone)
{
    try
    {
        if (fs_currHB.hitbox_timer % 5 = 0)
        {
            spawn_hit_fx(fs_currHB.x, fs_currHB.y, fx_fs1);
        }
    }
    catch (e)
    {
        //print_debug("e:" + string(e));
        fs_currHB = noone;
    }
}

//====> IDLE #######################################################

//Init movement
if (!(state == PS_IDLE || state == PS_SPAWN) && !moved)
{
    moved = true;
    if (get_player_color(player) == 20)
    {
        var _md = spawn_hit_fx(x, y, move_drop);
        _md.image_xscale = spr_dir;
    }
}

if (state == PS_IDLE) { idle_count++; }
else 
{ 
    idle_count = 0; 
    idle_wait = false;
}

if (!idle_wait)
{
    if (idle_count >= idle1_frames)
    {
        idle_wait = true;
        idle_count = 0;
    }
}
else
{
    if (idle_count >= idle2_frames)
    {
        idle_wait = false;
        idle_count = 0;
    }
}

//====> HURT #######################################################

if (state != PS_HITSTUN_LAND)
{
    hurtground_sprite = sprite_get("hurtground");
}

if (state == PS_DOUBLE_JUMP && !djump_changeLock)
{
    djump_isBack = ((left_down && spr_dir > 0) || (right_down && spr_dir < 0));
    djump_changeLock = true;
}

if (!free)
{
    djump_changeLock = false;
}

//====> NEUTRAL B #######################################################

//Hadoken Input

/*
if (dip_inputHadoken)
{
    //Partial cancelation
    if (state == PS_DASH_START ||
        state == PS_DASH)
    {
        if (nspecial_hadoInput > 1) set_state(PS_IDLE)
        else nspecial_hadoInput = 0;
    }
    
    //Full cancelation
    else if (state == PS_HITSTUN ||
        state == PS_HITSTUN_LAND ||
        state == PS_TUMBLE ||
        state == PS_WRAPPED ||
        state == PS_FROZEN ||
        (
            (state == PS_ATTACK_GROUND || state == PS_ATTACK_AIR) && 
            (
                attack != AT_FTILT && 
                attack != AT_DATTACK && 
                attack != AT_NSPECIAL && 
                attack != AT_FAIR &&
                attack != AT_DAIR
            )
        ) ||
        state == PS_AIR_DODGE ||
        state == PS_PARRY_START ||
        state == PS_PRATLAND ||
        state == PS_PARRY)
    {
        nspecial_hadoInput = 0;
    }
    
    switch (nspecial_hadoInput)
    {
        case 0:
            if (down_down) nspecial_hadoInput = 1;
            break;
        case 1:
            if (attack_down) nspecial_hadoInput = 0;
            else if ((spr_dir > 0 && right_down) || (spr_dir < 0 && left_down)) nspecial_hadoInput = 3;
            else if (down_down) nspecial_hadoInput = 1;
            else nspecial_hadoInput = 0;
            break;
        case 3:
            if (attack_down)
            {
                set_attack(AT_NSPECIAL);
                nspecial_hadoInput = 4;
            }
            else if ((spr_dir > 0 && right_down) || (spr_dir < 0 && left_down)) nspecial_hadoInput = 3;
            else nspecial_hadoInput = 0;
            break;
    }
}
*/

//print_debug("HADO: " + string(nspecial_hadoInput))

//Check for the existence of normal B gadoken
for (var i = 0; i < pBall_amount; i++)
{
    if (instance_exists(arr_pBall[i]))
    {
        arr_pBall_pos[i] = [arr_pBall[i].x, arr_pBall[i].y]
        
        var use_charge = floor(nspecial_last_charge / 2);
        if (use_charge > 3) { use_charge = 3; }
        
        if (!arr_pBall[i].free) 
        { 
            //arr_pBall[i].sprite_index = sprite_get("ball_formC_" + string(use_charge +  1));
            if (arr_pBall[i].sprite_index != sprite_get("ball_formFS"))
            {
                arr_pBall[i].sprite_index = sprite_get("ball_formC_2");
            }
            
            if (fx_nspecial_ground_cool <= 0)
            {
                var _xoff = 15 * image_xscale;
                var _yoff = 0;
                
                switch (use_charge) {
                    case 0: _yoff = 17; break;
                    case 1: _yoff = 29; break;
                    case 2: _yoff = 32; break;
                    case 3: _yoff = 35; break;
                }
                
                spawn_hit_fx(arr_pBall[i].x + _xoff, arr_pBall[i].y + _yoff, fx_nspecial_dust2);
                fx_nspecial_ground_cool = fx_nspecial_ground_cool_c;
            }
        }
    }
    
    arr_pBall_exist_flag[i] = instance_exists(arr_pBall[i]);
    
    //IF the projectile existed the previous frame but doesn't now
    if (arr_pBall_exist_flag_pf[i] &&
        !arr_pBall_exist_flag[i])
    {
        spawn_hit_fx(arr_pBall_pos[i, 0], arr_pBall_pos[i, 1], fx_gado_End);
    }
}

if (state != PS_IDLE && (state != PS_ATTACK_GROUND || attack != AT_NSPECIAL))
{
    nspecial_postfail = false;
}

//====> DELETE ARTICLES #######################################################

if (fBall_obj != noone &&
    fBall_obj.flag_destroy)
{
    spawn_hit_fx(fBall_obj.x, fBall_obj.y, fBall_obj.c_vanishFX);
    //arr_fBall[i] = noone;
    if (fBall_obj._currHB != noone) instance_destroy(fBall_obj._currHB);
    instance_destroy(fBall_obj);
    fBall_obj = noone;
    nspecial_ballOut = -1;
}

//====> SIDE B #######################################################

if (!free)
{
    flag_fspecial = 0;
    flag_fspecial_jump = 1;
    
    move_cooldown[AT_FSPECIAL] = 0;
}

if ((state == PS_HITSTUN || state == PS_HITSTUN_LAND)
    && (pre_state == PS_ATTACK_GROUND || pre_state == PS_ATTACK_AIR)
    && attack == AT_FSPECIAL_2
    && window != 3)
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
        false,
        false
    );
}

//====> UP B #######################################################

if (uspecial_hits_cool <= 0)
{
    uspecial_hits = 0;
}

//====> SIDE B & UP B, PARRY STATE #######################################################

if (special_parried_cool > 0 && false)
{
    hitpause = true;
    hitstop = 0;
    hitstop_full = 1;
    old_hsp = -2 * image_xscale;
    old_vsp = -4;
}

//====> DOWN B #######################################################

if (dspecial_symbol_contA > 0)
{
    if (dspecial_currY > dspecial_tarY)
    {
        dspecial_currY += dspecial_Y_units;
    }
    else
    {
        dspecial_symbol_contA--;
    }
    
    if (dspecial_symbol_contA <= 0)
    {
        dspecial_currY = dspecial_startY;
    }
}

if (state != PS_ATTACK_GROUND && state != PS_ATTACK_AIR)
{
    dspecial_firstFrame = true;
}

//====> JUMP CANCELLABLES #######################################################

if (state != PS_ATTACK_AIR && state != PS_ATTACK_GROUND)
{
    flag_dspecial_jump = false;
    flag_explode = false
    
    flag_dtilt_jump = false;
}

if (state == PS_WALL_JUMP)
{
    move_cooldown[AT_FSPECIAL] = 0;
}

//====> PREVIOUS FRAME VARIABLES #######################################################

for (var i = 0; i < pBall_amount; i++)
{
    arr_pBall_exist_flag_pf[i] = arr_pBall_exist_flag[i];
}

pre_state = state;

//====> KIRBY #######################################################

if (swallowed)
{ 
    //Kirby ability script starts here
    swallowed = 0

    //Define any assets kirby might need to grab from YOUR CHARACTER
    //var ability_spr = sprite_get("YOUR KIRBY SPRITE HERE");
    //var ability_hurt = sprite_get("YOUR KIRBY HURTBOX HERE")
    //var ability_icon = sprite_get("YOUR KIRBY ABILITY ICON HERE") //Optional
    
    var oag_sprite = sprite_get("nspecial_kirby");
    var oag_air_sprite = sprite_get("nspecial_kirby_air");
    var oag_fail = sprite_get("nspecial_kirby_fail");
    var oag_hurtbox_sprite = sprite_get("nspecial_kirby_hurt");
    var oag_hurtbox_air_sprite = sprite_get("nspecial_kirby_air_hurt");
    var oag_hurtbox_fail = sprite_get("nspecial_kirby_fail_hurt");
    
    with (enemykirby) {
        //Define AT_EXTRA_3 for Kirby, using your asset variables where necessary in place of sprite_get or sound_get
        //...
        //...
        
        set_attack_value(AT_EXTRA_3, AG_CATEGORY, 2);
        set_attack_value(AT_EXTRA_3, AG_NUM_WINDOWS, 4);
        set_attack_value(AT_EXTRA_3, AG_SPRITE, oag_sprite);
        set_attack_value(AT_EXTRA_3, AG_AIR_SPRITE, oag_air_sprite);
        set_attack_value(AT_EXTRA_3, AG_HURTBOX_SPRITE, oag_hurtbox_sprite);
        set_attack_value(AT_EXTRA_3, AG_HURTBOX_AIR_SPRITE, oag_hurtbox_air_sprite);
        
        var ig = 1;
        
        //Startup animation
        set_window_value(AT_EXTRA_3, ig, AG_WINDOW_TYPE, 1);
        set_window_value(AT_EXTRA_3, ig, AG_WINDOW_LENGTH, 14);
        set_window_value(AT_EXTRA_3, ig, AG_WINDOW_ANIM_FRAMES, 7);
        
        ig++;
        
        //Normal Special Start Alt (7)
        set_window_value(AT_EXTRA_3, ig, AG_WINDOW_TYPE, 1);
        set_window_value(AT_EXTRA_3, ig, AG_WINDOW_LENGTH, 4);
        set_window_value(AT_EXTRA_3, ig, AG_WINDOW_ANIM_FRAMES, 2);
        set_window_value(AT_EXTRA_3, ig, AG_WINDOW_ANIM_FRAME_START, 7);
        
        ig++;
        
        //Normal Special Hit Alt (8)
        set_window_value(AT_EXTRA_3, ig, AG_WINDOW_TYPE, 1);
        set_window_value(AT_EXTRA_3, ig, AG_WINDOW_LENGTH, 2);
        set_window_value(AT_EXTRA_3, ig, AG_WINDOW_ANIM_FRAMES, 1);
        set_window_value(AT_EXTRA_3, ig, AG_WINDOW_ANIM_FRAME_START, 9);
        set_window_value(AT_EXTRA_3, ig, AG_WINDOW_HAS_SFX, 1);
        set_window_value(AT_EXTRA_3, ig, AG_WINDOW_SFX, asset_get("sfx_clairen_swing_strong"));
        
        ig++;

        //Normal Special End Alt (9)
        set_window_value(AT_EXTRA_3, ig, AG_WINDOW_TYPE, 1);
        set_window_value(AT_EXTRA_3, ig, AG_WINDOW_LENGTH, 15);
        set_window_value(AT_EXTRA_3, ig, AG_WINDOW_ANIM_FRAMES, 4);
        set_window_value(AT_EXTRA_3, ig, AG_WINDOW_ANIM_FRAME_START, 10);
        set_window_value(AT_EXTRA_3, ig, AG_WINDOW_HAS_WHIFFLAG, 1);
        
        set_num_hitboxes(AT_EXTRA_3, 1);
        ig = 1;
        
        //Catooken Hitbox
        set_hitbox_value(AT_EXTRA_3, ig, HG_HITBOX_TYPE, 2);
        set_hitbox_value(AT_EXTRA_3, ig, HG_LIFETIME, 70);
        set_hitbox_value(AT_EXTRA_3, ig, HG_PRIORITY, 2);
        set_hitbox_value(AT_EXTRA_3, ig, HG_DAMAGE, 4);
        set_hitbox_value(AT_EXTRA_3, ig, HG_ANGLE, 45);
        set_hitbox_value(AT_EXTRA_3, ig, HG_ANGLE_FLIPPER, 1);
        set_hitbox_value(AT_EXTRA_3, ig, HG_BASE_KNOCKBACK, 4);
        set_hitbox_value(AT_EXTRA_3, ig, HG_KNOCKBACK_SCALING, .3);
        set_hitbox_value(AT_EXTRA_3, ig, HG_PROJECTILE_ANIM_SPEED, .3);
        set_hitbox_value(AT_EXTRA_3, ig, HG_HIT_SFX, asset_get("sfx_blow_medium2"));
        
        set_hitbox_value(AT_EXTRA_3, ig, HG_PROJECTILE_GROUND_BEHAVIOR, 0);
        set_hitbox_value(AT_EXTRA_3, ig, HG_BASE_HITPAUSE, 30);
        set_hitbox_value(AT_EXTRA_3, ig, HG_HITPAUSE_SCALING, .8);
        set_hitbox_value(AT_EXTRA_3, ig, HG_PROJECTILE_HSPEED, 4);
        set_hitbox_value(AT_EXTRA_3, ig, HG_PROJECTILE_VSPEED, 0);
        set_hitbox_value(AT_EXTRA_3, ig, HG_VISUAL_EFFECT, 22);
        
        //END
        
        //Fail Attack
        set_attack_value(44, AG_CATEGORY, 2);
        set_attack_value(44, AG_NUM_WINDOWS, 3);
        set_attack_value(44, AG_SPRITE, oag_fail);
        set_attack_value(44, AG_HURTBOX_SPRITE, oag_hurtbox_fail);
        
        var ig = 1;
        
        //Explode like the beesh you are
        set_window_value(44, ig, AG_WINDOW_TYPE, 1);
        set_window_value(44, ig, AG_WINDOW_LENGTH, 9);
        set_window_value(44, ig, AG_WINDOW_ANIM_FRAMES, 3);
        set_window_value(44, ig, AG_WINDOW_HAS_SFX, 1);
        set_window_value(44, ig, AG_WINDOW_SFX, asset_get("sfx_ell_steam_release"));
        
        ig++;
        
        set_window_value(44, ig, AG_WINDOW_TYPE, 1);
        set_window_value(44, ig, AG_WINDOW_LENGTH, 16);
        set_window_value(44, ig, AG_WINDOW_ANIM_FRAMES, 4);
        set_window_value(44, ig, AG_WINDOW_ANIM_FRAME_START, 3);
        
        ig++;
        
        //Stay exploded
        set_window_value(44, ig, AG_WINDOW_TYPE, 1);
        set_window_value(44, ig, AG_WINDOW_LENGTH, 32);
        set_window_value(44, ig, AG_WINDOW_ANIM_FRAMES, 7);
        set_window_value(44, ig, AG_WINDOW_ANIM_FRAME_START, 7);
        
        //END
        
        newicon = other.kirbyIcon; //Optional, replaces the kirby ability icon
    } 
    //Kirby ability script ends here
}

//Spawner for Kirby
if (enemykirby != noone)
{
    var catooken_spr = sprite_get("ball_formC_2")
    var catooken_spr_tilt = sprite_get("ball_formC_2T")
    var catooken_end = hit_fx_create( sprite_get("ball_formC_End"), 20 );
    
    with (enemykirby) 
    {
        if ((newicon == other.kirbyIcon || newicon == other.kirbyIconB) &&
            (state == PS_ATTACK_AIR || state == PS_ATTACK_GROUND) && 
            attack == AT_EXTRA_3 &&
            window == 1 &&
            move_cooldown[AT_NSPECIAL] > 0
            )
        {
            //sound_play(asset_get("sfx_ell_steam_release"));
            set_attack(44);
        }
        
        else if (newicon == other.kirbyIcon &&
            (state == PS_ATTACK_AIR || state == PS_ATTACK_GROUND) && 
            attack == AT_EXTRA_3 &&
            window == 3 &&
            window_timer == 1 &&
            move_cooldown[AT_NSPECIAL] <= 0)
        {
            var tilt = free;
            var off_x = 45;
            var off_y = -35;
            var use_charge = 1;
            var base_hsp = 2
            var inc_hsp = 2
            var base_dmg = 5
            var inc_dmg = 0
            var base_hitpause = 10
            var inc_hitpause = 10
            
            if (tilt)
            {
                set_hitbox_value( AT_EXTRA_3, 1, HG_PROJECTILE_HSPEED, base_hsp + (inc_hsp * use_charge) - 1);
                set_hitbox_value( AT_EXTRA_3, 1, HG_PROJECTILE_VSPEED, base_hsp + (inc_hsp * use_charge) - 1); 
                off_y = 35;
            }
            else
            {
                set_hitbox_value( AT_EXTRA_3, 1, HG_PROJECTILE_HSPEED, base_hsp + (inc_hsp * use_charge));
                set_hitbox_value( AT_EXTRA_3, 1, HG_PROJECTILE_VSPEED, 0);
            }
            
            set_hitbox_value( AT_EXTRA_3, 1, HG_DAMAGE, base_dmg + (inc_dmg * use_charge));
            set_hitbox_value( AT_EXTRA_3, 1, HG_BASE_HITPAUSE, base_hitpause + (inc_hitpause * use_charge));
            
            set_hitbox_value( AT_EXTRA_3, 1, HG_HIT_SFX, asset_get("sfx_blow_medium2") );
            
            var new_pBall = create_hitbox(AT_EXTRA_3, 1, x + (off_x * image_xscale), y + off_y);
            
            with (new_pBall)
            {
                sprite_index = tilt ? catooken_spr_tilt : catooken_spr;
            }
            
            other.arr_pBall[1] = new_pBall;
            
            move_cooldown[AT_NSPECIAL] = 60;
        }
        
        newicon = move_cooldown[AT_NSPECIAL] > 0 ? other.kirbyIconB : other.kirbyIcon;
    }
}

//====> DIALOGUE BUDDY #######################################################

if(variable_instance_exists(id,"diag"))
{
    //Change their name whenever
    diag_name = "Fernet"
    
    //  ADDING REGULAR DIALOGUE

    //Diagchoice is variable that keeps default interactions in array! Feel free to put as much as you would want!
    diagchoice = [
        "Don't underestimate me for being a student, I learned from the best!",
        "Is always exciting to fight new people!",
        "Where are you from? I want to learn how your people fight!",
    ]

    //  Specific Character Interactions
    switch(string(otherUrl))
    {
        //Orcane
        case "3":
            with(pet_obj)
            {
                diag_nrs_p1 = other.otherPlayer;
                diag_nrs = true;
                diag_nrs_diag = [
                    "(Orcane seems curious)",
                    "Dogs?... WATER!? *Hissssssss*",
                    "(Orcane becomes startled)",
                ];
            }
            break;
        
        //Ranno
        case "11":
            with(pet_obj)
            {
                diag_nrs_p1 = other.otherPlayer;
                diag_nrs = true;
                diag_nrs_diag = [
                    "Show me your abilities, student of Olym-",
                    "EVERYTHING FOR YOU, MY LOVE!",
                    "...oh no...",
                ];
            }
            break;
            
        //Olympia
        case "1943759600":
            with(pet_obj)
            {
                diag_nrs_p1 = other.player;
                diag_nrs = true;
                diag_nrs_diag = [
                    "Sensei! Is it time? Will I be able to fend for myself?",
                    "Little Twinkle, always remember that stars shine the brightest when the night falls, you'll make me proud!",
                    "Sensei... You are right! I'm ready!",
                ];
            }
            break;
    }

    //  Regular dialogue
    /*
    if(otherUrl == "2603024708" && diag != "") //Change the url into a specific character's
    {
        diag = "Hey, I know you! I will beat you up.";
        diag_index = 0; //If your portrait has multiple sprite indexes. You can change them during the interaction!
    }
    //  NRS/3-Part dialogue
    if(otherUrl == url) //Change the url into a specific character's
    {
        with(pet_obj)
        {
            if(variable_instance_exists(id,"diag_text"))
            {
                diag_nrs_p1 = other.player; //This will decide which character will speak first! If it's the opponent use (otherPlayer) instead.
                diag_nrs = true; //Sets the 3-Part dialogue to happen.
                diag_nrs_diag = [
                "Hey, I know you! I will beat you up!",
                "So you left us for someone else, and now you've come back to beat us up?",
                "I-I had to do what was best for all of us, I wished you weren't dragged into this."]
            }
            
            //If your portrait has multiple sprite indexes. You can change them during the interaction!
            switch(diag_nrs_state)
            {
                case 0: //First Message
                    other.diag_index = 1;
                    break;
                case 1: //Second Message
                    other.diag_index = 1;
                    break;
                case 2: //Last Message
                    other.diag_index = 2;
                    break;
            }
        }
    }
    */
}

//====> TIMERS #######################################################

intro_timer += intro_fpf        if (intro_timer >= intro_timerMax)      { intro_timer = intro_timerMax; }       
uspecial_hits_cool--;           if (uspecial_hits_cool < 0)             { uspecial_hits_cool = 0; }
fx_nspecial_ground_cool--;      if (fx_nspecial_ground_cool < 0)        { fx_nspecial_ground_cool = 0; }
special_parried_cool--;         if (special_parried_cool < 0)           { special_parried_cool = 0; }
elec_timer--;                   if (elec_timer < 0)                     { elec_timer = 0; }
//shine_exept--;                  if (shine_exept < 0)                    { shine_exept = 0; }

//====> FUNCTIONS #######################################################

#define spawnFireBall(xo, yo, xs, ys, mode, charge, xDist, yDist, inmediate, tilt, isKirby)
/*
    This code is a duplicate from attack_update
*/

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
        c_callRadius = other.c_callRadius;
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
        //sprite_index = sprite_get("ball_form0");
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
    var use_offX = 45; //var use_offX = nspecial_offsetX;
    var use_offY = -35; //var use_offY = nspecial_offsetY;
    
    if (tilt && !place_meeting(x, y + 20, asset_get("par_block"))) 
    {
        //The catooken will only snap to the hand if above 20 units off the ground
        use_offY += 40 
    }
    
    var use_charge = floor(charge / 2);
    if (use_charge > 3) { use_charge = 3; }
    
    var base_hsp = 2
    var inc_hsp = 2
    var base_dmg = 5
    var inc_dmg = 0
    var base_hitpause = 10
    var inc_hitpause = 10
    
    /*
    try
    {
        var base_hsp = pBall_base_hsp
        var inc_hsp = pBall_inc_hsp
        var base_hsp = pBall_base_dmg
        var base_hsp = pBall_inc_dmg
        var base_hsp = pBall_base_hitpause
        var base_hsp = pBall_inc_hitpause
    }
    catch (_err)
    {
        print_debug("access")
    }
    */
    
    
    var useAttack = isKirby ? AT_EXTRA_3 : AT_NSPECIAL;
    var useHsp = 4
    
    //Tilt
    if (tilt)
    {
        /*
        set_hitbox_value( 43, 1, HG_PROJECTILE_HSPEED, pBall_base_hsp + (pBall_inc_hsp * use_charge) - 1);
        set_hitbox_value( 43, 1, HG_PROJECTILE_VSPEED, pBall_base_hsp + (pBall_inc_hsp * use_charge) - 1); 
        */
        set_hitbox_value( 43, 1, HG_PROJECTILE_HSPEED, useHsp * .7 );
        set_hitbox_value( 43, 1, HG_PROJECTILE_VSPEED, useHsp * .7 ); 
    }
    else
    {
        /*
        set_hitbox_value( 43, 1, HG_PROJECTILE_HSPEED, pBall_base_hsp + (pBall_inc_hsp * use_charge));
        set_hitbox_value( 43, 1, HG_PROJECTILE_VSPEED, 0);
        */
        set_hitbox_value( 43, 1, HG_PROJECTILE_HSPEED, useHsp );
        set_hitbox_value( 43, 1, HG_PROJECTILE_VSPEED, 0 ); 
    }
    
    //Parameters
    set_hitbox_value( useAttack, 1, HG_DAMAGE, base_dmg + (inc_dmg * use_charge));
    set_hitbox_value( useAttack, 1, HG_BASE_HITPAUSE, base_hitpause + (inc_hitpause * use_charge));
    
    //Sound
    switch (use_charge)
    {
        case 0: set_hitbox_value(useAttack, 1, HG_HIT_SFX, asset_get("sfx_blow_weak2")); break;
        case 1: set_hitbox_value(useAttack, 1, HG_HIT_SFX, asset_get("sfx_blow_medium2")); break;
        case 2: set_hitbox_value(useAttack, 1, HG_HIT_SFX, asset_get("sfx_blow_heavy2")); break;
        case 3: set_hitbox_value(useAttack, 1, HG_HIT_SFX, asset_get("sfx_blow_heavy2")); break;
    }
    
    var new_pBall = create_hitbox(useAttack, 1, x + (use_offX * image_xscale), y + use_offY);
    
    with (new_pBall)
    {
        sprite_index = tilt ? 
            sprite_get("ball_formC_" + string(use_charge + 1) + "T") : 
            sprite_get("ball_formC_" + string(use_charge + 1));
    }
    
    //if (arr_pBall[pBall_rotation] != noone)     { instance_destroy(arr_pBall[pBall_rotation]); }
    
    //arr_pBall[pBall_rotation] = new_pBall;
    //pBall_rotation++;
    //if (pBall_rotation >= pBall_amount) { pBall_rotation = 0; }
    
    return new_pBall;
}

return noone

//END