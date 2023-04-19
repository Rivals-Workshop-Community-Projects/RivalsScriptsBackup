set_attack_value(AT_USPECIAL, AG_CATEGORY, 2);
set_attack_value(AT_USPECIAL, AG_SPRITE, sprite_get("uspecial_air"));
set_attack_value(AT_USPECIAL, AG_NUM_WINDOWS, 4);
set_attack_value(AT_USPECIAL, AG_HURTBOX_SPRITE, sprite_get("uspecial_air_hurt"));

// Startup
set_window_value(AT_USPECIAL, 1, AG_WINDOW_LENGTH, 10);
set_window_value(AT_USPECIAL, 1, AG_WINDOW_ANIM_FRAMES, 3);
set_window_value(AT_USPECIAL, 1, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_USPECIAL, 1, AG_WINDOW_SFX, sound_get("mlg_something"));

// HEY
set_window_value(AT_USPECIAL, 3, AG_WINDOW_LENGTH, 4);
set_window_value(AT_USPECIAL, 3, AG_WINDOW_ANIM_FRAME_START, 3);
set_window_value(AT_USPECIAL, 3, AG_WINDOW_ANIM_FRAMES, 1);

// Endlag
set_window_value(AT_USPECIAL, 4, AG_WINDOW_LENGTH, 13);
set_window_value(AT_USPECIAL, 4, AG_WINDOW_ANIM_FRAME_START, 4);
set_window_value(AT_USPECIAL, 4, AG_WINDOW_ANIM_FRAMES, 4);
set_window_value(AT_USPECIAL, 4, AG_WINDOW_TYPE, 7);
set_window_value(AT_USPECIAL, 3, AG_WINDOW_VSPEED_TYPE, 2);
set_window_value(AT_USPECIAL, 3, AG_WINDOW_VSPEED, -14.5);

// Hitboxes
set_num_hitboxes(AT_USPECIAL, 1);

// It launches up (funny)
    // General Info
        set_hitbox_value(AT_USPECIAL, 1, HG_HITBOX_TYPE, 1);
        set_hitbox_value(AT_USPECIAL, 1, HG_WINDOW, 3);
        set_hitbox_value(AT_USPECIAL, 1, HG_SHAPE, 2);
        set_hitbox_value(AT_USPECIAL, 1, HG_LIFETIME, 3);
        set_hitbox_value(AT_USPECIAL, 1, HG_PRIORITY, 6);
        set_hitbox_value(AT_USPECIAL, 1, HG_HITBOX_GROUP, 2);
        
    // Location
        set_hitbox_value(AT_USPECIAL, 1, HG_HITBOX_X, 0);
        set_hitbox_value(AT_USPECIAL, 1, HG_HITBOX_Y, 40);
        
        set_hitbox_value(AT_USPECIAL, 1, HG_WIDTH, 50);
        set_hitbox_value(AT_USPECIAL, 1, HG_HEIGHT, 85);
        
    // Hitplayer Stats
        set_hitbox_value(AT_USPECIAL, 1, HG_DAMAGE, 2);
        set_hitbox_value(AT_USPECIAL, 1, HG_ANGLE, 270);
        
        set_hitbox_value(AT_USPECIAL, 1, HG_BASE_KNOCKBACK, 4);
        set_hitbox_value(AT_USPECIAL, 1, HG_KNOCKBACK_SCALING, 0.8);
        
        set_hitbox_value(AT_USPECIAL, 1, HG_BASE_HITPAUSE, 8);
        set_hitbox_value(AT_USPECIAL, 1, HG_HITPAUSE_SCALING, 0.9);
        
    // Hit FX & SFX
        set_hitbox_value(AT_USPECIAL, 1, HG_HIT_SFX, asset_get("sfx_clairen_hit_med"));
        set_hitbox_value(AT_USPECIAL, 1, HG_VISUAL_EFFECT, 304);