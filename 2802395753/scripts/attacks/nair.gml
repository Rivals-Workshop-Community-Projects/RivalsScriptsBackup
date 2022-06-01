set_attack_value(AT_NAIR, AG_CATEGORY, 1);
set_attack_value(AT_NAIR, AG_SPRITE, sprite_get("nair"));
set_attack_value(AT_NAIR, AG_HAS_LANDING_LAG, 1);
set_attack_value(AT_NAIR, AG_HURTBOX_SPRITE, sprite_get("nair_hurt"));
set_attack_value(AT_NAIR, AG_LANDING_LAG, 6);

set_attack_value(AT_NAIR, AG_NUM_WINDOWS, 3);
set_window_value(AT_NAIR, 1, AG_WINDOW_LENGTH, 7);
set_window_value(AT_NAIR, 1, AG_WINDOW_ANIM_FRAMES, 2);
set_window_value(AT_NAIR, 1, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_NAIR, 1, AG_WINDOW_SFX, sound_get("embiggening"));
set_window_value(AT_NAIR, 1, AG_WINDOW_SFX_FRAME, 4);

set_window_value(AT_NAIR, 2, AG_WINDOW_LENGTH, 5);
set_window_value(AT_NAIR, 2, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_NAIR, 2, AG_WINDOW_ANIM_FRAME_START, 2);

set_window_value(AT_NAIR, 3, AG_WINDOW_LENGTH, 13);
set_window_value(AT_NAIR, 3, AG_WINDOW_ANIM_FRAMES, 2);
set_window_value(AT_NAIR, 3, AG_WINDOW_ANIM_FRAME_START, 3);
set_window_value(AT_NAIR, 3, AG_WINDOW_HAS_WHIFFLAG, 1);

set_num_hitboxes(AT_NAIR, 1);

set_hitbox_value(AT_NAIR, 1, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_NAIR, 1, HG_WINDOW, 2);
set_hitbox_value(AT_NAIR, 1, HG_WINDOW_CREATION_FRAME, 1);
set_hitbox_value(AT_NAIR, 1, HG_LIFETIME, 5);
set_hitbox_value(AT_NAIR, 1, HG_HITBOX_Y, -50);
set_hitbox_value(AT_NAIR, 1, HG_WIDTH, 100);
set_hitbox_value(AT_NAIR, 1, HG_HEIGHT, 100);
set_hitbox_value(AT_NAIR, 1, HG_SHAPE, 2);
set_hitbox_value(AT_NAIR, 1, HG_PRIORITY, 1);
set_hitbox_value(AT_NAIR, 1, HG_DAMAGE, 8);
set_hitbox_value(AT_NAIR, 1, HG_ANGLE, 65);
set_hitbox_value(AT_NAIR, 1, HG_BASE_KNOCKBACK, 7);
set_hitbox_value(AT_NAIR, 1, HG_KNOCKBACK_SCALING, .4);
set_hitbox_value(AT_NAIR, 1, HG_BASE_HITPAUSE, 7); //this is good hitpause for a very strong kill move
set_hitbox_value(AT_NAIR, 1, HG_HITPAUSE_SCALING, .7);
set_hitbox_value(AT_NAIR, 1, HG_VISUAL_EFFECT, 304);
set_hitbox_value(AT_NAIR, 1, HG_HIT_SFX, asset_get("sfx_blow_heavy1"));
set_hitbox_value(AT_NAIR, 1, HG_ANGLE_FLIPPER, 6); //0
set_hitbox_value(AT_NAIR, 1, HG_DRIFT_MULTIPLIER, 1);
set_hitbox_value(AT_NAIR, 1, HG_SDI_MULTIPLIER, 1);

set_hitbox_value(AT_NAIR, 2, HG_HITBOX_TYPE, 2);
set_hitbox_value(AT_NAIR, 2, HG_WINDOW, 99);
set_hitbox_value(AT_NAIR, 2, HG_LIFETIME, 2);
set_hitbox_value(AT_NAIR, 2, HG_HITBOX_Y, 0);
set_hitbox_value(AT_NAIR, 2, HG_HITBOX_X, 0);
set_hitbox_value(AT_NAIR, 2, HG_PROJECTILE_SPRITE, asset_get("empty_sprite"));
set_hitbox_value(AT_NAIR, 2, HG_PROJECTILE_MASK, -1);
set_hitbox_value(AT_NAIR, 2, HG_PROJECTILE_GRAVITY, 0);
set_hitbox_value(AT_NAIR, 2, HG_PROJECTILE_ANIM_SPEED, 0);
set_hitbox_value(AT_NAIR, 2, HG_PROJECTILE_GROUND_BEHAVIOR, 0);
set_hitbox_value(AT_NAIR, 2, HG_PROJECTILE_DESTROY_EFFECT, 0);
set_hitbox_value(AT_NAIR, 2, HG_PROJECTILE_IS_TRANSCENDENT, 1);
set_hitbox_value(AT_NAIR, 2, HG_PROJECTILE_HSPEED, 0);
set_hitbox_value(AT_NAIR, 2, HG_PROJECTILE_AIR_FRICTION, 0);
set_hitbox_value(AT_NAIR, 2, HG_PRIORITY, 1);
set_hitbox_value(AT_NAIR, 2, HG_HITBOX_GROUP, 2);
set_hitbox_value(AT_NAIR, 2, HG_DAMAGE, 2);
set_hitbox_value(AT_NAIR, 2, HG_ANGLE, 80);
set_hitbox_value(AT_NAIR, 2, HG_BASE_KNOCKBACK, 8);
set_hitbox_value(AT_NAIR, 2, HG_KNOCKBACK_SCALING, 0.2);
set_hitbox_value(AT_NAIR, 2, HG_BASE_HITPAUSE, 3);
set_hitbox_value(AT_NAIR, 2, HG_HITPAUSE_SCALING, 0.02);
set_hitbox_value(AT_NAIR, 2, HG_VISUAL_EFFECT, 20);
set_hitbox_value(AT_NAIR, 2, HG_HIT_SFX, asset_get("sfx_absa_singlezap1"));
set_hitbox_value(AT_NAIR, 2, HG_HITSTUN_MULTIPLIER, .7);
set_hitbox_value(AT_NAIR, 2, HG_HIT_LOCKOUT, 0);
set_hitbox_value(AT_NAIR, 2, HG_PROJECTILE_DOES_NOT_REFLECT, 1);
set_hitbox_value(AT_NAIR, 2, HG_PROJECTILE_PARRY_STUN, 0);
set_hitbox_value(AT_NAIR, 2, HG_HEIGHT, 10);
set_hitbox_value(AT_NAIR, 2, HG_WIDTH, 10);
set_hitbox_value(AT_NAIR, 2, HG_ANGLE_FLIPPER, 7);



//Old Nair

// set_attack_value(AT_NAIR, AG_CATEGORY, 1);
// set_attack_value(AT_NAIR, AG_SPRITE, sprite_get("nair"));
// set_attack_value(AT_NAIR, AG_HAS_LANDING_LAG, 1);
// set_attack_value(AT_NAIR, AG_HURTBOX_SPRITE, sprite_get("nair_hurt"));
// set_attack_value(AT_NAIR, AG_LANDING_LAG, 12);

// set_attack_value(AT_NAIR, AG_NUM_WINDOWS, 3);
// set_window_value(AT_NAIR, 1, AG_WINDOW_LENGTH, 15);
// set_window_value(AT_NAIR, 1, AG_WINDOW_ANIM_FRAMES, 2);
// set_window_value(AT_NAIR, 1, AG_WINDOW_HAS_SFX, 1);
// set_window_value(AT_NAIR, 1, AG_WINDOW_SFX, sound_get("embiggening"));
// set_window_value(AT_NAIR, 1, AG_WINDOW_SFX_FRAME, 12);

// set_window_value(AT_NAIR, 2, AG_WINDOW_LENGTH, 5);
// set_window_value(AT_NAIR, 2, AG_WINDOW_ANIM_FRAMES, 1);
// set_window_value(AT_NAIR, 2, AG_WINDOW_ANIM_FRAME_START, 2);

// set_window_value(AT_NAIR, 3, AG_WINDOW_LENGTH, 16);
// set_window_value(AT_NAIR, 3, AG_WINDOW_ANIM_FRAMES, 2);
// set_window_value(AT_NAIR, 3, AG_WINDOW_ANIM_FRAME_START, 3);
// set_window_value(AT_NAIR, 3, AG_WINDOW_HAS_WHIFFLAG, 1);

// set_num_hitboxes(AT_NAIR, 1);

// set_hitbox_value(AT_NAIR, 1, HG_HITBOX_TYPE, 1);
// set_hitbox_value(AT_NAIR, 1, HG_WINDOW, 2);
// set_hitbox_value(AT_NAIR, 1, HG_WINDOW_CREATION_FRAME, 1);
// set_hitbox_value(AT_NAIR, 1, HG_LIFETIME, 5);
// set_hitbox_value(AT_NAIR, 1, HG_HITBOX_Y, -50);
// set_hitbox_value(AT_NAIR, 1, HG_WIDTH, 100);
// set_hitbox_value(AT_NAIR, 1, HG_HEIGHT, 100);
// set_hitbox_value(AT_NAIR, 1, HG_SHAPE, 2);
// set_hitbox_value(AT_NAIR, 1, HG_PRIORITY, 1);
// set_hitbox_value(AT_NAIR, 1, HG_DAMAGE, 12);
// set_hitbox_value(AT_NAIR, 1, HG_ANGLE, 45);
// set_hitbox_value(AT_NAIR, 1, HG_BASE_KNOCKBACK, 6.5);
// set_hitbox_value(AT_NAIR, 1, HG_KNOCKBACK_SCALING, 1.05);
// set_hitbox_value(AT_NAIR, 1, HG_BASE_HITPAUSE, 7); //this is good hitpause for a very strong kill move
// set_hitbox_value(AT_NAIR, 1, HG_HITPAUSE_SCALING, .7);
// set_hitbox_value(AT_NAIR, 1, HG_VISUAL_EFFECT, 304);
// set_hitbox_value(AT_NAIR, 1, HG_HIT_SFX, asset_get("sfx_blow_heavy1"));
// set_hitbox_value(AT_NAIR, 1, HG_ANGLE_FLIPPER, 6);
// set_hitbox_value(AT_NAIR, 1, HG_DRIFT_MULTIPLIER, 1);
// set_hitbox_value(AT_NAIR, 1, HG_SDI_MULTIPLIER, 1);