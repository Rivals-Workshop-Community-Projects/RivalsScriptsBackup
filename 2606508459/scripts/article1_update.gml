//article1_update

/*if (_currHB != noone)
{
    try
    {
        print_debug(_currHB.hit_flipper)
    }
    catch (e)
    {
        print_debug("nm...")
        _currHB = noone;
    }
}
else
{
    print_debug("no ball")
}*/

//====> INITIAL LOGIC ###########################################
if (init == 0)
{
    _charge = floor(_charge / 2);
    if (_charge > 3) { _charge = 3; }
    
    //Base Sprite
    //sprite_index = sprite_get("ball_form0");
    
    //Particles
    /*
    var cp = arr_particles_init
    var cp_len = array_length_1d(cp);
    for (var i = 0; i < array_length_1d(cp); i++)
    {
        /*
        Every random number requires a unique id, 
        so to ensure we get two different values a second id is created
        *-/
        var ii = i + cp_len;
        
        var tar_x = cp[i, 0] + random_func( i, cp[i, 1] - cp[i, 0], true);
        var tar_y = cp[i, 2] + random_func(ii, cp[i, 3] - cp[i, 2], true);
        
        arr_particles_pos[i] = [x, y];
        arr_particles_tar[i] = [
            x + (tar_x * c_direction), 
            y + tar_y
        ];
    }
    */
    
    _postHitCool = c_HBStartup;
    _postHitCoolMax = c_HBStartup;
    _parCool = c_parCool;
    _lifetime = c_HBLifespan;
}

//====> Move towards the objective, if the destination was reached then just float upwards
if (!c_owner.hitpause)
{
    _ballHitpause = false;
}

if (_ballHitpause)
{
    _movementCool = c_movementCool;
}
else
{
    x = lerp(x, _targetX, c_changeFactorX);
    y = lerp(y, _targetY, c_changeFactorY);
    
    /*
    if (_antiGravity_f == 0)     { _targetY -= c_antiGravity_s; }
    */
}

//Change Flipper if the object is moving too fast
//Also perform fx
try
{
    if ((abs(x - pf_x) > 8 || abs(y - pf_y[0]) > 8) && timer % 3 == 0)
    {
        spawn_hit_fx(x, y, fx_ballLeft)
    }
    
    if (_currHB != noone)
    {
        if (abs(x - pf_x) > 0.5 && _flipperChangeCool == 0)
        {
            _currHB.hit_flipper = 6;
        }
        else
        {
            _currHB.hit_flipper = 7;
        }
    }
}
catch(e)
{
    print_debug(e)
    _currHB = noone
}

/*
//====> Move particles
for (var i = 0; i < array_length_1d(arr_particles_pos); i++)
{
    if (_parCool > 0)
    {
        arr_particles_pos[i, 0] = lerp(arr_particles_pos[i, 0], arr_particles_tar[i, 0], c_changeFactorY);
        arr_particles_pos[i, 1] = lerp(arr_particles_pos[i, 1], arr_particles_tar[i, 1], c_changeFactorY);
    }
    else
    {
        arr_particles_pos[i, 0] = lerp(arr_particles_pos[i, 0], x, c_changeFactorY);
        arr_particles_pos[i, 1] = lerp(arr_particles_pos[i, 1], y, c_changeFactorY);
    }
}
*/

//====> Create special effect
if (fx_shine_on &&
    _shine_f == 0 &&
    _charge >= 0 &&
    _charge < 4)
{
    spawn_hit_fx(x, y, fx_shine[_charge])
}

//====> Remove article whenever it is completely discharged
if (_charge < 0 &&
    _trapCool <= 0)
{
    flag_destroy = true;
}

//====> Calling protocol, reduce charge by one after x frames once
if (_reduceChargeNSCool == 0 &&
    _reduceChargeNSFlag)
{
    if (false) //True = The ball will be deducted one charge if called
    {
        _charge--;
        _postHitCool += 1; //c_HBPostHitCool;
        if (instance_exists(_currHB)) { instance_destroy(_currHB); }
        _currHB = noone;
    }
    
    _lifetime = c_HBLifespan;
    _reduceChargeNSFlag = false;
}

if (_fx_ballSquish_frames == 0 && pf_squish > 0)
{
    var use_sprCharge = _charge > 0 ? _charge + 1 : 1;
    
    //SAME CODE AS SLIGHTLY BELOW
    if (_currHB != noone && instance_exists(_currHB))
    {
        try
        {
            _currHB.sprite_index = sprite_get(c_sprite + "_" + string(use_sprCharge));
            _currHB.img_spd = c_img_spd;
        }
        catch (_ex)
        {
            instance_destroy(self);
            print_debug("ERROR HAPPENED: " + string(_ex))
        }
    }
}

//====> Hitbox creation and position
if (!_hit)
{
    //====> Update position of the hitbox
    if (_currHB != noone &&
        instance_exists(_currHB))
    {
        _currHB.x = x;
        _currHB.y = y;
    }
    
    //====> Create a hitbox
    else if (_postHitCool == 0 &&
            _charge > -1 &&
            !_explode)
    {
        _currHB = create_hitbox(AT_NSPECIAL, c_id + 1, floor(x), floor(y));
        
        var use_sprCharge = _charge > 0 ? _charge + 1 : 1;
        
        //spawn_hit_fx(x, y, 115);
        spawn_hit_fx(x, y, 111);
        
        with (_currHB)
        {
            sound_effect = other.c_HBsound_effect;  //HG_HIT_SFX
            sprite_index = sprite_get(other.c_sprite + "_" + string(use_sprCharge));
            img_spd = other.c_img_spd;              //HG_PROJECTILE_ANIM_SPEED
        }
    }
}
else
{
    //either reduce one to the charge or discharge completely based of mode
    if (c_mode == 0 /*|| c_mode == 3*/) _charge = -1;
    else _charge--;
    
    //====> Remove hitbox
    if (instance_exists(_currHB)) { instance_destroy(_currHB); }
    _currHB = noone;
    
    _lifetime = c_HBLifespan;
    _postHitCool = c_HBPostHitCool;
    _postHitCoolMax = c_HBPostHitCool;
    _hit = false;
}

//====> Explode
if (_explode)
{
    //if (_currHB != noone)
    //{
        with(c_owner)
        {
            set_hitbox_value(AT_NSPECIAL, 2, HG_DAMAGE, 4 + (other._charge * 5)); //9, 14, 19, 24
            set_hitbox_value(AT_NSPECIAL, 2, HG_BASE_HITPAUSE, other._charge * 4); //4, 8, 12, 16
            set_hitbox_value(AT_NSPECIAL, 2, HG_BASE_KNOCKBACK, 6);
            set_hitbox_value(AT_NSPECIAL, 2, HG_KNOCKBACK_SCALING, .8 + (other._charge * .05)); //.85, .9, .95, 1.0 (0.7 always)
        }
        create_hitbox(AT_NSPECIAL, 2, floor(x), floor(y));
        spawn_hit_fx(x, y, 143);
        
        if (_charge > 2)
        {
            spawn_hit_fx(x, y, 157);
        }
    //}
    
    c_owner.dspecial_lastExplosion = _charge
    flag_destroy = true;
}

//====> Detect Proximity
var txo = 0; //Target X Offset
var tyo = -25; //Target Y Offset

_inRange = (!c_owner.dip_radius ||
    (c_callRadius == 0 || //If call_radius is 0 then let it be unimpided
    point_distance(x, y, c_owner.x + txo, c_owner.y + tyo) <= c_callRadius))

if (_currHB != noone)
{
    
}

//print_debug(_inRange)

//====> Collide with other fireballs
if (_currHB != noone)
{
    var _kill = false;
    with (_currHB)
    {
        var o = other.c_owner;
        
        /*
        print_debug("HP: " + string(o.hitpause))
        print_debug("HP: " + string(o.hitpause))
        print_debug("HP: " + string(o.hitpause))
        */
        
        var _makeSound = true;
        var _fxDirection = 0; //0 = straight, 1 = up, 2 = down
        var _HBHit = instance_place(x, y, pHitBox);
        var _boingH = false;
        var _boingV = 0; //0 = doesn't recoil, 1 = recoils upwards only, 2 = recoils downwards only
        var _reverseVisual = 1;
        //_HBHit = instance_place(x, y, oPlayer);
        
        //If the obtained hitbox is not empty, is not the article's own hitbox or either
        //is not the last one that hit it or the cooldown already ended
        if (_HBHit != noone &&
            _HBHit != other._currHB &&
            (_HBHit != other._repositionCause || other._repositionCool <= 0 ))
        {
            other._repositionCause = _HBHit;
            
            //var o = other.c_owner;
            var rd = other.c_HBRepositionDist;
            var vrd = other.c_HBVRepositionDist;
            var modf = other.c_strongMod;
            
            if (_HBHit.player_id != o)
            {
                if (x > _HBHit.x)       { other._targetX += floor(rd * 2.5); }
                else                    { other._targetX -= floor(rd * 2.5); }
                if (y > _HBHit.y)       { other._targetY += floor(vrd * 2.5); }
                else                    { other._targetY -= floor(vrd * 2.5); }
                
                _kill = true;
            }
            else if (_HBHit.player_id == o && _HBHit.attack == AT_NSPECIAL)
            {
                _makeSound = false;
            }
            else
            {
                if (other._movementCool <= 0)
                {
                    other._movementCool = other.c_movementCool;
                    
                    switch (_HBHit.attack)
                    {
                        //Ignore
                        /*
                        case AT_NSPECIAL:
                            _makeSound = false;
                            break;
                        */
                        
                        //Forward weak
                        case AT_JAB:
                        case AT_DATTACK:
                            if (o.image_xscale > 0)     { other._targetX += rd; }
                            else                        { other._targetX -= rd; }
                            break;
                        
                        //Forward weak, jump
                        case AT_NAIR:
                            if (o.image_xscale > 0)     { other._targetX += rd; }
                            else                        { other._targetX -= rd; }
                            _boingV = 1;
                            break;
                        
                        //Forward
                        case AT_FTILT:
                            if (o.image_xscale > 0)     { other._targetX += rd * modf[0]; }
                            else                        { other._targetX -= rd * modf[0]; }
                            break;
                        
                        //Forward Strong, recoil
                        case AT_FSTRONG:
                            if (o.image_xscale > 0)     { other._targetX += rd * modf[1]; }
                            else                        { other._targetX -= rd * modf[1]; }
                            _boingH = true;
                            break;
                        
                        //Forward Up Weak
                        case AT_UTILT:
                            if (o.image_xscale > 0)     { other._targetX += rd; }
                            else                        { other._targetX -= rd; }
                            other._targetY -= vrd;
                            _fxDirection = 1;
                            break;
                        
                        //Forward Up
                        case AT_DSTRONG:
                            if (o.image_xscale > 0)     { other._targetX += rd * modf[0]; }
                            else                        { other._targetX -= rd * modf[0]; }
                            other._targetY -= vrd * modf[0];
                            _fxDirection = 1;
                            break;
                        
                        //Forward Up, recoil
                        case AT_UAIR:
                            if (o.image_xscale > 0)     { other._targetX += rd * modf[0]; }
                            else                        { other._targetX -= rd * modf[0]; }
                            other._targetY -= vrd * modf[0];
                            _fxDirection = 1;
                            //_boingH = true;
                            //_boingV = 2;
                            break;
                        
                        //Forward Up Strong
                        /*
                            if (o.image_xscale > 0)     { other._targetX += rd * modf[1]; }
                            else                        { other._targetX -= rd * modf[1]; }
                            other._targetY -= vrd * modf[1];
                            _fxDirection = 1;
                            break;*/
                        
                        //Forward Down, low rebound
                        case AT_FAIR:
                            if (o.image_xscale > 0)     { other._targetX += rd * modf[0]; }
                            else                        { other._targetX -= rd * modf[0]; }
                            other._targetY += vrd * modf[0];
                            _fxDirection = 2;
                            break;
                        
                        //Forward Down, jump
                        case AT_DAIR:
                            if (o.image_xscale > 0)     { other._targetX += rd * modf[0]; }
                            else                        { other._targetX -= rd * modf[0]; }
                            other._targetY += vrd * modf[0];
                            _fxDirection = 2;
                            _boingV = 1;
                            break;
                            
                        //Backwards
                        case AT_BAIR:
                            if (o.image_xscale > 0)     { other._targetX -= rd * modf[0]; }
                            else                        { other._targetX += rd * modf[0]; }
                            _reverseVisual = -1;
                            break;
                        
                        //Backwards weak
                        case AT_DTILT:
                            if (o.image_xscale > 0)     { other._targetX -= rd * modf[2]; }
                            else                        { other._targetX += rd * modf[2]; }
                            _reverseVisual = -1;
                            break;
                            
                        //Backwards Up strong
                        case 42:
                            if (o.image_xscale > 0)     { other._targetX -= rd * modf[1]; }
                            else                        { other._targetX += rd * modf[1]; }
                            other._targetY -= vrd;
                            _reverseVisual = -1;
                            break;
                        
                        //Straight Up Weak
                        /*case AT_DTILT:
                            other._targetY -= vrd;
                            _fxDirection = 2;
                            break;*/
                          
                        //Straight Up Strong  
                        case AT_USTRONG:
                        case AT_USPECIAL:
                            other._targetY -= vrd * modf[3];
                            _fxDirection = 2;
                            break;
                        
                        //Logic Based
                        case AT_FSPECIAL:
                            //Get Grabbed
                            other.flag_destroy = true;
                            o.fspecial_grab = true;
                            o.fspecial_grabbedMode = other.c_mode;
                            o.fspecial_grabbedCharge = other._charge;
                            break;
                            
                        //Default, based of position
                        default:
                            if (x > _HBHit.x)       { other._targetX += rd; }
                            else                    { other._targetX -= rd; }
                            if (y > _HBHit.y)       { other._targetY += vrd; }
                            else                    { other._targetY -= vrd; }
                            break;
                    }
                }
                else
                {
                    _makeSound = false;
                }
            }
            
            //if (_HBHit.player_id == o) other._repositionCool = other.c_repositionCool;
            //else other._repositionCool = other.c_repositionCool * 2;
            
            other._repositionCool = other.c_repositionCool;
            
            if (_makeSound)
            {
                //Sound
                //sound_play(asset_get("sfx_clairen_spin"));
                //sound_play(asset_get("sfx_clairen_hit_med"));
                //sound_play(asset_get("sfx_absa_whip3"));
                sound_play(sound_get("electric hit"));
                sound_play(sound_get("hard hit"));
                
                var use_sprCharge = other._charge > 0 ? other._charge + 1 : 1;
                
                if (_HBHit.player_id == o)
                {
                    //Hit Effect and direction
                    var _hitFX;
                    switch (_fxDirection)
                    {
                        default:
                        case 0:
                            _hitFX = spawn_hit_fx(x, y, other.fx_ballBlast);
                            other._fx_ballSquish_frames = other.c_fx_ballSquish_frames;
                            sprite_index = sprite_get(other.c_sprite + "_" + string(use_sprCharge) + "H");
                            image_index = 0;
                            spr_dir = o.spr_dir * _reverseVisual;
                            img_spd = 0;
                            break;
                        case 1:
                            _hitFX = spawn_hit_fx(x, y, other.fx_ballBlast_up);
                            other._fx_ballSquish_frames = other.c_fx_ballSquish_frames;
                            sprite_index = sprite_get(other.c_sprite + "_" + string(use_sprCharge) + "H");
                            image_index = 1;
                            spr_dir = o.spr_dir * _reverseVisual;
                            img_spd = 0;
                            break;
                        case 2:
                            _hitFX = spawn_hit_fx(x, y, other.fx_ballBlast_down);
                            other._fx_ballSquish_frames = other.c_fx_ballSquish_frames;
                            sprite_index = sprite_get(other.c_sprite + "_" + string(use_sprCharge) + "H");
                            image_index = 2;
                            spr_dir = o.spr_dir * _reverseVisual;
                            img_spd = 0;
                            break;
                    }
                    _hitFX.image_xscale = o.image_xscale;
                    
                    //Hit Stop
                    other._ballHitpause = true;
                    
                    if (o.dip_ballHitstop)
                    {
                        o.hitpause = true;
                        o.hitstop = 6;
                        //o.invincible = true;
                        //o.invince_time = 4;
                    }
                    
                    if (o.dip_boing)
                    {
                        if (_boingH)
                        {
                            if (o.spr_dir > 0 && o.hsp < 0) { o.old_hsp = o.hsp; }
                            else if (o.spr_dir < 0 && o.hsp > 0) { o.old_hsp = o.hsp; }
                            else { o.old_hsp = -o.hsp; }
                        }
                        else
                        {
                            o.old_hsp = o.hsp;
                        }
                        
                        switch (_boingV)
                        {
                            default:
                            case 0:
                                o.old_vsp = o.vsp; break;
                            /*case 1:
                                o.old_vsp = o.vsp > 0 ? -o.vsp : o.vsp; break;
                            case 2:
                                o.old_vsp = o.vsp < 0 ? -o.vsp : o.vsp; break;*/
                            case 1:
                                o.old_vsp = -8; break;
                            case 2:
                                o.old_vsp = 8; break;
                        }
                    }
                    else
                    {
                        o.old_hsp = o.hsp;
                        o.old_vsp = o.vsp;
                    }
                }
            }
        }
    }
    
    if (_kill)
    {
        _currHB = noone;
    }
}

//====> Collide with the ground
if (_fxCool <= 0)
{
    if (place_meeting(x + 20, y - 50, asset_get("par_block")))
    {
        _targetX = x - c_HBVRepositionDist;
        
        sound_play(asset_get("sfx_clairen_hit_med"));
        spawn_hit_fx( x + fx_ballBounce_x, y + fx_ballBounce_y, fx_ballBounce );
        
        _fxCool = c_fxCool;
        
        if (c_owner.attack == AT_NSPECIAL_2 && c_owner.window != 4)
        {
            c_owner.flag_ballCall = 1;
        }
    }
    else if (place_meeting(x - 20, y - 50, asset_get("par_block")))
    {
        _targetX = x + c_HBVRepositionDist;
        
        sound_play(asset_get("sfx_clairen_hit_med"));
        spawn_hit_fx( x + fx_ballBounce_x, y + fx_ballBounce_y, fx_ballBounce );
        
        _fxCool = c_fxCool;
        
        if (c_owner.attack == AT_NSPECIAL_2 && c_owner.window != 4)
        {
            c_owner.flag_ballCall = 1;
        }
    }
    else if (!free && place_meeting(x, y, asset_get("par_block")))
    {
        _targetY = y - c_HBVRepositionDist + 35;
        
        sound_play(asset_get("sfx_clairen_hit_med"));
        spawn_hit_fx( x + fx_ballBounce_x, y + fx_ballBounce_y, fx_ballBounce );
        
        _fxCool = c_fxCool;
        
        if (c_owner.attack == AT_NSPECIAL_2 && c_owner.window != 4)
        {
            c_owner.flag_ballCall = 1;
        }
    }
}

//====> Ignore characters just chilling
if (instance_exists(_currHB))
{
    with(oPlayer)
    {
        if (state_cat == SC_HITSTUN ||
            abs(other.x - other.pf_x) > 0.5 || 
            abs(other.y - other.pf_y[0]) > 0.5) //ensure that the ball will hit if it is moving fast enough
        {
            other._currHB.can_hit[player] = true;
        }
        else
        {
            other._currHB.can_hit[player] = false;
        }
    }
}

/*if (_consUnfreeF > 0)
{
    print_debug("Is free: " + string(_consUnfreeF));
}*/

//====> Destroy when eliminated by an outider source
if (_postHitCool < 0 &&
    !instance_exists(_currHB)) //This conditions happens only when the above thing happens
{
    //spawn_hit_fx(x, y, c_hitFX);
    _charge--;
    _postHitCool = c_HBPostHitCool * 2;
    _postHitCoolMax = c_HBPostHitCool * 2;
    //flag_destroy = true;
}

//====> Trap an enemy that hit the article
if (_trapCool > 0)
{
    if (_trap != noone)
    {
        if (a_trapX == noone) { a_trapX = _trapX; }
        if (a_trapY == noone) { a_trapY = _trapY; }
        
        a_trapX = lerp(a_trapX, _trapX, c_changeFactorX);
        a_trapY = lerp(a_trapY, _trapY, c_changeFactorY);
        
        with(_trap)
        {
            //x = other._trapX + other.c_trapXOffset - 3 + (other.even * 6);
            //y = other._trapY + other.c_trapYOffset;
            x = other.a_trapX;
            y = other.a_trapY;
            
            //set_state(free?PS_HITSTUN:PS_HITSTUN_LAND);
            set_state(PS_HITSTUN_LAND);
            hitpause = true;
            hitstop = 0;
            hitstop_full = 1;
            old_hsp = 0;
            old_vsp = 0;
        }
        //_trapY -= 0.5;
    }
}
else if (_trap != noone)
{
    with(_trap)
    {
        set_state(PS_IDLE_AIR);
    }
    
    _trap = noone;
    a_trapX = noone;
    a_trapY = noone;
}

//====> When Parried
if (instance_exists(_currHB))
{
    if (_currHB.was_parried)
    {
        if (_currHB.x > c_owner.x) _targetX = c_owner.x - 40;
        else _targetX = c_owner.x + 40;
        _targetY = c_owner.y - 40;
        _currHB.was_parried = false;
    }
}

//====> Kill when lifetime runs out
if (c_HBLifespan > 0 &&
    _lifetime <= 0)
{
    _charge--;
    _lifetime = c_HBLifespan;
    if (_currHB != noone)
    {
        var use_sprCharge = _charge > 0 ? _charge + 1 : 1;
        _currHB.sprite_index = sprite_get(c_sprite + "_" + string(use_sprCharge));
    }
}

//====> Hud Offscreen
{
    var lock = 0; //1 = left, 2 = right, 10 = up, 20 = down
    
    if (x < view_get_xview()) { lock = 1; }  //Snap Left     // WARN: Possible Desync. Consider using get_instance_x(asset_get("camera_obj")).
    if (x > view_get_xview() + 958) { lock = 2; }  //Snap Rigth     // WARN: Possible Desync. Consider using get_instance_x(asset_get("camera_obj")).
    if (y < view_get_yview()) { lock += 10; }  //Snap Up     // WARN: Possible Desync. Consider using get_instance_y(asset_get("camera_obj")).
    if (y > view_get_yview() + 486) { lock += 20; }  //Snap Down        // WARN: Possible Desync. Consider using get_instance_y(asset_get("camera_obj")).
    
    if (lock > 0)
    {
        _offscreen = true;
        var nso = c_owner.nspecial_offscreen;
        
        switch (lock)
        {
            default:
            case 0:  
                break;
            case 1:  
                _offscreenX = 2;
                _offscreenY = y - view_get_yview(); // WARN: Possible Desync. Consider using get_instance_y(asset_get("camera_obj")).
                _offscreenId = 4;
                break; 
            //Left            
            case 2:
                _offscreenX = 958; 
                _offscreenY = y - view_get_yview();  // WARN: Possible Desync. Consider using get_instance_y(asset_get("camera_obj")).
                _offscreenId = 0; 
                break;
            //Right            
            case 10: 
                _offscreenX = x - view_get_xview();  // WARN: Possible Desync. Consider using get_instance_x(asset_get("camera_obj")).
                _offscreenY = 0;
                _offscreenId = 6; 
                break; 
            //Up            
            case 11:
                _offscreenX = 12; 
                _offscreenY = 10; 
                _offscreenId = 5; 
                break; 
            //Up Left            
            case 12: 
                _offscreenX = 948; 
                _offscreenY = 10; 
                _offscreenId = 7; 
                break; 
            //Up Right
            case 20: _offscreenX = x - view_get_xview(); // WARN: Possible Desync. Consider using get_instance_x(asset_get("camera_obj")).
                _offscreenY = 486; 
                _offscreenId = 2; 
                break; 
            //Down
            case 21: 
                _offscreenX = 12; 
                _offscreenY = 476; 
                _offscreenId = 3; 
                break; 
            //Down Left
            case 22: 
                _offscreenX = 948; 
                _offscreenY = 476; 
                _offscreenId = 1; 
                break; 
            //Down Right
        }
    }
    else
    {
        _offscreen = false;
    }
}
//====> Manage cooldown variables
//Reset after a cycle
_antiGravity_f--;       if (_antiGravity_f < 0)         { _antiGravity_f = c_antiGravity_f; }
_shine_f--;             if (_shine_f < 0)               { _shine_f = c_shine_f; }

//Maintain after a cycle
_postHitCool--;         if (_postHitCool < -1)          { _postHitCool = -1; }
_movementCool--;        if (_movementCool < 0)          { _movementCool = 0; }
_repositionCool--;      if (_repositionCool < 0)        { _repositionCool = 0; }
_trapCool--;            if (_trapCool < 0)              { _trapCool = 0; }
_fxCool--;              if (_fxCool < 0)                { _fxCool = 0; }
_parCool--;             if (_parCool < 0)               { _parCool = 0; }
_reduceChargeNSCool--;  if (_reduceChargeNSCool < 0)    { _reduceChargeNSCool = 0; }
_flipperChangeCool--;   if (_flipperChangeCool < 0)     { _flipperChangeCool = 0; }
_sclr_hold--;           if (_sclr_hold < 0)             { _sclr_hold = 0; }

pf_squish = _fx_ballSquish_frames;
_fx_ballSquish_frames--;    if (_fx_ballSquish_frames < 0)    { _fx_ballSquish_frames = 0; }

if (_repositionCool <= 0 &&
    _postHitCool <= 0 &&
    _repositionCool <= 0)
{
    if (_sclr_hold <= 0)
    {
        sclr_timer += sclr_change       
        if (sclr_timer >= sclr_max) { sclr_change *= -1; }
        if (sclr_timer <= sclr_min) { sclr_change *= -1; }
    }
}
else
{
    sclr_timer = 0;
    sclr_change = abs(sclr_change);
    _sclr_hold = c_sclr_hold;
}

//Mantain after a cycle (conditional)
if (_currHB != noone)   { _lifetime--;      if (_lifetime < 0)      { _lifetime = 0; } }

//====> Frame counting variables
if (instance_exists(_currHB)) 
{ 
    _currHB.length += 1;
}
timer++;

//====> First time running flag
even = even == 1 ? 0 : 1;
init = 1;

//====> Previous frame variables
pf_x = x;
pf_y = [y, pf_y[0], pf_y[1], pf_y[2], pf_y[3]];
    
//END