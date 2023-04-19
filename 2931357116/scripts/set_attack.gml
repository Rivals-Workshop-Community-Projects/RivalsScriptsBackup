if form{
    window = attack_frameskip[attack][form - 1];
    set_attack_value(AT_FSTRONG, AG_STRONG_CHARGE_WINDOW, attack_frameskip[attack][form - 1]);
    set_attack_value(AT_DSTRONG, AG_STRONG_CHARGE_WINDOW, attack_frameskip[attack][form - 1]);
    set_attack_value(AT_USTRONG, AG_STRONG_CHARGE_WINDOW, attack_frameskip[attack][form - 1]);
}else{
    set_attack_value(AT_FSTRONG, AG_STRONG_CHARGE_WINDOW, 1);
    set_attack_value(AT_DSTRONG, AG_STRONG_CHARGE_WINDOW, 1);
    set_attack_value(AT_USTRONG, AG_STRONG_CHARGE_WINDOW, 1);
}

set_attack_value(AT_FSTRONG, AG_HAS_LANDING_LAG, 0);
set_attack_value(AT_USTRONG, AG_HAS_LANDING_LAG, 0);
set_attack_value(AT_DSTRONG, AG_HAS_LANDING_LAG, 0);
set_attack_value(AT_DAIR, AG_CATEGORY, 1);

if form == 3{
    set_attack_value(AT_FSTRONG, AG_CATEGORY, 1);
    set_attack_value(AT_USTRONG, AG_CATEGORY, 1);
    set_attack_value(AT_DSTRONG, AG_CATEGORY, 1);
    
    set_attack_value(AT_UTILT, AG_CATEGORY, 2);
    set_attack_value(AT_JAB, AG_CATEGORY, 2);
    set_attack_value(AT_FTILT, AG_CATEGORY, 2);
    set_attack_value(AT_DTILT, AG_CATEGORY, 2);
    set_attack_value(AT_DATTACK, AG_CATEGORY, 2);
}else{
    set_attack_value(AT_FSTRONG, AG_CATEGORY, 0);
    set_attack_value(AT_USTRONG, AG_CATEGORY, 0);
    set_attack_value(AT_DSTRONG, AG_CATEGORY, (form = 1? 2: 0));
    
    set_attack_value(AT_UTILT, AG_CATEGORY, 0);
    set_attack_value(AT_JAB, AG_CATEGORY, 0);
    set_attack_value(AT_FTILT, AG_CATEGORY, 0);
    set_attack_value(AT_DTILT, AG_CATEGORY, 0);
    set_attack_value(AT_DATTACK, AG_CATEGORY, 0);
}

switch form{
    case 1:
    valor_cool = 30;
    afterimage = 0;
    set_hitbox_value(AT_NSPECIAL, 3, HG_EXTRA_HITPAUSE, 10);
    set_hitbox_value(AT_NSPECIAL, 3, HG_HITSTUN_MULTIPLIER, 1);
    set_hitbox_value(AT_NSPECIAL, 3, HG_DRIFT_MULTIPLIER, 1);
    if attack == AT_NSPECIAL && vl_point && !move_cooldown[AT_NSPECIAL]{
        vl_point--;
        valor_cool = 80;
        afterimage = 1;
        set_hitbox_value(AT_NSPECIAL, 3, HG_EXTRA_HITPAUSE, 40);
        set_hitbox_value(AT_NSPECIAL, 3, HG_HITSTUN_MULTIPLIER, 2);
        set_hitbox_value(AT_NSPECIAL, 3, HG_DRIFT_MULTIPLIER, 0);
    }
    if attack == AT_DSPECIAL{
        spawn_base_dust(x, y, free? "djump": "jump");
    }
    set_attack_value(AT_DAIR, AG_CATEGORY, 2);
    break;
    
    case 2:
    switch attack{
        case AT_FTILT:
        enhance = 0;
        if mp && !mp_recharge && !move_cooldown[AT_FTILT]{
            enhance = 1;
            mp -= 250;
            
            set_hitbox_value(AT_FTILT, 7, HG_VISUAL_EFFECT, 21);
            set_hitbox_value(AT_FTILT, 8, HG_VISUAL_EFFECT, 21);
            set_hitbox_value(AT_FTILT, 9, HG_VISUAL_EFFECT, 21);
            set_hitbox_value(AT_FTILT, 10, HG_VISUAL_EFFECT, 21);
            set_hitbox_value(AT_FTILT, 11, HG_VISUAL_EFFECT, 157);
            
            set_hitbox_value(AT_FTILT, 7, HG_HIT_SFX, sound_get("sora_thunder4"));
            set_hitbox_value(AT_FTILT, 8, HG_HIT_SFX, sound_get("sora_thunder4"));
            set_hitbox_value(AT_FTILT, 9, HG_HIT_SFX, sound_get("sora_thunder4"));
            set_hitbox_value(AT_FTILT, 10, HG_HIT_SFX, sound_get("sora_thunder4"));
            set_hitbox_value(AT_FTILT, 11, HG_HIT_SFX, sound_get("sora_thunder3"));
            
            set_hitbox_value(AT_FTILT, 11, HG_EXTRA_HITPAUSE, 30);
            set_hitbox_value(AT_FTILT, 11, HG_DAMAGE, 6);
        }else{
            set_hitbox_value(AT_FTILT, 7, HG_VISUAL_EFFECT, hfx[0]);
            set_hitbox_value(AT_FTILT, 8, HG_VISUAL_EFFECT, hfx[0]);
            set_hitbox_value(AT_FTILT, 9, HG_VISUAL_EFFECT, hfx[0]);
            set_hitbox_value(AT_FTILT, 10, HG_VISUAL_EFFECT, hfx[0]);
            set_hitbox_value(AT_FTILT, 11, HG_VISUAL_EFFECT, hfx[0]);
            
            set_hitbox_value(AT_FTILT, 7, HG_HIT_SFX, sound_get("KB_hitweak1"));
            set_hitbox_value(AT_FTILT, 8, HG_HIT_SFX, sound_get("KB_hitweak2"));
            set_hitbox_value(AT_FTILT, 9, HG_HIT_SFX, sound_get("KB_hitweak1"));
            set_hitbox_value(AT_FTILT, 10, HG_HIT_SFX, sound_get("KB_hitweak2"));
            set_hitbox_value(AT_FTILT, 11, HG_HIT_SFX, sound_get("KB_hitheavy2"));
            
            set_hitbox_value(AT_FTILT, 11, HG_EXTRA_HITPAUSE, 0);
            set_hitbox_value(AT_FTILT, 11, HG_DAMAGE, 4);
        }
        break;
        case AT_UTILT:
        enhance = 0;
        if mp && !mp_recharge && !move_cooldown[AT_UTILT]{
            mp -= 100;
            enhance = 1;
            set_hitbox_value(AT_UTILT, 12, HG_DAMAGE, 4);
            set_hitbox_value(AT_UTILT, 12, HG_VISUAL_EFFECT, 199);
        }else{
            set_hitbox_value(AT_UTILT, 12, HG_DAMAGE, 2);
            set_hitbox_value(AT_UTILT, 12, HG_VISUAL_EFFECT, hfx[0]);
        }
        break;
        case AT_DATTACK:
        enhance = 0;
        if mp && !mp_recharge && !move_cooldown[AT_DATTACK]{
            mp -= 150;
            enhance = 1;
            
            set_hitbox_value(AT_DATTACK, 5, HG_DAMAGE, 9);
            set_hitbox_value(AT_DATTACK, 5, HG_KNOCKBACK_SCALING, 0.6);
            set_hitbox_value(AT_DATTACK, 5, HG_HITPAUSE_SCALING, 0.8);
            set_hitbox_value(AT_DATTACK, 5, HG_EFFECT, 1);
            set_hitbox_value(AT_DATTACK, 5, HG_VISUAL_EFFECT, 3);
        }else{
            set_hitbox_value(AT_DATTACK, 5, HG_DAMAGE, 6);
            set_hitbox_value(AT_DATTACK, 5, HG_KNOCKBACK_SCALING, 0.3);
            set_hitbox_value(AT_DATTACK, 5, HG_HITPAUSE_SCALING, 0.5);
            set_hitbox_value(AT_DATTACK, 5, HG_EFFECT, 0);
            set_hitbox_value(AT_DATTACK, 5, HG_VISUAL_EFFECT, hfx[0]);
        }
        break;
        case AT_FSTRONG:
        enhance = 0;
        if mp && !mp_recharge && !move_cooldown[AT_FSTRONG]{
            mp -= 100;
            enhance = 1;
            set_window_value(AT_FSTRONG, 9, AG_WINDOW_ANIM_FRAME_START, 14);
            set_window_value(AT_FSTRONG, 10, AG_WINDOW_ANIM_FRAME_START, 18);
            set_window_value(AT_FSTRONG, 11, AG_WINDOW_ANIM_FRAME_START, 21);
            set_window_value(AT_FSTRONG, 12, AG_WINDOW_ANIM_FRAME_START, 24);
            
            set_hitbox_value(AT_FSTRONG, 5, HG_DAMAGE, 9);
            set_hitbox_value(AT_FSTRONG, 5, HG_BASE_KNOCKBACK, 8);
            set_hitbox_value(AT_FSTRONG, 5, HG_KNOCKBACK_SCALING, 0.7);
            set_hitbox_value(AT_FSTRONG, 5, HG_BASE_HITPAUSE, 8);
            set_hitbox_value(AT_FSTRONG, 5, HG_HITPAUSE_SCALING, 0.8);
            set_hitbox_value(AT_FSTRONG, 5, HG_VISUAL_EFFECT, 199);
            set_hitbox_value(AT_FSTRONG, 5, HG_HIT_SFX, sound_get("KB_hitheavy2"));
            
        }else{
            set_window_value(AT_FSTRONG, 9, AG_WINDOW_ANIM_FRAME_START, 1);
            set_window_value(AT_FSTRONG, 10, AG_WINDOW_ANIM_FRAME_START, 5);
            set_window_value(AT_FSTRONG, 11, AG_WINDOW_ANIM_FRAME_START, 8);
            set_window_value(AT_FSTRONG, 12, AG_WINDOW_ANIM_FRAME_START, 11);
            
            set_hitbox_value(AT_FSTRONG, 5, HG_DAMAGE, 7);
            set_hitbox_value(AT_FSTRONG, 5, HG_BASE_KNOCKBACK, 7);
            set_hitbox_value(AT_FSTRONG, 5, HG_KNOCKBACK_SCALING, 0.6);
            set_hitbox_value(AT_FSTRONG, 5, HG_BASE_HITPAUSE, 7);
            set_hitbox_value(AT_FSTRONG, 5, HG_HITPAUSE_SCALING, 0.7);
            set_hitbox_value(AT_FSTRONG, 5, HG_VISUAL_EFFECT, hfx[0]);
            set_hitbox_value(AT_FSTRONG, 5, HG_HIT_SFX, sound_get("KB_hitheavy2"));
        }
        break;
        case AT_DSTRONG:
        enhance = 0;
        if mp && !mp_recharge && !move_cooldown[AT_DSTRONG]{
            mp -= 300;
            enhance = 1;
            
            set_window_value(AT_DSTRONG, 7, AG_WINDOW_ANIM_FRAME_START, 15);
            set_window_value(AT_DSTRONG, 8, AG_WINDOW_ANIM_FRAME_START, 17);
            set_window_value(AT_DSTRONG, 9, AG_WINDOW_ANIM_FRAME_START, 18);
            set_window_value(AT_DSTRONG, 10, AG_WINDOW_ANIM_FRAME_START, 26);
            
            set_window_value(AT_DSTRONG, 9, AG_WINDOW_ANIM_FRAMES, 8);
            set_window_value(AT_DSTRONG, 10, AG_WINDOW_ANIM_FRAMES, 6);
            
            set_window_value(AT_DSTRONG, 9, AG_WINDOW_LENGTH, 24);
            set_window_value(AT_DSTRONG, 10, AG_WINDOW_LENGTH, 18);
            
            set_hitbox_value(AT_DSTRONG, 7, HG_HITBOX_X, -30);
            set_hitbox_value(AT_DSTRONG, 7, HG_HITBOX_Y, -22);
            set_hitbox_value(AT_DSTRONG, 7, HG_WIDTH, 70);
            set_hitbox_value(AT_DSTRONG, 7, HG_HEIGHT, 50);
            set_hitbox_value(AT_DSTRONG, 7, HG_DAMAGE, 2);
            set_hitbox_value(AT_DSTRONG, 7, HG_ANGLE_FLIPPER, 2);
            set_hitbox_value(AT_DSTRONG, 7, HG_ANGLE, 45);
            set_hitbox_value(AT_DSTRONG, 7, HG_BASE_KNOCKBACK, 6);
            set_hitbox_value(AT_DSTRONG, 7, HG_KNOCKBACK_SCALING, 0);
            set_hitbox_value(AT_DSTRONG, 7, HG_BASE_HITPAUSE, 4);
            set_hitbox_value(AT_DSTRONG, 7, HG_HITPAUSE_SCALING, 0);
            set_hitbox_value(AT_DSTRONG, 7, HG_HIT_SFX, sound_get("KB_hitmedium1"));
            set_hitbox_value(AT_DSTRONG, 7, HG_VISUAL_EFFECT, 252);
            set_hitbox_value(AT_DSTRONG, 7, HG_TECHABLE, 3);
            
            set_hitbox_value(AT_DSTRONG, 8, HG_WINDOW_CREATION_FRAME, 3);
            set_hitbox_value(AT_DSTRONG, 8, HG_HITBOX_X, 32);
            set_hitbox_value(AT_DSTRONG, 8, HG_HITBOX_Y, -25);
            set_hitbox_value(AT_DSTRONG, 8, HG_WIDTH, 74);
            set_hitbox_value(AT_DSTRONG, 8, HG_HEIGHT, 56);
            set_hitbox_value(AT_DSTRONG, 8, HG_DAMAGE, 2);
            set_hitbox_value(AT_DSTRONG, 8, HG_ANGLE_FLIPPER, 2);
            set_hitbox_value(AT_DSTRONG, 8, HG_ANGLE, 135);
            set_hitbox_value(AT_DSTRONG, 8, HG_BASE_KNOCKBACK, 6);
            set_hitbox_value(AT_DSTRONG, 8, HG_KNOCKBACK_SCALING, 0);
            set_hitbox_value(AT_DSTRONG, 8, HG_BASE_HITPAUSE, 4);
            set_hitbox_value(AT_DSTRONG, 8, HG_HITPAUSE_SCALING, 0);
            set_hitbox_value(AT_DSTRONG, 8, HG_HIT_SFX, sound_get("KB_hitmedium1"));
            set_hitbox_value(AT_DSTRONG, 8, HG_VISUAL_EFFECT, 252);
            set_hitbox_value(AT_DSTRONG, 8, HG_TECHABLE, 3);
            
            set_hitbox_value(AT_DSTRONG, 9, HG_WINDOW_CREATION_FRAME, 6);
            set_hitbox_value(AT_DSTRONG, 9, HG_HITBOX_X, -32);
            set_hitbox_value(AT_DSTRONG, 9, HG_HITBOX_Y, -18);
            set_hitbox_value(AT_DSTRONG, 9, HG_WIDTH, 80);
            set_hitbox_value(AT_DSTRONG, 9, HG_HEIGHT, 40);
            set_hitbox_value(AT_DSTRONG, 9, HG_DAMAGE, 2);
            set_hitbox_value(AT_DSTRONG, 9, HG_ANGLE_FLIPPER, 2);
            set_hitbox_value(AT_DSTRONG, 9, HG_ANGLE, 45);
            set_hitbox_value(AT_DSTRONG, 9, HG_BASE_KNOCKBACK, 6);
            set_hitbox_value(AT_DSTRONG, 9, HG_KNOCKBACK_SCALING, 0);
            set_hitbox_value(AT_DSTRONG, 9, HG_BASE_HITPAUSE, 4);
            set_hitbox_value(AT_DSTRONG, 9, HG_HITPAUSE_SCALING, 0);
            set_hitbox_value(AT_DSTRONG, 9, HG_HIT_SFX, sound_get("KB_hitmedium1"));
            set_hitbox_value(AT_DSTRONG, 9, HG_VISUAL_EFFECT, 252);
            set_hitbox_value(AT_DSTRONG, 9, HG_TECHABLE, 3);
            
            set_hitbox_value(AT_DSTRONG, 10, HG_WINDOW_CREATION_FRAME, 9);
            set_hitbox_value(AT_DSTRONG, 10, HG_HITBOX_X, 0);
            set_hitbox_value(AT_DSTRONG, 10, HG_HITBOX_Y, -34);
            set_hitbox_value(AT_DSTRONG, 10, HG_WIDTH, 115);
            set_hitbox_value(AT_DSTRONG, 10, HG_HEIGHT, 60);
            set_hitbox_value(AT_DSTRONG, 10, HG_DAMAGE, 6);
            set_hitbox_value(AT_DSTRONG, 10, HG_ANGLE_FLIPPER, 6);
            set_hitbox_value(AT_DSTRONG, 10, HG_ANGLE, 45);
            set_hitbox_value(AT_DSTRONG, 10, HG_BASE_KNOCKBACK, 7);
            set_hitbox_value(AT_DSTRONG, 10, HG_KNOCKBACK_SCALING, 0.7);
            set_hitbox_value(AT_DSTRONG, 10, HG_BASE_HITPAUSE, 9);
            set_hitbox_value(AT_DSTRONG, 10, HG_HITPAUSE_SCALING, 0.9);
            set_hitbox_value(AT_DSTRONG, 10, HG_HIT_SFX, sound_get("KB_hitheavy1"));
            set_hitbox_value(AT_DSTRONG, 10, HG_VISUAL_EFFECT, 253);
            set_hitbox_value(AT_DSTRONG, 10, HG_TECHABLE, 1);
            set_hitbox_value(AT_DSTRONG, 10, HG_EFFECT, 1);
            
        }else{
            set_window_value(AT_DSTRONG, 7, AG_WINDOW_ANIM_FRAME_START, 1);
            set_window_value(AT_DSTRONG, 8, AG_WINDOW_ANIM_FRAME_START, 3);
            set_window_value(AT_DSTRONG, 9, AG_WINDOW_ANIM_FRAME_START, 4);
            set_window_value(AT_DSTRONG, 10, AG_WINDOW_ANIM_FRAME_START, 11);
            
            set_window_value(AT_DSTRONG, 9, AG_WINDOW_ANIM_FRAMES, 7);
            set_window_value(AT_DSTRONG, 10, AG_WINDOW_ANIM_FRAMES, 4);
            
            set_window_value(AT_DSTRONG, 9, AG_WINDOW_LENGTH, 21);
            set_window_value(AT_DSTRONG, 10, AG_WINDOW_LENGTH, 12);
            
            set_hitbox_value(AT_DSTRONG, 7, HG_HITBOX_X, 32);
            set_hitbox_value(AT_DSTRONG, 7, HG_HITBOX_Y, -15);
            set_hitbox_value(AT_DSTRONG, 7, HG_WIDTH, 80);
            set_hitbox_value(AT_DSTRONG, 7, HG_HEIGHT, 40);
            set_hitbox_value(AT_DSTRONG, 7, HG_DAMAGE, 8);
            set_hitbox_value(AT_DSTRONG, 7, HG_ANGLE_FLIPPER, 0);
            set_hitbox_value(AT_DSTRONG, 7, HG_ANGLE, 45);
            set_hitbox_value(AT_DSTRONG, 7, HG_BASE_KNOCKBACK, 7);
            set_hitbox_value(AT_DSTRONG, 7, HG_KNOCKBACK_SCALING, 0.5);
            set_hitbox_value(AT_DSTRONG, 7, HG_BASE_HITPAUSE, 8);
            set_hitbox_value(AT_DSTRONG, 7, HG_HITPAUSE_SCALING, 0.7);
            set_hitbox_value(AT_DSTRONG, 7, HG_HIT_SFX, sound_get("KB_hitheavy1"));
            set_hitbox_value(AT_DSTRONG, 7, HG_VISUAL_EFFECT, hfx[0]);
            set_hitbox_value(AT_DSTRONG, 7, HG_TECHABLE, 0);
            
            set_hitbox_value(AT_DSTRONG, 8, HG_WINDOW_CREATION_FRAME, 6);
            set_hitbox_value(AT_DSTRONG, 8, HG_HITBOX_X, -36);
            set_hitbox_value(AT_DSTRONG, 8, HG_HITBOX_Y, -13);
            set_hitbox_value(AT_DSTRONG, 8, HG_WIDTH, 80);
            set_hitbox_value(AT_DSTRONG, 8, HG_HEIGHT, 30);
            set_hitbox_value(AT_DSTRONG, 8, HG_DAMAGE, 8);
            set_hitbox_value(AT_DSTRONG, 8, HG_ANGLE_FLIPPER, 0);
            set_hitbox_value(AT_DSTRONG, 8, HG_ANGLE, 135);
            set_hitbox_value(AT_DSTRONG, 8, HG_BASE_KNOCKBACK, 7);
            set_hitbox_value(AT_DSTRONG, 8, HG_KNOCKBACK_SCALING, 0.5);
            set_hitbox_value(AT_DSTRONG, 8, HG_BASE_HITPAUSE, 8);
            set_hitbox_value(AT_DSTRONG, 8, HG_HITPAUSE_SCALING, 0.7);
            set_hitbox_value(AT_DSTRONG, 8, HG_HIT_SFX, sound_get("KB_hitmedium2"));
            set_hitbox_value(AT_DSTRONG, 8, HG_VISUAL_EFFECT, hfx[0]);
            set_hitbox_value(AT_DSTRONG, 8, HG_TECHABLE, 0);
            
            set_hitbox_value(AT_DSTRONG, 9, HG_WINDOW_CREATION_FRAME, 9);
            set_hitbox_value(AT_DSTRONG, 9, HG_HITBOX_X, 32);
            set_hitbox_value(AT_DSTRONG, 9, HG_HITBOX_Y, -20);
            set_hitbox_value(AT_DSTRONG, 9, HG_WIDTH, 80);
            set_hitbox_value(AT_DSTRONG, 9, HG_HEIGHT, 40);
            set_hitbox_value(AT_DSTRONG, 9, HG_DAMAGE, 8);
            set_hitbox_value(AT_DSTRONG, 9, HG_ANGLE_FLIPPER, 0);
            set_hitbox_value(AT_DSTRONG, 9, HG_ANGLE, 45);
            set_hitbox_value(AT_DSTRONG, 9, HG_BASE_KNOCKBACK, 7);
            set_hitbox_value(AT_DSTRONG, 9, HG_KNOCKBACK_SCALING, 0.5);
            set_hitbox_value(AT_DSTRONG, 9, HG_BASE_HITPAUSE, 8);
            set_hitbox_value(AT_DSTRONG, 9, HG_HITPAUSE_SCALING, 0.7);
            set_hitbox_value(AT_DSTRONG, 9, HG_HIT_SFX, sound_get("KB_hitheavy1"));
            set_hitbox_value(AT_DSTRONG, 9, HG_VISUAL_EFFECT, hfx[0]);
            set_hitbox_value(AT_DSTRONG, 9, HG_TECHABLE, 0);
            
            set_hitbox_value(AT_DSTRONG, 10, HG_WINDOW_CREATION_FRAME, 15);
            set_hitbox_value(AT_DSTRONG, 10, HG_HITBOX_X, -10);
            set_hitbox_value(AT_DSTRONG, 10, HG_HITBOX_Y, -18);
            set_hitbox_value(AT_DSTRONG, 10, HG_WIDTH, 104);
            set_hitbox_value(AT_DSTRONG, 10, HG_HEIGHT, 40);
            set_hitbox_value(AT_DSTRONG, 10, HG_DAMAGE, 8);
            set_hitbox_value(AT_DSTRONG, 10, HG_ANGLE_FLIPPER, 0);
            set_hitbox_value(AT_DSTRONG, 10, HG_ANGLE, 135);
            set_hitbox_value(AT_DSTRONG, 10, HG_BASE_KNOCKBACK, 7);
            set_hitbox_value(AT_DSTRONG, 10, HG_KNOCKBACK_SCALING, 0.5);
            set_hitbox_value(AT_DSTRONG, 10, HG_BASE_HITPAUSE, 8);
            set_hitbox_value(AT_DSTRONG, 10, HG_HITPAUSE_SCALING, 0.7);
            set_hitbox_value(AT_DSTRONG, 10, HG_HIT_SFX, sound_get("KB_hitmedium2"));
            set_hitbox_value(AT_DSTRONG, 10, HG_VISUAL_EFFECT, hfx[0]);
            set_hitbox_value(AT_DSTRONG, 10, HG_EFFECT, 0);
            
        }
        break;
        case AT_USTRONG:
        enhance = 0;
        if mp && !mp_recharge && !move_cooldown[AT_USTRONG]{
            mp -= 250;
            enhance = 1;
            
            set_window_value(AT_USTRONG, 7, AG_WINDOW_ANIM_FRAME_START, 14);
            set_window_value(AT_USTRONG, 8, AG_WINDOW_ANIM_FRAME_START, 17);
            set_window_value(AT_USTRONG, 9, AG_WINDOW_ANIM_FRAME_START, 24);
            
            set_hitbox_value(AT_USTRONG, 8, HG_DAMAGE, 9);
            set_hitbox_value(AT_USTRONG, 8, HG_EXTRA_HITPAUSE, 40);
            set_hitbox_value(AT_USTRONG, 8, HG_VISUAL_EFFECT, 157);
            set_hitbox_value(AT_USTRONG, 8, HG_HIT_SFX, sound_get("sora_thunder3"));
        }else{
            set_window_value(AT_USTRONG, 7, AG_WINDOW_ANIM_FRAME_START, 1);
            set_window_value(AT_USTRONG, 8, AG_WINDOW_ANIM_FRAME_START, 4);
            set_window_value(AT_USTRONG, 9, AG_WINDOW_ANIM_FRAME_START, 11);
            
            set_hitbox_value(AT_USTRONG, 8, HG_DAMAGE, 7);
            set_hitbox_value(AT_USTRONG, 8, HG_EXTRA_HITPAUSE, 0);
            set_hitbox_value(AT_USTRONG, 8, HG_VISUAL_EFFECT, hfx[0]);
            set_hitbox_value(AT_USTRONG, 8, HG_HIT_SFX, sound_get("OK_hitmedium1"));
        }
        break;
        case AT_BAIR:
        enhance = 0;
        if mp && !mp_recharge && !move_cooldown[AT_BAIR]{
            mp -= 100;
            enhance = 1;
            
            set_hitbox_value(AT_BAIR, 4, HG_VISUAL_EFFECT, -1);
            set_hitbox_value(AT_BAIR, 5, HG_VISUAL_EFFECT, -1);
            set_hitbox_value(AT_BAIR, 6, HG_DAMAGE, 9);
            set_hitbox_value(AT_BAIR, 6, HG_VISUAL_EFFECT, 253);
            set_hitbox_value(AT_BAIR, 6, HG_EFFECT, 1);
        }else{
            set_hitbox_value(AT_BAIR, 4, HG_VISUAL_EFFECT, hfx[0]);
            set_hitbox_value(AT_BAIR, 5, HG_VISUAL_EFFECT, hfx[0]);
            set_hitbox_value(AT_BAIR, 6, HG_DAMAGE, 5);
            set_hitbox_value(AT_BAIR, 6, HG_VISUAL_EFFECT, hfx[0]);
            set_hitbox_value(AT_BAIR, 6, HG_EFFECT, 0);
        }
        break;
        case AT_FAIR:
        enhance = 0;
        if mp && !mp_recharge && !move_cooldown[AT_FAIR]{
            mp -= 100;
            enhance = 1;
            
            set_window_value(AT_FAIR, 7, AG_WINDOW_LENGTH, 12);
            set_window_value(AT_FAIR, 7, AG_WINDOW_ANIM_FRAMES, 5);
            set_window_value(AT_FAIR, 7, AG_WINDOW_ANIM_FRAME_START, 1);
            set_window_value(AT_FAIR, 7, AG_WINDOW_VSPEED, -2);
            set_window_value(AT_FAIR, 7, AG_WINDOW_HAS_SFX, 1);
            set_window_value(AT_FAIR, 7, AG_WINDOW_SFX, sound_get("wisdom_fair"));
            set_window_value(AT_FAIR, 7, AG_WINDOW_SFX_FRAME, 10);
            
            set_window_value(AT_FAIR, 8, AG_WINDOW_LENGTH, 3);
            set_window_value(AT_FAIR, 8, AG_WINDOW_ANIM_FRAMES, 1);
            set_window_value(AT_FAIR, 8, AG_WINDOW_HSPEED, -10);
            set_window_value(AT_FAIR, 8, AG_WINDOW_ANIM_FRAME_START, 6);
            
            set_window_value(AT_FAIR, 9, AG_WINDOW_LENGTH, 8);
            set_window_value(AT_FAIR, 9, AG_WINDOW_ANIM_FRAMES, 3);
            set_window_value(AT_FAIR, 9, AG_WINDOW_ANIM_FRAME_START, 7);
            
            
            set_hitbox_value(AT_FAIR, 8, HG_HITBOX_X, 80);
            set_hitbox_value(AT_FAIR, 8, HG_HITBOX_Y, -30);
            set_hitbox_value(AT_FAIR, 8, HG_WIDTH, 110);
            set_hitbox_value(AT_FAIR, 8, HG_HEIGHT, 80);
            set_hitbox_value(AT_FAIR, 8, HG_DAMAGE, 6);
            set_hitbox_value(AT_FAIR, 8, HG_VISUAL_EFFECT, 0);
            set_hitbox_value(AT_FAIR, 8, HG_HIT_SFX, asset_get("sfx_icehit_medium1"));
        }else{
            set_window_value(AT_FAIR, 7, AG_WINDOW_LENGTH, 8);
            set_window_value(AT_FAIR, 7, AG_WINDOW_ANIM_FRAMES, 3);
            set_window_value(AT_FAIR, 7, AG_WINDOW_ANIM_FRAME_START, 10);
            set_window_value(AT_FAIR, 7, AG_WINDOW_VSPEED, -2);
            set_window_value(AT_FAIR, 7, AG_WINDOW_HAS_SFX, 1);
            set_window_value(AT_FAIR, 7, AG_WINDOW_SFX, sound_get("OK_swipemedium1"));
            set_window_value(AT_FAIR, 7, AG_WINDOW_SFX_FRAME, 6);
            
            set_window_value(AT_FAIR, 8, AG_WINDOW_LENGTH, 4);
            set_window_value(AT_FAIR, 8, AG_WINDOW_ANIM_FRAMES, 2);
            set_window_value(AT_FAIR, 8, AG_WINDOW_HSPEED, 0);
            set_window_value(AT_FAIR, 8, AG_WINDOW_ANIM_FRAME_START, 13);
            
            set_window_value(AT_FAIR, 9, AG_WINDOW_LENGTH, 10);
            set_window_value(AT_FAIR, 9, AG_WINDOW_ANIM_FRAMES, 4);
            set_window_value(AT_FAIR, 9, AG_WINDOW_ANIM_FRAME_START, 15);
            
            
            set_hitbox_value(AT_FAIR, 8, HG_HITBOX_X, 48);
            set_hitbox_value(AT_FAIR, 8, HG_HITBOX_Y, -26);
            set_hitbox_value(AT_FAIR, 8, HG_WIDTH, 80);
            set_hitbox_value(AT_FAIR, 8, HG_HEIGHT, 70);
            set_hitbox_value(AT_FAIR, 8, HG_DAMAGE, 6);
            set_hitbox_value(AT_FAIR, 8, HG_VISUAL_EFFECT, hfx[0]);
            set_hitbox_value(AT_FAIR, 8, HG_HIT_SFX, sound_get("KB_hitmedium1"));
        }
        break;
        case AT_DAIR:
        set_attack_value(AT_DAIR, AG_CATEGORY, 1);
        enhance = 0;
        if mp && !mp_recharge && !move_cooldown[AT_DAIR]{
            mp -= 100;
            enhance = 1;
            set_hitbox_value(AT_DAIR, 7, HG_EXTRA_HITPAUSE, 8);
        }else{
            set_hitbox_value(AT_DAIR, 7, HG_EXTRA_HITPAUSE, 0);
        }
        break;
        case AT_DSPECIAL:
        enhance = 0;
        if mp && !mp_recharge && !move_cooldown[AT_DSPECIAL]{
            mp -= (deck_val? (deck_val == 1? 100: 250): 150);
            enhance = 1;
            switch deck_val{
                case 0:
                set_hitbox_value(AT_DSPECIAL, 3, HG_VISUAL_EFFECT, 301);
                set_hitbox_value(AT_DSPECIAL, 3, HG_HIT_SFX, sound_get("KB_hitmedium1"));
                
                set_hitbox_value(AT_DSPECIAL, 4, HG_EXTRA_HITPAUSE, 0);
                set_hitbox_value(AT_DSPECIAL, 4, HG_EFFECT, 1);
                set_hitbox_value(AT_DSPECIAL, 4, HG_VISUAL_EFFECT, 253);
                set_hitbox_value(AT_DSPECIAL, 4, HG_HIT_SFX, sound_get("KB_hitheavy1"));
                break;
                case 1:
                set_hitbox_value(AT_DSPECIAL, 3, HG_VISUAL_EFFECT, 0);
                set_hitbox_value(AT_DSPECIAL, 3, HG_HIT_SFX, asset_get("sfx_ice_dspecial_ground"));
                
                set_hitbox_value(AT_DSPECIAL, 4, HG_EXTRA_HITPAUSE, 0);
                set_hitbox_value(AT_DSPECIAL, 4, HG_EFFECT, 0);
                set_hitbox_value(AT_DSPECIAL, 4, HG_VISUAL_EFFECT, 199);
                set_hitbox_value(AT_DSPECIAL, 4, HG_HIT_SFX, sound_get("KB_hitheavy1"));
                break;
                case 2:
                set_hitbox_value(AT_DSPECIAL, 3, HG_VISUAL_EFFECT, 21);
                set_hitbox_value(AT_DSPECIAL, 3, HG_HIT_SFX, sound_get("sora_thunder4"));
                
                set_hitbox_value(AT_DSPECIAL, 4, HG_EXTRA_HITPAUSE, 40);
                set_hitbox_value(AT_DSPECIAL, 4, HG_EFFECT, 0);
                set_hitbox_value(AT_DSPECIAL, 4, HG_VISUAL_EFFECT, 157);
                set_hitbox_value(AT_DSPECIAL, 4, HG_HIT_SFX, sound_get("sora_thunder3"));
                break;
            }
        }else{
            set_hitbox_value(AT_DSPECIAL, 3, HG_VISUAL_EFFECT, hfx[0]);
            set_hitbox_value(AT_DSPECIAL, 3, HG_HIT_SFX, sound_get("KB_hitmedium1"));
            
            set_hitbox_value(AT_DSPECIAL, 4, HG_EXTRA_HITPAUSE, 0);
            set_hitbox_value(AT_DSPECIAL, 4, HG_EFFECT, 0);
            set_hitbox_value(AT_DSPECIAL, 4, HG_VISUAL_EFFECT, hfx[0]);
            set_hitbox_value(AT_DSPECIAL, 4, HG_HIT_SFX, sound_get("KB_hitheavy1"));
        }
        break;
        case AT_USPECIAL:
        enhance = 0;
        if mp && !mp_recharge && !move_cooldown[AT_USPECIAL]{
            mp -= (deck_val? (deck_val == 1? 100: 250): 150);
            enhance = 1;
            switch deck_val{
                case 0:
                set_hitbox_value(AT_USPECIAL, 10, HG_HIT_SFX, sound_get("KB_hitweak2"));
                set_hitbox_value(AT_USPECIAL, 10, HG_VISUAL_EFFECT, 252);
                
                set_hitbox_value(AT_USPECIAL, 11, HG_HIT_SFX, sound_get("KB_hitweak1"));
                set_hitbox_value(AT_USPECIAL, 11, HG_VISUAL_EFFECT, 252);
                
                set_hitbox_value(AT_USPECIAL, 12, HG_HIT_SFX, sound_get("KB_hitweak2"));
                set_hitbox_value(AT_USPECIAL, 12, HG_VISUAL_EFFECT, 252);
                
                set_hitbox_value(AT_USPECIAL, 13, HG_EXTRA_HITPAUSE, 0);
                set_hitbox_value(AT_USPECIAL, 13, HG_HIT_SFX, sound_get("KB_hitheavy1"));
                set_hitbox_value(AT_USPECIAL, 13, HG_VISUAL_EFFECT, 253);
                set_hitbox_value(AT_USPECIAL, 13, HG_EFFECT, 1);
                break;
                case 1:
                set_hitbox_value(AT_USPECIAL, 10, HG_HIT_SFX, asset_get("sfx_ice_dspecial_ground"));
                set_hitbox_value(AT_USPECIAL, 10, HG_VISUAL_EFFECT, 29);
                
                set_hitbox_value(AT_USPECIAL, 11, HG_HIT_SFX, asset_get("sfx_ice_dspecial_ground"));
                set_hitbox_value(AT_USPECIAL, 11, HG_VISUAL_EFFECT, 29);
                
                set_hitbox_value(AT_USPECIAL, 12, HG_HIT_SFX, asset_get("sfx_ice_dspecial_ground"));
                set_hitbox_value(AT_USPECIAL, 12, HG_VISUAL_EFFECT, 29);
                
                set_hitbox_value(AT_USPECIAL, 13, HG_EXTRA_HITPAUSE, 0);
                set_hitbox_value(AT_USPECIAL, 13, HG_HIT_SFX, sound_get("KB_hitheavy1"));
                set_hitbox_value(AT_USPECIAL, 13, HG_VISUAL_EFFECT, 199);
                set_hitbox_value(AT_USPECIAL, 13, HG_EFFECT, 0);
                break;
                case 2:
                set_hitbox_value(AT_USPECIAL, 10, HG_HIT_SFX, sound_get("sora_thunder4"));
                set_hitbox_value(AT_USPECIAL, 10, HG_VISUAL_EFFECT, 21);
                
                set_hitbox_value(AT_USPECIAL, 11, HG_HIT_SFX, sound_get("sora_thunder4"));
                set_hitbox_value(AT_USPECIAL, 11, HG_VISUAL_EFFECT, 21);
                
                set_hitbox_value(AT_USPECIAL, 12, HG_HIT_SFX, sound_get("sora_thunder4"));
                set_hitbox_value(AT_USPECIAL, 12, HG_VISUAL_EFFECT, 21);
                
                set_hitbox_value(AT_USPECIAL, 13, HG_EXTRA_HITPAUSE, 40);
                set_hitbox_value(AT_USPECIAL, 13, HG_HIT_SFX, sound_get("sora_thunder3"));
                set_hitbox_value(AT_USPECIAL, 13, HG_VISUAL_EFFECT, 157);
                set_hitbox_value(AT_USPECIAL, 13, HG_EFFECT, 0);
                break;
            }
        }else{
            set_hitbox_value(AT_USPECIAL, 10, HG_HIT_SFX, sound_get("KB_hitweak2"));
            set_hitbox_value(AT_USPECIAL, 10, HG_VISUAL_EFFECT, hfx[0]);
            
            set_hitbox_value(AT_USPECIAL, 11, HG_HIT_SFX, sound_get("KB_hitweak1"));
            set_hitbox_value(AT_USPECIAL, 11, HG_VISUAL_EFFECT, hfx[0]);
            
            set_hitbox_value(AT_USPECIAL, 12, HG_HIT_SFX, sound_get("KB_hitweak2"));
            set_hitbox_value(AT_USPECIAL, 12, HG_VISUAL_EFFECT, hfx[0]);
            
            set_hitbox_value(AT_USPECIAL, 13, HG_EXTRA_HITPAUSE, 0);
            set_hitbox_value(AT_USPECIAL, 13, HG_HIT_SFX, sound_get("KB_hitheavy1"));
            set_hitbox_value(AT_USPECIAL, 13, HG_VISUAL_EFFECT, hfx[0]);
            set_hitbox_value(AT_USPECIAL, 13, HG_EFFECT, 0);
        }
        break;
        case AT_FSPECIAL:
        set_window_value(AT_FSPECIAL, 12, AG_WINDOW_GOTO, 13);
        fsp_grab = noone;
        cancel = 0;
        enhance = 0;
        if mp && !mp_recharge && !move_cooldown[AT_FSPECIAL]{
            mp -= (deck_val? (deck_val == 1? 100: 250): 150);
            enhance = 1;
        }
        break;
        case AT_NSPECIAL:
        enhance = 0;
        if mp && !mp_recharge && !move_cooldown[AT_NSPECIAL] && !instance_exists(wis_trap){
            mp -= (deck_val? (deck_val == 1? 100: 250): 150);
            enhance = 1;
        }
        break;
    }
    
    if mp <= 0{
        mp = floor(mp*1.5);
        mp_recharge = 1;
    }
    break;
    
    case 3:
    switch attack{
        case AT_FSTRONG:
        if !free attack = AT_FTILT;
        break;
        case AT_DSTRONG:
        if !free attack = AT_DTILT;
        break;
        case AT_USTRONG:
        if !free attack = AT_UTILT;
        break;
        case AT_FAIR:
        attack = AT_FSTRONG;
        break;
        case AT_DAIR:
        attack = AT_DSTRONG;
        break;
        case AT_UAIR:
        attack = AT_USTRONG;
        break;
        case AT_BAIR:
        attack = AT_FSTRONG;
        spr_dir*=-1;
        break;
    }
    set_attack_value(AT_FSTRONG, AG_HAS_LANDING_LAG, 1);
    set_attack_value(AT_USTRONG, AG_HAS_LANDING_LAG, 1);
    set_attack_value(AT_DSTRONG, AG_HAS_LANDING_LAG, 1);
    
    set_attack_value(AT_FSTRONG, AG_CATEGORY, 1);
    set_attack_value(AT_USTRONG, AG_CATEGORY, 1);
    set_attack_value(AT_DSTRONG, AG_CATEGORY, 1);
    window = attack_frameskip[attack][form - 1];
    set_attack_value(AT_FSTRONG, AG_STRONG_CHARGE_WINDOW, attack_frameskip[attack][form - 1]);
    set_attack_value(AT_DSTRONG, AG_STRONG_CHARGE_WINDOW, attack_frameskip[attack][form - 1]);
    set_attack_value(AT_USTRONG, AG_STRONG_CHARGE_WINDOW, attack_frameskip[attack][form - 1]);
    break;
    
    case 4:
    if attack == AT_NSPECIAL && !move_cooldown[AT_NSPECIAL]{
        var blade = collision_rectangle(x - 40, y + 10, x + 40, y - 70, obj_article1, 1, 1);
        if instance_exists(blade) && blade.player_id = self && blade.type == 3 && blade.state == 1{
            blade.state = 4;
            blade.timer = 0;
            sound_play(sound_get("final_absorb"));
            set_window_value(AT_NSPECIAL, 13, AG_WINDOW_GOTO, 15);
            set_hitbox_value(AT_NSPECIAL, 9, HG_DAMAGE, 1);
            set_hitbox_value(AT_NSPECIAL, 9, HG_ANGLE_FLIPPER, 0);
            set_hitbox_value(AT_NSPECIAL, 9, HG_KNOCKBACK_SCALING, 0);
            set_hitbox_value(AT_NSPECIAL, 9, HG_HITPAUSE_SCALING, 0);
            set_hitbox_value(AT_NSPECIAL, 9, HG_ANGLE, 90);
        }else{
            set_window_value(AT_NSPECIAL, 13, AG_WINDOW_GOTO, 14);
            set_hitbox_value(AT_NSPECIAL, 9, HG_DAMAGE, 2);
            set_hitbox_value(AT_NSPECIAL, 9, HG_ANGLE_FLIPPER, 3);
            set_hitbox_value(AT_NSPECIAL, 9, HG_KNOCKBACK_SCALING, .5);
            set_hitbox_value(AT_NSPECIAL, 9, HG_HITPAUSE_SCALING, .5);
            set_hitbox_value(AT_NSPECIAL, 9, HG_ANGLE, 50);
        }
    }
    if attack == AT_FSPECIAL{
        set_window_value(AT_FSPECIAL, 21, AG_WINDOW_TYPE, 7);
    }
    if attack == AT_DSPECIAL for(var h = 0; h < 3; h++){
        if final_blades[h] == noone{
            break;
        }else if h = 2{
            var longest = 0;
            var longest_comp = -1;
            for(var j = 0; j < 3; j++){
                if longest_comp = -1 && final_blades[j].state != 3{
                    longest_comp = final_blades[j].alive_time;
                }else if final_blades[j].alive_time > longest_comp && final_blades[j].state != 3{
                    longest_comp = final_blades[j].alive_time;
                    longest = j;
                }
            }
            if longest_comp = -1 move_cooldown[AT_DSPECIAL] = 5;
            else final_blades[@longest].force_death = 1;
        }
    }
    break;
}

set_window_value(AT_NSPECIAL, 2, AG_WINDOW_VSPEED, free - 1);

set_attack_value(attack, AG_SPRITE, sprite_get(string(form) + attack_names[attack]));
set_attack_value(attack, AG_HURTBOX_SPRITE, sprite_get(string(form) + attack_names[attack] + "_hurt"));
if attack == AT_DSPECIAL || attack == AT_NSPECIAL || attack == AT_FSPECIAL set_attack_value(attack, AG_HURTBOX_AIR_SPRITE, sprite_get(string(form) + attack_names[attack] + (form = 3 || form == 4 || (form == 1 && (attack == AT_DSPECIAL || attack == AT_FSPECIAL))? "_hurt": "_air_hurt")));
if attack == AT_DSPECIAL || attack == AT_NSPECIAL || attack == AT_FSPECIAL set_attack_value(attack, AG_AIR_SPRITE, sprite_get(string(form) + attack_names[attack] + (form = 3 || form == 4 || (form == 1 && (attack == AT_DSPECIAL || attack == AT_FSPECIAL))? "": "_air")));

//hit_fx setting
for(var b = 1; b <= get_num_hitboxes(attack); b++){
    var fx = get_hitbox_value(attack, b, HG_VISUAL_EFFECT)
    if array_find_index(hfx, fx) >= 0{
        var fx_id = floor(array_find_index(hfx, fx)/4)*4 + random_func(abs(floor((get_gameplay_time()+b)%200)), 4, 1);
        set_hitbox_value(attack, b, HG_VISUAL_EFFECT, hfx[fx_id]);
    }
}

got_gem = 0;
charged_ver = 1;
ragnarok_lv = 0;
proj_pos = [];
fsp_grab = noone;
power_up = 0;

if form == 1 && vl_point{
    power_up = 1;
}

ffall = 0;

#define spawn_base_dust
/// spawn_base_dust(x, y, name, dir = 0, angle = 0, win = -10, win_time = 0)
{
    // spawn_base_dust(x, y, name)
    // spawn_base_dust(x, y, name, ?dir, ?angle, ?window, ?window_timer)

    // This function spawns base cast dusts. Names can be found below.
    var dlen; //dust_length value
    var dfx; //dust_fx value
    var dfg; //fg_sprite value
    var dust_color = 0;
    var x = argument[0], y = argument[1], name = argument[2];
var dir = argument_count > 3 ? argument[3] : 0;
var angle = argument_count > 4 ? argument[4] : 0;
var win = argument_count > 5 ? argument[5] : -10;
var win_time = argument_count > 6 ? argument[6] : 0;

    if (!hitpause && (win > 0 && win == window && win_time == window_timer || win == -10) ) //spawns it whenever we want for 1 frame
    {
        switch (name) {
            default: 
            case "dash_start":dlen = 21; dfx = 3; dfg = 2626; break;
            case "dash": dlen = 16; dfx = 4; dfg = 2656; break;
            case "jump": dlen = 12; dfx = 11; dfg = 2646; break;
            case "doublejump": 
            case "djump": dlen = 21; dfx = 2; dfg = 2624; break;
            case "walk": dlen = 12; dfx = 5; dfg = 2628; break;
            case "land": dlen = 24; dfx = 0; dfg = 2620; break;
            case "n_wavedash": dlen = 24; dfx = 0; dfg = 2620; dust_color = 1; break;
            case "wavedash": dlen = 16; dfx = 4; dfg = 2656; dust_color = 1; break;
            //
            //bar-kun additions (note: idk how fg_sprite work)
            //
            case "dattack": dlen = 22; dfx = 12; dfg = 0; break;
            case "b_bounce_bg": dlen = 10; dfx = 7; dfg = 0; break;
            case "b_bounce_fg": dlen = 14; dfx = 8; dfg = 0; break;
            case "s_bounce_bg": dlen = 18; dfx = 7; dfg = 0; break;
            case "s_bounce_fg": dlen = 19; dfx = 8; dfg = 0; break;
            case "doublejump_small": 
            case "djump_small": dlen = 21; dfx = 16; dfg = 0; break;
        }
        var newdust = spawn_dust_fx(x, y, asset_get("empty_sprite"), dlen);
        newdust.x = floor(x);
        newdust.y = floor(y);
        newdust.dust_fx = dfx; //set the fx id
        if (dfg != -1) newdust.fg_sprite = dfg; //set the foreground sprite

        newdust.dust_color = dust_color; //set the dust color

        if (dir != 0) newdust.spr_dir = dir; //set the spr_dir, if dir is 0 it will take the player's spr_dir
        else newdust.spr_dir = spr_dir;

        newdust.draw_angle = angle; //sets the angle of the dust sprite
        return newdust;
    }
}