set_attack_value(AT_FTILT, AG_SPRITE, sprite_get("ftilt"));
set_attack_value(AT_FTILT, AG_NUM_WINDOWS, 3);
set_attack_value(AT_FTILT, AG_HURTBOX_SPRITE, sprite_get("ftilt_hurt"));

// Startup
set_window_value(AT_FTILT, 1, AG_WINDOW_LENGTH, 13);
set_window_value(AT_FTILT, 1, AG_WINDOW_ANIM_FRAMES, 6);
set_window_value(AT_FTILT, 1, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_FTILT, 1, AG_WINDOW_SFX, asset_get("sfx_syl_fspecial_bite"));
set_window_value(AT_FTILT, 1, AG_WINDOW_SFX_FRAME, 4);
set_window_value(AT_FTILT, 1, AG_WINDOW_HSPEED, -2);
set_window_value(AT_FTILT, 1, AG_WINDOW_HSPEED_TYPE, 0);

// Big Bite
set_window_value(AT_FTILT, 2, AG_WINDOW_LENGTH, 5);
set_window_value(AT_FTILT, 2, AG_WINDOW_ANIM_FRAME_START, 6);
set_window_value(AT_FTILT, 2, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_FTILT, 2, AG_WINDOW_HSPEED, 7);
set_window_value(AT_FTILT, 2, AG_WINDOW_HSPEED_TYPE, 2);

// Endlag
set_window_value(AT_FTILT, 3, AG_WINDOW_LENGTH, 8);
set_window_value(AT_FTILT, 3, AG_WINDOW_ANIM_FRAME_START, 7);
set_window_value(AT_FTILT, 3, AG_WINDOW_ANIM_FRAMES, 3);
set_window_value(AT_FTILT, 3, AG_WINDOW_HAS_WHIFFLAG, 1);

// Hitboxes

set_num_hitboxes(AT_FTILT, 1);

// Bite
    // General Info
        set_hitbox_value(AT_FTILT, 1, HG_HITBOX_TYPE, 1);
        set_hitbox_value(AT_FTILT, 1, HG_WINDOW, 2);
        set_hitbox_value(AT_FTILT, 1, HG_SHAPE, 2);
        set_hitbox_value(AT_FTILT, 1, HG_LIFETIME, 5);
        set_hitbox_value(AT_FTILT, 1, HG_PRIORITY, 6);
        set_hitbox_value(AT_FTILT, 1, HG_HITBOX_GROUP, 1);
        
    // Location
        set_hitbox_value(AT_FTILT, 1, HG_HITBOX_X, 45);
        set_hitbox_value(AT_FTILT, 1, HG_HITBOX_Y, -25);
        
        set_hitbox_value(AT_FTILT, 1, HG_WIDTH, 75);
        set_hitbox_value(AT_FTILT, 1, HG_HEIGHT, 56);
        
    // Hitplayer Stats
        set_hitbox_value(AT_FTILT, 1, HG_DAMAGE, 11);
        set_hitbox_value(AT_FTILT, 1, HG_ANGLE, 50);
        
        set_hitbox_value(AT_FTILT, 1, HG_BASE_KNOCKBACK, 5);
        set_hitbox_value(AT_FTILT, 1, HG_KNOCKBACK_SCALING, 1.1);
        
        set_hitbox_value(AT_FTILT, 1, HG_BASE_HITPAUSE, 8);
        set_hitbox_value(AT_FTILT, 1, HG_HITPAUSE_SCALING, 0.7);
        
    // Hit FX & SFX
        set_hitbox_value(AT_FTILT, 1, HG_HIT_SFX, asset_get("sfx_crunch"));
        
        set_hitbox_value(AT_FTILT, 1, HG_VISUAL_EFFECT, juiceFX);
        //set_hitbox_value(AT_FTILT, 1, HG_VISUAL_EFFECT_X_OFFSET, 25);
        set_hitbox_value(AT_FTILT, 1, HG_VISUAL_EFFECT_Y_OFFSET, 15);