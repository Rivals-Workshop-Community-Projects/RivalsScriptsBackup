//Down Special: Property Management
set_attack_value(AT_DSPECIAL, AG_CATEGORY, 2);
set_attack_value(AT_DSPECIAL, AG_SPRITE, sprite_get("dspecial"));
set_attack_value(AT_DSPECIAL, AG_NUM_WINDOWS, 3);
set_attack_value(AT_DSPECIAL, AG_HAS_LANDING_LAG, 4);
set_attack_value(AT_DSPECIAL, AG_OFF_LEDGE, 1);
set_attack_value(AT_DSPECIAL, AG_AIR_SPRITE, sprite_get("dspecial"));/*
set_attack_value(AT_DSPECIAL, AG_HURTBOX_SPRITE, sprite_get("dspecial_hurt"));
set_attack_value(AT_DSPECIAL, AG_MUNO_ATTACK_MISC_ADD, "Properties only attack opponenents who either:
- are in hitstun while near the property
- are standing completely still while touching it

Properties can be upgraded by doing either of the following:
- doing DSpecial on one of your properties if max properties have been placed
- letting an FSpecial projectile land on a property");
*/
// ==========

// Placing Properties

//Startup
set_window_value(AT_DSPECIAL, 1, AG_WINDOW_TYPE, 1);
set_window_value(AT_DSPECIAL, 1, AG_WINDOW_LENGTH, 12);
set_window_value(AT_DSPECIAL, 1, AG_WINDOW_ANIM_FRAMES, 3);
set_window_value(AT_DSPECIAL, 1, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_DSPECIAL, 1, AG_WINDOW_SFX, asset_get("sfx_swipe_medium2"));
set_window_value(AT_DSPECIAL, 1, AG_WINDOW_SFX_FRAME, 11);

//Actively place
set_window_value(AT_DSPECIAL, 2, AG_WINDOW_TYPE, 1);
set_window_value(AT_DSPECIAL, 2, AG_WINDOW_LENGTH, 3);
set_window_value(AT_DSPECIAL, 2, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_DSPECIAL, 2, AG_WINDOW_ANIM_FRAME_START, 6);

//Endlag
set_window_value(AT_DSPECIAL, 3, AG_WINDOW_TYPE, 1);
set_window_value(AT_DSPECIAL, 3, AG_WINDOW_LENGTH, 16);
set_window_value(AT_DSPECIAL, 3, AG_WINDOW_ANIM_FRAMES, 3);
set_window_value(AT_DSPECIAL, 3, AG_WINDOW_ANIM_FRAME_START, 7);

// ==========

// Upgrading Properties (Ground)

//Startup
set_window_value(AT_DSPECIAL, 4, AG_WINDOW_TYPE, 1);
set_window_value(AT_DSPECIAL, 4, AG_WINDOW_LENGTH, 11);
set_window_value(AT_DSPECIAL, 4, AG_WINDOW_ANIM_FRAMES, 3);
set_window_value(AT_DSPECIAL, 4, AG_WINDOW_ANIM_FRAME_START, 3);
set_window_value(AT_DSPECIAL, 4, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_DSPECIAL, 4, AG_WINDOW_SFX, asset_get("sfx_swipe_medium2"));
set_window_value(AT_DSPECIAL, 4, AG_WINDOW_SFX_FRAME, 10);

//Actively place
set_window_value(AT_DSPECIAL, 5, AG_WINDOW_TYPE, 1);
set_window_value(AT_DSPECIAL, 5, AG_WINDOW_LENGTH, 4);
set_window_value(AT_DSPECIAL, 5, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_DSPECIAL, 5, AG_WINDOW_ANIM_FRAME_START, 6);

//Endlag
set_window_value(AT_DSPECIAL, 6, AG_WINDOW_TYPE, 1);
set_window_value(AT_DSPECIAL, 6, AG_WINDOW_LENGTH, 18);
set_window_value(AT_DSPECIAL, 6, AG_WINDOW_ANIM_FRAMES, 3);
set_window_value(AT_DSPECIAL, 6, AG_WINDOW_ANIM_FRAME_START, 7);

// ==========

// Upgrading Properties (Air) unused

//Startup
set_window_value(AT_DSPECIAL, 7, AG_WINDOW_TYPE, 1);
set_window_value(AT_DSPECIAL, 7, AG_WINDOW_LENGTH, 12);
set_window_value(AT_DSPECIAL, 7, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_DSPECIAL, 7, AG_WINDOW_HSPEED_TYPE, 1);
set_window_value(AT_DSPECIAL, 7, AG_WINDOW_VSPEED_TYPE, 1);
set_window_value(AT_DSPECIAL, 7, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_DSPECIAL, 7, AG_WINDOW_SFX, asset_get("sfx_zetter_shine"));
set_window_value(AT_DSPECIAL, 7, AG_WINDOW_SFX_FRAME, 10);

//Actively Upgrade
set_window_value(AT_DSPECIAL, 8, AG_WINDOW_TYPE, 1);
set_window_value(AT_DSPECIAL, 8, AG_WINDOW_LENGTH, 7);
set_window_value(AT_DSPECIAL, 8, AG_WINDOW_ANIM_FRAMES, 2);

//Endlag
set_window_value(AT_DSPECIAL, 9, AG_WINDOW_TYPE, 1);
set_window_value(AT_DSPECIAL, 9, AG_WINDOW_LENGTH, 25);
set_window_value(AT_DSPECIAL, 9, AG_WINDOW_ANIM_FRAMES, 2);

// ==========

// Lack of Money Animation

//Full Animation
set_window_value(AT_DSPECIAL, 10, AG_WINDOW_TYPE, 1);
set_window_value(AT_DSPECIAL, 10, AG_WINDOW_LENGTH, 32);
set_window_value(AT_DSPECIAL, 10, AG_WINDOW_ANIM_FRAMES, 8);
set_window_value(AT_DSPECIAL, 10, AG_WINDOW_ANIM_FRAME_START, 9);
set_window_value(AT_DSPECIAL, 10, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_DSPECIAL, 10, AG_WINDOW_SFX, asset_get("sfx_swipe_weak1"));
set_window_value(AT_DSPECIAL, 10, AG_WINDOW_SFX_FRAME, 4);

// ==========

set_num_hitboxes(AT_DSPECIAL, 1);

var propertyHitboxXOffset = 0;
var propertyHitboxYOffset = -40;
var propertyHitboxWidth = 96 + (propertyWidthRune * 50);
var propertyHitboxHeight = 82;

//No Houses
//set_hitbox_value(AT_DSPECIAL, 1, HG_MUNO_HITBOX_NAME, "Property: No Houses");
set_hitbox_value(AT_DSPECIAL, 1, HG_HITBOX_TYPE, 2);
set_hitbox_value(AT_DSPECIAL, 1, HG_WINDOW, 69);
set_hitbox_value(AT_DSPECIAL, 1, HG_LIFETIME, 4);
set_hitbox_value(AT_DSPECIAL, 1, HG_HITBOX_X, propertyHitboxXOffset);
set_hitbox_value(AT_DSPECIAL, 1, HG_HITBOX_Y, propertyHitboxYOffset);
set_hitbox_value(AT_DSPECIAL, 1, HG_WIDTH, propertyHitboxWidth);
set_hitbox_value(AT_DSPECIAL, 1, HG_HEIGHT, propertyHitboxHeight);
set_hitbox_value(AT_DSPECIAL, 1, HG_PRIORITY, 6);
set_hitbox_value(AT_DSPECIAL, 1, HG_SHAPE, 2);
set_hitbox_value(AT_DSPECIAL, 1, HG_DAMAGE, 5);
set_hitbox_value(AT_DSPECIAL, 1, HG_ANGLE, 90);
set_hitbox_value(AT_DSPECIAL, 1, HG_VISUAL_EFFECT_X_OFFSET, 0);
set_hitbox_value(AT_DSPECIAL, 1, HG_VISUAL_EFFECT_Y_OFFSET, -2);
set_hitbox_value(AT_DSPECIAL, 1, HG_BASE_KNOCKBACK, 6);
set_hitbox_value(AT_DSPECIAL, 1, HG_KNOCKBACK_SCALING, 0.7);
set_hitbox_value(AT_DSPECIAL, 1, HG_HITSTUN_MULTIPLIER, 0.3);
set_hitbox_value(AT_DSPECIAL, 1, HG_PROJECTILE_SPRITE, sprite_get("empty"));
set_hitbox_value(AT_DSPECIAL, 1, HG_PROJECTILE_MASK, -1);
set_hitbox_value(AT_DSPECIAL, 1, HG_PROJECTILE_GROUND_BEHAVIOR, 1);
set_hitbox_value(AT_DSPECIAL, 1, HG_PROJECTILE_WALL_BEHAVIOR, 1);
set_hitbox_value(AT_DSPECIAL, 1, HG_PROJECTILE_UNBASHABLE, 1);
set_hitbox_value(AT_DSPECIAL, 1, HG_PROJECTILE_DESTROY_EFFECT, 302);
set_hitbox_value(AT_DSPECIAL, 1, HG_VISUAL_EFFECT, money_hit_fx_lrg);
set_hitbox_value(AT_DSPECIAL, 1, HG_BASE_HITPAUSE, 8);
set_hitbox_value(AT_DSPECIAL, 1, HG_HIT_SFX, asset_get("sfx_blow_heavy1"));

//1 House
//set_hitbox_value(AT_DSPECIAL, 2, HG_MUNO_HITBOX_NAME, "Property: 1 House");
set_hitbox_value(AT_DSPECIAL, 2, HG_HITBOX_TYPE, 2);
set_hitbox_value(AT_DSPECIAL, 2, HG_WINDOW, 69);
set_hitbox_value(AT_DSPECIAL, 2, HG_LIFETIME, 4);
set_hitbox_value(AT_DSPECIAL, 2, HG_HITBOX_X, propertyHitboxXOffset);
set_hitbox_value(AT_DSPECIAL, 2, HG_HITBOX_Y, propertyHitboxYOffset);
set_hitbox_value(AT_DSPECIAL, 2, HG_WIDTH, propertyHitboxWidth);
set_hitbox_value(AT_DSPECIAL, 2, HG_HEIGHT, propertyHitboxHeight);
set_hitbox_value(AT_DSPECIAL, 2, HG_PRIORITY, 6);
set_hitbox_value(AT_DSPECIAL, 2, HG_SHAPE, 2);
set_hitbox_value(AT_DSPECIAL, 2, HG_DAMAGE, 6);
set_hitbox_value(AT_DSPECIAL, 2, HG_ANGLE, 90);
set_hitbox_value(AT_DSPECIAL, 2, HG_VISUAL_EFFECT_X_OFFSET, 0);
set_hitbox_value(AT_DSPECIAL, 2, HG_VISUAL_EFFECT_Y_OFFSET, -2);
set_hitbox_value(AT_DSPECIAL, 2, HG_BASE_KNOCKBACK, 6);
set_hitbox_value(AT_DSPECIAL, 2, HG_KNOCKBACK_SCALING, 0.7);
set_hitbox_value(AT_DSPECIAL, 2, HG_HITSTUN_MULTIPLIER, 0.4);
set_hitbox_value(AT_DSPECIAL, 2, HG_PROJECTILE_SPRITE, sprite_get("empty"));
set_hitbox_value(AT_DSPECIAL, 2, HG_PROJECTILE_MASK, -1);
set_hitbox_value(AT_DSPECIAL, 2, HG_PROJECTILE_GROUND_BEHAVIOR, 1);
set_hitbox_value(AT_DSPECIAL, 2, HG_PROJECTILE_WALL_BEHAVIOR, 1);
set_hitbox_value(AT_DSPECIAL, 2, HG_PROJECTILE_UNBASHABLE, 1);
set_hitbox_value(AT_DSPECIAL, 2, HG_PROJECTILE_DESTROY_EFFECT, 302);
set_hitbox_value(AT_DSPECIAL, 2, HG_VISUAL_EFFECT, money_hit_fx_lrg);
set_hitbox_value(AT_DSPECIAL, 2, HG_BASE_HITPAUSE, 8);
set_hitbox_value(AT_DSPECIAL, 2, HG_HIT_SFX, asset_get("sfx_blow_heavy1"));

//2 Houses
//set_hitbox_value(AT_DSPECIAL, 3, HG_MUNO_HITBOX_NAME, "Property: 2 Houses");
set_hitbox_value(AT_DSPECIAL, 3, HG_HITBOX_TYPE, 2);
set_hitbox_value(AT_DSPECIAL, 3, HG_WINDOW, 69);
set_hitbox_value(AT_DSPECIAL, 3, HG_LIFETIME, 4);
set_hitbox_value(AT_DSPECIAL, 3, HG_HITBOX_X, propertyHitboxXOffset);
set_hitbox_value(AT_DSPECIAL, 3, HG_HITBOX_Y, propertyHitboxYOffset);
set_hitbox_value(AT_DSPECIAL, 3, HG_WIDTH, propertyHitboxWidth);
set_hitbox_value(AT_DSPECIAL, 3, HG_HEIGHT, propertyHitboxHeight);
set_hitbox_value(AT_DSPECIAL, 3, HG_PRIORITY, 6);
set_hitbox_value(AT_DSPECIAL, 3, HG_SHAPE, 2);
set_hitbox_value(AT_DSPECIAL, 3, HG_DAMAGE, 7);
set_hitbox_value(AT_DSPECIAL, 3, HG_ANGLE, 90);
set_hitbox_value(AT_DSPECIAL, 3, HG_VISUAL_EFFECT_X_OFFSET, 0);
set_hitbox_value(AT_DSPECIAL, 3, HG_VISUAL_EFFECT_Y_OFFSET, -2);
set_hitbox_value(AT_DSPECIAL, 3, HG_BASE_KNOCKBACK, 6);
set_hitbox_value(AT_DSPECIAL, 3, HG_KNOCKBACK_SCALING, 0.7);
set_hitbox_value(AT_DSPECIAL, 3, HG_HITSTUN_MULTIPLIER, 0.5);
set_hitbox_value(AT_DSPECIAL, 3, HG_PROJECTILE_SPRITE, sprite_get("empty"));
set_hitbox_value(AT_DSPECIAL, 3, HG_PROJECTILE_MASK, -1);
set_hitbox_value(AT_DSPECIAL, 3, HG_PROJECTILE_GROUND_BEHAVIOR, 1);
set_hitbox_value(AT_DSPECIAL, 3, HG_PROJECTILE_WALL_BEHAVIOR, 1);
set_hitbox_value(AT_DSPECIAL, 3, HG_PROJECTILE_UNBASHABLE, 1);
set_hitbox_value(AT_DSPECIAL, 3, HG_PROJECTILE_DESTROY_EFFECT, 302);
set_hitbox_value(AT_DSPECIAL, 3, HG_VISUAL_EFFECT, money_hit_fx_lrg);
set_hitbox_value(AT_DSPECIAL, 3, HG_BASE_HITPAUSE, 8);
set_hitbox_value(AT_DSPECIAL, 3, HG_HIT_SFX, asset_get("sfx_blow_heavy1"));

//3 Houses
//set_hitbox_value(AT_DSPECIAL, 4, HG_MUNO_HITBOX_NAME, "Property: 3 Houses");
set_hitbox_value(AT_DSPECIAL, 4, HG_HITBOX_TYPE, 2);
set_hitbox_value(AT_DSPECIAL, 4, HG_WINDOW, 69);
set_hitbox_value(AT_DSPECIAL, 4, HG_LIFETIME, 4);
set_hitbox_value(AT_DSPECIAL, 4, HG_HITBOX_X, propertyHitboxXOffset);
set_hitbox_value(AT_DSPECIAL, 4, HG_HITBOX_Y, propertyHitboxYOffset);
set_hitbox_value(AT_DSPECIAL, 4, HG_WIDTH, propertyHitboxWidth);
set_hitbox_value(AT_DSPECIAL, 4, HG_HEIGHT, propertyHitboxHeight);
set_hitbox_value(AT_DSPECIAL, 4, HG_PRIORITY, 6);
set_hitbox_value(AT_DSPECIAL, 4, HG_SHAPE, 2);
set_hitbox_value(AT_DSPECIAL, 4, HG_DAMAGE, 8);
set_hitbox_value(AT_DSPECIAL, 4, HG_ANGLE, 90);
set_hitbox_value(AT_DSPECIAL, 4, HG_VISUAL_EFFECT_X_OFFSET, 0);
set_hitbox_value(AT_DSPECIAL, 4, HG_VISUAL_EFFECT_Y_OFFSET, -2);
set_hitbox_value(AT_DSPECIAL, 4, HG_BASE_KNOCKBACK, 6);
set_hitbox_value(AT_DSPECIAL, 4, HG_KNOCKBACK_SCALING, 0.7);
set_hitbox_value(AT_DSPECIAL, 4, HG_HITSTUN_MULTIPLIER, 0.6);
set_hitbox_value(AT_DSPECIAL, 4, HG_PROJECTILE_SPRITE, sprite_get("empty"));
set_hitbox_value(AT_DSPECIAL, 4, HG_PROJECTILE_MASK, -1);
set_hitbox_value(AT_DSPECIAL, 4, HG_PROJECTILE_GROUND_BEHAVIOR, 1);
set_hitbox_value(AT_DSPECIAL, 4, HG_PROJECTILE_WALL_BEHAVIOR, 1);
set_hitbox_value(AT_DSPECIAL, 4, HG_PROJECTILE_UNBASHABLE, 1);
set_hitbox_value(AT_DSPECIAL, 4, HG_PROJECTILE_DESTROY_EFFECT, 302);
set_hitbox_value(AT_DSPECIAL, 4, HG_VISUAL_EFFECT, money_hit_fx_lrg);
set_hitbox_value(AT_DSPECIAL, 4, HG_BASE_HITPAUSE, 8);
set_hitbox_value(AT_DSPECIAL, 4, HG_HIT_SFX, asset_get("sfx_blow_heavy1"));

//4 Houses
//set_hitbox_value(AT_DSPECIAL, 5, HG_MUNO_HITBOX_NAME, "Property: 4 Houses");
set_hitbox_value(AT_DSPECIAL, 5, HG_HITBOX_TYPE, 2);
set_hitbox_value(AT_DSPECIAL, 5, HG_WINDOW, 69);
set_hitbox_value(AT_DSPECIAL, 5, HG_LIFETIME, 4);
set_hitbox_value(AT_DSPECIAL, 5, HG_HITBOX_X, propertyHitboxXOffset);
set_hitbox_value(AT_DSPECIAL, 5, HG_HITBOX_Y, propertyHitboxYOffset);
set_hitbox_value(AT_DSPECIAL, 5, HG_WIDTH, propertyHitboxWidth);
set_hitbox_value(AT_DSPECIAL, 5, HG_HEIGHT, propertyHitboxHeight);
set_hitbox_value(AT_DSPECIAL, 5, HG_PRIORITY, 6);
set_hitbox_value(AT_DSPECIAL, 5, HG_SHAPE, 2);
set_hitbox_value(AT_DSPECIAL, 5, HG_DAMAGE, 9);
set_hitbox_value(AT_DSPECIAL, 5, HG_ANGLE, 90);
set_hitbox_value(AT_DSPECIAL, 5, HG_VISUAL_EFFECT_X_OFFSET, 0);
set_hitbox_value(AT_DSPECIAL, 5, HG_VISUAL_EFFECT_Y_OFFSET, -2);
set_hitbox_value(AT_DSPECIAL, 5, HG_BASE_KNOCKBACK, 6);
set_hitbox_value(AT_DSPECIAL, 5, HG_KNOCKBACK_SCALING, 0.7);
set_hitbox_value(AT_DSPECIAL, 5, HG_HITSTUN_MULTIPLIER, 0.7);
set_hitbox_value(AT_DSPECIAL, 5, HG_PROJECTILE_SPRITE, sprite_get("empty"));
set_hitbox_value(AT_DSPECIAL, 5, HG_PROJECTILE_MASK, -1);
set_hitbox_value(AT_DSPECIAL, 5, HG_PROJECTILE_GROUND_BEHAVIOR, 1);
set_hitbox_value(AT_DSPECIAL, 5, HG_PROJECTILE_WALL_BEHAVIOR, 1);
set_hitbox_value(AT_DSPECIAL, 5, HG_PROJECTILE_UNBASHABLE, 1);
set_hitbox_value(AT_DSPECIAL, 5, HG_PROJECTILE_DESTROY_EFFECT, 302);
set_hitbox_value(AT_DSPECIAL, 5, HG_VISUAL_EFFECT, money_hit_fx_lrg);
set_hitbox_value(AT_DSPECIAL, 5, HG_BASE_HITPAUSE, 8);
set_hitbox_value(AT_DSPECIAL, 5, HG_HIT_SFX, asset_get("sfx_blow_heavy1"));

//Hotel
//set_hitbox_value(AT_DSPECIAL, 6, HG_MUNO_HITBOX_NAME, "Property: Hotel");
set_hitbox_value(AT_DSPECIAL, 6, HG_HITBOX_TYPE, 2);
set_hitbox_value(AT_DSPECIAL, 6, HG_WINDOW, 69);
set_hitbox_value(AT_DSPECIAL, 6, HG_LIFETIME, 4);
set_hitbox_value(AT_DSPECIAL, 6, HG_HITBOX_X, propertyHitboxXOffset);
set_hitbox_value(AT_DSPECIAL, 6, HG_HITBOX_Y, propertyHitboxYOffset);
set_hitbox_value(AT_DSPECIAL, 6, HG_WIDTH, propertyHitboxWidth);
set_hitbox_value(AT_DSPECIAL, 6, HG_HEIGHT, propertyHitboxHeight);
set_hitbox_value(AT_DSPECIAL, 6, HG_PRIORITY, 6);
set_hitbox_value(AT_DSPECIAL, 6, HG_SHAPE, 2);
set_hitbox_value(AT_DSPECIAL, 6, HG_DAMAGE, 12);
set_hitbox_value(AT_DSPECIAL, 6, HG_ANGLE, 90);
set_hitbox_value(AT_DSPECIAL, 6, HG_VISUAL_EFFECT_X_OFFSET, 0);
set_hitbox_value(AT_DSPECIAL, 6, HG_VISUAL_EFFECT_Y_OFFSET, -2);
set_hitbox_value(AT_DSPECIAL, 6, HG_BASE_KNOCKBACK, 8);
set_hitbox_value(AT_DSPECIAL, 6, HG_KNOCKBACK_SCALING, 0.7);
set_hitbox_value(AT_DSPECIAL, 6, HG_HITSTUN_MULTIPLIER, 0.5);
set_hitbox_value(AT_DSPECIAL, 6, HG_PROJECTILE_SPRITE, sprite_get("empty"));
set_hitbox_value(AT_DSPECIAL, 6, HG_PROJECTILE_MASK, -1);
set_hitbox_value(AT_DSPECIAL, 6, HG_PROJECTILE_GROUND_BEHAVIOR, 1);
set_hitbox_value(AT_DSPECIAL, 6, HG_PROJECTILE_WALL_BEHAVIOR, 1);
set_hitbox_value(AT_DSPECIAL, 6, HG_PROJECTILE_UNBASHABLE, 1);
set_hitbox_value(AT_DSPECIAL, 6, HG_PROJECTILE_DESTROY_EFFECT, 302);
set_hitbox_value(AT_DSPECIAL, 6, HG_VISUAL_EFFECT, money_hit_fx_lrg);
set_hitbox_value(AT_DSPECIAL, 6, HG_EFFECT, 11);
set_hitbox_value(AT_DSPECIAL, 6, HG_BASE_HITPAUSE, 20);
set_hitbox_value(AT_DSPECIAL, 6, HG_EXTRA_HITPAUSE, 20);
set_hitbox_value(AT_DSPECIAL, 6, HG_HIT_SFX, asset_get("sfx_blow_heavy1"));