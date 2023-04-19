set_attack_value(AT_NAIR, AG_CATEGORY, 1);
set_attack_value(AT_NAIR, AG_SPRITE, sprite_get("nair"));
set_attack_value(AT_NAIR, AG_NUM_WINDOWS, 5);
set_attack_value(AT_NAIR, AG_HAS_LANDING_LAG, 1);
set_attack_value(AT_NAIR, AG_LANDING_LAG, 6);
set_attack_value(AT_NAIR, AG_HURTBOX_SPRITE, sprite_get("nair_hurt"));

set_window_value(AT_NAIR, 1, AG_WINDOW_TYPE, 1);
set_window_value(AT_NAIR, 1, AG_WINDOW_LENGTH, 14);
set_window_value(AT_NAIR, 1, AG_WINDOW_ANIM_FRAMES, 5);
set_window_value(AT_NAIR, 1, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_NAIR, 1, AG_WINDOW_SFX, sound_get("sfx_swing_l"));
set_window_value(AT_NAIR, 1, AG_WINDOW_SFX_FRAME, 13);

set_window_value(AT_NAIR, 2, AG_WINDOW_TYPE, 1);
set_window_value(AT_NAIR, 2, AG_WINDOW_LENGTH, 2);
set_window_value(AT_NAIR, 2, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_NAIR, 2, AG_WINDOW_ANIM_FRAME_START, 5);

set_window_value(AT_NAIR, 3, AG_WINDOW_TYPE, 1);
set_window_value(AT_NAIR, 3, AG_WINDOW_LENGTH, 2);
set_window_value(AT_NAIR, 3, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_NAIR, 3, AG_WINDOW_ANIM_FRAME_START, 6);

set_window_value(AT_NAIR, 4, AG_WINDOW_TYPE, 1);
set_window_value(AT_NAIR, 4, AG_WINDOW_LENGTH, 2);
set_window_value(AT_NAIR, 4, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_NAIR, 4, AG_WINDOW_ANIM_FRAME_START, 7);

set_window_value(AT_NAIR, 5, AG_WINDOW_TYPE, 1);
set_window_value(AT_NAIR, 5, AG_WINDOW_LENGTH, 16);
set_window_value(AT_NAIR, 5, AG_WINDOW_ANIM_FRAMES, 4);
set_window_value(AT_NAIR, 5, AG_WINDOW_ANIM_FRAME_START, 8);
set_window_value(AT_NAIR, 5, AG_WINDOW_HAS_WHIFFLAG, 1);

set_num_hitboxes(AT_NAIR, 5);

//early

set_hitbox_value(AT_NAIR, 1, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_NAIR, 1, HG_WINDOW, 2);
set_hitbox_value(AT_NAIR, 1, HG_LIFETIME, 2);
set_hitbox_value(AT_NAIR, 1, HG_HITBOX_X, 10);
set_hitbox_value(AT_NAIR, 1, HG_HITBOX_Y, -100);
set_hitbox_value(AT_NAIR, 1, HG_WIDTH, 100);
set_hitbox_value(AT_NAIR, 1, HG_HEIGHT, 40);
set_hitbox_value(AT_NAIR, 1, HG_PRIORITY, 4);
set_hitbox_value(AT_NAIR, 1, HG_DAMAGE, 7);
set_hitbox_value(AT_NAIR, 1, HG_ANGLE, 80);
set_hitbox_value(AT_NAIR, 1, HG_ANGLE_FLIPPER, 6);
set_hitbox_value(AT_NAIR, 1, HG_BASE_KNOCKBACK, 9);
set_hitbox_value(AT_NAIR, 1, HG_KNOCKBACK_SCALING, 0.5);
set_hitbox_value(AT_NAIR, 1, HG_BASE_HITPAUSE, 7);
set_hitbox_value(AT_NAIR, 1, HG_HITPAUSE_SCALING, .6);
set_hitbox_value(AT_NAIR, 1, HG_HIT_SFX, sound_get("sfx_attack_l"));
set_hitbox_value(AT_NAIR, 1, HG_HITBOX_GROUP, 1);
set_hitbox_value(AT_NAIR, 1, HG_EFFECT, 100);

//1

set_hitbox_value(AT_NAIR, 2, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_NAIR, 2, HG_WINDOW, 3);
set_hitbox_value(AT_NAIR, 2, HG_LIFETIME, 2);
set_hitbox_value(AT_NAIR, 2, HG_HITBOX_X, 42);
set_hitbox_value(AT_NAIR, 2, HG_HITBOX_Y, -42);
set_hitbox_value(AT_NAIR, 2, HG_WIDTH, 90);
set_hitbox_value(AT_NAIR, 2, HG_HEIGHT, 132);
set_hitbox_value(AT_NAIR, 2, HG_PRIORITY, 4);
set_hitbox_value(AT_NAIR, 2, HG_DAMAGE, 7);
set_hitbox_value(AT_NAIR, 2, HG_ANGLE, 80);
set_hitbox_value(AT_NAIR, 2, HG_ANGLE_FLIPPER, 6);
set_hitbox_value(AT_NAIR, 2, HG_BASE_KNOCKBACK, 9);
set_hitbox_value(AT_NAIR, 2, HG_KNOCKBACK_SCALING, 0.5);
set_hitbox_value(AT_NAIR, 2, HG_BASE_HITPAUSE, 7);
set_hitbox_value(AT_NAIR, 2, HG_HITPAUSE_SCALING, .6);
set_hitbox_value(AT_NAIR, 2, HG_HIT_SFX, sound_get("sfx_attack_l"));
set_hitbox_value(AT_NAIR, 2, HG_HITBOX_GROUP, 1);
set_hitbox_value(AT_NAIR, 2, HG_EFFECT, 100);

set_hitbox_value(AT_NAIR, 3, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_NAIR, 3, HG_WINDOW, 3);
set_hitbox_value(AT_NAIR, 3, HG_LIFETIME, 2);
set_hitbox_value(AT_NAIR, 3, HG_HITBOX_X, 28);
set_hitbox_value(AT_NAIR, 3, HG_HITBOX_Y, 15);
set_hitbox_value(AT_NAIR, 3, HG_WIDTH, 50);
set_hitbox_value(AT_NAIR, 3, HG_HEIGHT, 35);
set_hitbox_value(AT_NAIR, 3, HG_PRIORITY, 4);
set_hitbox_value(AT_NAIR, 3, HG_DAMAGE, 7);
set_hitbox_value(AT_NAIR, 3, HG_ANGLE, 80);
set_hitbox_value(AT_NAIR, 3, HG_ANGLE_FLIPPER, 6);
set_hitbox_value(AT_NAIR, 3, HG_BASE_KNOCKBACK, 9);
set_hitbox_value(AT_NAIR, 3, HG_KNOCKBACK_SCALING, 0.5);
set_hitbox_value(AT_NAIR, 3, HG_BASE_HITPAUSE, 7);
set_hitbox_value(AT_NAIR, 3, HG_HITPAUSE_SCALING, .6);
set_hitbox_value(AT_NAIR, 3, HG_HIT_SFX, sound_get("sfx_attack_l"));
set_hitbox_value(AT_NAIR, 3, HG_HITBOX_GROUP, 1);
set_hitbox_value(AT_NAIR, 3, HG_EFFECT, 100);

//2

set_hitbox_value(AT_NAIR, 4, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_NAIR, 4, HG_WINDOW, 4);
set_hitbox_value(AT_NAIR, 4, HG_LIFETIME, 2);
set_hitbox_value(AT_NAIR, 4, HG_HITBOX_X, -38);
set_hitbox_value(AT_NAIR, 4, HG_HITBOX_Y, -57);
set_hitbox_value(AT_NAIR, 4, HG_WIDTH, 90);
set_hitbox_value(AT_NAIR, 4, HG_HEIGHT, 150);
set_hitbox_value(AT_NAIR, 4, HG_PRIORITY, 4);
set_hitbox_value(AT_NAIR, 4, HG_DAMAGE, 7);
set_hitbox_value(AT_NAIR, 4, HG_ANGLE, 100);
set_hitbox_value(AT_NAIR, 4, HG_ANGLE_FLIPPER, 6);
set_hitbox_value(AT_NAIR, 4, HG_BASE_KNOCKBACK, 9);
set_hitbox_value(AT_NAIR, 4, HG_KNOCKBACK_SCALING, 0.5);
set_hitbox_value(AT_NAIR, 4, HG_BASE_HITPAUSE, 7);
set_hitbox_value(AT_NAIR, 4, HG_HITPAUSE_SCALING, .6);
set_hitbox_value(AT_NAIR, 4, HG_HIT_SFX, sound_get("sfx_attack_l"));
set_hitbox_value(AT_NAIR, 4, HG_HITBOX_GROUP, 1);
set_hitbox_value(AT_NAIR, 4, HG_EFFECT, 100);

set_hitbox_value(AT_NAIR, 5, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_NAIR, 5, HG_WINDOW, 4);
set_hitbox_value(AT_NAIR, 5, HG_LIFETIME, 2);
set_hitbox_value(AT_NAIR, 5, HG_HITBOX_X, -15);
set_hitbox_value(AT_NAIR, 5, HG_HITBOX_Y, 13);
set_hitbox_value(AT_NAIR, 5, HG_WIDTH, 60);
set_hitbox_value(AT_NAIR, 5, HG_HEIGHT, 25);
set_hitbox_value(AT_NAIR, 5, HG_PRIORITY, 4);
set_hitbox_value(AT_NAIR, 5, HG_DAMAGE, 7);
set_hitbox_value(AT_NAIR, 5, HG_ANGLE, 100);
set_hitbox_value(AT_NAIR, 5, HG_ANGLE_FLIPPER, 6);
set_hitbox_value(AT_NAIR, 5, HG_BASE_KNOCKBACK, 9);
set_hitbox_value(AT_NAIR, 5, HG_KNOCKBACK_SCALING, 0.5);
set_hitbox_value(AT_NAIR, 5, HG_BASE_HITPAUSE, 7);
set_hitbox_value(AT_NAIR, 5, HG_HITPAUSE_SCALING, .6);
set_hitbox_value(AT_NAIR, 5, HG_HIT_SFX, sound_get("sfx_attack_l"));
set_hitbox_value(AT_NAIR, 5, HG_HITBOX_GROUP, 1);
set_hitbox_value(AT_NAIR, 5, HG_EFFECT, 100);

if(has_rune("O")){
    set_attack_value(AT_NAIR, AG_LANDING_LAG, 4);
    set_window_value(AT_NAIR, 1, AG_WINDOW_LENGTH, 5);
    set_window_value(AT_NAIR, 1, AG_WINDOW_SFX_FRAME, 4);
    set_window_value(AT_NAIR, 5, AG_WINDOW_LENGTH, 8);
    
    for(var i = 1; i <= 5; i++){
        set_hitbox_value(AT_NAIR, i, HG_DAMAGE, 16);
        set_hitbox_value(AT_NAIR, i, HG_ANGLE_FLIPPER, 1);
        set_hitbox_value(AT_NAIR, i, HG_KNOCKBACK_SCALING, 1.2);
        set_hitbox_value(AT_NAIR, i, HG_HITSTUN_MULTIPLIER, 1.2);
        set_hitbox_value(AT_NAIR, i, HG_TECHABLE, 1);
        set_hitbox_value(AT_NAIR, i, HG_HIT_SFX, sound_get("sfx_attack_h"));
        set_hitbox_value(AT_NAIR, i, HG_VISUAL_EFFECT, 304);
    }
}