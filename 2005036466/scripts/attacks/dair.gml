set_attack_value(AT_DAIR, AG_CATEGORY, 1);
set_attack_value(AT_DAIR, AG_SPRITE, sprite_get("dair"));
set_attack_value(AT_DAIR, AG_NUM_WINDOWS, 5);
set_attack_value(AT_DAIR, AG_HAS_LANDING_LAG, 1);
set_attack_value(AT_DAIR, AG_OFF_LEDGE, 1);
set_attack_value(AT_DAIR, AG_LANDING_LAG, 9);
set_attack_value(AT_DAIR, AG_AIR_SPRITE, sprite_get("dair"));
set_attack_value(AT_DAIR, AG_HURTBOX_SPRITE, sprite_get("dair_hurt"));
set_attack_value(AT_DAIR, AG_USES_CUSTOM_GRAVITY, 0);

set_window_value(AT_DAIR, 1, AG_WINDOW_TYPE, 1);
set_window_value(AT_DAIR, 1, AG_WINDOW_LENGTH, 8);
set_window_value(AT_DAIR, 1, AG_WINDOW_ANIM_FRAMES, 2);
set_window_value(AT_DAIR, 1, AG_WINDOW_ANIM_FRAME_START, 0);
set_window_value(AT_DAIR, 1, AG_WINDOW_HAS_CUSTOM_FRICTION, 0);
set_window_value(AT_DAIR, 1, AG_WINDOW_CUSTOM_AIR_FRICTION, .3);
set_window_value(AT_DAIR, 1, AG_WINDOW_CUSTOM_GROUND_FRICTION, .2);
set_window_value(AT_DAIR, 1, AG_WINDOW_VSPEED, -1);
set_window_value(AT_DAIR, 1, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_DAIR, 1, AG_WINDOW_SFX, asset_get("sfx_swipe_heavy1"));
set_window_value(AT_DAIR, 1, AG_WINDOW_SFX_FRAME, 7);
set_window_value(AT_DAIR, 1, AG_WINDOW_CUSTOM_GRAVITY, .6);

set_window_value(AT_DAIR, 2, AG_WINDOW_TYPE, 2);
set_window_value(AT_DAIR, 2, AG_WINDOW_LENGTH, 2);
set_window_value(AT_DAIR, 2, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_DAIR, 2, AG_WINDOW_ANIM_FRAME_START, 2);
set_window_value(AT_DAIR, 2, AG_WINDOW_HAS_CUSTOM_FRICTION, 0);
set_window_value(AT_DAIR, 2, AG_WINDOW_CUSTOM_AIR_FRICTION, 0);
set_window_value(AT_DAIR, 2, AG_WINDOW_CUSTOM_GROUND_FRICTION, 0);
set_window_value(AT_DAIR, 2, AG_WINDOW_CUSTOM_GRAVITY, .6);

set_window_value(AT_DAIR, 3, AG_WINDOW_TYPE, 2);
set_window_value(AT_DAIR, 3, AG_WINDOW_LENGTH, 6);
set_window_value(AT_DAIR, 3, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_DAIR, 3, AG_WINDOW_ANIM_FRAME_START, 3);
set_window_value(AT_DAIR, 3, AG_WINDOW_HAS_CUSTOM_FRICTION, 0);
set_window_value(AT_DAIR, 3, AG_WINDOW_CUSTOM_AIR_FRICTION, 0);
set_window_value(AT_DAIR, 3, AG_WINDOW_CUSTOM_GROUND_FRICTION, 0);
set_window_value(AT_DAIR, 3, AG_WINDOW_VSPEED_TYPE, 0);
set_window_value(AT_DAIR, 3, AG_WINDOW_VSPEED, -4);
set_window_value(AT_DAIR, 3, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_DAIR, 3, AG_WINDOW_SFX, asset_get("sfx_clairen_hit_strong"));
set_window_value(AT_DAIR, 3, AG_WINDOW_SFX_FRAME, 4);
set_window_value(AT_DAIR, 3, AG_WINDOW_CUSTOM_GRAVITY, .6);

// Hit 2
set_window_value(AT_DAIR, 4, AG_WINDOW_TYPE, 2);
set_window_value(AT_DAIR, 4, AG_WINDOW_LENGTH, 2);
set_window_value(AT_DAIR, 4, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_DAIR, 4, AG_WINDOW_ANIM_FRAME_START, 4);
set_window_value(AT_DAIR, 4, AG_WINDOW_HAS_CUSTOM_FRICTION, 0);
set_window_value(AT_DAIR, 4, AG_WINDOW_CUSTOM_AIR_FRICTION, 0);
set_window_value(AT_DAIR, 4, AG_WINDOW_CUSTOM_GROUND_FRICTION, 0);
set_window_value(AT_DAIR, 4, AG_WINDOW_VSPEED_TYPE, 2);
set_window_value(AT_DAIR, 4, AG_WINDOW_VSPEED, -6);
set_window_value(AT_DAIR, 4, AG_WINDOW_CUSTOM_GRAVITY, .4);

set_window_value(AT_DAIR, 5, AG_WINDOW_TYPE, 3);
set_window_value(AT_DAIR, 5, AG_WINDOW_LENGTH, 18);
set_window_value(AT_DAIR, 5, AG_WINDOW_ANIM_FRAMES, 3);
set_window_value(AT_DAIR, 5, AG_WINDOW_ANIM_FRAME_START, 5);
set_window_value(AT_DAIR, 5, AG_WINDOW_HAS_CUSTOM_FRICTION, 0);
set_window_value(AT_DAIR, 5, AG_WINDOW_CUSTOM_AIR_FRICTION, 0);
set_window_value(AT_DAIR, 5, AG_WINDOW_CUSTOM_GROUND_FRICTION, 0);
set_window_value(AT_DAIR, 5, AG_WINDOW_HAS_WHIFFLAG, 5);
set_window_value(AT_DAIR, 5, AG_WINDOW_CUSTOM_GRAVITY, .6);

set_num_hitboxes(AT_DAIR, 2);

set_hitbox_value(AT_DAIR, 1, HG_PARENT_HITBOX, 1);
set_hitbox_value(AT_DAIR, 1, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_DAIR, 1, HG_WINDOW, 2);
set_hitbox_value(AT_DAIR, 1, HG_WINDOW_CREATION_FRAME, 0);
set_hitbox_value(AT_DAIR, 1, HG_LIFETIME, 2);
set_hitbox_value(AT_DAIR, 1, HG_HITBOX_X, 18);
set_hitbox_value(AT_DAIR, 1, HG_HITBOX_Y, -20);
set_hitbox_value(AT_DAIR, 1, HG_WIDTH, 55);
set_hitbox_value(AT_DAIR, 1, HG_HEIGHT, 77);
set_hitbox_value(AT_DAIR, 1, HG_SHAPE, 2);
set_hitbox_value(AT_DAIR, 1, HG_PRIORITY, 2);
set_hitbox_value(AT_DAIR, 1, HG_DAMAGE, 3);
set_hitbox_value(AT_DAIR, 1, HG_ANGLE, 361);
set_hitbox_value(AT_DAIR, 1, HG_ANGLE_FLIPPER, 7);
set_hitbox_value(AT_DAIR, 1, HG_BASE_KNOCKBACK, 3);
set_hitbox_value(AT_DAIR, 1, HG_KNOCKBACK_SCALING, 0);
set_hitbox_value(AT_DAIR, 1, HG_BASE_HITPAUSE, 5);
set_hitbox_value(AT_DAIR, 1, HG_HITPAUSE_SCALING, 0);
set_hitbox_value(AT_DAIR, 1, HG_VISUAL_EFFECT, HFX_GEN_DIR);
set_hitbox_value(AT_DAIR, 1, HG_VISUAL_EFFECT_X_OFFSET, 7);
set_hitbox_value(AT_DAIR, 1, HG_VISUAL_EFFECT_Y_OFFSET, 14);
set_hitbox_value(AT_DAIR, 1, HG_HIT_SFX, asset_get("sfx_blow_weak2"));
set_hitbox_value(AT_DAIR, 1, HG_IGNORES_PROJECTILES, 0);

set_hitbox_value(AT_DAIR, 2, HG_PARENT_HITBOX, 2);
set_hitbox_value(AT_DAIR, 2, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_DAIR, 2, HG_WINDOW, 4);
set_hitbox_value(AT_DAIR, 2, HG_WINDOW_CREATION_FRAME, 0);
set_hitbox_value(AT_DAIR, 2, HG_LIFETIME, 2);
set_hitbox_value(AT_DAIR, 2, HG_HITBOX_X, 3);
set_hitbox_value(AT_DAIR, 2, HG_HITBOX_Y, 20);
set_hitbox_value(AT_DAIR, 2, HG_WIDTH, 40);
set_hitbox_value(AT_DAIR, 2, HG_HEIGHT, 85);
set_hitbox_value(AT_DAIR, 2, HG_SHAPE, 2);
set_hitbox_value(AT_DAIR, 2, HG_PRIORITY, 3);
set_hitbox_value(AT_DAIR, 2, HG_DAMAGE, 7);
set_hitbox_value(AT_DAIR, 2, HG_ANGLE, 270);
set_hitbox_value(AT_DAIR, 2, HG_BASE_KNOCKBACK, 6);
set_hitbox_value(AT_DAIR, 2, HG_KNOCKBACK_SCALING, 0.6);
set_hitbox_value(AT_DAIR, 2, HG_BASE_HITPAUSE, 8);
set_hitbox_value(AT_DAIR, 2, HG_HITPAUSE_SCALING, 0.4);
set_hitbox_value(AT_DAIR, 2, HG_VISUAL_EFFECT, vfx_fspecialhit);
set_hitbox_value(AT_DAIR, 2, HG_VISUAL_EFFECT_X_OFFSET, 7);
set_hitbox_value(AT_DAIR, 2, HG_VISUAL_EFFECT_Y_OFFSET, 14);
set_hitbox_value(AT_DAIR, 2, HG_HIT_SFX, asset_get("sfx_absa_kickhit"));
set_hitbox_value(AT_DAIR, 2, HG_IGNORES_PROJECTILES, 0);
set_hitbox_value(AT_DAIR, 2, HG_HITBOX_GROUP, 1);