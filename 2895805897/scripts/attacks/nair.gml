set_attack_value(AT_NAIR, AG_CATEGORY, 1);
set_attack_value(AT_NAIR, AG_SPRITE, sprite_get("nair"));
set_attack_value(AT_NAIR, AG_HAS_LANDING_LAG, 1);
set_attack_value(AT_NAIR, AG_LANDING_LAG, 7);
set_attack_value(AT_NAIR, AG_NUM_WINDOWS, 3);
set_attack_value(AT_NAIR, AG_HURTBOX_SPRITE, sprite_get("nair_hurt"));

// Startup
set_window_value(AT_NAIR, 1, AG_WINDOW_LENGTH, 8);
set_window_value(AT_NAIR, 1, AG_WINDOW_ANIM_FRAMES, 2);
set_window_value(AT_NAIR, 1, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_NAIR, 1, AG_WINDOW_SFX, asset_get("sfx_ori_stomp_spin"));

// SPIN! SPIN!
set_window_value(AT_NAIR, 2, AG_WINDOW_LENGTH, 6);
set_window_value(AT_NAIR, 2, AG_WINDOW_ANIM_FRAME_START, 2);
set_window_value(AT_NAIR, 2, AG_WINDOW_ANIM_FRAMES, 3);

// Endlag
set_window_value(AT_NAIR, 3, AG_WINDOW_LENGTH, 10);
set_window_value(AT_NAIR, 3, AG_WINDOW_ANIM_FRAME_START, 5);
set_window_value(AT_NAIR, 3, AG_WINDOW_ANIM_FRAMES, 2);
set_window_value(AT_NAIR, 3, AG_WINDOW_HAS_WHIFFLAG, 1);

// Hitboxes

set_num_hitboxes(AT_NAIR, 2);
        
// Spin 1
    // General Info
        set_hitbox_value(AT_NAIR, 1, HG_HITBOX_TYPE, 1);
        set_hitbox_value(AT_NAIR, 1, HG_WINDOW, 2);
        set_hitbox_value(AT_NAIR, 1, HG_SHAPE, 2);
        set_hitbox_value(AT_NAIR, 1, HG_LIFETIME, 6);
        set_hitbox_value(AT_NAIR, 1, HG_PRIORITY, 6);
        set_hitbox_value(AT_NAIR, 1, HG_HITBOX_GROUP, 2);
        
    // Location
        set_hitbox_value(AT_NAIR, 1, HG_HITBOX_X, 0);
        set_hitbox_value(AT_NAIR, 1, HG_HITBOX_Y, -15);
        
        set_hitbox_value(AT_NAIR, 1, HG_WIDTH, 90);
        set_hitbox_value(AT_NAIR, 1, HG_HEIGHT, 60);
        
    // Hitplayer Stats
        set_hitbox_value(AT_NAIR, 1, HG_DAMAGE, 6);
        set_hitbox_value(AT_NAIR, 1, HG_ANGLE, 50);
        
        set_hitbox_value(AT_NAIR, 1, HG_BASE_KNOCKBACK, 6);
        set_hitbox_value(AT_NAIR, 1, HG_KNOCKBACK_SCALING, 0.6);
        
        set_hitbox_value(AT_NAIR, 1, HG_BASE_HITPAUSE, 7);
        set_hitbox_value(AT_NAIR, 1, HG_HITPAUSE_SCALING, 0.7);
        
    // Hit FX & SFX
        set_hitbox_value(AT_NAIR, 1, HG_HIT_SFX, asset_get("sfx_blow_medium3"));
        set_hitbox_value(AT_NAIR, 1, HG_VISUAL_EFFECT, 305);