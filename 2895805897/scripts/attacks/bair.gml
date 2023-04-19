set_attack_value(AT_BAIR, AG_CATEGORY, 1);
set_attack_value(AT_BAIR, AG_SPRITE, sprite_get("bair"));
set_attack_value(AT_BAIR, AG_HAS_LANDING_LAG, 1);
set_attack_value(AT_BAIR, AG_LANDING_LAG, 10);
set_attack_value(AT_BAIR, AG_NUM_WINDOWS, 5);
set_attack_value(AT_BAIR, AG_HURTBOX_SPRITE, sprite_get("bair_hurt"));

// Startup
set_window_value(AT_BAIR, 1, AG_WINDOW_LENGTH, 10);
set_window_value(AT_BAIR, 1, AG_WINDOW_ANIM_FRAMES, 3);
set_window_value(AT_BAIR, 1, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_BAIR, 1, AG_WINDOW_SFX, asset_get("sfx_swipe_medium1"));
set_window_value(AT_BAIR, 1, AG_WINDOW_SFX_FRAME, 6);

// Swing 1
set_window_value(AT_BAIR, 2, AG_WINDOW_LENGTH, 4);
set_window_value(AT_BAIR, 2, AG_WINDOW_ANIM_FRAME_START, 3);
set_window_value(AT_BAIR, 2, AG_WINDOW_ANIM_FRAMES, 2);

// In Between
set_window_value(AT_BAIR, 3, AG_WINDOW_LENGTH, 4);
set_window_value(AT_BAIR, 3, AG_WINDOW_ANIM_FRAME_START, 5);
set_window_value(AT_BAIR, 3, AG_WINDOW_ANIM_FRAMES, 2);
set_window_value(AT_BAIR, 3, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_BAIR, 3, AG_WINDOW_SFX, asset_get("sfx_swipe_medium2"));

// Swing 2
set_window_value(AT_BAIR, 4, AG_WINDOW_LENGTH, 4);
set_window_value(AT_BAIR, 4, AG_WINDOW_ANIM_FRAME_START, 7);
set_window_value(AT_BAIR, 4, AG_WINDOW_ANIM_FRAMES, 2);

// Endlag
set_window_value(AT_BAIR, 5, AG_WINDOW_LENGTH, 13);
set_window_value(AT_BAIR, 5, AG_WINDOW_ANIM_FRAME_START, 9);
set_window_value(AT_BAIR, 5, AG_WINDOW_ANIM_FRAMES, 4);
set_window_value(AT_BAIR, 5, AG_WINDOW_HAS_WHIFFLAG, 1);

// Hitboxes

set_num_hitboxes(AT_BAIR, 4);

// Slap Early 1
    // General Info
        set_hitbox_value(AT_BAIR, 1, HG_HITBOX_TYPE, 1);
        set_hitbox_value(AT_BAIR, 1, HG_WINDOW, 2);
        set_hitbox_value(AT_BAIR, 1, HG_SHAPE, 0);
        set_hitbox_value(AT_BAIR, 1, HG_LIFETIME, 2);
        set_hitbox_value(AT_BAIR, 1, HG_PRIORITY, 6);
        set_hitbox_value(AT_BAIR, 1, HG_HITBOX_GROUP, 1);
        
    // Location
        set_hitbox_value(AT_BAIR, 1, HG_HITBOX_X, -30);
        set_hitbox_value(AT_BAIR, 1, HG_HITBOX_Y, -45);
        
        set_hitbox_value(AT_BAIR, 1, HG_WIDTH, 85);
        set_hitbox_value(AT_BAIR, 1, HG_HEIGHT, 60);
        
    // Hitplayer Stats
        set_hitbox_value(AT_BAIR, 1, HG_DAMAGE, 4);
        set_hitbox_value(AT_BAIR, 1, HG_ANGLE, 130);
        
        set_hitbox_value(AT_BAIR, 1, HG_BASE_KNOCKBACK, 7);
        
        set_hitbox_value(AT_BAIR, 1, HG_BASE_HITPAUSE, 6);
        set_hitbox_value(AT_BAIR, 1, HG_EXTRA_HITPAUSE, 3);
        
    // Hit FX & SFX
        set_hitbox_value(AT_BAIR, 1, HG_HIT_SFX, asset_get("sfx_leafy_hit2"));
        
// Slap Late 1
    // General Info
        set_hitbox_value(AT_BAIR, 2, HG_HITBOX_TYPE, 1);
        set_hitbox_value(AT_BAIR, 2, HG_WINDOW, 2);
        set_hitbox_value(AT_BAIR, 2, HG_SHAPE, 2);
        set_hitbox_value(AT_BAIR, 2, HG_LIFETIME, 2);
        set_hitbox_value(AT_BAIR, 2, HG_WINDOW_CREATION_FRAME, 2);
        set_hitbox_value(AT_BAIR, 2, HG_PRIORITY, 6);
        set_hitbox_value(AT_BAIR, 2, HG_HITBOX_GROUP, 1);
        
    // Location
        set_hitbox_value(AT_BAIR, 2, HG_HITBOX_X, -30);
        set_hitbox_value(AT_BAIR, 2, HG_HITBOX_Y, -25);
        
        set_hitbox_value(AT_BAIR, 2, HG_WIDTH, 85);
        set_hitbox_value(AT_BAIR, 2, HG_HEIGHT, 80);
        
    // Hitplayer Stats
        set_hitbox_value(AT_BAIR, 2, HG_DAMAGE, 4);
        set_hitbox_value(AT_BAIR, 2, HG_ANGLE, 130);
        
        set_hitbox_value(AT_BAIR, 2, HG_BASE_KNOCKBACK, 7);
        
        set_hitbox_value(AT_BAIR, 2, HG_BASE_HITPAUSE, 6);
        set_hitbox_value(AT_BAIR, 2, HG_EXTRA_HITPAUSE, 3);
        
    // Hit FX & SFX
        set_hitbox_value(AT_BAIR, 2, HG_HIT_SFX, asset_get("sfx_leafy_hit2"));
        
// Slap Early 2
    // General Info
        set_hitbox_value(AT_BAIR, 3, HG_HITBOX_TYPE, 1);
        set_hitbox_value(AT_BAIR, 3, HG_WINDOW, 4);
        set_hitbox_value(AT_BAIR, 3, HG_SHAPE, 0);
        set_hitbox_value(AT_BAIR, 3, HG_LIFETIME, 2);
        set_hitbox_value(AT_BAIR, 3, HG_PRIORITY, 6);
        set_hitbox_value(AT_BAIR, 3, HG_HITBOX_GROUP, 2);
        
    // Location
        set_hitbox_value(AT_BAIR, 3, HG_HITBOX_X, -25);
        set_hitbox_value(AT_BAIR, 3, HG_HITBOX_Y, -65);
        
        set_hitbox_value(AT_BAIR, 3, HG_WIDTH, 100);
        set_hitbox_value(AT_BAIR, 3, HG_HEIGHT, 60);
        
    // Hitplayer Stats
        set_hitbox_value(AT_BAIR, 3, HG_DAMAGE, 4);
        set_hitbox_value(AT_BAIR, 3, HG_ANGLE, 130);
        
        set_hitbox_value(AT_BAIR, 3, HG_BASE_KNOCKBACK, 7);
        set_hitbox_value(AT_BAIR, 3, HG_KNOCKBACK_SCALING, 0.6);
        
        set_hitbox_value(AT_BAIR, 3, HG_BASE_HITPAUSE, 6);
        set_hitbox_value(AT_BAIR, 3, HG_HITPAUSE_SCALING, 0.55);
        
    // Hit FX & SFX
        set_hitbox_value(AT_BAIR, 3, HG_HIT_SFX, asset_get("sfx_blow_medium2"));
        
// Slap Late 2
    // General Info
        set_hitbox_value(AT_BAIR, 4, HG_HITBOX_TYPE, 1);
        set_hitbox_value(AT_BAIR, 4, HG_WINDOW, 4);
        set_hitbox_value(AT_BAIR, 4, HG_SHAPE, 2);
        set_hitbox_value(AT_BAIR, 4, HG_LIFETIME, 2);
        set_hitbox_value(AT_BAIR, 4, HG_WINDOW_CREATION_FRAME, 2);
        set_hitbox_value(AT_BAIR, 4, HG_PRIORITY, 6);
        set_hitbox_value(AT_BAIR, 4, HG_HITBOX_GROUP, 2);
        
    // Location
        set_hitbox_value(AT_BAIR, 4, HG_HITBOX_X, -30);
        set_hitbox_value(AT_BAIR, 4, HG_HITBOX_Y, -35);
        
        set_hitbox_value(AT_BAIR, 4, HG_WIDTH, 90);
        set_hitbox_value(AT_BAIR, 4, HG_HEIGHT, 100);
        
    // Hitplayer Stats
        set_hitbox_value(AT_BAIR, 4, HG_DAMAGE, 4);
        set_hitbox_value(AT_BAIR, 4, HG_ANGLE, 130);
        
        set_hitbox_value(AT_BAIR, 4, HG_BASE_KNOCKBACK, 7);
        set_hitbox_value(AT_BAIR, 4, HG_KNOCKBACK_SCALING, 0.6);
        
        set_hitbox_value(AT_BAIR, 4, HG_BASE_HITPAUSE, 6);
        set_hitbox_value(AT_BAIR, 4, HG_HITPAUSE_SCALING, 0.55);
        
    // Hit FX & SFX
        set_hitbox_value(AT_BAIR, 4, HG_HIT_SFX, asset_get("sfx_blow_medium2"));
        