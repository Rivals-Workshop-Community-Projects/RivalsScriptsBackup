set_attack_value(AT_DSTRONG, AG_SPRITE, sprite_get("dstrong"));
set_attack_value(AT_DSTRONG, AG_NUM_WINDOWS, 5);
set_attack_value(AT_DSTRONG, AG_HAS_LANDING_LAG, 3);
set_attack_value(AT_DSTRONG, AG_STRONG_CHARGE_WINDOW, 2);
set_attack_value(AT_DSTRONG, AG_HURTBOX_SPRITE, sprite_get("dstrong_hurt"));

set_window_value(AT_DSTRONG, 1, AG_WINDOW_TYPE, 1);
set_window_value(AT_DSTRONG, 1, AG_WINDOW_LENGTH, has_rune("L")?6:9);
set_window_value(AT_DSTRONG, 1, AG_WINDOW_ANIM_FRAMES, 2);
set_window_value(AT_DSTRONG, 1, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_DSTRONG, 1, AG_WINDOW_SFX, asset_get("sfx_shovel_dig"));
set_window_value(AT_DSTRONG, 1, AG_WINDOW_SFX_FRAME, 1);

set_window_value(AT_DSTRONG, 2, AG_WINDOW_TYPE, 1);
set_window_value(AT_DSTRONG, 2, AG_WINDOW_LENGTH, 2);
set_window_value(AT_DSTRONG, 2, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_DSTRONG, 2, AG_WINDOW_ANIM_FRAME_START, 2);

set_window_value(AT_DSTRONG, 3, AG_WINDOW_TYPE, 1);
set_window_value(AT_DSTRONG, 3, AG_WINDOW_LENGTH, has_rune("L")?4:6);
set_window_value(AT_DSTRONG, 3, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_DSTRONG, 3, AG_WINDOW_ANIM_FRAME_START, 3);
//set_window_value(AT_DSTRONG, 3, AG_WINDOW_HAS_SFX, 1);
//set_window_value(AT_DSTRONG, 3, AG_WINDOW_SFX, asset_get("sfx_charge_blade_swing"));
//set_window_value(AT_DSTRONG, 3, AG_WINDOW_SFX_FRAME, 1);

set_window_value(AT_DSTRONG, 4, AG_WINDOW_TYPE, 1);
set_window_value(AT_DSTRONG, 4, AG_WINDOW_LENGTH, has_rune("L")?2:3);
set_window_value(AT_DSTRONG, 4, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_DSTRONG, 4, AG_WINDOW_ANIM_FRAME_START, 4);


set_window_value(AT_DSTRONG, 5, AG_WINDOW_TYPE, 1);
set_window_value(AT_DSTRONG, 5, AG_WINDOW_LENGTH, has_rune("L")?8:12);
set_window_value(AT_DSTRONG, 5, AG_WINDOW_ANIM_FRAMES, 6);
set_window_value(AT_DSTRONG, 5, AG_WINDOW_ANIM_FRAME_START, 5);
set_window_value(AT_DSTRONG, 5, AG_WINDOW_HAS_WHIFFLAG, 1);

set_num_hitboxes(AT_DSTRONG, 2);

set_hitbox_value(AT_DSTRONG, 1, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_DSTRONG, 1, HG_WINDOW, 4);
set_hitbox_value(AT_DSTRONG, 1, HG_SHAPE, 1);
set_hitbox_value(AT_DSTRONG, 1, HG_LIFETIME, has_rune("L")?2:3);
set_hitbox_value(AT_DSTRONG, 1, HG_HITBOX_X, 3);
set_hitbox_value(AT_DSTRONG, 1, HG_HITBOX_Y, -22);
set_hitbox_value(AT_DSTRONG, 1, HG_WIDTH, 110);
set_hitbox_value(AT_DSTRONG, 1, HG_HEIGHT, 45);
set_hitbox_value(AT_DSTRONG, 1, HG_PRIORITY, 2);
set_hitbox_value(AT_DSTRONG, 1, HG_DAMAGE, 10);
set_hitbox_value(AT_DSTRONG, 1, HG_ANGLE, 60);
set_hitbox_value(AT_DSTRONG, 1, HG_BASE_KNOCKBACK, 8);
set_hitbox_value(AT_DSTRONG, 1, HG_KNOCKBACK_SCALING, 1.1);
set_hitbox_value(AT_DSTRONG, 1, HG_BASE_HITPAUSE, 11);
set_hitbox_value(AT_DSTRONG, 1, HG_HITPAUSE_SCALING, .9);
set_hitbox_value(AT_DSTRONG, 1, HG_HIT_SFX, sound_get("bottle_intact_hit"));
set_hitbox_value(AT_DSTRONG, 1, HG_ANGLE_FLIPPER, 3);
set_hitbox_value(AT_DSTRONG, 1, HG_VISUAL_EFFECT, 1);
set_hitbox_value(AT_DSTRONG, 1, HG_HITSTUN_MULTIPLIER, 1.0);

// HFX FRONT
    // General Info
        set_hitbox_value(AT_DSTRONG, 2, HG_HITBOX_TYPE, 2);
        set_hitbox_value(AT_DSTRONG, 2, HG_WINDOW, 9);
        set_hitbox_value(AT_DSTRONG, 2, HG_PRIORITY, 0);
        set_hitbox_value(AT_DSTRONG, 2, HG_LIFETIME, 32);
        
    // Location
        set_hitbox_value(AT_DSTRONG, 2, HG_HITBOX_X, 0);
        set_hitbox_value(AT_DSTRONG, 2, HG_HITBOX_Y, 0);
        
        set_hitbox_value(AT_DSTRONG, 2, HG_WIDTH, 0);
        set_hitbox_value(AT_DSTRONG, 2, HG_HEIGHT, 0);
        
    // Hitplayer Stats
        set_hitbox_value(AT_DSTRONG, 2, HG_DAMAGE, 0);
        set_hitbox_value(AT_DSTRONG, 2, HG_ANGLE, 0);
        
        set_hitbox_value(AT_DSTRONG, 2, HG_BASE_KNOCKBACK, 1);
        set_hitbox_value(AT_DSTRONG, 2, HG_KNOCKBACK_SCALING, 0);
        
        set_hitbox_value(AT_DSTRONG, 2, HG_BASE_HITPAUSE, 0);
        set_hitbox_value(AT_DSTRONG, 2, HG_HITPAUSE_SCALING, 0);
        
    // Projectile Animation
        set_hitbox_value(AT_DSTRONG, 2, HG_PROJECTILE_SPRITE, sprite_get("fx_pan_hit_fg"));
        set_hitbox_value(AT_DSTRONG, 2, HG_PROJECTILE_MASK, -1);
        set_hitbox_value(AT_DSTRONG, 2, HG_PROJECTILE_DESTROY_EFFECT, sprite_get("hitbox_empty"));
        set_hitbox_value(AT_DSTRONG, 2, HG_PROJECTILE_ANIM_SPEED, 0.24);
        
    // Proj Movement
        set_hitbox_value(AT_DSTRONG, 2, HG_PROJECTILE_ENEMY_BEHAVIOR, 1);
        set_hitbox_value(AT_DSTRONG, 2, HG_PROJECTILE_GROUND_BEHAVIOR, 1);
        set_hitbox_value(AT_DSTRONG, 2, HG_PROJECTILE_WALL_BEHAVIOR, 1);
        
    // Proj Interactions
        set_hitbox_value(AT_DSTRONG, 2, HG_PROJECTILE_DOES_NOT_REFLECT, true);
        set_hitbox_value(AT_DSTRONG, 2, HG_PROJECTILE_IS_TRANSCENDENT, true);
        set_hitbox_value(AT_DSTRONG, 2, HG_PROJECTILE_PARRY_STUN, false);
        set_hitbox_value(AT_DSTRONG, 2, HG_PROJECTILE_UNBASHABLE, true);
        set_hitbox_value(AT_DSTRONG, 2, HG_IGNORES_PROJECTILES, 1);