set_attack_value(AT_DSTRONG, AG_SPRITE, sprite_get("dstrong"));
set_attack_value(AT_DSTRONG, AG_NUM_WINDOWS, 4);
set_attack_value(AT_DSTRONG, AG_HURTBOX_SPRITE, sprite_get("dstrong_hurt"));
set_attack_value(AT_DSTRONG, AG_STRONG_CHARGE_WINDOW, 1);

// Startup
set_window_value(AT_DSTRONG, 1, AG_WINDOW_LENGTH, 12);
set_window_value(AT_DSTRONG, 1, AG_WINDOW_ANIM_FRAMES, 3);
set_window_value(AT_DSTRONG, 1, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_DSTRONG, 1, AG_WINDOW_SFX, asset_get("sfx_frog_dspecial_swallow"));

// Sound Extra time
set_window_value(AT_DSTRONG, 2, AG_WINDOW_LENGTH, 4);
set_window_value(AT_DSTRONG, 2, AG_WINDOW_ANIM_FRAME_START, 2);
set_window_value(AT_DSTRONG, 2, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_DSTRONG, 2, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_DSTRONG, 2, AG_WINDOW_SFX, asset_get("sfx_orcane_dsmash"));

// Spit
set_window_value(AT_DSTRONG, 3, AG_WINDOW_LENGTH, 8);
set_window_value(AT_DSTRONG, 3, AG_WINDOW_ANIM_FRAME_START, 3);
set_window_value(AT_DSTRONG, 3, AG_WINDOW_ANIM_FRAMES, 2);

// Endlag
set_window_value(AT_DSTRONG, 4, AG_WINDOW_LENGTH, 10);
set_window_value(AT_DSTRONG, 4, AG_WINDOW_ANIM_FRAME_START, 5);
set_window_value(AT_DSTRONG, 4, AG_WINDOW_ANIM_FRAMES, 2);
set_window_value(AT_DSTRONG, 4, AG_WINDOW_HAS_WHIFFLAG, 1);

// Hitboxes
set_num_hitboxes(AT_DSTRONG, 2);

// Spit front
    // General Info
        set_hitbox_value(AT_DSTRONG, 1, HG_HITBOX_TYPE, 1);
        set_hitbox_value(AT_DSTRONG, 1, HG_WINDOW, 3);
        set_hitbox_value(AT_DSTRONG, 1, HG_SHAPE, 2);
        set_hitbox_value(AT_DSTRONG, 1, HG_LIFETIME, 4);
        set_hitbox_value(AT_DSTRONG, 1, HG_PRIORITY, 6);
        set_hitbox_value(AT_DSTRONG, 1, HG_HITBOX_GROUP, 1);
        
    // Location
        set_hitbox_value(AT_DSTRONG, 1, HG_HITBOX_X, 45);
        set_hitbox_value(AT_DSTRONG, 1, HG_HITBOX_Y, -25);
        
        set_hitbox_value(AT_DSTRONG, 1, HG_WIDTH, 85);
        set_hitbox_value(AT_DSTRONG, 1, HG_HEIGHT, 50);
        
    // Hitplayer Stats
        set_hitbox_value(AT_DSTRONG, 1, HG_DAMAGE, 10);
        set_hitbox_value(AT_DSTRONG, 1, HG_ANGLE, 90);
        
        set_hitbox_value(AT_DSTRONG, 1, HG_BASE_KNOCKBACK, 8);
        set_hitbox_value(AT_DSTRONG, 1, HG_KNOCKBACK_SCALING, 1.05);
        
        set_hitbox_value(AT_DSTRONG, 1, HG_BASE_HITPAUSE, 6);
        set_hitbox_value(AT_DSTRONG, 1, HG_HITPAUSE_SCALING, 0.7);
        
    // Hit FX & SFX
        set_hitbox_value(AT_DSTRONG, 1, HG_HIT_SFX, asset_get("sfx_waterhit_heavy"));
        set_hitbox_value(AT_DSTRONG, 1, HG_VISUAL_EFFECT, juiceFX);
        
// Spit Back
    // General Info
        set_hitbox_value(AT_DSTRONG, 2, HG_HITBOX_TYPE, 1);
        set_hitbox_value(AT_DSTRONG, 2, HG_WINDOW, 3);
        set_hitbox_value(AT_DSTRONG, 2, HG_SHAPE, 2);
        set_hitbox_value(AT_DSTRONG, 2, HG_LIFETIME, 4);
        set_hitbox_value(AT_DSTRONG, 2, HG_WINDOW_CREATION_FRAME, 4);
        set_hitbox_value(AT_DSTRONG, 2, HG_PRIORITY, 6);
        set_hitbox_value(AT_DSTRONG, 2, HG_HITBOX_GROUP, 1);
        
    // Location
        set_hitbox_value(AT_DSTRONG, 2, HG_HITBOX_X, -35);
        set_hitbox_value(AT_DSTRONG, 2, HG_HITBOX_Y, -25);
        
        set_hitbox_value(AT_DSTRONG, 2, HG_WIDTH, 97);
        set_hitbox_value(AT_DSTRONG, 2, HG_HEIGHT, 50);
        
    // Hitplayer Stats
        set_hitbox_value(AT_DSTRONG, 2, HG_DAMAGE, 10);
        set_hitbox_value(AT_DSTRONG, 2, HG_ANGLE, 90);
        
        set_hitbox_value(AT_DSTRONG, 2, HG_BASE_KNOCKBACK, 8);
        set_hitbox_value(AT_DSTRONG, 2, HG_KNOCKBACK_SCALING, 1.05);
        
        set_hitbox_value(AT_DSTRONG, 2, HG_BASE_HITPAUSE, 6);
        set_hitbox_value(AT_DSTRONG, 2, HG_HITPAUSE_SCALING, 0.7);
        
    // Hit FX & SFX
        set_hitbox_value(AT_DSTRONG, 2, HG_HIT_SFX, asset_get("sfx_waterhit_heavy"));
        set_hitbox_value(AT_DSTRONG, 2, HG_VISUAL_EFFECT, juiceFX);