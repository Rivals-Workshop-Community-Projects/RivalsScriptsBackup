set_attack_value(AT_NSPECIAL, AG_CATEGORY, 2);
set_attack_value(AT_NSPECIAL, AG_SPRITE, sprite_get("nspecial"));
set_attack_value(AT_NSPECIAL, AG_NUM_WINDOWS, 8);
set_attack_value(AT_NSPECIAL, AG_HAS_LANDING_LAG, 4);
set_attack_value(AT_NSPECIAL, AG_OFF_LEDGE, 1);
set_attack_value(AT_NSPECIAL, AG_AIR_SPRITE, sprite_get("nspecial"));
set_attack_value(AT_NSPECIAL, AG_HURTBOX_SPRITE, sprite_get("nspecial_hurt"));

set_window_value(AT_NSPECIAL, 1, AG_WINDOW_TYPE, 1);
set_window_value(AT_NSPECIAL, 1, AG_WINDOW_LENGTH, 4);
set_window_value(AT_NSPECIAL, 1, AG_WINDOW_ANIM_FRAMES, 3);
//set_window_value(AT_NSPECIAL, 1, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_NSPECIAL, 1, AG_WINDOW_SFX, asset_get("sfx_bubblepop"));
set_window_value(AT_NSPECIAL, 1, AG_WINDOW_SFX_FRAME, 4);

set_window_value(AT_NSPECIAL, 2, AG_WINDOW_TYPE, 1);
set_window_value(AT_NSPECIAL, 2, AG_WINDOW_LENGTH, 3);
set_window_value(AT_NSPECIAL, 2, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_NSPECIAL, 2, AG_WINDOW_ANIM_FRAME_START, 3);

set_window_value(AT_NSPECIAL, 3, AG_WINDOW_TYPE, 1);
set_window_value(AT_NSPECIAL, 3, AG_WINDOW_LENGTH, 3);
set_window_value(AT_NSPECIAL, 3, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_NSPECIAL, 3, AG_WINDOW_ANIM_FRAME_START, 4);

set_window_value(AT_NSPECIAL, 4, AG_WINDOW_TYPE, 1);
set_window_value(AT_NSPECIAL, 4, AG_WINDOW_LENGTH, 4);
set_window_value(AT_NSPECIAL, 4, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_NSPECIAL, 4, AG_WINDOW_ANIM_FRAME_START, 7);
set_window_value(AT_NSPECIAL, 4, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_NSPECIAL, 4, AG_WINDOW_SFX, asset_get("sfx_swipe_weak2"));
set_window_value(AT_NSPECIAL, 4, AG_WINDOW_SFX_FRAME, 3);

set_window_value(AT_NSPECIAL, 5, AG_WINDOW_TYPE, 1);
set_window_value(AT_NSPECIAL, 5, AG_WINDOW_LENGTH, 4);
set_window_value(AT_NSPECIAL, 5, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_NSPECIAL, 5, AG_WINDOW_ANIM_FRAME_START, 8);

set_window_value(AT_NSPECIAL, 6, AG_WINDOW_TYPE, 1);
set_window_value(AT_NSPECIAL, 6, AG_WINDOW_LENGTH, 10);
set_window_value(AT_NSPECIAL, 6, AG_WINDOW_ANIM_FRAMES, 2);
set_window_value(AT_NSPECIAL, 6, AG_WINDOW_ANIM_FRAME_START, 9);

set_window_value(AT_NSPECIAL, 7, AG_WINDOW_TYPE, 1);
set_window_value(AT_NSPECIAL, 7, AG_WINDOW_LENGTH, 15);
set_window_value(AT_NSPECIAL, 7, AG_WINDOW_ANIM_FRAMES, 3);
set_window_value(AT_NSPECIAL, 7, AG_WINDOW_ANIM_FRAME_START, 11);

set_window_value(AT_NSPECIAL, 8, AG_WINDOW_TYPE, 1);
set_window_value(AT_NSPECIAL, 8, AG_WINDOW_LENGTH, 12);
set_window_value(AT_NSPECIAL, 8, AG_WINDOW_ANIM_FRAMES, 3);
set_window_value(AT_NSPECIAL, 8, AG_WINDOW_ANIM_FRAME_START, 4);

set_num_hitboxes(AT_NSPECIAL, 0);

//spiritomb core
//set_hitbox_value(AT_NSPECIAL, 1, HG_PARENT_HITBOX, 1);
set_hitbox_value(AT_NSPECIAL, 1, HG_HITBOX_TYPE, 2);
set_hitbox_value(AT_NSPECIAL, 1, HG_WINDOW, 999);
set_hitbox_value(AT_NSPECIAL, 1, HG_LIFETIME, 999);
set_hitbox_value(AT_NSPECIAL, 1, HG_HITBOX_X, 32);
set_hitbox_value(AT_NSPECIAL, 1, HG_WIDTH, 90);
set_hitbox_value(AT_NSPECIAL, 1, HG_HEIGHT, 60);
set_hitbox_value(AT_NSPECIAL, 1, HG_PRIORITY, 3);
set_hitbox_value(AT_NSPECIAL, 1, HG_DAMAGE, 5);
set_hitbox_value(AT_NSPECIAL, 1, HG_ANGLE, 50);
set_hitbox_value(AT_NSPECIAL, 1, HG_VISUAL_EFFECT_Y_OFFSET, -16);
set_hitbox_value(AT_NSPECIAL, 1, HG_VISUAL_EFFECT, 193);
set_hitbox_value(AT_NSPECIAL, 1, HG_BASE_KNOCKBACK, 3);
set_hitbox_value(AT_NSPECIAL, 1, HG_KNOCKBACK_SCALING, 0.2);
set_hitbox_value(AT_NSPECIAL, 1, HG_BASE_HITPAUSE, 5);
set_hitbox_value(AT_NSPECIAL, 1, HG_HITPAUSE_SCALING, 0.25);
set_hitbox_value(AT_NSPECIAL, 1, HG_PROJECTILE_SPRITE, sprite_get("tomb"));
set_hitbox_value(AT_NSPECIAL, 1, HG_PROJECTILE_MASK, sprite_get("tomb"));
set_hitbox_value(AT_NSPECIAL, 1, HG_HIT_SFX, asset_get("sfx_blow_medium1"));
set_hitbox_value(AT_NSPECIAL, 1, HG_PROJECTILE_ANIM_SPEED, .2);
set_hitbox_value(AT_NSPECIAL, 1, HG_PROJECTILE_HSPEED, 4);
set_hitbox_value(AT_NSPECIAL, 1, HG_PROJECTILE_VSPEED, -6);
set_hitbox_value(AT_NSPECIAL, 1, HG_PROJECTILE_GRAVITY, 0.85);
set_hitbox_value(AT_NSPECIAL, 1, HG_PROJECTILE_GROUND_BEHAVIOR, 2);
set_hitbox_value(AT_NSPECIAL, 1, HG_PROJECTILE_WALL_BEHAVIOR, 2);
set_hitbox_value(AT_NSPECIAL, 1, HG_PROJECTILE_DESTROY_EFFECT, tomb_dest);
set_hitbox_value(AT_NSPECIAL, 1, HG_PROJECTILE_IS_TRANSCENDENT, true);

//iron ball up
//set_hitbox_value(AT_NSPECIAL, 2, HG_PARENT_HITBOX, 1);
set_hitbox_value(AT_NSPECIAL, 2, HG_HITBOX_TYPE, 2);
//set_hitbox_value(AT_NSPECIAL, 2, HG_WINDOW, 999);
set_hitbox_value(AT_NSPECIAL, 2, HG_LIFETIME, 2);
set_hitbox_value(AT_NSPECIAL, 2, HG_HITBOX_X, 32);
set_hitbox_value(AT_NSPECIAL, 2, HG_WIDTH, 50);
set_hitbox_value(AT_NSPECIAL, 2, HG_HEIGHT, 50);
set_hitbox_value(AT_NSPECIAL, 2, HG_PRIORITY, 3);
set_hitbox_value(AT_NSPECIAL, 2, HG_DAMAGE, 10);
set_hitbox_value(AT_NSPECIAL, 2, HG_ANGLE, 90);
set_hitbox_value(AT_NSPECIAL, 2, HG_VISUAL_EFFECT_Y_OFFSET, -16);
//set_hitbox_value(AT_NSPECIAL, 2, HG_HITSTUN_MULTIPLIER, -1);
set_hitbox_value(AT_NSPECIAL, 2, HG_BASE_KNOCKBACK, 8);
set_hitbox_value(AT_NSPECIAL, 2, HG_KNOCKBACK_SCALING, 0.5);
set_hitbox_value(AT_NSPECIAL, 2, HG_BASE_HITPAUSE, 10);
set_hitbox_value(AT_NSPECIAL, 2, HG_HITPAUSE_SCALING, 0.5);
set_hitbox_value(AT_NSPECIAL, 2, HG_PROJECTILE_SPRITE, asset_get("empty_sprite"));
set_hitbox_value(AT_NSPECIAL, 2, HG_PROJECTILE_MASK, -1);
set_hitbox_value(AT_NSPECIAL, 2, HG_HIT_SFX, asset_get("sfx_blow_heavy1"));
//set_hitbox_value(AT_NSPECIAL, 2, HG_PROJECTILE_ANIM_SPEED, .2);
set_hitbox_value(AT_NSPECIAL, 2, HG_HIT_LOCKOUT, 10);
set_hitbox_value(AT_NSPECIAL, 2, HG_PROJECTILE_IS_TRANSCENDENT, true);

//iron ball down
//set_hitbox_value(AT_NSPECIAL, 2, HG_PARENT_HITBOX, 1);
set_hitbox_value(AT_NSPECIAL, 3, HG_HITBOX_TYPE, 2);
//set_hitbox_value(AT_NSPECIAL, 3, HG_WINDOW, 999);
set_hitbox_value(AT_NSPECIAL, 3, HG_LIFETIME, 2);
set_hitbox_value(AT_NSPECIAL, 3, HG_HITBOX_X, 32);
set_hitbox_value(AT_NSPECIAL, 3, HG_WIDTH, 50);
set_hitbox_value(AT_NSPECIAL, 3, HG_HEIGHT, 50);
set_hitbox_value(AT_NSPECIAL, 3, HG_PRIORITY, 3);
set_hitbox_value(AT_NSPECIAL, 3, HG_DAMAGE, 10);
set_hitbox_value(AT_NSPECIAL, 3, HG_ANGLE, 310);
set_hitbox_value(AT_NSPECIAL, 3, HG_VISUAL_EFFECT_Y_OFFSET, -16);
//set_hitbox_value(AT_NSPECIAL, 3, HG_HITSTUN_MULTIPLIER, -1);
set_hitbox_value(AT_NSPECIAL, 3, HG_BASE_KNOCKBACK, 8);
set_hitbox_value(AT_NSPECIAL, 3, HG_KNOCKBACK_SCALING, 0.5);
set_hitbox_value(AT_NSPECIAL, 3, HG_BASE_HITPAUSE, 10);
set_hitbox_value(AT_NSPECIAL, 3, HG_HITPAUSE_SCALING, 0.5);
set_hitbox_value(AT_NSPECIAL, 3, HG_PROJECTILE_SPRITE, asset_get("empty_sprite"));
set_hitbox_value(AT_NSPECIAL, 3, HG_PROJECTILE_MASK, -1);
set_hitbox_value(AT_NSPECIAL, 3, HG_HIT_SFX, asset_get("sfx_blow_heavy1"));
//set_hitbox_value(AT_NSPECIAL, 3, HG_PROJECTILE_ANIM_SPEED, .2);
set_hitbox_value(AT_NSPECIAL, 3, HG_HIT_LOCKOUT, 10);
set_hitbox_value(AT_NSPECIAL, 3, HG_PROJECTILE_IS_TRANSCENDENT, true);


//leftovers
//set_hitbox_value(AT_NSPECIAL, 4, HG_PARENT_HITBOX, 1);
set_hitbox_value(AT_NSPECIAL, 4, HG_HITBOX_TYPE, 2);
set_hitbox_value(AT_NSPECIAL, 4, HG_WINDOW, 999);
set_hitbox_value(AT_NSPECIAL, 4, HG_LIFETIME, 2);
set_hitbox_value(AT_NSPECIAL, 4, HG_HITBOX_X, 32);
set_hitbox_value(AT_NSPECIAL, 4, HG_WIDTH, 30);
set_hitbox_value(AT_NSPECIAL, 4, HG_HEIGHT, 30);
set_hitbox_value(AT_NSPECIAL, 4, HG_PRIORITY, 2);
set_hitbox_value(AT_NSPECIAL, 4, HG_DAMAGE, 0);
set_hitbox_value(AT_NSPECIAL, 4, HG_ANGLE, 0);
set_hitbox_value(AT_NSPECIAL, 4, HG_BASE_KNOCKBACK, 0);
set_hitbox_value(AT_NSPECIAL, 4, HG_KNOCKBACK_SCALING, 0);
set_hitbox_value(AT_NSPECIAL, 4, HG_BASE_HITPAUSE, 0);
set_hitbox_value(AT_NSPECIAL, 4, HG_HITPAUSE_SCALING, 0);
set_hitbox_value(AT_NSPECIAL, 4, HG_VISUAL_EFFECT, 17);
set_hitbox_value(AT_NSPECIAL, 4, HG_HIT_PARTICLE_NUM, 1);
//set_hitbox_value(AT_NSPECIAL, 4, HG_VISUAL_EFFECT_Y_OFFSET, + 80);
//set_hitbox_value(AT_NSPECIAL, 4, HG_HITSTUN_MULTIPLIER, -1);
set_hitbox_value(AT_NSPECIAL, 4, HG_PROJECTILE_SPRITE,  asset_get("empty_sprite"));
set_hitbox_value(AT_NSPECIAL, 4, HG_PROJECTILE_MASK, -1);
//set_hitbox_value(AT_NSPECIAL, 4, HG_HIT_LOCKOUT, 1000);

//toxic orb
//set_hitbox_value(AT_NSPECIAL, 5, HG_PARENT_HITBOX, 1);
set_hitbox_value(AT_NSPECIAL, 5, HG_HITBOX_TYPE, 2);
set_hitbox_value(AT_NSPECIAL, 5, HG_WINDOW, 999);
set_hitbox_value(AT_NSPECIAL, 5, HG_LIFETIME, 90);
set_hitbox_value(AT_NSPECIAL, 5, HG_HITBOX_X, 32);
set_hitbox_value(AT_NSPECIAL, 5, HG_WIDTH, 90);
set_hitbox_value(AT_NSPECIAL, 5, HG_HEIGHT, 60);
set_hitbox_value(AT_NSPECIAL, 5, HG_PRIORITY, 3);
set_hitbox_value(AT_NSPECIAL, 5, HG_DAMAGE, 3);
set_hitbox_value(AT_NSPECIAL, 5, HG_ANGLE, 50);
set_hitbox_value(AT_NSPECIAL, 5, HG_BASE_KNOCKBACK, 5);
set_hitbox_value(AT_NSPECIAL, 5, HG_KNOCKBACK_SCALING, 0.1);
set_hitbox_value(AT_NSPECIAL, 5, HG_BASE_HITPAUSE, 6);
set_hitbox_value(AT_NSPECIAL, 5, HG_HITPAUSE_SCALING, 0.1);
set_hitbox_value(AT_NSPECIAL, 5, HG_VISUAL_EFFECT_Y_OFFSET, -16);
set_hitbox_value(AT_NSPECIAL, 5, HG_PROJECTILE_SPRITE, sprite_get("toxic"));
set_hitbox_value(AT_NSPECIAL, 5, HG_PROJECTILE_MASK, sprite_get("toxic"));
set_hitbox_value(AT_NSPECIAL, 5, HG_PROJECTILE_ANIM_SPEED, .2);
set_hitbox_value(AT_NSPECIAL, 5, HG_PROJECTILE_HSPEED, 5);
set_hitbox_value(AT_NSPECIAL, 5, HG_PROJECTILE_VSPEED, -4.5);
set_hitbox_value(AT_NSPECIAL, 5, HG_PROJECTILE_GRAVITY, 0.7);
set_hitbox_value(AT_NSPECIAL, 5, HG_HIT_SFX, asset_get("sfx_ice_shatter"));
set_hitbox_value(AT_NSPECIAL, 5, HG_PROJECTILE_GROUND_BEHAVIOR, -1);
set_hitbox_value(AT_NSPECIAL, 5, HG_PROJECTILE_IS_TRANSCENDENT, true);

//iron ball shake
//set_hitbox_value(AT_NSPECIAL, 5, HG_PARENT_HITBOX, 1);
set_hitbox_value(AT_NSPECIAL, 6, HG_HITBOX_TYPE, 2);
set_hitbox_value(AT_NSPECIAL, 6, HG_WINDOW, 999);
set_hitbox_value(AT_NSPECIAL, 6, HG_LIFETIME, 4);
set_hitbox_value(AT_NSPECIAL, 6, HG_SHAPE, 2);
set_hitbox_value(AT_NSPECIAL, 6, HG_HITBOX_X, 32);
set_hitbox_value(AT_NSPECIAL, 6, HG_WIDTH, 150);
set_hitbox_value(AT_NSPECIAL, 6, HG_HEIGHT, 10);
set_hitbox_value(AT_NSPECIAL, 6, HG_PRIORITY, 3);
set_hitbox_value(AT_NSPECIAL, 6, HG_DAMAGE, 3);
set_hitbox_value(AT_NSPECIAL, 6, HG_ANGLE, 90);
set_hitbox_value(AT_NSPECIAL, 6, HG_BASE_KNOCKBACK, 8);
set_hitbox_value(AT_NSPECIAL, 6, HG_KNOCKBACK_SCALING, 0.5);
set_hitbox_value(AT_NSPECIAL, 6, HG_BASE_HITPAUSE, 10);
set_hitbox_value(AT_NSPECIAL, 6, HG_HITPAUSE_SCALING, 0.5);
//set_hitbox_value(AT_NSPECIAL, 6, HG_VISUAL_EFFECT_Y_OFFSET, -16);
//set_hitbox_value(AT_NSPECIAL, 6, HG_HITSTUN_MULTIPLIER, -1);
set_hitbox_value(AT_NSPECIAL, 6, HG_PROJECTILE_SPRITE, asset_get("empty_sprite"));
set_hitbox_value(AT_NSPECIAL, 6, HG_PROJECTILE_MASK, -1);
set_hitbox_value(AT_NSPECIAL, 6, HG_PROJECTILE_IS_TRANSCENDENT, true);

//poison
//set_hitbox_value(AT_NSPECIAL, 5, HG_PARENT_HITBOX, 1);
set_hitbox_value(AT_NSPECIAL, 7, HG_HITBOX_TYPE, 2);
set_hitbox_value(AT_NSPECIAL, 7, HG_WINDOW, 999);
set_hitbox_value(AT_NSPECIAL, 7, HG_LIFETIME, 2);
set_hitbox_value(AT_NSPECIAL, 7, HG_SHAPE, 2);
set_hitbox_value(AT_NSPECIAL, 7, HG_HITBOX_X, 32);
set_hitbox_value(AT_NSPECIAL, 7, HG_WIDTH, 100);
set_hitbox_value(AT_NSPECIAL, 7, HG_HEIGHT, 40);
set_hitbox_value(AT_NSPECIAL, 7, HG_PRIORITY, 1);
set_hitbox_value(AT_NSPECIAL, 7, HG_DAMAGE, 0);
set_hitbox_value(AT_NSPECIAL, 7, HG_ANGLE, 80);
set_hitbox_value(AT_NSPECIAL, 7, HG_BASE_KNOCKBACK, 0);
set_hitbox_value(AT_NSPECIAL, 7, HG_KNOCKBACK_SCALING, 0);
set_hitbox_value(AT_NSPECIAL, 7, HG_BASE_HITPAUSE, 0);
set_hitbox_value(AT_NSPECIAL, 7, HG_HITPAUSE_SCALING, 0);
set_hitbox_value(AT_NSPECIAL, 7, HG_VISUAL_EFFECT, 1);
set_hitbox_value(AT_NSPECIAL, 7, HG_VISUAL_EFFECT_Y_OFFSET, -16);
//set_hitbox_value(AT_NSPECIAL, 7, HG_HITSTUN_MULTIPLIER, -1);
set_hitbox_value(AT_NSPECIAL, 7, HG_PROJECTILE_SPRITE,  asset_get("empty_sprite"));
set_hitbox_value(AT_NSPECIAL, 7, HG_PROJECTILE_MASK, -1);

//voltorb detonate
//set_hitbox_value(AT_NSPECIAL, 5, HG_PARENT_HITBOX, 1);
set_hitbox_value(AT_NSPECIAL, 8, HG_HITBOX_TYPE, 2);
set_hitbox_value(AT_NSPECIAL, 8, HG_WINDOW, 999);
set_hitbox_value(AT_NSPECIAL, 8, HG_LIFETIME, 6);
set_hitbox_value(AT_NSPECIAL, 8, HG_SHAPE, 0);
set_hitbox_value(AT_NSPECIAL, 8, HG_HITBOX_X, 32);
set_hitbox_value(AT_NSPECIAL, 8, HG_WIDTH, 150);
set_hitbox_value(AT_NSPECIAL, 8, HG_HEIGHT, 150);
set_hitbox_value(AT_NSPECIAL, 8, HG_PRIORITY, 10);
set_hitbox_value(AT_NSPECIAL, 8, HG_DAMAGE, 15);
set_hitbox_value(AT_NSPECIAL, 8, HG_ANGLE, 65);
set_hitbox_value(AT_NSPECIAL, 8, HG_BASE_KNOCKBACK, 10);
set_hitbox_value(AT_NSPECIAL, 8, HG_KNOCKBACK_SCALING, 0.55);
set_hitbox_value(AT_NSPECIAL, 8, HG_BASE_HITPAUSE, 11);
set_hitbox_value(AT_NSPECIAL, 8, HG_HITPAUSE_SCALING, 0.4);
set_hitbox_value(AT_NSPECIAL, 8, HG_VISUAL_EFFECT, 148);
set_hitbox_value(AT_NSPECIAL, 8, HG_EFFECT, 1);
set_hitbox_value(AT_NSPECIAL, 8, HG_VISUAL_EFFECT_Y_OFFSET, -16);
//set_hitbox_value(AT_NSPECIAL, 8, HG_HITSTUN_MULTIPLIER, -1);
set_hitbox_value(AT_NSPECIAL, 8, HG_PROJECTILE_SPRITE,  asset_get("empty_sprite"));
set_hitbox_value(AT_NSPECIAL, 8, HG_PROJECTILE_MASK, -1);
set_hitbox_value(AT_NSPECIAL, 8, HG_HIT_SFX, asset_get("sfx_blow_heavy2"));