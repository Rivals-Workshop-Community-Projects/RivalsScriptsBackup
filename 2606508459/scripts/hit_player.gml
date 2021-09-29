//====> MULTIPLE MOVES ################################################################################################
/*
Add mp_gain points of MP to the player
U Air should only provide one fourth of mp_gain
Make sure it caps at max_mp
*/

var _div = 0;

switch (my_hitboxID.attack)
{
    case AT_USTRONG:
    case AT_UTILT: 
    case AT_NAIR:
        _div = 2; break;
    case AT_USPECIAL: 
    case AT_JAB:
        _div = 3; break;
    case AT_UAIR: 
        _div = 4; break;
    case AT_NSPECIAL: 
        _div = 100; break;
    default: 
        _div = 1; break;
}

val_mp += floor(mp_gain/_div);
if (val_mp > max_mp) { val_mp = max_mp; }

//====> MULTIPLE MOVES ################################################################################################
/*
Untrap the enemy after hitting it
*/
if (fBall_obj != noone && fBall_obj._trap == hit_player_obj) fBall_obj._trap = noone;

//====> MULTIPLE MOVES ################################################################################################
/*
If the player hits a trapped character by a type A sphere, make him move slightly to another position
This code is now useless because hitting the enemy now un-traps them
*/

if (fBall_obj != noone &&
    fBall_obj._trap != noone)
{
    var modifier = 3;
    var rd = fBall_obj.c_HBRepositionDist / modifier;
    var vrd = fBall_obj.c_HBVRepositionDist / modifier;
    
    switch (my_hitboxID.attack)
    {
        //Always forward
        case AT_JAB: case AT_DATTACK: case AT_FTILT: case AT_NAIR: case AT_FAIR:
            if (image_xscale > 0)   { fBall_obj._trapX += rd; }
            else                    { fBall_obj._trapX -= rd; }
            break;
        //Forward Up
        case AT_UAIR: case AT_USTRONG: case AT_DATTACK:
            if (image_xscale > 0)   { fBall_obj._trapX += rd; }
            else                    { fBall_obj._trapX -= rd; }
            fBall_obj._trapY -= vrd;
            break;
        //Straight Up
        case AT_UTILT:
            fBall_obj._trapY -= vrd * 1.5;
            break;
        //Forward Down
        case AT_DAIR:
            if (my_hitboxID.hbox_num != 2)
            {
                if (image_xscale > 0)   { fBall_obj._trapX += rd; }
                else                    { fBall_obj._trapX -= rd; }
                fBall_obj._trapY += vrd;
            }
            break;
        //Forward, Strong Knockback
        case AT_FSTRONG:
            if (image_xscale > 0)   { fBall_obj._trapX += rd * 2; }
            else                    { fBall_obj._trapX -= rd * 2; }
            break;
        //Always Backward
        case AT_BAIR:
            if (image_xscale > 0)   { fBall_obj._trapX -= rd; }
            else                    { fBall_obj._trapX += rd; }
            break;
        //Position based
        default:
            break;
    }
}

//====> D TILT ################################################################################################

if (my_hitboxID.attack == AT_DTILT)
{
    //Uncomment to make dtilt jump cancellable
    //flag_dtilt_jump = true;
}

//====> U AIR ################################################################################################
/*
Lerp the position of the enemy
if
*/
if (my_hitboxID.attack == AT_UAIR /*&&
    my_hitboxID.hbox_num == 1*/)
{
    hit_player_obj.x = lerp(hit_player_obj.x, my_hitboxID.x, .2);
    hit_player_obj.y = lerp(hit_player_obj.y, my_hitboxID.y + 20, .2);
    //sound_play(sound_get("crit"));
}

//====> F STRONG ################################################################################################
/*
Play the Critical hit sound when sweetspoting
*/
if (my_hitboxID.attack == AT_FSTRONG &&
    my_hitboxID.hbox_num == 1)
{
    sound_play(sound_get("crit"));
}

//====> N SPECIAL ################################################################################################
/*
Trap an enemy that got hit by a type A sphere
*/

if (my_hitboxID.attack == AT_NSPECIAL &&
    (my_hitboxID.hbox_num == 1 || my_hitboxID.hbox_num == 2))
{
    //Status effect
    elec_target = hit_player_obj;
    elec_timer = c_elec_timer;
}

if (my_hitboxID.attack == AT_NSPECIAL &&
    my_hitboxID.hbox_num == 1/*&&
    my_hitboxID.hbox_num != fBall_amount + 1*/)
{
    with (fBall_obj)
    {
        //Scatter Particles
        var cp = arr_particles_scatter
        for (var i = 0; i < array_length_1d(cp); i++)
        {
            var ii = i + array_length_1d(cp);
            
            arr_particles_tar[i] = [
                x + (cp[i, 0] + random_func( i, cp[i, 1] - cp[i, 0], true)), 
                y + (cp[i, 2] + random_func(ii, cp[i, 3] - cp[i, 2], true))
            ];
        }
        _parCool = c_parCool;
        
        //Spawn effect
        spawn_hit_fx(x, y, c_hitFX);
        
        if (x > other.hit_player_obj.x)         { _targetX += c_HBRepositionDist; }
        else                                    { _targetX -= c_HBRepositionDist; }
        if (y > other.hit_player_obj.y - 20)    { _targetY += c_HBVRepositionDist; }
        else                                    { _targetY -= c_HBVRepositionDist; }
        
        switch (c_mode)
        {
            //Fire balls
            default:
            case 1:
            case 3:
                _hit = true; //comment for inmediate hit mode
                break;
            //Electric balls
            case 0:
                //Calculate trap amount of frames
                var a = get_player_damage( other.hit_player_obj.player ) / c_trapCapPer;
                a = a < 1 ? a : 1;
                var b = (c_trapCoolMax / 2) - c_trapCool;
                var c = (c_trapCoolMax / 3) * _charge;
                var use_trapCool = c_trapCool + (b * a) + c;
                
                //Assign values
                _hit = true;
                _trap = other.hit_player_obj;
                _trapCool = use_trapCool;
                
                _trapX = other.hit_player_obj.x;
                _trapY = other.hit_player_obj.y;
                a_trapX = _trapX; //Implemented cuz "de-trap after hit" thing
                a_trapY = _trapY;
                
                break;
        }
    }
}


//====> F SPECIAL ################################################################################################

if (my_hitboxID.attack == AT_FSPECIAL)
{
    flag_fspecial_jump = 0;
}

//====> U SPECIAL ################################################################################################

if (my_hitboxID.attack == AT_USPECIAL)
{
    uspecial_hits++;
    uspecial_hits_cool = uspecial_hits_cool_c;
    
    if (uspecial_hits >= 3)
    {
        //sound_play( sound_get( "crit" ) );
    }
}

//====> D SPECIAL ################################################################################################

if (my_hitboxID.attack == AT_NSPECIAL && //It is coded as a NSpecial but is activated with the DSpecial
    my_hitboxID.hbox_num == 2)
{
    if (dspecial_lastExplosion > 2)
    {
        sound_play(sound_get("crit"));
    }
}

if (my_hitboxID.attack == AT_DSPECIAL &&
    my_hitboxID.hbox_num == 2)
{
    flag_dspecial_jump = true;
}

/*
//====> N SPECIAL ################################################################################################
/*
Teleport the player to the enemy position when hit by Sphere 3

if (my_hitboxID.attack == AT_NSPECIAL &&
    my_hitboxID.hbox_num == fBall_amount + 1)
{
    //Position where the player will teleport to
    var tar_x = hit_player_obj.x + (30 * -image_xscale);
    var tar_y = hit_player_obj.y - 10;
    var tar_offY = -40;
    
    //Spawn effect
    spawn_hit_fx(x, y + tar_offY, 126);
    spawn_hit_fx(tar_x, tar_y + tar_offY, 126);
    
    print_debug(string(image_xscale));
    x = tar_x;
    y = tar_y;
}
*/



