set_attack_value(AT_DAIR, AG_CATEGORY, 2);
set_attack_value(AT_DAIR, AG_SPRITE, sprite_get("dair"));
set_attack_value(AT_DAIR, AG_NUM_WINDOWS, 4);
set_attack_value(AT_DAIR, AG_HURTBOX_SPRITE, sprite_get("dair_hurt"));

// Startup
set_window_value(AT_DAIR, 1, AG_WINDOW_LENGTH, 13);
set_window_value(AT_DAIR, 1, AG_WINDOW_ANIM_FRAMES, 3);
set_window_value(AT_DAIR, 1, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_DAIR, 1, AG_WINDOW_SFX, asset_get("sfx_syl_uspecial_travel_start"));

// Fall
set_window_value(AT_DAIR, 2, AG_WINDOW_TYPE, 9);
set_window_value(AT_DAIR, 2, AG_WINDOW_LENGTH, 6);
set_window_value(AT_DAIR, 2, AG_WINDOW_ANIM_FRAME_START, 3);
set_window_value(AT_DAIR, 2, AG_WINDOW_ANIM_FRAMES, 2);

// Bounce
set_window_value(AT_DAIR, 3, AG_WINDOW_LENGTH, 6);
set_window_value(AT_DAIR, 3, AG_WINDOW_ANIM_FRAME_START, 5);
set_window_value(AT_DAIR, 3, AG_WINDOW_ANIM_FRAMES, 4);

// Ground Lag
set_window_value(AT_DAIR, 4, AG_WINDOW_LENGTH, 12);
set_window_value(AT_DAIR, 4, AG_WINDOW_ANIM_FRAME_START, 9);
set_window_value(AT_DAIR, 4, AG_WINDOW_ANIM_FRAMES, 4);
set_window_value(AT_DAIR, 4, AG_WINDOW_HAS_WHIFFLAG, 1);
set_window_value(AT_DAIR, 4, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_DAIR, 4, AG_WINDOW_SFX, asset_get("sfx_blow_medium2"));

// Hitboxes

set_num_hitboxes(AT_DAIR, 1);

// Yeet Down
    // General Info
        set_hitbox_value(AT_DAIR, 1, HG_HITBOX_TYPE, 1);
        set_hitbox_value(AT_DAIR, 1, HG_WINDOW, 2);
        set_hitbox_value(AT_DAIR, 1, HG_SHAPE, 0);
        set_hitbox_value(AT_DAIR, 1, HG_LIFETIME, 5);
        set_hitbox_value(AT_DAIR, 1, HG_PRIORITY, 6);
        set_hitbox_value(AT_DAIR, 1, HG_HITBOX_GROUP, 1);
        
    // Location
        set_hitbox_value(AT_DAIR, 1, HG_HITBOX_X, 5);
        set_hitbox_value(AT_DAIR, 1, HG_HITBOX_Y, -20);
        
        set_hitbox_value(AT_DAIR, 1, HG_WIDTH, 60);
        set_hitbox_value(AT_DAIR, 1, HG_HEIGHT, 50);
        
    // Hitplayer Stats
        set_hitbox_value(AT_DAIR, 1, HG_DAMAGE, 9);
        set_hitbox_value(AT_DAIR, 1, HG_ANGLE, 90);
        
        set_hitbox_value(AT_DAIR, 1, HG_BASE_KNOCKBACK, 9.5);
        set_hitbox_value(AT_DAIR, 1, HG_KNOCKBACK_SCALING, 0.3);
        
        set_hitbox_value(AT_DAIR, 1, HG_BASE_HITPAUSE, 6);
        set_hitbox_value(AT_DAIR, 1, HG_HITPAUSE_SCALING, 0.8);
        
    // Hit FX & SFX
        set_hitbox_value(AT_DAIR, 1, HG_HIT_SFX, sound_get("wood"));
        
        set_hitbox_value(AT_DAIR, 1, HG_VISUAL_EFFECT, juiceFX);
        set_hitbox_value(AT_DAIR, 1, HG_VISUAL_EFFECT_Y_OFFSET, 15);