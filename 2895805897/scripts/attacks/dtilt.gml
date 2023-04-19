set_attack_value(AT_DTILT, AG_SPRITE, sprite_get("dtilt"));
set_attack_value(AT_DTILT, AG_NUM_WINDOWS, 3);
set_attack_value(AT_DTILT, AG_HURTBOX_SPRITE, sprite_get("dtilt_hurt"));

// Startup
set_window_value(AT_DTILT, 1, AG_WINDOW_LENGTH, 7);
set_window_value(AT_DTILT, 1, AG_WINDOW_ANIM_FRAMES, 2);
set_window_value(AT_DTILT, 1, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_DTILT, 1, AG_WINDOW_SFX, asset_get("sfx_swipe_medium2"));

// Big Bite
set_window_value(AT_DTILT, 2, AG_WINDOW_LENGTH, 3);
set_window_value(AT_DTILT, 2, AG_WINDOW_ANIM_FRAME_START, 2);
set_window_value(AT_DTILT, 2, AG_WINDOW_ANIM_FRAMES, 1);

// Endlag
set_window_value(AT_DTILT, 3, AG_WINDOW_LENGTH, 6);
set_window_value(AT_DTILT, 3, AG_WINDOW_ANIM_FRAME_START, 3);
set_window_value(AT_DTILT, 3, AG_WINDOW_ANIM_FRAMES, 2);
set_window_value(AT_DTILT, 3, AG_WINDOW_HAS_WHIFFLAG, 1);

// Hitboxes

set_num_hitboxes(AT_DTILT, 1);

// Bite
    // General Info
        set_hitbox_value(AT_DTILT, 1, HG_HITBOX_TYPE, 1);
        set_hitbox_value(AT_DTILT, 1, HG_WINDOW, 2);
        set_hitbox_value(AT_DTILT, 1, HG_SHAPE, 1);
        set_hitbox_value(AT_DTILT, 1, HG_LIFETIME, 3);
        set_hitbox_value(AT_DTILT, 1, HG_PRIORITY, 6);
        set_hitbox_value(AT_DTILT, 1, HG_HITBOX_GROUP, 1);
        
    // Location
        set_hitbox_value(AT_DTILT, 1, HG_HITBOX_X, 50);
        set_hitbox_value(AT_DTILT, 1, HG_HITBOX_Y, -17);
        
        set_hitbox_value(AT_DTILT, 1, HG_WIDTH, 110);
        set_hitbox_value(AT_DTILT, 1, HG_HEIGHT, 35);
        
    // Hitplayer Stats
        set_hitbox_value(AT_DTILT, 1, HG_DAMAGE, 5);
        set_hitbox_value(AT_DTILT, 1, HG_ANGLE, 80);
        
        set_hitbox_value(AT_DTILT, 1, HG_BASE_KNOCKBACK, 5.5);
        set_hitbox_value(AT_DTILT, 1, HG_KNOCKBACK_SCALING, 0.6);
        
        set_hitbox_value(AT_DTILT, 1, HG_BASE_HITPAUSE, 6);
        set_hitbox_value(AT_DTILT, 1, HG_HITPAUSE_SCALING, 0.45);
        
    // Hit FX & SFX
        set_hitbox_value(AT_DTILT, 1, HG_HIT_SFX, asset_get("sfx_leafy_hit3"));