//Mostly just to draw the particle effects of the Spheres

//====> PARTICLES ##############################################################

if (_postHitCool > 0 &&
    ds_showParticles)
{
    var _base = 4;
    var _curr = _postHitCool;
    var _max = _postHitCoolMax;
    var _sprLen = 15;
    
    var _useId = 0;
    
    if (_curr > _max - _base) { _useId = 0; }
    else if (_curr > _max - _base*2) { _useId = 1; }
    else if (_curr > _max - _base*3) { _useId = 2; }
    else if (_curr > _max - _base*4) { _useId = 3; }
    
    else if (_curr > _base*4) 
    {
        var _inner = _sprLen - 8;
        var _auxC = _curr - _base*4;
        var _auxM = _max - _base*8;
        var _auxR = _auxC/_auxM;
        var _relId = ceil(_auxR * _inner);
        var _normRelId = _inner - _relId;
        
        _useId = _normRelId + 4;
    }
    
    else if (_curr > _base*3) { _useId = _sprLen-4; }
    else if (_curr > _base*2) { _useId = _sprLen-3; }
    else if (_curr > _base)   { _useId = _sprLen-2; }
    else { _useId = _sprLen-1; }
    
    draw_sprite_ext(
        sprite_get("ballRegen"), 
        _useId, 
        x, 
        y, 
        1, 
        1, 
        0, 
        -1, 
        1
    );
}

//====> DUMPSTER ##############################################################
/*
var sprLen = 10;
    draw_sprite_ext(
        sprite_get("ballRegen"), 
        floor(_postHitCoolMax - _postHitCool * (sprLen/_postHitCoolMax)), 
        x, 
        y, 
        1, 
        1, 
        0, 
        -1, 
        1
    );



if (_postHitCool > 0 &&
    ds_showParticles)
{
    //====> Draw dust
    for (var i = 0; i < array_length_1d(arr_particles_pos); i++)
    {
        draw_sprite_ext(
            spr_dustOL, 
            arr_particles_init[i, 4], 
            arr_particles_pos[i, 0], 
            arr_particles_pos[i, 1], 
            1, 
            1, 
            0, 
            -1, 
            1
        );
    }
    
    for (var i = 0; i < array_length_1d(arr_particles_pos); i++)
    {
        draw_sprite_ext(
            spr_dust, 
            arr_particles_init[i, 4], 
            arr_particles_pos[i, 0], 
            arr_particles_pos[i, 1], 
            1, 
            1, 
            0, 
            -1, 
            1
        );
    }
}

image_blend = c_black;
*/

//draw_rectangle_color(x, y, x+100, y+100, c_white, c_black, c_white, c_white, false);