set_attack_value(AT_FAIR, AG_CATEGORY, 1);
set_attack_value(AT_FAIR, AG_SPRITE, sprite_get("fair"));
set_attack_value(AT_FAIR, AG_NUM_WINDOWS, 3);
set_attack_value(AT_FAIR, AG_HAS_LANDING_LAG, 1);
set_attack_value(AT_FAIR, AG_LANDING_LAG, 11);
set_attack_value(AT_FAIR, AG_HURTBOX_SPRITE, sprite_get("fair_hurt"));

// Startup
set_window_value(AT_FAIR, 1, AG_WINDOW_LENGTH, 18);
set_window_value(AT_FAIR, 1, AG_WINDOW_ANIM_FRAMES, 4);
set_window_value(AT_FAIR, 1, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_FAIR, 1, AG_WINDOW_SFX, asset_get("sfx_shovel_swing_med2"));
set_window_value(AT_FAIR, 1, AG_WINDOW_SFX_FRAME, 14);

// Swing
set_window_value(AT_FAIR, 2, AG_WINDOW_LENGTH, 2);
set_window_value(AT_FAIR, 2, AG_WINDOW_ANIM_FRAME_START, 4);
set_window_value(AT_FAIR, 2, AG_WINDOW_ANIM_FRAMES, 1);

// Endlag
set_window_value(AT_FAIR, 3, AG_WINDOW_LENGTH, 10);
set_window_value(AT_FAIR, 3, AG_WINDOW_ANIM_FRAME_START, 5);
set_window_value(AT_FAIR, 3, AG_WINDOW_ANIM_FRAMES, 4);
set_window_value(AT_FAIR, 3, AG_WINDOW_HAS_WHIFFLAG, 1);

// Hitboxes

set_num_hitboxes(AT_FAIR, 3);

// Rake Hitbox (far)
    // General Info
        set_hitbox_value(AT_FAIR, 1, HG_HITBOX_TYPE, 1);
        set_hitbox_value(AT_FAIR, 1, HG_WINDOW, 2);
        set_hitbox_value(AT_FAIR, 1, HG_SHAPE, 2);
        set_hitbox_value(AT_FAIR, 1, HG_LIFETIME, 2);
        set_hitbox_value(AT_FAIR, 1, HG_PRIORITY, 2);
        set_hitbox_value(AT_FAIR, 1, HG_HITBOX_GROUP, 1);
        
    // Location
        set_hitbox_value(AT_FAIR, 1, HG_HITBOX_X, 30);
        set_hitbox_value(AT_FAIR, 1, HG_HITBOX_Y, -68);
        
        set_hitbox_value(AT_FAIR, 1, HG_WIDTH, 50);
        set_hitbox_value(AT_FAIR, 1, HG_HEIGHT, 60);
        
    // Hitplayer Stats
        set_hitbox_value(AT_FAIR, 1, HG_DAMAGE, 10);
        set_hitbox_value(AT_FAIR, 1, HG_ANGLE, 361);
        
        set_hitbox_value(AT_FAIR, 1, HG_BASE_KNOCKBACK, 8);
        set_hitbox_value(AT_FAIR, 1, HG_KNOCKBACK_SCALING, 0.7);
        
        set_hitbox_value(AT_FAIR, 1, HG_BASE_HITPAUSE, 8);
        set_hitbox_value(AT_FAIR, 1, HG_HITPAUSE_SCALING, 0.8);
        
    // Hit FX & SFX
        set_hitbox_value(AT_FAIR, 1, HG_HIT_SFX, asset_get("sfx_shovel_hit_heavy1"));

// Rake Hitbox (far)
    // General Info
        set_hitbox_value(AT_FAIR, 2, HG_HITBOX_TYPE, 1);
        set_hitbox_value(AT_FAIR, 2, HG_WINDOW, 2);
        set_hitbox_value(AT_FAIR, 2, HG_SHAPE, 0);
        set_hitbox_value(AT_FAIR, 2, HG_LIFETIME, 2);
        set_hitbox_value(AT_FAIR, 2, HG_PRIORITY, 3);
        set_hitbox_value(AT_FAIR, 2, HG_HITBOX_GROUP, 1);
        
    // Location
        set_hitbox_value(AT_FAIR, 2, HG_HITBOX_X, 53);
        set_hitbox_value(AT_FAIR, 2, HG_HITBOX_Y, -28);
        
        set_hitbox_value(AT_FAIR, 2, HG_WIDTH, 90);
        set_hitbox_value(AT_FAIR, 2, HG_HEIGHT, 132);
        
    // Hitplayer Stats
        set_hitbox_value(AT_FAIR, 2, HG_DAMAGE, 10);
        set_hitbox_value(AT_FAIR, 2, HG_ANGLE, 361);
        
        set_hitbox_value(AT_FAIR, 2, HG_BASE_KNOCKBACK, 8);
        set_hitbox_value(AT_FAIR, 2, HG_KNOCKBACK_SCALING, 0.7);
        
        set_hitbox_value(AT_FAIR, 2, HG_BASE_HITPAUSE, 8);
        set_hitbox_value(AT_FAIR, 2, HG_HITPAUSE_SCALING, 0.8);
        
    // Hit FX & SFX
        set_hitbox_value(AT_FAIR, 2, HG_HIT_SFX, asset_get("sfx_shovel_hit_heavy1"));