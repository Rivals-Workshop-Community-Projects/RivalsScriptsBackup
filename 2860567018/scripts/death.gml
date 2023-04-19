sound_stop(asset_get("sfx_ell_missile_loop"));
sound_play(sound_get("death"));

//get angle of death
var _angle = angle_check();
//fill array with lightweight objects

for(var i = 0; i < 8; i++){
    var _spd = random_func(i, 9, true)+5
    var _hb = create_hitbox(AT_EXTRA_2, 1, x + i*2-8, y + random_func_2(i, 6, true) - 3);
    _hb.vsp = -1*dsin(_angle)*9 - random_func(i, 3, true) - 8;
    _hb.hsp = dcos(_angle)*_spd + random_func(i, 3, true)*sign(room_width/2-x) + sign(room_width/2-x)*i/3;
    _hb.hsp = clamp(_hb.hsp, -14-i/6, 14+i/6);
    
    _hb.depth = 15;
    _hb.can_hit_self = true;
}

if(attack != AT_EXTRA_2 or attack == AT_EXTRA_2 and state != PS_ATTACK_AIR){
    var stop_music = true;
    
    if(suppress_music){
         print("Exit Lunatic")
        with(oPlayer){
            if(other.url == url and other != self and play_music){
                play_music = false;
                stop_music = false;
            }
        }
        suppress_music = false;
        if(stop_music){
            sound_stop(sound_get("victory2"));
        }
    }
} else if (suppress_music){
    lunatic_timer = 120;
    
}



#define angle_check()
{
    //define stage boundries
    var _buffer = 30
    var _bottom = room_height - 10;
    var _top = 10;
    var _right = room_width - 10;
    var _left = 10;
    //left side
    if(x <= _left + _buffer) {
        if(y > _bottom){
            return 45;
        }
        if(y < _top){
            return 315;
        }
        return 0;
    }
    //right side
    if(x >= _right - _buffer) {
        if(y > _bottom){
            return 135;
        }
        if(y < _top){
            return 225;
        }
        return 180;
    }
    //bottom
    if(y < _top){
        return 270;
    }
    return 90;
}


