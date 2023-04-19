set_attack_value(AT_FSTRONG, AG_SPRITE, sprite_get("fstrong"));
set_attack_value(AT_FSTRONG, AG_NUM_WINDOWS, 4);
set_attack_value(AT_FSTRONG, AG_HURTBOX_SPRITE, sprite_get("fstrong_hurt"));
set_attack_value(AT_FSTRONG, AG_STRONG_CHARGE_WINDOW, 1);

// Startup
set_window_value(AT_FSTRONG, 1, AG_WINDOW_LENGTH, 16);
set_window_value(AT_FSTRONG, 1, AG_WINDOW_ANIM_FRAMES, 4);
set_window_value(AT_FSTRONG, 1, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_FSTRONG, 1, AG_WINDOW_SFX, asset_get("sfx_burnapplied"));
set_window_value(AT_FSTRONG, 1, AG_WINDOW_SFX_FRAME, 4);

// Burn Charge
set_window_value(AT_FSTRONG, 2, AG_WINDOW_LENGTH, 2);
set_window_value(AT_FSTRONG, 2, AG_WINDOW_ANIM_FRAME_START, 4);
set_window_value(AT_FSTRONG, 2, AG_WINDOW_ANIM_FRAMES, 4);
set_window_value(AT_FSTRONG, 2, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_FSTRONG, 2, AG_WINDOW_SFX, sound_get("BA_basic_attack_kel"));

// Swing
set_window_value(AT_FSTRONG, 3, AG_WINDOW_LENGTH, 7);
set_window_value(AT_FSTRONG, 3, AG_WINDOW_ANIM_FRAME_START, 8);
set_window_value(AT_FSTRONG, 3, AG_WINDOW_ANIM_FRAMES, 2);

// Endlag
set_window_value(AT_FSTRONG, 4, AG_WINDOW_LENGTH, 12);
set_window_value(AT_FSTRONG, 4, AG_WINDOW_ANIM_FRAME_START, 10);
set_window_value(AT_FSTRONG, 4, AG_WINDOW_ANIM_FRAMES, 4);
set_window_value(AT_FSTRONG, 4, AG_WINDOW_HAS_WHIFFLAG, 1);

// Hitboxes

set_num_hitboxes(AT_FSTRONG, 2);

// Swing
    // General Info
        set_hitbox_value(AT_FSTRONG, 1, HG_HITBOX_TYPE, 1);
        set_hitbox_value(AT_FSTRONG, 1, HG_WINDOW, 3);
        set_hitbox_value(AT_FSTRONG, 1, HG_SHAPE, 2);
        set_hitbox_value(AT_FSTRONG, 1, HG_LIFETIME, 4);
        set_hitbox_value(AT_FSTRONG, 1, HG_PRIORITY, 6);
        set_hitbox_value(AT_FSTRONG, 1, HG_HITBOX_GROUP, 1);
        
    // Location
        set_hitbox_value(AT_FSTRONG, 1, HG_HITBOX_X, 30);
        set_hitbox_value(AT_FSTRONG, 1, HG_HITBOX_Y, -25);
        
        set_hitbox_value(AT_FSTRONG, 1, HG_WIDTH, 130);
        set_hitbox_value(AT_FSTRONG, 1, HG_HEIGHT, 50);
        
    // Hitplayer Stats
        set_hitbox_value(AT_FSTRONG, 1, HG_DAMAGE, 12);
        set_hitbox_value(AT_FSTRONG, 1, HG_ANGLE, 45);
        
        set_hitbox_value(AT_FSTRONG, 1, HG_BASE_KNOCKBACK, 7);
        set_hitbox_value(AT_FSTRONG, 1, HG_KNOCKBACK_SCALING, 1.1);
        
        set_hitbox_value(AT_FSTRONG, 1, HG_BASE_HITPAUSE, 10);
        set_hitbox_value(AT_FSTRONG, 1, HG_HITPAUSE_SCALING, 0.7);
        
    // Hit FX & SFX
        set_hitbox_value(AT_FSTRONG, 1, HG_HIT_SFX, sound_get("BA_basic_attack_hero"));
        set_hitbox_value(AT_FSTRONG, 1, HG_VISUAL_EFFECT, commetFX);
        set_hitbox_value(AT_FSTRONG, 1, HG_VISUAL_EFFECT_X_OFFSET, 30);
        
// Charging Poke Burner
    // General Info
        set_hitbox_value(AT_FSTRONG, 2, HG_HITBOX_TYPE, 2);
        set_hitbox_value(AT_FSTRONG, 2, HG_WINDOW, 6);
        set_hitbox_value(AT_FSTRONG, 2, HG_PRIORITY, 3);
        set_hitbox_value(AT_FSTRONG, 2, HG_LIFETIME, 2);
        set_hitbox_value(AT_FSTRONG, 2, HG_SHAPE, 0);
        
    // Location
        set_hitbox_value(AT_FSTRONG, 2, HG_HITBOX_X, 0);
        set_hitbox_value(AT_FSTRONG, 2, HG_HITBOX_Y, 0);
        
        set_hitbox_value(AT_FSTRONG, 2, HG_WIDTH, 60);
        set_hitbox_value(AT_FSTRONG, 2, HG_HEIGHT, 60);
        
    // Hitplayer Stats
        set_hitbox_value(AT_FSTRONG, 2, HG_DAMAGE, 1);
        set_hitbox_value(AT_FSTRONG, 2, HG_ANGLE, 45);
        
        set_hitbox_value(AT_FSTRONG, 2, HG_BASE_KNOCKBACK, 4);
        set_hitbox_value(AT_FSTRONG, 2, HG_KNOCKBACK_SCALING, 0.1);
        set_hitbox_value(AT_USTRONG, 2, HG_TECHABLE, 1);
                
        set_hitbox_value(AT_FSTRONG, 2, HG_BASE_HITPAUSE, 1);
        
    // Visuals
        set_hitbox_value(AT_FSTRONG, 2, HG_HIT_SFX, asset_get("sfx_flareo_rod"));
        
    // Basic Article Stats
        ArticleExtras(AT_FSTRONG, 2);
        
/*// Swing LATE
    // General Info
        set_hitbox_value(AT_FSTRONG, 3, HG_HITBOX_TYPE, 1);
        set_hitbox_value(AT_FSTRONG, 3, HG_WINDOW, 3);
        set_hitbox_value(AT_FSTRONG, 3, HG_SHAPE, 0);
        set_hitbox_value(AT_FSTRONG, 3, HG_LIFETIME, 3);
        set_hitbox_value(AT_FSTRONG, 3, HG_WINDOW_CREATION_FRAME, 4);
        set_hitbox_value(AT_FSTRONG, 3, HG_PRIORITY, 6);
        set_hitbox_value(AT_FSTRONG, 3, HG_HITBOX_GROUP, 1);
        
    // Location
        set_hitbox_value(AT_FSTRONG, 3, HG_HITBOX_X, 85);
        set_hitbox_value(AT_FSTRONG, 3, HG_HITBOX_Y, -40);
        
        set_hitbox_value(AT_FSTRONG, 3, HG_WIDTH, 60);
        set_hitbox_value(AT_FSTRONG, 3, HG_HEIGHT, 60);
        
    // Hitplayer Stats
        set_hitbox_value(AT_FSTRONG, 3, HG_DAMAGE, 10);
        set_hitbox_value(AT_FSTRONG, 3, HG_ANGLE, 60);
        
        set_hitbox_value(AT_FSTRONG, 3, HG_BASE_KNOCKBACK, 5);
        set_hitbox_value(AT_FSTRONG, 3, HG_KNOCKBACK_SCALING, 1);
        
        set_hitbox_value(AT_FSTRONG, 3, HG_BASE_HITPAUSE, 8);
        set_hitbox_value(AT_FSTRONG, 3, HG_HITPAUSE_SCALING, 0.7);
        
    // Hit FX & SFX
        set_hitbox_value(AT_FSTRONG, 3, HG_HIT_SFX, sound_get("thebonk"));
        
// Swing LATE (close hitbox)
    // General Info
        set_hitbox_value(AT_FSTRONG, 4, HG_HITBOX_TYPE, 1);
        set_hitbox_value(AT_FSTRONG, 4, HG_WINDOW, 3);
        set_hitbox_value(AT_FSTRONG, 4, HG_SHAPE, 2);
        set_hitbox_value(AT_FSTRONG, 4, HG_LIFETIME, 3);
        set_hitbox_value(AT_FSTRONG, 4, HG_WINDOW_CREATION_FRAME, 4);
        set_hitbox_value(AT_FSTRONG, 4, HG_PRIORITY, 6);
        set_hitbox_value(AT_FSTRONG, 4, HG_HITBOX_GROUP, 1);
        
    // Location
        set_hitbox_value(AT_FSTRONG, 4, HG_HITBOX_X, 60);
        set_hitbox_value(AT_FSTRONG, 4, HG_HITBOX_Y, -25);
        
        set_hitbox_value(AT_FSTRONG, 4, HG_WIDTH, 50);
        set_hitbox_value(AT_FSTRONG, 4, HG_HEIGHT, 50);
        
    // Hitplayer Stats
        set_hitbox_value(AT_FSTRONG, 4, HG_DAMAGE, 10);
        set_hitbox_value(AT_FSTRONG, 4, HG_ANGLE, 60);
        
        set_hitbox_value(AT_FSTRONG, 4, HG_BASE_KNOCKBACK, 5);
        set_hitbox_value(AT_FSTRONG, 4, HG_KNOCKBACK_SCALING, 1);
        
        set_hitbox_value(AT_FSTRONG, 4, HG_BASE_HITPAUSE, 7);
        set_hitbox_value(AT_FSTRONG, 4, HG_HITPAUSE_SCALING, 0.6);
        
    // Hit FX & SFX
        set_hitbox_value(AT_FSTRONG, 4, HG_HIT_SFX, sound_get("thebonk"));*/
        
#define ArticleExtras(attackName, hitboxNumber)
print_debug(hitboxNumber);
    
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
        set_hitbox_value(attackName, hitboxNumber, HG_EXTENDED_PARRY_STUN, false);
        set_hitbox_value(attackName, hitboxNumber, HG_PROJECTILE_PLASMA_SAFE, true);
        