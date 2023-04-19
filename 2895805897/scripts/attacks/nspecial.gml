set_attack_value(AT_NSPECIAL, AG_CATEGORY, 2);
set_attack_value(AT_NSPECIAL, AG_SPRITE, sprite_get("nspecial"));
set_attack_value(AT_NSPECIAL, AG_NUM_WINDOWS, 3);
set_attack_value(AT_NSPECIAL, AG_HURTBOX_SPRITE, sprite_get("nspecial_hurt"));

// Startup
set_window_value(AT_NSPECIAL, 1, AG_WINDOW_LENGTH, 9);
set_window_value(AT_NSPECIAL, 1, AG_WINDOW_ANIM_FRAMES, 2);
set_window_value(AT_NSPECIAL, 1, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_NSPECIAL, 1, AG_WINDOW_SFX, asset_get("sfx_chest_open"));

// Big Bite
set_window_value(AT_NSPECIAL, 2, AG_WINDOW_LENGTH, 4);
set_window_value(AT_NSPECIAL, 2, AG_WINDOW_ANIM_FRAME_START, 2);
set_window_value(AT_NSPECIAL, 2, AG_WINDOW_ANIM_FRAMES, 1);

// Endlag
set_window_value(AT_NSPECIAL, 3, AG_WINDOW_LENGTH, 7);
set_window_value(AT_NSPECIAL, 3, AG_WINDOW_ANIM_FRAME_START, 3);
set_window_value(AT_NSPECIAL, 3, AG_WINDOW_ANIM_FRAMES, 2);
set_window_value(AT_NSPECIAL, 3, AG_WINDOW_HAS_WHIFFLAG, 1);

// Hitboxes
set_num_hitboxes(AT_NSPECIAL, 3);

// Poetry Book
    // General Info
        set_hitbox_value(AT_NSPECIAL, 1, HG_HITBOX_TYPE, 2);
        set_hitbox_value(AT_NSPECIAL, 1, HG_WINDOW, 6);
        set_hitbox_value(AT_NSPECIAL, 1, HG_PRIORITY, 3);
        set_hitbox_value(AT_NSPECIAL, 1, HG_LIFETIME, 5);
        set_hitbox_value(AT_NSPECIAL, 1, HG_SHAPE, 2);
        
    // Location
        set_hitbox_value(AT_NSPECIAL, 1, HG_HITBOX_X, 0);
        set_hitbox_value(AT_NSPECIAL, 1, HG_HITBOX_Y, 0);
        
        set_hitbox_value(AT_NSPECIAL, 1, HG_WIDTH, 50);
        set_hitbox_value(AT_NSPECIAL, 1, HG_HEIGHT, 50);
        
    // Hitplayer Stats
        set_hitbox_value(AT_NSPECIAL, 1, HG_DAMAGE, 6);
        set_hitbox_value(AT_NSPECIAL, 1, HG_ANGLE, 60);
        set_hitbox_value(AT_NSPECIAL, 1, HG_ANGLE_FLIPPER, 6);
        
        set_hitbox_value(AT_NSPECIAL, 1, HG_BASE_KNOCKBACK, 7);
        set_hitbox_value(AT_NSPECIAL, 1, HG_KNOCKBACK_SCALING, 0.5);
        
        set_hitbox_value(AT_NSPECIAL, 1, HG_BASE_HITPAUSE, 12);
        set_hitbox_value(AT_NSPECIAL, 1, HG_HITPAUSE_SCALING, 0.8);
        set_hitbox_value(AT_NSPECIAL, 1, HG_HITSTUN_MULTIPLIER, 0.6);
        
    // Visuals
        set_hitbox_value(AT_NSPECIAL, 1, HG_HIT_SFX, sound_get("BA_basic_attack_aubrey"));
        set_hitbox_value(AT_NSPECIAL, 1, HG_VISUAL_EFFECT, 1);
        // ADD PARTICLES
        set_hitbox_value(AT_NSPECIAL, 1, HG_HIT_PARTICLE_NUM, 1);
        
    // Basic Article Stats
        ArticleExtras(AT_NSPECIAL, 1);
        
// Jacks Weak Hit 1
    // General Info
        set_hitbox_value(AT_NSPECIAL, 2, HG_HITBOX_TYPE, 2);
        set_hitbox_value(AT_NSPECIAL, 2, HG_WINDOW, 6);
        set_hitbox_value(AT_NSPECIAL, 2, HG_PRIORITY, 3);
        set_hitbox_value(AT_NSPECIAL, 2, HG_LIFETIME, 5);
        set_hitbox_value(AT_NSPECIAL, 2, HG_SHAPE, 2);
        
    // Location
        set_hitbox_value(AT_NSPECIAL, 2, HG_HITBOX_X, 0);
        set_hitbox_value(AT_NSPECIAL, 2, HG_HITBOX_Y, 0);
        
        set_hitbox_value(AT_NSPECIAL, 2, HG_WIDTH, 90);
        set_hitbox_value(AT_NSPECIAL, 2, HG_HEIGHT, 90);
        
    // Hitplayer Stats
        set_hitbox_value(AT_NSPECIAL, 2, HG_DAMAGE, 1);
        set_hitbox_value(AT_NSPECIAL, 2, HG_ANGLE, 90);
        set_hitbox_value(AT_NSPECIAL, 2, HG_ANGLE_FLIPPER, 9);
        set_hitbox_value(AT_NSPECIAL, 2, HG_TECHABLE, 3);
        
        set_hitbox_value(AT_NSPECIAL, 2, HG_BASE_KNOCKBACK, 3);
        
        set_hitbox_value(AT_NSPECIAL, 2, HG_BASE_HITPAUSE, 4);
        
    // Visuals
        set_hitbox_value(AT_NSPECIAL, 2, HG_HIT_SFX, asset_get("sfx_shovel_hit_light1"));
        // ADD PARTICLES
        set_hitbox_value(AT_NSPECIAL, 2, HG_HIT_PARTICLE_NUM, 2);
        
    // Basic Article Stats
        ArticleExtras(AT_NSPECIAL, 2);

// Jacks Weak Hit 2
    // General Info
        set_hitbox_value(AT_NSPECIAL, 3, HG_HITBOX_TYPE, 2);
        set_hitbox_value(AT_NSPECIAL, 3, HG_WINDOW, 6);
        set_hitbox_value(AT_NSPECIAL, 3, HG_PRIORITY, 3);
        set_hitbox_value(AT_NSPECIAL, 3, HG_LIFETIME, 5);
        set_hitbox_value(AT_NSPECIAL, 3, HG_SHAPE, 2);
        
    // Location
        set_hitbox_value(AT_NSPECIAL, 3, HG_HITBOX_X, 0);
        set_hitbox_value(AT_NSPECIAL, 3, HG_HITBOX_Y, 0);
        
        set_hitbox_value(AT_NSPECIAL, 3, HG_WIDTH, 90);
        set_hitbox_value(AT_NSPECIAL, 3, HG_HEIGHT, 90);
        
    // Hitplayer Stats
        set_hitbox_value(AT_NSPECIAL, 3, HG_DAMAGE, 1);
        set_hitbox_value(AT_NSPECIAL, 3, HG_ANGLE, 90);
        set_hitbox_value(AT_NSPECIAL, 3, HG_ANGLE_FLIPPER, 9);
        set_hitbox_value(AT_NSPECIAL, 3, HG_TECHABLE, 3);
        
        set_hitbox_value(AT_NSPECIAL, 3, HG_BASE_KNOCKBACK, 3);
        
        set_hitbox_value(AT_NSPECIAL, 3, HG_BASE_HITPAUSE, 4);
        
    // Visuals
        set_hitbox_value(AT_NSPECIAL, 3, HG_HIT_SFX, asset_get("sfx_shovel_hit_light2"));
        // ADD PARTICLES
        set_hitbox_value(AT_NSPECIAL, 3, HG_HIT_PARTICLE_NUM, 2);
        
    // Basic Article Stats
        ArticleExtras(AT_NSPECIAL, 3);
        
// Jacks Final Hit
    // General Info
        set_hitbox_value(AT_NSPECIAL, 4, HG_HITBOX_TYPE, 2);
        set_hitbox_value(AT_NSPECIAL, 4, HG_WINDOW, 6);
        set_hitbox_value(AT_NSPECIAL, 4, HG_PRIORITY, 3);
        set_hitbox_value(AT_NSPECIAL, 4, HG_LIFETIME, 5);
        set_hitbox_value(AT_NSPECIAL, 4, HG_SHAPE, 2);
        
    // Location
        set_hitbox_value(AT_NSPECIAL, 4, HG_HITBOX_X, 0);
        set_hitbox_value(AT_NSPECIAL, 4, HG_HITBOX_Y, 0);
        
        set_hitbox_value(AT_NSPECIAL, 4, HG_WIDTH, 95);
        set_hitbox_value(AT_NSPECIAL, 4, HG_HEIGHT, 95);
        
    // Hitplayer Stats
        set_hitbox_value(AT_NSPECIAL, 4, HG_DAMAGE, 2);
        set_hitbox_value(AT_NSPECIAL, 4, HG_ANGLE, 90);
        
        set_hitbox_value(AT_NSPECIAL, 4, HG_BASE_KNOCKBACK, 8);
        set_hitbox_value(AT_NSPECIAL, 4, HG_KNOCKBACK_SCALING, 0.55);
        
        set_hitbox_value(AT_NSPECIAL, 4, HG_BASE_HITPAUSE, 9);
        set_hitbox_value(AT_NSPECIAL, 4, HG_HITPAUSE_SCALING, 0.7);
        set_hitbox_value(AT_NSPECIAL, 4, HG_HITSTUN_MULTIPLIER, 0.6);
        
    // Visuals
        set_hitbox_value(AT_NSPECIAL, 4, HG_HIT_SFX, asset_get("sfx_metal_hit_strong"));
        // ADD PARTICLES
        set_hitbox_value(AT_NSPECIAL, 4, HG_HIT_PARTICLE_NUM, 2);
        
    // Basic Article Stats
        ArticleExtras(AT_NSPECIAL, 4);

// Dynamite
    // General Info
        set_hitbox_value(AT_NSPECIAL, 5, HG_HITBOX_TYPE, 2);
        set_hitbox_value(AT_NSPECIAL, 5, HG_WINDOW, 6);
        set_hitbox_value(AT_NSPECIAL, 5, HG_PRIORITY, 3);
        set_hitbox_value(AT_NSPECIAL, 5, HG_LIFETIME, 5);
        set_hitbox_value(AT_NSPECIAL, 5, HG_SHAPE, 2);
        
    // Location
        set_hitbox_value(AT_NSPECIAL, 5, HG_HITBOX_X, 0);
        set_hitbox_value(AT_NSPECIAL, 5, HG_HITBOX_Y, 0);
        
        set_hitbox_value(AT_NSPECIAL, 5, HG_WIDTH, 100);
        set_hitbox_value(AT_NSPECIAL, 5, HG_HEIGHT, 100);
        
    // Hitplayer Stats
        set_hitbox_value(AT_NSPECIAL, 5, HG_DAMAGE, 10);
        set_hitbox_value(AT_NSPECIAL, 5, HG_ANGLE, 90);
        set_hitbox_value(AT_NSPECIAL, 5, HG_ANGLE_FLIPPER, 8);
        
        set_hitbox_value(AT_NSPECIAL, 5, HG_BASE_KNOCKBACK, 6);
        set_hitbox_value(AT_NSPECIAL, 5, HG_KNOCKBACK_SCALING, 1);
        
        set_hitbox_value(AT_NSPECIAL, 5, HG_BASE_HITPAUSE, 9);
        set_hitbox_value(AT_NSPECIAL, 5, HG_HITPAUSE_SCALING, 0.7);
        set_hitbox_value(AT_NSPECIAL, 5, HG_HITSTUN_MULTIPLIER, 0.6);
        
    // Visuals
        set_hitbox_value(AT_NSPECIAL, 5, HG_HIT_SFX, asset_get("sfx_burnconsume"));
        set_hitbox_value(AT_NSPECIAL, 5, HG_VISUAL_EFFECT, 3);
        // ADD PARTICLES
        set_hitbox_value(AT_NSPECIAL, 5, HG_HIT_PARTICLE_NUM, 1);
        
    // Basic Article Stats
        ArticleExtras(AT_NSPECIAL, 5);

// Broken Parts (spawn when the item lands)
    // General Info
        set_hitbox_value(AT_NSPECIAL, 10, HG_HITBOX_TYPE, 2);
        set_hitbox_value(AT_NSPECIAL, 10, HG_WINDOW, 6);
        set_hitbox_value(AT_NSPECIAL, 10, HG_PRIORITY, 0);
        set_hitbox_value(AT_NSPECIAL, 10, HG_LIFETIME, 60);
        set_hitbox_value(AT_NSPECIAL, 10, HG_SHAPE, 2);
        
    // Location
        set_hitbox_value(AT_NSPECIAL, 10, HG_HITBOX_X, 0);
        set_hitbox_value(AT_NSPECIAL, 10, HG_HITBOX_Y, 0);
        
        set_hitbox_value(AT_NSPECIAL, 10, HG_WIDTH, 0);
        set_hitbox_value(AT_NSPECIAL, 10, HG_HEIGHT, 0);
        
    // Hitplayer Stats
        set_hitbox_value(AT_NSPECIAL, 10, HG_DAMAGE, 0);
        set_hitbox_value(AT_NSPECIAL, 10, HG_ANGLE, 90);
        
        set_hitbox_value(AT_NSPECIAL, 10, HG_BASE_KNOCKBACK, 0);
        
        set_hitbox_value(AT_NSPECIAL, 10, HG_BASE_HITPAUSE, 0);
        
        set_hitbox_value(AT_NSPECIAL, 10, HG_PROJECTILE_GRAVITY, 0.3);
        
    // Visuals
        //set_hitbox_value(AT_NSPECIAL, 10, HG_HIT_SFX, sound_get("BA_basic_attack_aubrey"));
        //set_hitbox_value(AT_NSPECIAL, 10, HG_VISUAL_EFFECT, 1);
        // ADD PARTICLES
        //set_hitbox_value(AT_NSPECIAL, 10, HG_HIT_PARTICLE_NUM, 1);
        
    // Basic Article Stats
        ArticleExtras(AT_NSPECIAL, 10);
        
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