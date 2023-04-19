set_attack_value(AT_USPECIAL_GROUND, AG_CATEGORY, 2);
set_attack_value(AT_USPECIAL_GROUND, AG_SPRITE, sprite_get("uspecial_ground"));
set_attack_value(AT_USPECIAL_GROUND, AG_NUM_WINDOWS, 4);
set_attack_value(AT_USPECIAL_GROUND, AG_HURTBOX_SPRITE, sprite_get("uspecial_ground_hurt"));

// Startup
set_window_value(AT_USPECIAL_GROUND, 1, AG_WINDOW_LENGTH, 5);
set_window_value(AT_USPECIAL_GROUND, 1, AG_WINDOW_ANIM_FRAMES, 3);
set_window_value(AT_USPECIAL_GROUND, 1, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_USPECIAL_GROUND, 1, AG_WINDOW_SFX, sound_get("mlg_something"));

// Hit Forward
set_window_value(AT_USPECIAL_GROUND, 2, AG_WINDOW_LENGTH, 3);
set_window_value(AT_USPECIAL_GROUND, 2, AG_WINDOW_ANIM_FRAME_START, 3);
set_window_value(AT_USPECIAL_GROUND, 2, AG_WINDOW_ANIM_FRAMES, 1);

// HEY
set_window_value(AT_USPECIAL_GROUND, 3, AG_WINDOW_LENGTH, 3);
set_window_value(AT_USPECIAL_GROUND, 3, AG_WINDOW_ANIM_FRAME_START, 4);
set_window_value(AT_USPECIAL_GROUND, 3, AG_WINDOW_ANIM_FRAMES, 1);

// Endlag
set_window_value(AT_USPECIAL_GROUND, 4, AG_WINDOW_LENGTH, 20);
set_window_value(AT_USPECIAL_GROUND, 4, AG_WINDOW_ANIM_FRAME_START, 5);
set_window_value(AT_USPECIAL_GROUND, 4, AG_WINDOW_ANIM_FRAMES, 4);
set_window_value(AT_USPECIAL_GROUND, 4, AG_WINDOW_HAS_WHIFFLAG, 1);

// Hitboxes
set_num_hitboxes(AT_USPECIAL_GROUND, 2);

// RegiPoke.ogg - it really is!
    // General Info
        set_hitbox_value(AT_USPECIAL_GROUND, 1, HG_HITBOX_TYPE, 1);
        set_hitbox_value(AT_USPECIAL_GROUND, 1, HG_WINDOW, 3);
        set_hitbox_value(AT_USPECIAL_GROUND, 1, HG_SHAPE, 2);
        set_hitbox_value(AT_USPECIAL_GROUND, 1, HG_LIFETIME, 3);
        set_hitbox_value(AT_USPECIAL_GROUND, 1, HG_PRIORITY, 6);
        set_hitbox_value(AT_USPECIAL_GROUND, 1, HG_HITBOX_GROUP, 2);
        
    // Location
        set_hitbox_value(AT_USPECIAL_GROUND, 1, HG_HITBOX_X, 64);
        set_hitbox_value(AT_USPECIAL_GROUND, 1, HG_HITBOX_Y, -46);
        
        set_hitbox_value(AT_USPECIAL_GROUND, 1, HG_WIDTH, 60);
        set_hitbox_value(AT_USPECIAL_GROUND, 1, HG_HEIGHT, 60);
        
    // Hitplayer Stats
        set_hitbox_value(AT_USPECIAL_GROUND, 1, HG_DAMAGE, 2);
        set_hitbox_value(AT_USPECIAL_GROUND, 1, HG_ANGLE, 69);
        
        set_hitbox_value(AT_USPECIAL_GROUND, 1, HG_BASE_KNOCKBACK, 8);
        set_hitbox_value(AT_USPECIAL_GROUND, 1, HG_KNOCKBACK_SCALING, 1);
        
        set_hitbox_value(AT_USPECIAL_GROUND, 1, HG_BASE_HITPAUSE, 8);
        set_hitbox_value(AT_USPECIAL_GROUND, 1, HG_HITPAUSE_SCALING, 0.7);
        
    // Hit FX & SFX
        set_hitbox_value(AT_USPECIAL_GROUND, 1, HG_HIT_SFX, asset_get("sfx_clairen_hit_med"));
        set_hitbox_value(AT_USPECIAL_GROUND, 1, HG_VISUAL_EFFECT, 304);