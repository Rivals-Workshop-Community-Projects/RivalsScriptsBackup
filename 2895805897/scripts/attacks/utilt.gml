set_attack_value(AT_UTILT, AG_SPRITE, sprite_get("utilt"));
set_attack_value(AT_UTILT, AG_NUM_WINDOWS, 3);
set_attack_value(AT_UTILT, AG_HURTBOX_SPRITE, sprite_get("utilt_hurt"));

// Startup
set_window_value(AT_UTILT, 1, AG_WINDOW_LENGTH, 7);
set_window_value(AT_UTILT, 1, AG_WINDOW_ANIM_FRAMES, 2);
set_window_value(AT_UTILT, 1, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_UTILT, 1, AG_WINDOW_SFX, sound_get("noita_throwitem"));

// Swing
set_window_value(AT_UTILT, 2, AG_WINDOW_LENGTH, 5);
set_window_value(AT_UTILT, 2, AG_WINDOW_ANIM_FRAME_START, 2);
set_window_value(AT_UTILT, 2, AG_WINDOW_ANIM_FRAMES, 1);

// Endlag
set_window_value(AT_UTILT, 3, AG_WINDOW_LENGTH, 8);
set_window_value(AT_UTILT, 3, AG_WINDOW_ANIM_FRAME_START, 3);
set_window_value(AT_UTILT, 3, AG_WINDOW_ANIM_FRAMES, 3);
set_window_value(AT_UTILT, 3, AG_WINDOW_HAS_WHIFFLAG, 1);

// Hitboxes

set_num_hitboxes(AT_UTILT, 1);

// Bonk with 'Fruit Juice?'
    // General Info
        set_hitbox_value(AT_UTILT, 1, HG_HITBOX_TYPE, 1);
        set_hitbox_value(AT_UTILT, 1, HG_WINDOW, 2);
        set_hitbox_value(AT_UTILT, 1, HG_SHAPE, 0);
        set_hitbox_value(AT_UTILT, 1, HG_LIFETIME, 5);
        set_hitbox_value(AT_UTILT, 1, HG_PRIORITY, 6);
        set_hitbox_value(AT_UTILT, 1, HG_HITBOX_GROUP, 1);
        
    // Location
        set_hitbox_value(AT_UTILT, 1, HG_HITBOX_X, 15);
        set_hitbox_value(AT_UTILT, 1, HG_HITBOX_Y, -45);
        
        set_hitbox_value(AT_UTILT, 1, HG_WIDTH, 80);
        set_hitbox_value(AT_UTILT, 1, HG_HEIGHT, 90);
        
    // Hitplayer Stats
        set_hitbox_value(AT_UTILT, 1, HG_DAMAGE, 7);
        set_hitbox_value(AT_UTILT, 1, HG_ANGLE, 90);
        
        set_hitbox_value(AT_UTILT, 1, HG_BASE_KNOCKBACK, 6);
        set_hitbox_value(AT_UTILT, 1, HG_KNOCKBACK_SCALING, 0.6);
        
        set_hitbox_value(AT_UTILT, 1, HG_BASE_HITPAUSE, 6);
        set_hitbox_value(AT_UTILT, 1, HG_HITPAUSE_SCALING, 0.5);
        
    // Hit FX & SFX
        set_hitbox_value(AT_UTILT, 1, HG_HIT_SFX, sound_get("noita_potionbreak2"));
        
        set_hitbox_value(AT_UTILT, 1, HG_VISUAL_EFFECT, juiceFX);
        //set_hitbox_value(AT_UTILT, 1, HG_VISUAL_EFFECT_X_OFFSET, 25);
        set_hitbox_value(AT_UTILT, 1, HG_VISUAL_EFFECT_Y_OFFSET, -10);