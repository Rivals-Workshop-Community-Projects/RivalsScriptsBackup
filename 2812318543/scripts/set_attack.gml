can_dspec = false;
dspec_buffer = false;

switch(attack){
    
    case AT_DATTACK:
        sound_play(asset_get("sfx_shovel_swing_heavy2"), false, noone, 0.7, 1.0);
        break;
    
    case AT_FTILT:
        sound_play(asset_get("sfx_shovel_swing_light1"));
        break;
    
    case AT_FAIR:
        sound_play(asset_get("sfx_clairen_uspecial_rise"), false, noone, 0.7, 1.0);
        sound_play(asset_get("sfx_waveland_abs"));
        break;
    
    case AT_UAIR:
        sound_play(asset_get("sfx_shovel_swing_light1"));
        break;
    
    case AT_BAIR:
        sound_play(asset_get("sfx_charge_blade_ready"));
        sound_play(asset_get("sfx_clairen_swing_mega_delayed"));
        break;
    
    case AT_DAIR:
        sound_play(asset_get("sfx_shovel_swing_heavy2"), false, noone, 0.8, 1.0);
        break;
    
    case AT_FSTRONG:
        sound_play(asset_get("sfx_absa_new_whip2"));
        sound_play(asset_get("sfx_shovel_swing_med1"), false, noone, 0.7, 1.0);
        set_attack_value(AT_FSTRONG, AG_NUM_WINDOWS, 4);
        break;
    
    case AT_DSTRONG:
        sound_play(asset_get("sfx_absa_new_whip1"), false, noone, 0.7, 1.0);
        break;
    
    case AT_USTRONG:
        ustrong_loop = false;
        break;
    
    case AT_NSPECIAL:
        set_attack_value(AT_NSPECIAL, AG_NUM_WINDOWS, 9);
        set_window_value(AT_NSPECIAL, 3, AG_WINDOW_CANCEL_TYPE, 2);
        set_window_value(AT_NSPECIAL, 3, AG_WINDOW_CANCEL_FRAME, 5);
        set_window_value(AT_NSPECIAL, 6, AG_WINDOW_CANCEL_TYPE, 2);
        set_window_value(AT_NSPECIAL, 6, AG_WINDOW_CANCEL_FRAME, 5);
        break;//*/
    
    case AT_FSPECIAL:
        sound_play(asset_get("sfx_absa_new_whip1"));
        sound_play(asset_get("sfx_boss_vortex_start"), false, noone, 0.7, 1.2);
        sound_play(asset_get("sfx_shovel_swing_light2"));
        break;
    
    case AT_USPECIAL:
        sound_play(asset_get("sfx_clairen_swing_mega_delayed"), false, noone, 0.7, 1);
        break;
    
    case AT_DSPECIAL:
        if(!in_affinity) set_move_cooldown[AT_DSPECIAL] = 2;
        break;
    
    case AT_TAUNT:
        if(down_down){
            attack = AT_TAUNT_2;
            dtaunt_loop = true;
        }
        break;
}