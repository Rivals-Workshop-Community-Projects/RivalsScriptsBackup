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
            arr_pBall[i].sprite_index = sprite_get("ball_formC_" + string(use_charge +  1));
            
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

//====> TIMERS #######################################################

intro_timer += intro_fpf        if (intro_timer >= intro_timerMax)      { intro_timer = intro_timerMax; }       
uspecial_hits_cool--;           if (uspecial_hits_cool < 0)             { uspecial_hits_cool = 0; }
fx_nspecial_ground_cool--;      if (fx_nspecial_ground_cool < 0)        { fx_nspecial_ground_cool = 0; }
special_parried_cool--;         if (special_parried_cool < 0)           { special_parried_cool = 0; }
nspecial_hado_cool--;           if (nspecial_hado_cool < 0)             { nspecial_hado_cool = 0; }
elec_timer--;                   if (elec_timer < 0)                     { elec_timer = 0; }

//====> FUNCTIONS #######################################################

#define spawnFireBall(xo, yo, xs, ys, mode, charge, xDist, yDist, inmediate, tilt)
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