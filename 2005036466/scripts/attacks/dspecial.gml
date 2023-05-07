set_attack_value(AT_DSPECIAL, AG_SPRITE, sprite_get("dspecial"));
set_attack_value(AT_DSPECIAL, AG_NUM_WINDOWS, 2);
set_attack_value(AT_DSPECIAL, AG_CATEGORY, 2);
set_attack_value(AT_DSPECIAL, AG_HURTBOX_SPRITE, sprite_get("dspecial_hurt"));

set_window_value(AT_DSPECIAL, 1, AG_WINDOW_TYPE, 1);
set_window_value(AT_DSPECIAL, 1, AG_WINDOW_LENGTH, 10);
set_window_value(AT_DSPECIAL, 1, AG_WINDOW_ANIM_FRAMES, 3);
set_window_value(AT_DSPECIAL, 1, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_DSPECIAL, 1, AG_WINDOW_SFX, asset_get("sfx_swipe_weak2"));
set_window_value(AT_DSPECIAL, 1, AG_WINDOW_SFX_FRAME, 9);

set_window_value(AT_DSPECIAL, 2, AG_WINDOW_TYPE, 1);
set_window_value(AT_DSPECIAL, 2, AG_WINDOW_LENGTH, 4);
set_window_value(AT_DSPECIAL, 2, AG_WINDOW_ANIM_FRAMES, 2);
set_window_value(AT_DSPECIAL, 2, AG_WINDOW_ANIM_FRAME_START, 3);


set_num_hitboxes(AT_DSPECIAL, 1);

set_hitbox_value(AT_DSPECIAL, 1, HG_PARENT_HITBOX, 1);
set_hitbox_value(AT_DSPECIAL, 1, HG_HITBOX_TYPE, 2);
set_hitbox_value(AT_DSPECIAL, 1, HG_WINDOW, 9);
set_hitbox_value(AT_DSPECIAL, 1, HG_WINDOW_CREATION_FRAME, 0);
set_hitbox_value(AT_DSPECIAL, 1, HG_PROJECTILE_SPRITE, asset_get("empty_sprite"));
set_hitbox_value(AT_DSPECIAL, 1, HG_PROJECTILE_MASK, -1);
set_hitbox_value(AT_DSPECIAL, 1, HG_LIFETIME, 9000);
set_hitbox_value(AT_DSPECIAL, 1, HG_HITBOX_X, 0);
set_hitbox_value(AT_DSPECIAL, 1, HG_HITBOX_Y, -32);
set_hitbox_value(AT_DSPECIAL, 1, HG_WIDTH, 60);
set_hitbox_value(AT_DSPECIAL, 1, HG_HEIGHT, 60);
set_hitbox_value(AT_DSPECIAL, 1, HG_SHAPE, 0);
set_hitbox_value(AT_DSPECIAL, 1, HG_PRIORITY, 1);
set_hitbox_value(AT_DSPECIAL, 1, HG_DAMAGE, 0);
set_hitbox_value(AT_DSPECIAL, 1, HG_ANGLE, 0);
set_hitbox_value(AT_DSPECIAL, 1, HG_BASE_KNOCKBACK, 0);
set_hitbox_value(AT_DSPECIAL, 1, HG_KNOCKBACK_SCALING, 0);
set_hitbox_value(AT_DSPECIAL, 1, HG_BASE_HITPAUSE, 0);
set_hitbox_value(AT_DSPECIAL, 1, HG_HITPAUSE_SCALING, 0);
set_hitbox_value(AT_DSPECIAL, 1, HG_VISUAL_EFFECT, 142);
set_hitbox_value(AT_DSPECIAL, 1, HG_VISUAL_EFFECT_X_OFFSET, 0);
set_hitbox_value(AT_DSPECIAL, 1, HG_VISUAL_EFFECT_Y_OFFSET, 0);
set_hitbox_value(AT_DSPECIAL, 1, HG_HIT_SFX, asset_get("sfx_waterhit_medium"));
set_hitbox_value(AT_DSPECIAL, 1, HG_IGNORES_PROJECTILES, 1);
set_hitbox_value(AT_DSPECIAL, 1, HG_HITSTUN_MULTIPLIER, .50);
set_hitbox_value(AT_DSPECIAL, 1, HG_PROJECTILE_ANIM_SPEED, .15);
set_hitbox_value(AT_DSPECIAL, 1, HG_PROJECTILE_UNBASHABLE, 0);
set_hitbox_value(AT_DSPECIAL, 1, HG_PROJECTILE_IS_TRANSCENDENT, 1);
set_hitbox_value(AT_DSPECIAL, 1, 41, 0);
set_hitbox_value(AT_DSPECIAL, 1, HG_PROJECTILE_DESTROY_EFFECT, 1);
set_hitbox_value(AT_DSPECIAL, 1, HG_LIFETIME, 9000);

// mine is charged
set_hitbox_value(AT_DSPECIAL, 2, HG_PARENT_HITBOX, 1);
set_hitbox_value(AT_DSPECIAL, 2, HG_HITBOX_TYPE, 2);
set_hitbox_value(AT_DSPECIAL, 2, HG_WINDOW, 9);
set_hitbox_value(AT_DSPECIAL, 2, HG_WINDOW_CREATION_FRAME, 0);
set_hitbox_value(AT_DSPECIAL, 2, HG_LIFETIME, 9000);
set_hitbox_value(AT_DSPECIAL, 2, HG_HITBOX_X, 0);
set_hitbox_value(AT_DSPECIAL, 2, HG_HITBOX_Y, -32);

// Detonate
set_attack_value(AT_DSPECIAL_2, AG_SPRITE, sprite_get("dspecial2"));
set_attack_value(AT_DSPECIAL_2, AG_NUM_WINDOWS, 3);
set_attack_value(AT_DSPECIAL_2, AG_CATEGORY, 2);
set_attack_value(AT_DSPECIAL_2, AG_HURTBOX_SPRITE, sprite_get("dspecial2_hurt"));

set_window_value(AT_DSPECIAL_2, 1, AG_WINDOW_TYPE, 1);
set_window_value(AT_DSPECIAL_2, 1, AG_WINDOW_LENGTH, 16);
set_window_value(AT_DSPECIAL_2, 1, AG_WINDOW_ANIM_FRAMES, 4);
set_window_value(AT_DSPECIAL_2, 1, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_DSPECIAL_2, 1, AG_WINDOW_SFX, asset_get("sfx_swipe_weak2"));
set_window_value(AT_DSPECIAL_2, 1, AG_WINDOW_SFX_FRAME, 15);

set_window_value(AT_DSPECIAL_2, 2, AG_WINDOW_TYPE, 1);
set_window_value(AT_DSPECIAL_2, 2, AG_WINDOW_LENGTH, 8);
set_window_value(AT_DSPECIAL_2, 2, AG_WINDOW_ANIM_FRAMES, 2);
set_window_value(AT_DSPECIAL_2, 2, AG_WINDOW_ANIM_FRAME_START, 4);

set_window_value(AT_DSPECIAL_2, 3, AG_WINDOW_TYPE, 1);
set_window_value(AT_DSPECIAL_2, 3, AG_WINDOW_LENGTH, 4);
set_window_value(AT_DSPECIAL_2, 3, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_DSPECIAL_2, 3, AG_WINDOW_ANIM_FRAME_START, 6);
set_window_value(AT_DSPECIAL_2, 3, AG_WINDOW_HAS_WHIFFLAG, 0);

// Detonation Fakeout
set_attack_value(AT_DSPECIAL_AIR, AG_SPRITE, sprite_get("dspecial2"));
set_attack_value(AT_DSPECIAL_AIR, AG_NUM_WINDOWS, 3);
set_attack_value(AT_DSPECIAL_AIR, AG_CATEGORY, 2);
set_attack_value(AT_DSPECIAL_AIR, AG_HURTBOX_SPRITE, sprite_get("penny_hurt"));

set_window_value(AT_DSPECIAL_AIR, 1, AG_WINDOW_TYPE, 1);
set_window_value(AT_DSPECIAL_AIR, 1, AG_WINDOW_LENGTH, 20);
set_window_value(AT_DSPECIAL_AIR, 1, AG_WINDOW_ANIM_FRAMES, 2);
set_window_value(AT_DSPECIAL_AIR, 1, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_DSPECIAL_AIR, 1, AG_WINDOW_SFX, asset_get("sfx_swipe_weak2"));
set_window_value(AT_DSPECIAL_AIR, 1, AG_WINDOW_SFX_FRAME, 2);

set_window_value(AT_DSPECIAL_AIR, 2, AG_WINDOW_TYPE, 1);
set_window_value(AT_DSPECIAL_AIR, 2, AG_WINDOW_LENGTH, 4);
set_window_value(AT_DSPECIAL_AIR, 2, AG_WINDOW_ANIM_FRAMES, 2);
set_window_value(AT_DSPECIAL_AIR, 2, AG_WINDOW_ANIM_FRAME_START, 2);

set_window_value(AT_DSPECIAL_AIR, 3, AG_WINDOW_TYPE, 1);
set_window_value(AT_DSPECIAL_AIR, 3, AG_WINDOW_LENGTH, 8);
set_window_value(AT_DSPECIAL_AIR, 3, AG_WINDOW_ANIM_FRAMES, 4);
set_window_value(AT_DSPECIAL_AIR, 3, AG_WINDOW_ANIM_FRAME_START, 3);
set_window_value(AT_DSPECIAL_AIR, 3, AG_WINDOW_HAS_WHIFFLAG, 0);

// Detonation Hitboxes
set_num_hitboxes(AT_DSPECIAL_2, 3);

// Explosion (Uncharged)
set_hitbox_value(AT_DSPECIAL_2, 1, HG_HITBOX_TYPE, 2);
set_hitbox_value(AT_DSPECIAL_2, 1, HG_PROJECTILE_SPRITE, asset_get("empty_sprite"));
set_hitbox_value(AT_DSPECIAL_2, 1, HG_PROJECTILE_MASK, -1);
set_hitbox_value(AT_DSPECIAL_2, 1, HG_LIFETIME, 2);
set_hitbox_value(AT_DSPECIAL_2, 1, HG_HITBOX_X, 0);
set_hitbox_value(AT_DSPECIAL_2, 1, HG_HITBOX_Y, 0);
set_hitbox_value(AT_DSPECIAL_2, 1, HG_WIDTH, 120);
set_hitbox_value(AT_DSPECIAL_2, 1, HG_HEIGHT, 120);
set_hitbox_value(AT_DSPECIAL_2, 1, HG_SHAPE, 0);
set_hitbox_value(AT_DSPECIAL_2, 1, HG_PRIORITY, 2);
set_hitbox_value(AT_DSPECIAL_2, 1, HG_DAMAGE, 6);
set_hitbox_value(AT_DSPECIAL_2, 1, HG_ANGLE, 90);
set_hitbox_value(AT_DSPECIAL_2, 1, HG_BASE_KNOCKBACK, 7);
set_hitbox_value(AT_DSPECIAL_2, 1, HG_KNOCKBACK_SCALING, .35);
set_hitbox_value(AT_DSPECIAL_2, 1, HG_BASE_HITPAUSE, 7);
set_hitbox_value(AT_DSPECIAL_2, 1, HG_HITPAUSE_SCALING, 0);
set_hitbox_value(AT_DSPECIAL_2, 1, HG_SDI_MULTIPLIER, 0);
set_hitbox_value(AT_DSPECIAL_2, 1, HG_VISUAL_EFFECT, 4);
set_hitbox_value(AT_DSPECIAL_2, 1, HG_VISUAL_EFFECT_X_OFFSET, 30);
set_hitbox_value(AT_DSPECIAL_2, 1, HG_VISUAL_EFFECT_Y_OFFSET, 10);
set_hitbox_value(AT_DSPECIAL_2, 1, HG_PROJECTILE_HSPEED, 0);
set_hitbox_value(AT_DSPECIAL_2, 1, HG_PROJECTILE_VSPEED, 0);
set_hitbox_value(AT_DSPECIAL_2, 1, HG_PROJECTILE_GRAVITY, 0);
set_hitbox_value(AT_DSPECIAL_2, 1, HG_PROJECTILE_GROUND_FRICTION, 0);
set_hitbox_value(AT_DSPECIAL_2, 1, HG_PROJECTILE_AIR_FRICTION, 0);
set_hitbox_value(AT_DSPECIAL_2, 1, HG_PROJECTILE_IS_TRANSCENDENT, true);
set_hitbox_value(AT_DSPECIAL_2, 1, HG_PROJECTILE_WALL_BEHAVIOR, 1);
set_hitbox_value(AT_DSPECIAL_2, 1, HG_PROJECTILE_GROUND_BEHAVIOR, 1);
set_hitbox_value(AT_DSPECIAL_2, 1, HG_PROJECTILE_ENEMY_BEHAVIOR, 1);
set_hitbox_value(AT_DSPECIAL_2, 1, HG_PROJECTILE_DOES_NOT_REFLECT, false);
set_hitbox_value(AT_DSPECIAL_2, 1, HG_HITSTUN_MULTIPLIER, 1);
set_hitbox_value(AT_DSPECIAL_2, 1, HG_HIT_SFX, asset_get("sfx_blow_medium2"));

// Explosion (Charged)
set_hitbox_value(AT_DSPECIAL_2, 2, HG_HITBOX_TYPE, 2);
set_hitbox_value(AT_DSPECIAL_2, 2, HG_PROJECTILE_SPRITE, asset_get("empty_sprite"));
set_hitbox_value(AT_DSPECIAL_2, 2, HG_PROJECTILE_MASK, -1);
set_hitbox_value(AT_DSPECIAL_2, 2, HG_LIFETIME, 2);
set_hitbox_value(AT_DSPECIAL_2, 2, HG_HITBOX_X, 0);
set_hitbox_value(AT_DSPECIAL_2, 2, HG_HITBOX_Y, 0);
set_hitbox_value(AT_DSPECIAL_2, 2, HG_WIDTH, 150);
set_hitbox_value(AT_DSPECIAL_2, 2, HG_HEIGHT, 150);
set_hitbox_value(AT_DSPECIAL_2, 2, HG_SHAPE, 0);
set_hitbox_value(AT_DSPECIAL_2, 2, HG_PRIORITY, 2);
set_hitbox_value(AT_DSPECIAL_2, 2, HG_DAMAGE, 3);
set_hitbox_value(AT_DSPECIAL_2, 2, HG_ANGLE, 90);
set_hitbox_value(AT_DSPECIAL_2, 2, HG_ANGLE_FLIPPER, 3);
set_hitbox_value(AT_DSPECIAL_2, 2, HG_BASE_KNOCKBACK, 3);
set_hitbox_value(AT_DSPECIAL_2, 2, HG_KNOCKBACK_SCALING, 1);
set_hitbox_value(AT_DSPECIAL_2, 2, HG_SDI_MULTIPLIER, 0);
set_hitbox_value(AT_DSPECIAL_2, 2, HG_BASE_HITPAUSE, 9);
set_hitbox_value(AT_DSPECIAL_2, 2, HG_HITPAUSE_SCALING, 0);
set_hitbox_value(AT_DSPECIAL_2, 2, HG_EXTRA_HITPAUSE, 30);
set_hitbox_value(AT_DSPECIAL_2, 2, HG_VISUAL_EFFECT, vfx_fspecialhit);
set_hitbox_value(AT_DSPECIAL_2, 2, HG_VISUAL_EFFECT_X_OFFSET, 30);
set_hitbox_value(AT_DSPECIAL_2, 2, HG_VISUAL_EFFECT_Y_OFFSET, 10);
set_hitbox_value(AT_DSPECIAL_2, 2, HG_PROJECTILE_HSPEED, 0);
set_hitbox_value(AT_DSPECIAL_2, 2, HG_PROJECTILE_VSPEED, 0);
set_hitbox_value(AT_DSPECIAL_2, 2, HG_PROJECTILE_GRAVITY, 0);
set_hitbox_value(AT_DSPECIAL_2, 2, HG_PROJECTILE_GROUND_FRICTION, 0);
set_hitbox_value(AT_DSPECIAL_2, 2, HG_PROJECTILE_AIR_FRICTION, 0);
set_hitbox_value(AT_DSPECIAL_2, 2, HG_PROJECTILE_IS_TRANSCENDENT, true);
set_hitbox_value(AT_DSPECIAL_2, 2, HG_PROJECTILE_WALL_BEHAVIOR, 1);
set_hitbox_value(AT_DSPECIAL_2, 2, HG_PROJECTILE_GROUND_BEHAVIOR, 1);
set_hitbox_value(AT_DSPECIAL_2, 2, HG_PROJECTILE_ENEMY_BEHAVIOR, 1);
set_hitbox_value(AT_DSPECIAL_2, 2, HG_PROJECTILE_PARRY_STUN, true);
set_hitbox_value(AT_DSPECIAL_2, 2, HG_EXTENDED_PARRY_STUN, true);
set_hitbox_value(AT_DSPECIAL_2, 2, HG_PROJECTILE_DOES_NOT_REFLECT, true);
set_hitbox_value(AT_DSPECIAL_2, 2, HG_HITSTUN_MULTIPLIER, 1);
set_hitbox_value(AT_DSPECIAL_2, 2, HG_HIT_SFX, asset_get("sfx_forsburn_combust"));