set_attack_value(AT_JAB, AG_SPRITE, sprite_get("jab"));
set_attack_value(AT_JAB, AG_NUM_WINDOWS, 6);
set_attack_value(AT_JAB, AG_CATEGORY, 0);
set_attack_value(AT_JAB, AG_HURTBOX_SPRITE, sprite_get("jab_hurt"));

// Startup
set_window_value(AT_JAB, 1, AG_WINDOW_LENGTH, 5);
set_window_value(AT_JAB, 1, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_JAB, 1, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_JAB, 1, AG_WINDOW_SFX, asset_get("sfx_swipe_weak1"));
set_window_value(AT_JAB, 1, AG_WINDOW_SFX_FRAME, 3);

// Kick
set_window_value(AT_JAB, 2, AG_WINDOW_LENGTH, 3);
set_window_value(AT_JAB, 2, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_JAB, 2, AG_WINDOW_ANIM_FRAME_START, 1);

// Between Hits
set_window_value(AT_JAB, 3, AG_WINDOW_LENGTH, 6);
set_window_value(AT_JAB, 3, AG_WINDOW_ANIM_FRAMES, 2);
set_window_value(AT_JAB, 3, AG_WINDOW_ANIM_FRAME_START, 2);
set_window_value(AT_JAB, 3, AG_WINDOW_CANCEL_TYPE, 1);

// Enter Slash Anim
set_window_value(AT_JAB, 4, AG_WINDOW_LENGTH, 5);
set_window_value(AT_JAB, 4, AG_WINDOW_ANIM_FRAMES, 2);
set_window_value(AT_JAB, 4, AG_WINDOW_ANIM_FRAME_START, 4);
set_window_value(AT_JAB, 4, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_JAB, 4, AG_WINDOW_SFX, asset_get("sfx_swipe_weak2"));
set_window_value(AT_JAB, 4, AG_WINDOW_SFX_FRAME, 3);

// Wand Slash
set_window_value(AT_JAB, 5, AG_WINDOW_LENGTH, 4);
set_window_value(AT_JAB, 5, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_JAB, 5, AG_WINDOW_ANIM_FRAME_START, 6);

// Endlag
set_window_value(AT_JAB, 6, AG_WINDOW_LENGTH, 9);
set_window_value(AT_JAB, 6, AG_WINDOW_ANIM_FRAMES, 3);
set_window_value(AT_JAB, 6, AG_WINDOW_ANIM_FRAME_START, 7);

// Hitboxes

set_num_hitboxes(AT_JAB, 2);

// Slap 1
    // General Info
        set_hitbox_value(AT_JAB, 1, HG_HITBOX_TYPE, 1);
        set_hitbox_value(AT_JAB, 1, HG_WINDOW, 2);
        set_hitbox_value(AT_JAB, 1, HG_SHAPE, 0);
        set_hitbox_value(AT_JAB, 1, HG_LIFETIME, 3);
        set_hitbox_value(AT_JAB, 1, HG_PRIORITY, 6);
        set_hitbox_value(AT_JAB, 1, HG_HITBOX_GROUP, 1);
        
    // Location
        set_hitbox_value(AT_JAB, 1, HG_HITBOX_X, 0);
        set_hitbox_value(AT_JAB, 1, HG_HITBOX_Y, -15);
        
        set_hitbox_value(AT_JAB, 1, HG_WIDTH, 85);
        set_hitbox_value(AT_JAB, 1, HG_HEIGHT, 30);
        
    // Hitplayer Stats
        set_hitbox_value(AT_JAB, 1, HG_DAMAGE, 3);
        set_hitbox_value(AT_JAB, 1, HG_ANGLE, 50);
        set_hitbox_value(AT_JAB, 1, HG_FORCE_FLINCH, 1);
        
        set_hitbox_value(AT_JAB, 1, HG_BASE_KNOCKBACK, 5);
        
        set_hitbox_value(AT_JAB, 1, HG_BASE_HITPAUSE, 5);
        
    // Hit FX & SFX
        set_hitbox_value(AT_JAB, 1, HG_HIT_SFX, asset_get("sfx_blow_weak1"));
        
// Slap 2
    // General Info
        set_hitbox_value(AT_JAB, 2, HG_HITBOX_TYPE, 1);
        set_hitbox_value(AT_JAB, 2, HG_WINDOW, 5);
        set_hitbox_value(AT_JAB, 2, HG_SHAPE, 1);
        set_hitbox_value(AT_JAB, 2, HG_LIFETIME, 5);
        set_hitbox_value(AT_JAB, 2, HG_PRIORITY, 6);
        set_hitbox_value(AT_JAB, 2, HG_HITBOX_GROUP, 2);
        
    // Location
        set_hitbox_value(AT_JAB, 2, HG_HITBOX_X, 25);
        set_hitbox_value(AT_JAB, 2, HG_HITBOX_Y, -35);
        
        set_hitbox_value(AT_JAB, 2, HG_WIDTH, 75);
        set_hitbox_value(AT_JAB, 2, HG_HEIGHT, 75);
        
    // Hitplayer Stats
        set_hitbox_value(AT_JAB, 2, HG_DAMAGE, 4);
        set_hitbox_value(AT_JAB, 2, HG_ANGLE, 60);
        
        set_hitbox_value(AT_JAB, 2, HG_BASE_KNOCKBACK, 7.5);
        set_hitbox_value(AT_JAB, 2, HG_KNOCKBACK_SCALING, 0.5);
        
        set_hitbox_value(AT_JAB, 2, HG_BASE_HITPAUSE, 5);
        set_hitbox_value(AT_JAB, 2, HG_HITPAUSE_SCALING, 0.4);
        
    // Hit FX & SFX
        set_hitbox_value(AT_JAB, 2, HG_HIT_SFX, asset_get("sfx_blow_weak2"));