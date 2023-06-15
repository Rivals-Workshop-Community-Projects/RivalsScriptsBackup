set_attack_value(AT_FSPECIAL, AG_CATEGORY, 2);
set_attack_value(AT_FSPECIAL, AG_SPRITE, sprite_get("fspecial"));
set_attack_value(AT_FSPECIAL, AG_NUM_WINDOWS, 7);
set_attack_value(AT_FSPECIAL, AG_HURTBOX_SPRITE, sprite_get("fspecial_hurt"));

// Startup
set_window_value(AT_FSPECIAL, 1, AG_WINDOW_LENGTH, 12);
set_window_value(AT_FSPECIAL, 1, AG_WINDOW_ANIM_FRAMES, 4);
set_window_value(AT_FSPECIAL, 1, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_FSPECIAL, 1, AG_WINDOW_SFX, asset_get("sfx_shovel_swing_med2"));
set_window_value(AT_FSPECIAL, 1, AG_WINDOW_INVINCIBILITY, 2);

// Grab + Slide
set_window_value(AT_FSPECIAL, 2, AG_WINDOW_LENGTH, 6);
set_window_value(AT_FSPECIAL, 2, AG_WINDOW_ANIM_FRAME_START, 4);
set_window_value(AT_FSPECIAL, 2, AG_WINDOW_ANIM_FRAMES, 2);
set_window_value(AT_FSPECIAL, 2, AG_WINDOW_INVINCIBILITY, 2);

// Hold
set_window_value(AT_FSPECIAL, 3, AG_WINDOW_LENGTH, 16);
set_window_value(AT_FSPECIAL, 3, AG_WINDOW_ANIM_FRAME_START, 7);
set_window_value(AT_FSPECIAL, 3, AG_WINDOW_ANIM_FRAMES, 3);
set_window_value(AT_FSPECIAL, 3, AG_WINDOW_INVINCIBILITY, 2);

// Hold (air)
set_window_value(AT_FSPECIAL, 4, AG_WINDOW_TYPE, 10);
set_window_value(AT_FSPECIAL, 4, AG_WINDOW_LENGTH, 2);
set_window_value(AT_FSPECIAL, 4, AG_WINDOW_ANIM_FRAME_START, 6);
set_window_value(AT_FSPECIAL, 4, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_FSPECIAL, 4, AG_WINDOW_INVINCIBILITY, 2);

// Hold (success)
set_window_value(AT_FSPECIAL, 5, AG_WINDOW_LENGTH, 5);
set_window_value(AT_FSPECIAL, 5, AG_WINDOW_ANIM_FRAME_START, 7);
set_window_value(AT_FSPECIAL, 5, AG_WINDOW_ANIM_FRAMES, 3);
set_window_value(AT_FSPECIAL, 5, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_FSPECIAL, 5, AG_WINDOW_SFX, asset_get("sfx_shovel_swing_heavy2"));

// Yeet
set_window_value(AT_FSPECIAL, 6, AG_WINDOW_LENGTH, 6);
set_window_value(AT_FSPECIAL, 6, AG_WINDOW_ANIM_FRAME_START, 10);
set_window_value(AT_FSPECIAL, 6, AG_WINDOW_ANIM_FRAMES, 3);

// Endlag
set_window_value(AT_FSPECIAL, 7, AG_WINDOW_LENGTH, 2);
set_window_value(AT_FSPECIAL, 7, AG_WINDOW_ANIM_FRAME_START, 14);
set_window_value(AT_FSPECIAL, 7, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_FSPECIAL, 7, AG_WINDOW_HAS_WHIFFLAG, 1);

// Hitboxes
set_num_hitboxes(AT_FSPECIAL, 2);

// Grab Hit
    // General Info
        set_hitbox_value(AT_FSPECIAL, 1, HG_HITBOX_TYPE, 1);
        set_hitbox_value(AT_FSPECIAL, 1, HG_WINDOW, 2);
        set_hitbox_value(AT_FSPECIAL, 1, HG_SHAPE, 2);
        set_hitbox_value(AT_FSPECIAL, 1, HG_LIFETIME, 6);
        set_hitbox_value(AT_FSPECIAL, 1, HG_PRIORITY, 6);
        set_hitbox_value(AT_FSPECIAL, 1, HG_HITBOX_GROUP, 1);
        
    // Location
        set_hitbox_value(AT_FSPECIAL, 1, HG_HITBOX_X, 30);
        set_hitbox_value(AT_FSPECIAL, 1, HG_HITBOX_Y, -25);
        
        set_hitbox_value(AT_FSPECIAL, 1, HG_WIDTH, 60);
        set_hitbox_value(AT_FSPECIAL, 1, HG_HEIGHT, 50);
        
    // Hitplayer Stats
        set_hitbox_value(AT_FSPECIAL, 1, HG_DAMAGE, 3);
        set_hitbox_value(AT_FSPECIAL, 1, HG_ANGLE, 60);
        set_hitbox_value(AT_FSPECIAL, 1, HG_TECHABLE, 1);
        set_hitbox_value(AT_FSPECIAL, 1, HG_IGNORES_PROJECTILES, 1);
        
        set_hitbox_value(AT_FSPECIAL, 1, HG_BASE_KNOCKBACK, 5);
        
        set_hitbox_value(AT_FSPECIAL, 1, HG_BASE_HITPAUSE, 5);
        set_hitbox_value(AT_FSPECIAL, 1, HG_HITPAUSE_SCALING, 0.5);
        
    // Hit FX & SFX
        set_hitbox_value(AT_FSPECIAL, 1, HG_HIT_SFX, asset_get("sfx_shovel_hit_med2"));
        
// Yeet Hit
    // General Info
        set_hitbox_value(AT_FSPECIAL, 2, HG_HITBOX_TYPE, 1);
        set_hitbox_value(AT_FSPECIAL, 2, HG_WINDOW, 6);
        set_hitbox_value(AT_FSPECIAL, 2, HG_SHAPE, 2);
        set_hitbox_value(AT_FSPECIAL, 2, HG_LIFETIME, 3);
        set_hitbox_value(AT_FSPECIAL, 2, HG_PRIORITY, 6);
        set_hitbox_value(AT_FSPECIAL, 2, HG_HITBOX_GROUP, 2);
        
    // Location
        set_hitbox_value(AT_FSPECIAL, 2, HG_HITBOX_X, 20);
        set_hitbox_value(AT_FSPECIAL, 2, HG_HITBOX_Y, -40);
        
        set_hitbox_value(AT_FSPECIAL, 2, HG_WIDTH, 80);
        set_hitbox_value(AT_FSPECIAL, 2, HG_HEIGHT, 80);
        
    // Hitplayer Stats
        set_hitbox_value(AT_FSPECIAL, 2, HG_DAMAGE, 5);
        set_hitbox_value(AT_FSPECIAL, 2, HG_ANGLE, 80);
        
        set_hitbox_value(AT_FSPECIAL, 2, HG_BASE_KNOCKBACK, 6);
        set_hitbox_value(AT_FSPECIAL, 2, HG_KNOCKBACK_SCALING, 0.6);
        set_hitbox_value(AT_FSPECIAL, 2, HG_HITSTUN_MULTIPLIER, 0.8);
        
        set_hitbox_value(AT_FSPECIAL, 2, HG_BASE_HITPAUSE, 8);
        set_hitbox_value(AT_FSPECIAL, 2, HG_HITPAUSE_SCALING, 0.5);
        set_hitbox_value(AT_FSPECIAL, 2, HG_THROWS_ROCK, 1);
        
    // Hit FX & SFX
        set_hitbox_value(AT_FSPECIAL, 2, HG_HIT_SFX, asset_get("sfx_shovel_hit_heavy1"));
        set_hitbox_value(AT_FSPECIAL, 2, HG_VISUAL_EFFECT, 306);
        
// Landing with Flytrap
    // General Info
        set_hitbox_value(AT_FSPECIAL, 3, HG_HITBOX_TYPE, 2);
        set_hitbox_value(AT_FSPECIAL, 3, HG_WINDOW, 6);
        set_hitbox_value(AT_FSPECIAL, 3, HG_PRIORITY, 3);
        set_hitbox_value(AT_FSPECIAL, 3, HG_LIFETIME, 5);
        set_hitbox_value(AT_FSPECIAL, 3, HG_SHAPE, 0);
        
    // Location
        set_hitbox_value(AT_FSPECIAL, 3, HG_HITBOX_X, 0);
        set_hitbox_value(AT_FSPECIAL, 3, HG_HITBOX_Y, 0);
        
        set_hitbox_value(AT_FSPECIAL, 3, HG_WIDTH, 100);
        set_hitbox_value(AT_FSPECIAL, 3, HG_HEIGHT, 100);
        
    // Hitplayer Stats
        set_hitbox_value(AT_FSPECIAL, 3, HG_DAMAGE, 8);
        set_hitbox_value(AT_FSPECIAL, 3, HG_ANGLE, 60);
        set_hitbox_value(AT_FSPECIAL, 3, HG_ANGLE_FLIPPER, 6);
        
        set_hitbox_value(AT_FSPECIAL, 3, HG_BASE_KNOCKBACK, 8);
        set_hitbox_value(AT_FSPECIAL, 3, HG_KNOCKBACK_SCALING, 1);
        
        set_hitbox_value(AT_FSPECIAL, 3, HG_BASE_HITPAUSE, 9);
        set_hitbox_value(AT_FSPECIAL, 3, HG_HITPAUSE_SCALING, 0.6);
        
    // Visuals
        //set_hitbox_value(AT_FSPECIAL, 3, HG_HIT_SFX, sound_get("wood"));
        set_hitbox_value(AT_FSPECIAL, 3, HG_VISUAL_EFFECT, 1);
        // ADD PARTICLES
        set_hitbox_value(AT_FSPECIAL, 3, HG_HIT_PARTICLE_NUM, 1);
        
    // Basic Article Stats
        ArticleExtras(AT_FSPECIAL, 3);
        
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
        set_hitbox_value(attackName, hitboxNumber, HG_PROJECTILE_IS_TRANSCENDENT, true);
        set_hitbox_value(attackName, hitboxNumber, HG_PROJECTILE_PARRY_STUN, true);
        set_hitbox_value(attackName, hitboxNumber, HG_PROJECTILE_UNBASHABLE, true);
        set_hitbox_value(attackName, hitboxNumber, HG_EXTENDED_PARRY_STUN, true);
        set_hitbox_value(attackName, hitboxNumber, HG_PROJECTILE_PLASMA_SAFE, true);