if state != PS_PRATFALL && state != PS_PRATLAND landing_lag_sound = asset_get("sfx_land_med");
else landing_lag_sound = sound_get("sfx_pratland");
if state != prev_state prev_st = prev_state;
switch (state){
    
    case PS_IDLE:
    if state_timer < 9 && prev_st == PS_WALK{
        sprite_index = sprite_get("walk_end");
        image_index = state_timer/3;
    }
    if state_timer < 9 && prev_st == PS_DASH_STOP{
        sprite_index = sprite_get("dashstop");
        image_index = state_timer/3 + 2;
    }
    break;
    
    case PS_WALK:
    if state_timer < 9 && (prev_st == PS_IDLE || prev_st = PS_ATTACK_GROUND){
        sprite_index = sprite_get("walk_start");
        image_index = state_timer/3;
        if !state_timer && prev_st = PS_ATTACK_GROUND && attack = AT_JAB && window_timer < 12 sound_play(asset_get("sfx_blow_weak2"), 0, noone, .7, 2);
    }
    break;
    
    case PS_WALK_TURN:
    if prev_st == PS_IDLE prev_st = PS_WALK_TURN;
    break;
    
    case PS_DASH_START:
    if state_timer == 3 float_sfx = sound_play(sound_get("sfx_sniper_float"), 0, noone, .4, 1);
    break;
    
    case PS_DASH_TURN:
    if state_timer == 10 && !instance_exists(float_sfx) float_sfx = sound_play(sound_get("sfx_sniper_float"), 0, noone, .4, 1);
    break;
    
    case PS_DASH_STOP:
    sound_stop(float_sfx);
    image_index = state_timer/3;
    break;
    
    case PS_FIRST_JUMP:
    case PS_DOUBLE_JUMP:
    offset_hud(50);
    break;
    
    case PS_ATTACK_GROUND:
    case PS_ATTACK_AIR:
    switch attack{
        case AT_FSPECIAL:
        if window == 5 && sign(sign(hsp)*2 + 1) != spr_dir image_index = 20 - window_timer/4;
        break;
        
        case AT_FSPECIAL_AIR:
        if window == clamp(window, 2, 3) image_index = 8 + round(air_body_frame);
        break;
    }
    break;
    
    case PS_IDLE_AIR:
    offset_hud(50);
    if state_timer < 3 && prev_st == PS_WALK{
        sprite_index = sprite_get("walkfall");
        image_index = 1;
    }
    break;
    
    case PS_PRATFALL:
    if state_timer >= 12 image_index = 4 + (state_timer%6)/3;
    else image_index = state_timer/3;
    break;
    
    case PS_PRATLAND:
    if prev_state == PS_PRATFALL && state_timer < 24{
        sprite_index = sprite_get("pratland");
        image_index = state_timer/3;
    }
    break;
    
    case PS_WALL_JUMP:
    case PS_WALL_TECH:
    offset_hud(50);
    break;
    
    case PS_PARRY:
    image_index = state_timer * image_number/29;
    break;
    case PS_TECH_BACKWARD:
    sprite_index = sprite_get("tech_backward");
    case PS_TECH_FORWARD:
    image_index = state_timer * image_number/34;
    break;

    case PS_TECH_GROUND:
    image_index = state_timer * image_number/18;
    break;
    
    case PS_AIR_DODGE:
    image_index = state_timer * image_number/26;
    break;
    
}

#define offset_hud
/// offset_hud(val, am = .3;)
var val = argument[0];
var am = argument_count > 1 ? argument[1] : .3;;

hud_offset = lerp(hud_offset, val, am);