set_attack_value(AT_DSPECIAL, AG_CATEGORY, 2);
set_attack_value(AT_DSPECIAL, AG_SPRITE, sprite_get("dspecial"));
set_attack_value(AT_DSPECIAL, AG_NUM_WINDOWS, 3);
set_attack_value(AT_DSPECIAL, AG_HURTBOX_SPRITE, sprite_get("dspecial_hurt"));

// Startup
set_window_value(AT_DSPECIAL, 1, AG_WINDOW_LENGTH, 10);
set_window_value(AT_DSPECIAL, 1, AG_WINDOW_ANIM_FRAMES, 3);
set_window_value(AT_DSPECIAL, 1, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_DSPECIAL, 1, AG_WINDOW_SFX, asset_get("sfx_plant_ready"));

// Spit
set_window_value(AT_DSPECIAL, 2, AG_WINDOW_LENGTH, 6);
set_window_value(AT_DSPECIAL, 2, AG_WINDOW_ANIM_FRAME_START, 3);
set_window_value(AT_DSPECIAL, 2, AG_WINDOW_ANIM_FRAMES, 1);

// Endlag
set_window_value(AT_DSPECIAL, 3, AG_WINDOW_LENGTH, 9);
set_window_value(AT_DSPECIAL, 3, AG_WINDOW_ANIM_FRAME_START, 4);
set_window_value(AT_DSPECIAL, 3, AG_WINDOW_ANIM_FRAMES, 4);

// Hitboxes
set_num_hitboxes(AT_DSPECIAL, 8);

// Venus Flytrap FStrong Weak
    // General Info
        set_hitbox_value(AT_DSPECIAL, 1, HG_HITBOX_TYPE, 2);
        set_hitbox_value(AT_DSPECIAL, 1, HG_WINDOW, 6);
        set_hitbox_value(AT_DSPECIAL, 1, HG_PRIORITY, 4);
        set_hitbox_value(AT_DSPECIAL, 1, HG_LIFETIME, 6);
        set_hitbox_value(AT_DSPECIAL, 1, HG_SHAPE, 2);
        
    // Location
        set_hitbox_value(AT_DSPECIAL, 1, HG_HITBOX_X, 0);
        set_hitbox_value(AT_DSPECIAL, 1, HG_HITBOX_Y, 0);
        
        set_hitbox_value(AT_DSPECIAL, 1, HG_WIDTH, 93);
        set_hitbox_value(AT_DSPECIAL, 1, HG_HEIGHT, 100);
        
    // Hitplayer Stats
        set_hitbox_value(AT_DSPECIAL, 1, HG_DAMAGE, 10);
        set_hitbox_value(AT_DSPECIAL, 1, HG_ANGLE, 60);
        
        set_hitbox_value(AT_DSPECIAL, 1, HG_BASE_KNOCKBACK, 7);
        set_hitbox_value(AT_DSPECIAL, 1, HG_KNOCKBACK_SCALING, 0.6);
        
        set_hitbox_value(AT_DSPECIAL, 1, HG_BASE_HITPAUSE, 7);
        set_hitbox_value(AT_DSPECIAL, 1, HG_HITPAUSE_SCALING, 0.55);
        set_hitbox_value(AT_DSPECIAL, 1, HG_HITSTUN_MULTIPLIER, 0.6);
        
    // Visuals
        set_hitbox_value(AT_DSPECIAL, 1, HG_HIT_SFX, asset_get("sfx_blow_medium3"));
        
    // Lockout for priority
        set_hitbox_value(AT_DSPECIAL, 1, HG_HIT_LOCKOUT, 10);
        
    // Basic Article Stats
        ArticleExtras(AT_DSPECIAL, 1);

// Venus Flytrap FStrong Tipper
    // General Info
        set_hitbox_value(AT_DSPECIAL, 2, HG_HITBOX_TYPE, 2);
        set_hitbox_value(AT_DSPECIAL, 2, HG_WINDOW, 6);
        set_hitbox_value(AT_DSPECIAL, 2, HG_PRIORITY, 3);
        set_hitbox_value(AT_DSPECIAL, 2, HG_LIFETIME, 6);
        set_hitbox_value(AT_DSPECIAL, 2, HG_SHAPE, 0);
        
    // Location
        set_hitbox_value(AT_DSPECIAL, 2, HG_HITBOX_X, 0);
        set_hitbox_value(AT_DSPECIAL, 2, HG_HITBOX_Y, 0);
        
        set_hitbox_value(AT_DSPECIAL, 2, HG_WIDTH, 93);
        set_hitbox_value(AT_DSPECIAL, 2, HG_HEIGHT, 100);
        
    // Hitplayer Stats
        set_hitbox_value(AT_DSPECIAL, 2, HG_DAMAGE, 13);
        set_hitbox_value(AT_DSPECIAL, 2, HG_ANGLE, 45);
        
        set_hitbox_value(AT_DSPECIAL, 2, HG_BASE_KNOCKBACK, 6);
        set_hitbox_value(AT_DSPECIAL, 2, HG_KNOCKBACK_SCALING, 0.9);
        
        set_hitbox_value(AT_DSPECIAL, 2, HG_BASE_HITPAUSE, 9);
        set_hitbox_value(AT_DSPECIAL, 2, HG_HITPAUSE_SCALING, 0.7);
        set_hitbox_value(AT_DSPECIAL, 2, HG_HITSTUN_MULTIPLIER, 0.9);
        
    // Visuals
        set_hitbox_value(AT_DSPECIAL, 2, HG_HIT_SFX, asset_get("sfx_blow_heavy1"));
        
    // Lockout for priority
        set_hitbox_value(AT_DSPECIAL, 2, HG_HIT_LOCKOUT, 10);
        
    // Basic Article Stats
        ArticleExtras(AT_DSPECIAL, 2);
        
// Venus Flytrap UStrong Catcher
    // General Info
        set_hitbox_value(AT_DSPECIAL, 3, HG_HITBOX_TYPE, 2);
        set_hitbox_value(AT_DSPECIAL, 3, HG_WINDOW, 6);
        set_hitbox_value(AT_DSPECIAL, 3, HG_PRIORITY, 3);
        set_hitbox_value(AT_DSPECIAL, 3, HG_LIFETIME, 5);
        set_hitbox_value(AT_DSPECIAL, 3, HG_SHAPE, 2);
        
    // Location
        set_hitbox_value(AT_DSPECIAL, 3, HG_HITBOX_X, 0);
        set_hitbox_value(AT_DSPECIAL, 3, HG_HITBOX_Y, 0);
        
        set_hitbox_value(AT_DSPECIAL, 3, HG_WIDTH, 77);
        set_hitbox_value(AT_DSPECIAL, 3, HG_HEIGHT, 70);
        
    // Hitplayer Stats
        set_hitbox_value(AT_DSPECIAL, 3, HG_DAMAGE, 4);
        set_hitbox_value(AT_DSPECIAL, 3, HG_ANGLE, 90);
        
        set_hitbox_value(AT_DSPECIAL, 3, HG_BASE_KNOCKBACK, 10);
        
        set_hitbox_value(AT_DSPECIAL, 3, HG_BASE_HITPAUSE, 5);
        set_hitbox_value(AT_DSPECIAL, 3, HG_EXTRA_HITPAUSE, -5);
        
    // Visuals
        set_hitbox_value(AT_DSPECIAL, 3, HG_HIT_SFX, asset_get("sfx_blow_medium1"));
        set_hitbox_value(AT_DSPECIAL, 3, HG_VISUAL_EFFECT, 1);
        
    // Basic Article Stats
        ArticleExtras(AT_DSPECIAL, 3);
        
// Venus Flytrap UStrong Bite
    // General Info
        set_hitbox_value(AT_DSPECIAL, 4, HG_HITBOX_TYPE, 2);
        set_hitbox_value(AT_DSPECIAL, 4, HG_WINDOW, 6);
        set_hitbox_value(AT_DSPECIAL, 4, HG_PRIORITY, 3);
        set_hitbox_value(AT_DSPECIAL, 4, HG_LIFETIME, 5);
        set_hitbox_value(AT_DSPECIAL, 4, HG_SHAPE, 0);
        
    // Location
        set_hitbox_value(AT_DSPECIAL, 4, HG_HITBOX_X, 0);
        set_hitbox_value(AT_DSPECIAL, 4, HG_HITBOX_Y, 0);
        
        set_hitbox_value(AT_DSPECIAL, 4, HG_WIDTH, 80);
        set_hitbox_value(AT_DSPECIAL, 4, HG_HEIGHT, 75);
        
    // Hitplayer Stats
        set_hitbox_value(AT_DSPECIAL, 4, HG_DAMAGE, 7);
        set_hitbox_value(AT_DSPECIAL, 4, HG_ANGLE, 90);
        
        set_hitbox_value(AT_DSPECIAL, 4, HG_BASE_KNOCKBACK, 7);
        set_hitbox_value(AT_DSPECIAL, 4, HG_KNOCKBACK_SCALING, 1);
        
        set_hitbox_value(AT_DSPECIAL, 4, HG_BASE_HITPAUSE, 11);
        set_hitbox_value(AT_DSPECIAL, 4, HG_HITPAUSE_SCALING, 0.8);
        set_hitbox_value(AT_DSPECIAL, 4, HG_HITSTUN_MULTIPLIER, 0.9);
        
    // Visuals
        set_hitbox_value(AT_DSPECIAL, 4, HG_HIT_SFX, asset_get("sfx_crunch"));
        set_hitbox_value(AT_DSPECIAL, 4, HG_VISUAL_EFFECT, 1);
        
    // Basic Article Stats
        ArticleExtras(AT_DSPECIAL, 4);
        
// Venus Flytrap DStrong Hit Out
    // General Info
        set_hitbox_value(AT_DSPECIAL, 5, HG_HITBOX_TYPE, 2);
        set_hitbox_value(AT_DSPECIAL, 5, HG_WINDOW, 6);
        set_hitbox_value(AT_DSPECIAL, 5, HG_PRIORITY, 3);
        set_hitbox_value(AT_DSPECIAL, 5, HG_LIFETIME, 5);
        set_hitbox_value(AT_DSPECIAL, 5, HG_SHAPE, 2);
        
    // Location
        set_hitbox_value(AT_DSPECIAL, 5, HG_HITBOX_X, 0);
        set_hitbox_value(AT_DSPECIAL, 5, HG_HITBOX_Y, 0);
        
        set_hitbox_value(AT_DSPECIAL, 5, HG_WIDTH, 100);
        set_hitbox_value(AT_DSPECIAL, 5, HG_HEIGHT, 35);
        
    // Hitplayer Stats
        set_hitbox_value(AT_DSPECIAL, 5, HG_DAMAGE, 5);
        set_hitbox_value(AT_DSPECIAL, 5, HG_ANGLE, 40);
        set_hitbox_value(AT_DSPECIAL, 5, HG_ANGLE_FLIPPER, 3);
        
        set_hitbox_value(AT_DSPECIAL, 5, HG_BASE_KNOCKBACK, 7);
        
        set_hitbox_value(AT_DSPECIAL, 5, HG_BASE_HITPAUSE, 3);
        
    // Visuals
        set_hitbox_value(AT_DSPECIAL, 5, HG_HIT_SFX, asset_get("sfx_syl_fstrong"));
        set_hitbox_value(AT_DSPECIAL, 5, HG_VISUAL_EFFECT, 1);
        
    // Basic Article Stats
        ArticleExtras(AT_DSPECIAL, 5);
        
// Venus Flytrap DStrong Poke Right
    // General Info
        set_hitbox_value(AT_DSPECIAL, 6, HG_HITBOX_TYPE, 2);
        set_hitbox_value(AT_DSPECIAL, 6, HG_WINDOW, 6);
        set_hitbox_value(AT_DSPECIAL, 6, HG_PRIORITY, 3);
        set_hitbox_value(AT_DSPECIAL, 6, HG_LIFETIME, 5);
        set_hitbox_value(AT_DSPECIAL, 6, HG_SHAPE, 2);
        
    // Location
        set_hitbox_value(AT_DSPECIAL, 6, HG_HITBOX_X, 0);
        set_hitbox_value(AT_DSPECIAL, 6, HG_HITBOX_Y, 0);
        
        set_hitbox_value(AT_DSPECIAL, 6, HG_WIDTH, 55);
        set_hitbox_value(AT_DSPECIAL, 6, HG_HEIGHT, 80);
        
    // Hitplayer Stats
        set_hitbox_value(AT_DSPECIAL, 6, HG_DAMAGE, 9);
        set_hitbox_value(AT_DSPECIAL, 6, HG_ANGLE, 115);
        
        set_hitbox_value(AT_DSPECIAL, 6, HG_BASE_KNOCKBACK, 12);
        set_hitbox_value(AT_DSPECIAL, 6, HG_KNOCKBACK_SCALING, 0.3);
        
        set_hitbox_value(AT_DSPECIAL, 6, HG_BASE_HITPAUSE, 9);
        set_hitbox_value(AT_DSPECIAL, 6, HG_HITPAUSE_SCALING, 0.8);
        set_hitbox_value(AT_DSPECIAL, 6, HG_HITSTUN_MULTIPLIER, 0.8);
        
    // Visuals
        set_hitbox_value(AT_DSPECIAL, 6, HG_HIT_SFX, asset_get("sfx_syl_ustrong_part3"));
        set_hitbox_value(AT_DSPECIAL, 6, HG_VISUAL_EFFECT, 1);
        
    // Basic Article Stats
        ArticleExtras(AT_DSPECIAL, 6);
        
// Venus Flytrap DStrong Poke Left
    // General Info
        set_hitbox_value(AT_DSPECIAL, 7, HG_HITBOX_TYPE, 2);
        set_hitbox_value(AT_DSPECIAL, 7, HG_WINDOW, 6);
        set_hitbox_value(AT_DSPECIAL, 7, HG_PRIORITY, 3);
        set_hitbox_value(AT_DSPECIAL, 7, HG_LIFETIME, 5);
        set_hitbox_value(AT_DSPECIAL, 7, HG_SHAPE, 2);
        
    // Location
        set_hitbox_value(AT_DSPECIAL, 7, HG_HITBOX_X, 0);
        set_hitbox_value(AT_DSPECIAL, 7, HG_HITBOX_Y, 0);
        
        set_hitbox_value(AT_DSPECIAL, 7, HG_WIDTH, 55);
        set_hitbox_value(AT_DSPECIAL, 7, HG_HEIGHT, 80);
        
    // Hitplayer Stats
        set_hitbox_value(AT_DSPECIAL, 7, HG_DAMAGE, 9);
        set_hitbox_value(AT_DSPECIAL, 7, HG_ANGLE, 65);
        
        set_hitbox_value(AT_DSPECIAL, 7, HG_BASE_KNOCKBACK, 12);
        set_hitbox_value(AT_DSPECIAL, 7, HG_KNOCKBACK_SCALING, 0.3);
        
        set_hitbox_value(AT_DSPECIAL, 7, HG_BASE_HITPAUSE, 9);
        set_hitbox_value(AT_DSPECIAL, 7, HG_HITPAUSE_SCALING, 0.8);
        set_hitbox_value(AT_DSPECIAL, 7, HG_HITSTUN_MULTIPLIER, 0.8);
        
    // Visuals
        set_hitbox_value(AT_DSPECIAL, 7, HG_HIT_SFX, asset_get("sfx_syl_ustrong_part3"));
        set_hitbox_value(AT_DSPECIAL, 7, HG_VISUAL_EFFECT, 1);
        
    // Basic Article Stats
        ArticleExtras(AT_DSPECIAL, 7);
        
// Seed Hitbox
    // General Info
        set_hitbox_value(AT_DSPECIAL, 8, HG_HITBOX_TYPE, 2);
        set_hitbox_value(AT_DSPECIAL, 8, HG_WINDOW, 2);
        set_hitbox_value(AT_DSPECIAL, 8, HG_PRIORITY, 3);
        set_hitbox_value(AT_DSPECIAL, 8, HG_LIFETIME, 200);
        
    // Location
        set_hitbox_value(AT_DSPECIAL, 8, HG_HITBOX_X, 22);
        set_hitbox_value(AT_DSPECIAL, 8, HG_HITBOX_Y, -33);
        
        set_hitbox_value(AT_DSPECIAL, 8, HG_WIDTH, 0);
        set_hitbox_value(AT_DSPECIAL, 8, HG_HEIGHT, 0);
        
    // Hitplayer Stats
        set_hitbox_value(AT_DSPECIAL, 8, HG_DAMAGE, 4);
        set_hitbox_value(AT_DSPECIAL, 8, HG_ANGLE, 60);
        
        set_hitbox_value(AT_DSPECIAL, 8, HG_BASE_KNOCKBACK, 8);
        set_hitbox_value(AT_DSPECIAL, 8, HG_KNOCKBACK_SCALING, 0.3);
        
        set_hitbox_value(AT_DSPECIAL, 8, HG_BASE_HITPAUSE, 6);
        set_hitbox_value(AT_DSPECIAL, 8, HG_HITPAUSE_SCALING, 0.4);
        set_hitbox_value(AT_DSPECIAL, 8, HG_HITSTUN_MULTIPLIER, 0.6);
        
    // Visuals
        set_hitbox_value(AT_DSPECIAL, 8, HG_HIT_SFX, sound_get("noita_blightning"));
        
        set_hitbox_value(AT_DSPECIAL, 8, HG_HIT_PARTICLE_NUM, 1);
        
    // Projectile Animation
        set_hitbox_value(AT_DSPECIAL, 8, HG_PROJECTILE_SPRITE, sprite_get("seed"));
        set_hitbox_value(AT_DSPECIAL, 8, HG_PROJECTILE_MASK, -1);
        set_hitbox_value(AT_DSPECIAL, 8, HG_PROJECTILE_DESTROY_EFFECT, sprite_get("hitbox_empty"));
        set_hitbox_value(AT_DSPECIAL, 8, HG_PROJECTILE_ANIM_SPEED, 0.2);
        
    // Proj Movement
        set_hitbox_value(AT_DSPECIAL, 8, HG_PROJECTILE_HSPEED, 3);
        set_hitbox_value(AT_DSPECIAL, 8, HG_PROJECTILE_VSPEED, -6);
        
        set_hitbox_value(AT_DSPECIAL, 8, HG_PROJECTILE_ENEMY_BEHAVIOR, 0);
        set_hitbox_value(AT_DSPECIAL, 8, HG_PROJECTILE_GROUND_BEHAVIOR, 0);
        set_hitbox_value(AT_DSPECIAL, 8, HG_PROJECTILE_WALL_BEHAVIOR, 2);
        
    // Proj Interactions
        set_hitbox_value(AT_DSPECIAL, 8, HG_PROJECTILE_DOES_NOT_REFLECT, true);
        set_hitbox_value(AT_DSPECIAL, 8, HG_PROJECTILE_IS_TRANSCENDENT, false);
        set_hitbox_value(AT_DSPECIAL, 8, HG_PROJECTILE_PARRY_STUN, true);
        set_hitbox_value(AT_DSPECIAL, 8, HG_PROJECTILE_UNBASHABLE, false);
        set_hitbox_value(AT_DSPECIAL, 8, HG_EXTENDED_PARRY_STUN, true);
        set_hitbox_value(AT_DSPECIAL, 8, HG_PROJECTILE_PLASMA_SAFE, false);
        
#define ArticleExtras(attackName, hitboxNumber)
    // Projectile Animation
        set_hitbox_value(attackName, hitboxNumber, HG_PROJECTILE_SPRITE, sprite_get("hitbox_empty"));
        set_hitbox_value(attackName, hitboxNumber, HG_PROJECTILE_MASK, -1);
        set_hitbox_value(attackName, hitboxNumber, HG_PROJECTILE_DESTROY_EFFECT, sprite_get("hitbox_empty"));
        
    // Proj Movement
        set_hitbox_value(attackName, hitboxNumber, HG_PROJECTILE_HSPEED, 0);
        set_hitbox_value(attackName, hitboxNumber, HG_PROJECTILE_VSPEED, 0);
        
        set_hitbox_value(attackName, hitboxNumber, HG_PROJECTILE_ENEMY_BEHAVIOR, 1);
        set_hitbox_value(attackName, hitboxNumber, HG_PROJECTILE_GROUND_BEHAVIOR, 1);
        set_hitbox_value(attackName, hitboxNumber, HG_PROJECTILE_WALL_BEHAVIOR, 1);
        
    // Proj Interactions
        set_hitbox_value(attackName, hitboxNumber, HG_PROJECTILE_DOES_NOT_REFLECT, true);
        set_hitbox_value(attackName, hitboxNumber, HG_PROJECTILE_IS_TRANSCENDENT, false);
        set_hitbox_value(attackName, hitboxNumber, HG_PROJECTILE_PARRY_STUN, true);
        set_hitbox_value(attackName, hitboxNumber, HG_PROJECTILE_UNBASHABLE, true);
        set_hitbox_value(attackName, hitboxNumber, HG_EXTENDED_PARRY_STUN, true);
        set_hitbox_value(attackName, hitboxNumber, HG_PROJECTILE_PLASMA_SAFE, true);