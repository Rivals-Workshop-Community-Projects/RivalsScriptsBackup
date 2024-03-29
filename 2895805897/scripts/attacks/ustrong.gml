set_attack_value(AT_USTRONG, AG_SPRITE, sprite_get("ustrong"));
set_attack_value(AT_USTRONG, AG_NUM_WINDOWS, 4);
set_attack_value(AT_USTRONG, AG_HURTBOX_SPRITE, sprite_get("ustrong_hurt"));
set_attack_value(AT_USTRONG, AG_STRONG_CHARGE_WINDOW, 1);

// Startup
set_window_value(AT_USTRONG, 1, AG_WINDOW_LENGTH, 12);
set_window_value(AT_USTRONG, 1, AG_WINDOW_ANIM_FRAMES, 3);
set_window_value(AT_USTRONG, 1, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_USTRONG, 1, AG_WINDOW_SFX, sound_get("GEN_Swish"));

// Sound Added Time
set_window_value(AT_USTRONG, 2, AG_WINDOW_LENGTH, 3);
set_window_value(AT_USTRONG, 2, AG_WINDOW_ANIM_FRAME_START, 2);
set_window_value(AT_USTRONG, 2, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_USTRONG, 2, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_USTRONG, 2, AG_WINDOW_SFX, sound_get("partyPopper"));

// Pop Popper
set_window_value(AT_USTRONG, 3, AG_WINDOW_LENGTH, 5);
set_window_value(AT_USTRONG, 3, AG_WINDOW_ANIM_FRAME_START, 3);
set_window_value(AT_USTRONG, 3, AG_WINDOW_ANIM_FRAMES, 1);


// Endlag
set_window_value(AT_USTRONG, 4, AG_WINDOW_LENGTH, 18);
set_window_value(AT_USTRONG, 4, AG_WINDOW_ANIM_FRAME_START, 4);
set_window_value(AT_USTRONG, 4, AG_WINDOW_ANIM_FRAMES, 4);
set_window_value(AT_USTRONG, 4, AG_WINDOW_HAS_WHIFFLAG, 1);

// Hitboxes

set_num_hitboxes(AT_USTRONG, 3);

// Party Popper boom (close)
    // General Info
        set_hitbox_value(AT_USTRONG, 1, HG_HITBOX_TYPE, 1);
        set_hitbox_value(AT_USTRONG, 1, HG_WINDOW, 3);
        set_hitbox_value(AT_USTRONG, 1, HG_SHAPE, 2);
        set_hitbox_value(AT_USTRONG, 1, HG_LIFETIME, 5);
        set_hitbox_value(AT_USTRONG, 1, HG_PRIORITY, 6);
        set_hitbox_value(AT_USTRONG, 1, HG_HITBOX_GROUP, 1);
        
    // Location
        set_hitbox_value(AT_USTRONG, 1, HG_HITBOX_X, 53);
        set_hitbox_value(AT_USTRONG, 1, HG_HITBOX_Y, -45);
        
        set_hitbox_value(AT_USTRONG, 1, HG_WIDTH, 50);
        set_hitbox_value(AT_USTRONG, 1, HG_HEIGHT, 90);
        
    // Hitplayer Stats
        set_hitbox_value(AT_USTRONG, 1, HG_DAMAGE, 12);
        set_hitbox_value(AT_USTRONG, 1, HG_ANGLE, 85);
        
        set_hitbox_value(AT_USTRONG, 1, HG_BASE_KNOCKBACK, 8);
        set_hitbox_value(AT_USTRONG, 1, HG_KNOCKBACK_SCALING, 1.15);
        
        set_hitbox_value(AT_USTRONG, 1, HG_BASE_HITPAUSE, 10);
        set_hitbox_value(AT_USTRONG, 1, HG_EXTRA_HITPAUSE, 4);
        set_hitbox_value(AT_USTRONG, 1, HG_HITPAUSE_SCALING, 0.7);
        
    // Hit FX & SFX
        set_hitbox_value(AT_USTRONG, 1, HG_HIT_SFX, asset_get("sfx_mol_huge_explode"));
        set_hitbox_value(AT_USTRONG, 1, HG_VISUAL_EFFECT, 304);
        
// Party Popper boom (at explosion)
    // General Info
        set_hitbox_value(AT_USTRONG, 2, HG_HITBOX_TYPE, 1);
        set_hitbox_value(AT_USTRONG, 2, HG_WINDOW, 3);
        set_hitbox_value(AT_USTRONG, 2, HG_SHAPE, 0);
        set_hitbox_value(AT_USTRONG, 2, HG_LIFETIME, 5);
        set_hitbox_value(AT_USTRONG, 2, HG_PRIORITY, 6);
        set_hitbox_value(AT_USTRONG, 2, HG_HITBOX_GROUP, 1);
        
    // Location
        set_hitbox_value(AT_USTRONG, 2, HG_HITBOX_X, 65);
        set_hitbox_value(AT_USTRONG, 2, HG_HITBOX_Y, -65);
        
        set_hitbox_value(AT_USTRONG, 2, HG_WIDTH, 70);
        set_hitbox_value(AT_USTRONG, 2, HG_HEIGHT, 70);
        
    // Hitplayer Stats
        set_hitbox_value(AT_USTRONG, 2, HG_DAMAGE, 12);
        set_hitbox_value(AT_USTRONG, 2, HG_ANGLE, 85);
        
        set_hitbox_value(AT_USTRONG, 2, HG_BASE_KNOCKBACK, 8);
        set_hitbox_value(AT_USTRONG, 2, HG_KNOCKBACK_SCALING, 1.15);
        
        set_hitbox_value(AT_USTRONG, 2, HG_BASE_HITPAUSE, 10);
        set_hitbox_value(AT_USTRONG, 2, HG_EXTRA_HITPAUSE, 4);
        set_hitbox_value(AT_USTRONG, 2, HG_HITPAUSE_SCALING, 0.7);
        
    // Hit FX & SFX
        set_hitbox_value(AT_USTRONG, 2, HG_HIT_SFX, asset_get("sfx_mol_huge_explode"));
        set_hitbox_value(AT_USTRONG, 1, HG_VISUAL_EFFECT, 304);