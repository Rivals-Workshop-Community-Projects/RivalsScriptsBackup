set_attack_value(AT_DATTACK, AG_SPRITE, sprite_get("dattack"));
set_attack_value(AT_DATTACK, AG_NUM_WINDOWS, 3);
set_attack_value(AT_DATTACK, AG_HURTBOX_SPRITE, sprite_get("dattack_hurt"));

// Startup
set_window_value(AT_DATTACK, 1, AG_WINDOW_LENGTH, 7);
set_window_value(AT_DATTACK, 1, AG_WINDOW_ANIM_FRAMES, 2);
set_window_value(AT_DATTACK, 1, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_DATTACK, 1, AG_WINDOW_SFX, sound_get("BA_basil_basic"));

// Big Bite
set_window_value(AT_DATTACK, 2, AG_WINDOW_LENGTH, 4);
set_window_value(AT_DATTACK, 2, AG_WINDOW_ANIM_FRAME_START, 2);
set_window_value(AT_DATTACK, 2, AG_WINDOW_ANIM_FRAMES, 1);

// Endlag
set_window_value(AT_DATTACK, 3, AG_WINDOW_LENGTH, 13);
set_window_value(AT_DATTACK, 3, AG_WINDOW_ANIM_FRAME_START, 3);
set_window_value(AT_DATTACK, 3, AG_WINDOW_ANIM_FRAMES, 3);
set_window_value(AT_DATTACK, 3, AG_WINDOW_HAS_WHIFFLAG, 1);

// Hitboxes

set_num_hitboxes(AT_DATTACK, 2);

// Knife Close
    // General Info
        set_hitbox_value(AT_DATTACK, 1, HG_HITBOX_TYPE, 1);
        set_hitbox_value(AT_DATTACK, 1, HG_WINDOW, 2);
        set_hitbox_value(AT_DATTACK, 1, HG_SHAPE, 0);
        set_hitbox_value(AT_DATTACK, 1, HG_LIFETIME, 4);
        set_hitbox_value(AT_DATTACK, 1, HG_PRIORITY, 6);
        set_hitbox_value(AT_DATTACK, 1, HG_HITBOX_GROUP, 1);
        
    // Location
        set_hitbox_value(AT_DATTACK, 1, HG_HITBOX_X, 30);
        set_hitbox_value(AT_DATTACK, 1, HG_HITBOX_Y, -35);
        
        set_hitbox_value(AT_DATTACK, 1, HG_WIDTH, 85);
        set_hitbox_value(AT_DATTACK, 1, HG_HEIGHT, 70);
        
    // Hitplayer Stats
        set_hitbox_value(AT_DATTACK, 1, HG_DAMAGE, 8);
        set_hitbox_value(AT_DATTACK, 1, HG_ANGLE, 60);
        
        set_hitbox_value(AT_DATTACK, 1, HG_BASE_KNOCKBACK, 8);
        set_hitbox_value(AT_DATTACK, 1, HG_KNOCKBACK_SCALING, 0.45);
        
        set_hitbox_value(AT_DATTACK, 1, HG_BASE_HITPAUSE, 7);
        set_hitbox_value(AT_DATTACK, 1, HG_HITPAUSE_SCALING, 0.5);
        
    // Hit FX & SFX
        set_hitbox_value(AT_DATTACK, 1, HG_HIT_SFX, sound_get("BA_CRITICAL_HIT"));
        set_hitbox_value(AT_DATTACK, 1, HG_VISUAL_EFFECT, 306);
        
// Knife Far
    // General Info
        set_hitbox_value(AT_DATTACK, 2, HG_HITBOX_TYPE, 1);
        set_hitbox_value(AT_DATTACK, 2, HG_WINDOW, 2);
        set_hitbox_value(AT_DATTACK, 2, HG_SHAPE, 2);
        set_hitbox_value(AT_DATTACK, 2, HG_LIFETIME, 4);
        set_hitbox_value(AT_DATTACK, 2, HG_PRIORITY, 6);
        set_hitbox_value(AT_DATTACK, 2, HG_HITBOX_GROUP, 1);
        
    // Location
        set_hitbox_value(AT_DATTACK, 2, HG_HITBOX_X, 70);
        set_hitbox_value(AT_DATTACK, 2, HG_HITBOX_Y, -20);
        
        set_hitbox_value(AT_DATTACK, 2, HG_WIDTH, 33);
        set_hitbox_value(AT_DATTACK, 2, HG_HEIGHT, 43);
        
    // Hitplayer Stats
        set_hitbox_value(AT_DATTACK, 2, HG_DAMAGE, 8);
        set_hitbox_value(AT_DATTACK, 2, HG_ANGLE, 60);
        
        set_hitbox_value(AT_DATTACK, 2, HG_BASE_KNOCKBACK, 8);
        set_hitbox_value(AT_DATTACK, 2, HG_KNOCKBACK_SCALING, 0.45);
        
        set_hitbox_value(AT_DATTACK, 2, HG_BASE_HITPAUSE, 7);
        set_hitbox_value(AT_DATTACK, 2, HG_HITPAUSE_SCALING, 0.6);
        
    // Hit FX & SFX
        set_hitbox_value(AT_DATTACK, 2, HG_HIT_SFX, sound_get("BA_CRITICAL_HIT"));
        set_hitbox_value(AT_DATTACK, 2, HG_VISUAL_EFFECT, 306);