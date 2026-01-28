if respawn_anim >= 149 && state != PS_RESPAWN respawn_anim++;
switch (state){
    case PS_RESPAWN:
    respawn_anim++;
    if state_timer >= 10 visible = 1;
    if visible && respawn_anim < 149{
        if respawn_anim == 1 sound_play(sound_get("CharSFX_Lotus_Revive"));
        sprite_index = sprite_get("platressurect");
        image_index = respawn_anim/6;
        draw_y = (respawn_anim < 113? -74: -74*clamp(ease_quadIn(1, 0, respawn_anim-113, 18), 0, 1));
    }
    if !visible respawn_anim = 0;
    platpos = [x, y, min(respawn_anim/20, 1)];
    break;
    
    case PS_AIR_DODGE:
    if state_timer == 1{
        stop_sfx = 0;
        var g = spawn_hit_fx(x - hsp, y - vsp, roll_fx);
        g.depth = depth-2;
        g.spr_dir = sign(hsp);
        if g.spr_dir == 0 g.spr_dir = spr_dir;
    }
    break;
    
    case PS_PRATFALL:
    image_index = min(state_timer/4, image_number-1);
    break;
    
    case PS_ROLL_FORWARD:
    case PS_ROLL_BACKWARD:
    case PS_TECH_FORWARD:
    case PS_TECH_BACKWARD:
    if !state_timer{
        sound_play(sound_get("CharSFX_Dash_v" + string(random_func(1, 4, 1) + 1)));
        var g = spawn_hit_fx(x, y, roll_fx);
        g.depth = depth-2;
        g.spr_dir *= -1;
    }
    break;
    
    case PS_WAVELAND:
    if stop_sfx{
        stop_sfx = 0;
        sound_stop(sound_get("CharSFX_Dash_v1"));
        sound_stop(sound_get("CharSFX_Dash_v2"));
        sound_stop(sound_get("CharSFX_Dash_v3"));
        sound_stop(sound_get("CharSFX_Dash_v4"));
    }
    break;
    
    case PS_ATTACK_GROUND:
    case PS_ATTACK_AIR:
    switch attack{
        case AT_EXTRA_1:
        switch window{
            case 1:
            unbound_fx_idx = window_timer/4;
            break;
            
            case 2:
            unbound_fx_idx = 4 + (state_timer < 16? window_timer/4: 4 + ((window_timer-16)/4)%4);
            break;
            
            case 3:
            unbound_fx_idx = 12 + (window_timer > 4);
            if window_timer > 8 unbound_fx_idx = -1;
            break;
            
            case 4:
            unbound_fx_idx = 14 + window_timer/4;
            break;
            
            case 5:
            unbound_fx_idx = -1;
            break;
        }
        break;
        
        case AT_EXTRA_3:
        if window == 1{
            sprite_index = sprite_get("idle");
            image_index = old_idx + state_timer*idle_anim_speed;
        }
        break;
        
        case AT_USPECIAL:
        if instance_exists(uspecial_detectbox){
            with uspecial_detectbox{
                var _list = ds_list_create();
                var _num = instance_place_list(x, y, pHurtBox, _list, 1);
                other.grabp = noone;
                if _num > 0 other.grabp = _list[| 0].playerID
                ds_list_destroy(_list);
            }
    		if grabp != noone usp_pos = [grabp.x, grabp.y - grabp.char_height/2, (usp_pos == -1? 0: usp_pos[2]), (usp_pos == -1? 0: usp_pos[2]), point_direction(grabp.x, grabp.y - grabp.char_height/2, x + 4*spr_dir, y - 32)-90];
        }
        break;
    }
    break;
}