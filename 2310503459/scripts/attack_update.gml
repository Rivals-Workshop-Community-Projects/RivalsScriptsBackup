#macro AT_BULLETJUMP 40;
#macro AT_DSPECIALAIR 41;

//B - Reversals
switch (attack)
{
    case AT_NSPECIAL:
    case AT_FSPECIAL:
    case AT_USPECIAL:
    case AT_DSPECIAL:
    case AT_DSPECIALAIR:
        trigger_b_reverse();
        break;
}

switch (attack)
{
    case AT_DAIR:
    if (window = 1 && window_timer = 7)
    {
        if (ammo = 0){
            iasa_script();
            set_state(free?PS_IDLE_AIR:PS_IDLE);
            if (spr_dir = 1) spawn_hit_fx(x, y-60, empty);
            if (spr_dir = -1) spawn_hit_fx(x, y-60, empty_backwards);
            sound_play(asset_get("sfx_blow_weak1"));
        }
        else{
            ammo = ammo - 2;
        }
    }
    break;

    case AT_DTILT:
    if (window = 3 && window_timer = 6)
    {
        if (down_down){
            window = 4;
            move_cooldown[AT_DTILT] = 10;
        }
    }
    break;

    case AT_UTILT:
    if (window = 3 && !free)
    {
            if (was_parried){
            iasa_script();
            set_state(PS_PRATLAND);
            }
            else{
            iasa_script();
            set_state(PS_LAND);
            }
    }
    if (window = 3 && window_timer = 15 && was_parried)
    {
            iasa_script();
            set_state(PS_PRATFALL);
    }
    can_move = false;
    break;

    case AT_DATTACK:
    if (window = 1 && window_timer = 6 && !hitpause) sound_play(asset_get("sfx_swipe_weak2"));
    if (window = 2)
    {
        if (window_timer = 5 && !hitpause) sound_play(asset_get("sfx_swipe_weak1"));
        if (window_timer = 13 && !hitpause) sound_play(asset_get("sfx_swipe_weak1"));
        if (window_timer = 19 && !hitpause) sound_play(asset_get("sfx_swipe_weak1"));
        if (window_timer = 27 && !hitpause) sound_play(asset_get("sfx_swipe_medium1"));
    }
    break;

    case AT_FSTRONG:
    if (window = 2 && window_timer = 3 && !hitpause) sound_play(asset_get("sfx_ell_strong_attack_explosion"));
    break;

    case AT_USTRONG:
    if (window = 3 && window_timer = 8 && !hitpause) sound_play(asset_get("sfx_ell_strong_attack_explosion"));
    break;

    case AT_DSTRONG:
    if (window = 3 && window_timer = 5 && !hitpause) sound_play(asset_get("sfx_swipe_medium1"));
    if (window = 4 && window_timer = 8 && !hitpause) sound_play(asset_get("sfx_swipe_medium2"));
    break;

    case AT_USPECIAL:
    if (window = 1 && window_timer = 1 && ammo > 0) vsp = -4;
    if (window = 1 && window_timer = 10)
    {
        if (ammo = 0){
            iasa_script();
            set_state(free?PS_IDLE_AIR:PS_IDLE);
            spawn_hit_fx(x, y-60, empty);
            sound_play(asset_get("sfx_blow_weak1"));
        }
        else{
            ammo = ammo - 4;
            move_cooldown[AT_USPECIAL] = 9999;
        }
    }
    if (window = 3 && window_timer > 14)
    {
        can_attack = true;
        can_special = true;
        can_jump = true;
    }
    break;

    case AT_DSPECIALAIR:
    if (window = 1 && window_timer = 1 && ammo > 0) vsp = -5;
    if (window = 1 && window_timer = 17)
    {
        if (ammo = 0){
            iasa_script();
            set_state(free?PS_IDLE_AIR:PS_IDLE);
            if (spr_dir = 1) spawn_hit_fx(x, y-60, empty);
            if (spr_dir = -1) spawn_hit_fx(x, y-60, empty_backwards);
            sound_play(asset_get("sfx_blow_weak1"));
        }
        else{
            ammo = ammo - 6;
            move_cooldown[AT_DSPECIALAIR] = 9999;
            if (balloonout = true){
                balloonout = false;
                balloonstate = 2;    
                move_cooldown[AT_NSPECIAL] = 800;
            }
        }
    }
    if (window > 1 && !free)
    {
            if (was_parried){
            iasa_script();
            set_state(PS_PRATLAND);
            }
            else{
            iasa_script();
            set_state(PS_LAND);
            }
    }
    break;


    case AT_FSPECIAL:
    if (window = 3 && window_timer = 7)
    {
            if (ammo = 0){
                iasa_script();
                set_state(free?PS_IDLE_AIR:PS_IDLE);
                if (spr_dir = 1) spawn_hit_fx(x, y-60, empty);
                if (spr_dir = -1) spawn_hit_fx(x, y-60, empty_backwards);
                sound_play(asset_get("sfx_blow_weak1"));
            }
            else{
                window = 4;
                window_timer = 1;
        }
    }
    if (window > 2 && !free)
    {
            iasa_script();
            set_state(PS_LAND);
    }
    if (window = 1 && window_timer = 6 && ammo = 0){
        iasa_script();
        set_state(free?PS_IDLE_AIR:PS_IDLE);
        if (spr_dir = 1) spawn_hit_fx(x, y-60, empty);
        if (spr_dir = -1) spawn_hit_fx(x, y-60, empty_backwards);
        sound_play(asset_get("sfx_blow_weak1"));
    }
    if (window = 1 && ammo != 0){
        hsp = hsp / 1.3;
        if (window_timer = 1 && free) vsp = -2;
    }
    if (window = 4 && window_timer = 7){
        sound_play(asset_get("sfx_ell_strong_attack_explosion"));
        ammo = ammo - 2;
        move_cooldown[AT_FSPECIAL] = 9999;
        vsp = -4;
        hsp = -5 * spr_dir;
    }
    break;

    case AT_NSPECIAL:
    if (window = 2 && window_timer = 1)
    {
        if (balloonout = false){
            instance_create(x, y + -20, "obj_article1");
            balloonout = true;
            balloonstate = 1;    
        }    
        else{
            balloonout = false;
            balloonstate = 2;    
            iasa_script();
            set_state(free?PS_IDLE_AIR:PS_IDLE);
            move_cooldown[AT_NSPECIAL] = 800;
        }    
    }
    break;          
}